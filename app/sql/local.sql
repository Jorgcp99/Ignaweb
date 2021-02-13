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
  KEY `comment_author_email` (`comment_author_email`(10))
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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
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
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1613135432;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613164232;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613207432;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613207493;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613207494;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613293832;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
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
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613135055;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613135056;s:7:\"checked\";a:1:{s:7:\"ignaweb\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_timeout_browser_4853ba0b18950b426d4c3572e2139b70','1613207493','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_browser_4853ba0b18950b426d4c3572e2139b70','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"14.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1613207494','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (147,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612602944;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (149,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_ignaweb','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (151,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:1:{s:81:\"image-horizontal-reel-scroll-slideshow/image-horizontal-reel-scroll-slideshow.php\";i:1612717776;}','yes');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (194,'acf_version','5.9.4','yes');
INSERT INTO `wp_options` VALUES (236,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:20:\"mobile-menu/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1612794635;s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";}}s:7:\"abspath\";s:45:\"/Users/alfredo/LocalSites/ignaweb/app/public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";s:8:\"sdk_path\";s:20:\"mobile-menu/freemius\";s:7:\"version\";s:5:\"2.4.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1612794635;}}','yes');
INSERT INTO `wp_options` VALUES (237,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (238,'fs_accounts','a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:235;a:3:{s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"mobile-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1612794635;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:9:\"2.8.1.8.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:15:\"localhost:10018\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1612794635;s:7:\"version\";s:9:\"2.8.1.8.1\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1612794638;s:7:\"version\";s:9:\"2.8.1.8.1\";}}}s:13:\"file_slug_map\";a:1:{s:23:\"mobile-menu/mobmenu.php\";s:11:\"mobile-menu\";}s:7:\"plugins\";a:1:{s:11:\"mobile-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:12:\"premium_slug\";s:19:\"mobile-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:23:\"mobile-menu/mobmenu.php\";s:7:\"version\";s:9:\"2.8.1.8.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1ec93edfb66875251b62505b96489\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"235\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"93248443908cbef4208b5520d85412b2\";}','yes');
INSERT INTO `wp_options` VALUES (239,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (240,'fs_api_cache','a:0:{}','no');
INSERT INTO `wp_options` VALUES (243,'mobmenu_latest_update_version','2.8.1.8.1','yes');
INSERT INTO `wp_options` VALUES (244,'mobmenu_options','s:2042:\"a:52:{s:16:\"f63e853ff9f5e599\";s:0:\"\";s:30:\"right_menu_parent_link_submenu\";s:1:\"0\";s:19:\"right_menu_icon_new\";s:4:\"icon\";s:20:\"right_menu_icon_font\";s:4:\"menu\";s:20:\"right_icon_font_size\";s:2:\"30\";s:15:\"right_menu_icon\";s:4:\"menu\";s:15:\"right_menu_text\";s:0:\"\";s:22:\"right_menu_icon_action\";s:1:\"1\";s:14:\"right_icon_url\";s:0:\"\";s:21:\"right_icon_url_target\";s:1:\"1\";s:21:\"right_icon_top_margin\";s:2:\"10\";s:23:\"right_icon_right_margin\";s:1:\"5\";s:16:\"4d2880c737074642\";s:0:\"\";s:19:\"right_menu_bg_image\";s:0:\"\";s:21:\"right_menu_bg_opacity\";s:3:\"100\";s:24:\"right_menu_bg_image_size\";s:5:\"cover\";s:22:\"right_menu_bg_gradient\";s:0:\"\";s:22:\"right_menu_width_units\";s:1:\"1\";s:16:\"right_menu_width\";s:3:\"270\";s:27:\"right_menu_width_percentage\";s:2:\"70\";s:26:\"right_menu_content_padding\";s:2:\"10\";s:16:\"aa60e3d5fe704267\";s:0:\"\";s:16:\"enable_left_menu\";s:1:\"0\";s:9:\"left_menu\";s:0:\"\";s:17:\"enable_right_menu\";s:1:\"1\";s:10:\"right_menu\";s:5:\"menu1\";s:16:\"55e89d9a7f740b76\";s:0:\"\";s:13:\"width_trigger\";s:4:\"1024\";s:16:\"edc117863e7ad302\";s:0:\"\";s:19:\"only_mobile_devices\";s:1:\"0\";s:17:\"only_testing_mode\";s:1:\"0\";s:16:\"dde6c32f06c5caf8\";s:0:\"\";s:13:\"hide_elements\";s:0:\"\";s:16:\"38b76206e3791895\";s:0:\"\";s:22:\"default_hided_elements\";s:226:\"a:17:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";}\";s:16:\"eb4218389e2d7f1a\";s:0:\"\";s:17:\"menu_display_type\";s:13:\"slideout-over\";s:18:\"autoclose_submenus\";s:1:\"0\";s:22:\"menu_items_border_size\";s:1:\"0\";s:15:\"close_icon_font\";s:8:\"cancel-1\";s:20:\"close_icon_font_size\";s:2:\"30\";s:22:\"submenu_open_icon_font\";s:9:\"down-open\";s:23:\"submenu_close_icon_font\";s:7:\"up-open\";s:22:\"submenu_icon_font_size\";s:2:\"25\";s:16:\"967bcf13a38e2bab\";s:0:\"\";s:17:\"cache_dynamic_css\";s:1:\"0\";s:15:\"sticky_elements\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:16:\"7a9dbb4c45fde28a\";s:0:\"\";s:16:\"6ac253251e631bc4\";s:0:\"\";s:16:\"d82aab16c3557b41\";s:0:\"\";}\";','yes');
INSERT INTO `wp_options` VALUES (245,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (246,'wp_mobile_menu_banner_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (296,'_site_transient_timeout_theme_roots','1613136856','no');
INSERT INTO `wp_options` VALUES (297,'_site_transient_theme_roots','a:1:{s:7:\"ignaweb\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (298,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613135057;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.4\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_postmeta` VALUES (5,5,'_edit_lock','1612607576:1');
INSERT INTO `wp_postmeta` VALUES (6,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (7,6,'_edit_lock','1612774996:1');
INSERT INTO `wp_postmeta` VALUES (8,17,'_edit_lock','1612718280:1');
INSERT INTO `wp_postmeta` VALUES (9,18,'_edit_lock','1612967364:1');
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
INSERT INTO `wp_postmeta` VALUES (323,76,'_edit_lock','1612794699:1');
INSERT INTO `wp_postmeta` VALUES (324,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (325,77,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (326,77,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (327,77,'_edit_lock','1612794871:1');
INSERT INTO `wp_postmeta` VALUES (328,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (329,79,'_edit_lock','1612794883:1');
INSERT INTO `wp_postmeta` VALUES (330,79,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (331,79,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (332,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (333,81,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (334,81,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (335,81,'_edit_lock','1612794891:1');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10018/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10018.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-02-06 09:11:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-06 09:11:34','0000-00-00 00:00:00','',0,'http://localhost:10018/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-02-06 10:35:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-06 10:35:20','0000-00-00 00:00:00','',0,'http://localhost:10018/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"18\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Inicio','inicio','publish','closed','closed','','group_60201f220b956','','','2021-02-07 21:27:01','2021-02-07 21:27:01','',0,'http://localhost:10018/?post_type=acf-field-group&#038;p=6',0,'acf-field-group','',0);
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
INSERT INTO `wp_posts` VALUES (17,1,'2021-02-07 17:20:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-07 17:20:19','0000-00-00 00:00:00','',0,'http://localhost:10018/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-02-07 17:21:57','2021-02-07 17:21:57','','Inicio','','publish','closed','closed','','inicio','','','2021-02-08 14:43:25','2021-02-08 14:43:25','',0,'http://localhost:10018/?page_id=18',0,'page','',0);
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
INSERT INTO `wp_posts` VALUES (75,1,'2021-02-08 14:31:55','2021-02-08 14:31:55','','pollo9','','inherit','open','closed','','pollo9','','','2021-02-08 14:31:55','2021-02-08 14:31:55','',0,'http://localhost:10018/wp-content/uploads/2021/02/pollo9.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-02-08 14:33:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-08 14:33:59','0000-00-00 00:00:00','',0,'http://localhost:10018/?page_id=76',0,'page','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-02-08 14:34:25','2021-02-08 14:34:25','','Inicio','','trash','closed','closed','','inicio-2__trashed','','','2021-02-08 14:35:14','2021-02-08 14:35:14','',0,'http://localhost:10018/?page_id=77',0,'page','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-02-08 14:34:25','2021-02-08 14:34:25','','Inicio','','inherit','closed','closed','','77-revision-v1','','','2021-02-08 14:34:25','2021-02-08 14:34:25','',77,'http://localhost:10018/77-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-02-08 14:34:42','2021-02-08 14:34:42','','Productos','','publish','closed','closed','','productos','','','2021-02-08 14:34:43','2021-02-08 14:34:43','',0,'http://localhost:10018/?page_id=79',0,'page','',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'menu1','menu1',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"6f1100aef79a927ad9db008cee3d0ea81678095ef3638823b83d140437930c54\";a:4:{s:10:\"expiration\";i:1612967401;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1612794601;}s:64:\"64f9620f2d1c2460de9d7617536c25e2680b6eeabdb1557e47ac4344cfd2d623\";a:4:{s:10:\"expiration\";i:1613066412;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36\";s:5:\"login\";i:1612893612;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1612719884');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'nav_menu_recently_edited','2');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-12 15:06:58
