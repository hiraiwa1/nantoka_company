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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-03-28 03:32:30','2021-03-28 03:32:30','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://nantoka.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://nantoka.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','nantoka','yes');
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
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/archives/%post_id%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:21:\"archives/interview/?$\";s:29:\"index.php?post_type=interview\";s:51:\"archives/interview/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=interview&feed=$matches[1]\";s:46:\"archives/interview/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=interview&feed=$matches[1]\";s:38:\"archives/interview/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=interview&paged=$matches[1]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"archives/interview/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"archives/interview/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"archives/interview/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"archives/interview/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"archives/interview/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"archives/interview/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"archives/interview/(.+?)/embed/?$\";s:42:\"index.php?interview=$matches[1]&embed=true\";s:37:\"archives/interview/(.+?)/trackback/?$\";s:36:\"index.php?interview=$matches[1]&tb=1\";s:57:\"archives/interview/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?interview=$matches[1]&feed=$matches[2]\";s:52:\"archives/interview/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?interview=$matches[1]&feed=$matches[2]\";s:45:\"archives/interview/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?interview=$matches[1]&paged=$matches[2]\";s:52:\"archives/interview/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?interview=$matches[1]&cpage=$matches[2]\";s:41:\"archives/interview/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?interview=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=17&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:59:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:46:\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:33:\"archives/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"archives/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"archives/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"archives/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"archives/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:47:\"show-current-template/show-current-template.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','nantoka_company','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','nantoka_company','yes');
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
INSERT INTO `wp_options` VALUES (82,'page_on_front','17','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1632454350','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"bcn_manage_options\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1618633951;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618673551;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618716751;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618716769;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618716771;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618803151;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','wHseS fGSTL/VBWuouru`Lhszk2z`j=.f/-JWn}PSz,*]&LOYL5,jpMu N1=2=1v','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','h/`-s%f$qXZ?iAKzkT(dt7)!7Jl_4%he/oSd^|m=nwZpyAXgD)|VP=dtut}*uPM;','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:1:{s:22:\"Rg1YtdHJwk7ExbgPRFUJA0\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B6ZOJ/olJIsedLJyoqYRxpQ9bsRcfW.\";s:10:\"created_at\";i:1618571758;}}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616924824;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (147,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (150,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (151,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (175,'current_theme','hiraiwa','yes');
INSERT INTO `wp_options` VALUES (176,'theme_mods_nantoka_company','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"global\";i:4;s:12:\"place_global\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (177,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (190,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (197,'acf_version','5.9.5','yes');
INSERT INTO `wp_options` VALUES (214,'_transient_health-check-site-status-result','{\"good\":\"14\",\"recommended\":\"5\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (242,'widget_bcn_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (247,'wpcf7','a:2:{s:7:\"version\";s:3:\"5.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1617535609;s:7:\"version\";s:3:\"5.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (254,'duplicate_post_copytitle','1','yes');
INSERT INTO `wp_options` VALUES (255,'duplicate_post_copydate','0','yes');
INSERT INTO `wp_options` VALUES (256,'duplicate_post_copystatus','0','yes');
INSERT INTO `wp_options` VALUES (257,'duplicate_post_copyslug','0','yes');
INSERT INTO `wp_options` VALUES (258,'duplicate_post_copyexcerpt','1','yes');
INSERT INTO `wp_options` VALUES (259,'duplicate_post_copycontent','1','yes');
INSERT INTO `wp_options` VALUES (260,'duplicate_post_copythumbnail','1','yes');
INSERT INTO `wp_options` VALUES (261,'duplicate_post_copytemplate','1','yes');
INSERT INTO `wp_options` VALUES (262,'duplicate_post_copyformat','1','yes');
INSERT INTO `wp_options` VALUES (263,'duplicate_post_copyauthor','0','yes');
INSERT INTO `wp_options` VALUES (264,'duplicate_post_copypassword','0','yes');
INSERT INTO `wp_options` VALUES (265,'duplicate_post_copyattachments','0','yes');
INSERT INTO `wp_options` VALUES (266,'duplicate_post_copychildren','0','yes');
INSERT INTO `wp_options` VALUES (267,'duplicate_post_copycomments','0','yes');
INSERT INTO `wp_options` VALUES (268,'duplicate_post_copymenuorder','1','yes');
INSERT INTO `wp_options` VALUES (269,'duplicate_post_taxonomies_blacklist','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (270,'duplicate_post_blacklist','','yes');
INSERT INTO `wp_options` VALUES (271,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (272,'duplicate_post_show_original_column','0','yes');
INSERT INTO `wp_options` VALUES (273,'duplicate_post_show_original_in_post_states','0','yes');
INSERT INTO `wp_options` VALUES (274,'duplicate_post_show_original_meta_box','0','yes');
INSERT INTO `wp_options` VALUES (275,'duplicate_post_show_link','a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (276,'duplicate_post_show_link_in','a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (277,'duplicate_post_show_notice','1','no');
INSERT INTO `wp_options` VALUES (278,'duplicate_post_version','4.1.2','yes');
INSERT INTO `wp_options` VALUES (331,'recovery_mode_email_last_sent','1618571758','yes');
INSERT INTO `wp_options` VALUES (395,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (412,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (413,'cptui_post_types','a:1:{s:9:\"interview\";a:30:{s:4:\"name\";s:9:\"interview\";s:5:\"label\";s:18:\"インタビュー\";s:14:\"singular_label\";s:18:\"インタビュー\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (419,'_site_transient_timeout_browser_d084a7cffca12a48f6ef32b18168de98','1618743468','no');
INSERT INTO `wp_options` VALUES (420,'_site_transient_browser_d084a7cffca12a48f6ef32b18168de98','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (421,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1618743469','no');
INSERT INTO `wp_options` VALUES (422,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (428,'cptui_taxonomies','a:1:{s:9:\"interview\";a:25:{s:4:\"name\";s:9:\"interview\";s:5:\"label\";s:27:\"インタビューリスト\";s:14:\"singular_label\";s:27:\"インタビューリスト\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:9:\"interview\";}}}','yes');
INSERT INTO `wp_options` VALUES (468,'interview_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (494,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1618673270','no');
INSERT INTO `wp_options` VALUES (495,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2021/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2021-06-07 00:00:00\";s:8:\"end_date\";s:19:\"2021-06-10 00:00:00\";s:20:\"start_unix_timestamp\";i:1623020400;s:18:\"end_unix_timestamp\";i:1623279600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.162202200000003;s:9:\"longitude\";d:-8.6570587999999997;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Japan (Online)\";s:3:\"url\";s:32:\"https://japan.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-06-20 12:00:00\";s:8:\"end_date\";s:19:\"2021-06-26 00:00:00\";s:20:\"start_unix_timestamp\";i:1624158000;s:18:\"end_unix_timestamp\";i:1624633200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.676191899999999;s:9:\"longitude\";d:139.65031060000001;}}}}','no');
INSERT INTO `wp_options` VALUES (507,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.7.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618630439;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (508,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618630065;s:7:\"checked\";a:1:{s:15:\"nantoka_company\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (509,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618630065;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"6.6.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.0\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.5\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"4.1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"6.6.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.6.6.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=2410525\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (510,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:7:\"version\";s:5:\"5.7.1\";s:9:\"timestamp\";i:1618571146;}','no');
INSERT INTO `wp_options` VALUES (514,'secret_key','}@P{5hR.Wv[~I]h)b!&I{mMaJoG^^A].Y38eQ0CNAxb;rMZr+_ OW.(%^o/GyU;i','no');
INSERT INTO `wp_options` VALUES (517,'_site_transient_timeout_theme_roots','1618631863','no');
INSERT INTO `wp_options` VALUES (518,'_site_transient_theme_roots','a:1:{s:15:\"nantoka_company\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (519,'_site_transient_timeout_browser_d36b7428f034633878fcdcb88dd9ac82','1619234868','no');
INSERT INTO `wp_options` VALUES (520,'_site_transient_browser_d36b7428f034633878fcdcb88dd9ac82','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.128\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (521,'_transient_timeout_feed_992efac292246ae35bf235a03417a202','1618673271','no');
INSERT INTO `wp_options` VALUES (522,'_transient_feed_992efac292246ae35bf235a03417a202','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"ブログ | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 12:47:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50761\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WordPress 5.7.1 セキュリティとメンテナンスのリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2021/04/15/wordpress-5-7-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 12:47:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6172\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:186:\"以下は、Peter Wilson が書いた WordPress.org 公式ブログの記事「WordPress 5.7.1 Security and Maintenance Release」を訳したものです。 誤字脱字誤訳 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3799:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\"><a href=\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\">WordPress 5.7.1 Security and Maintenance Release</a></a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.7.1 が利用可能になりました。</p>\n\n\n\n<p>これは2点のセキュリティ修正と<a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">26点のバグ修正</a>を含んだセキュリティとメンテナンスのリリースです。<strong>セキュリティ修正</strong>を含むものですので、今すぐサイトを更新することを勧めます。WordPress 4.7 以降の全メジャーバージョンの更新も併せて行われています。</p>\n\n\n\n<p>WordPress 5.7.1 は短いサイクルでのセキュリティとメンテナンスのリリースです。次のメジャーバージョンリリースは 5.8 になります。</p>\n\n\n\n<p>WordPress 5.7.1 は WordPress.org からダウンロードするか、<strong>ダッシュボード &gt; 更新</strong> メニューで <strong>今すぐ更新</strong> をクリックして更新できます。</p>\n\n\n\n<p>自動バックグラウンド更新がサポートされたサイトではすでに更新のプロセスが始まっているでしょう。</p>\n\n\n\n<h3>セキュリティ更新</h3>\n\n\n\n<p>バージョン 4.7 から 5.7 までのすべての WordPress に影響する2点のセキュリティ問題が修正されました:</p>\n\n\n\n<ul><li><a href=\"https://www.sonarsource.com/\">SonarSource</a> により報告された、PHP 8 環境で発生するメディアライブラリの XXE 脆弱性。</li><li><a href=\"https://mikaelkorpela.fi/\">Mikael Korpela</a> により報告された、REST API のデータ露出脆弱性。</li></ul>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">非公開での脆弱性情報提供</a>にご理解くださった報告者の皆さんに感謝します。それによってセキュリティチームは時間を稼ぐことができ、実際に WordPress サイトが攻撃を受けるより前に脆弱性を修正することができました。</p>\n\n\n\n<p>これらの問題に関して、Adam Zielinski、Pascal Birchler、Peter Wilson、Juliette Reinders Folmer、Alex Concha、Ehtisham Siddiqui、Timothy Jacobs、そして WordPress セキュリティチームの多大な貢献がありました。</p>\n\n\n\n<p>より詳しい情報は、Trac 上の<a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">変更点の完全なリスト</a>を参照、または <a href=\"https://wordpress.org/support/wordpress-version/version-5-7-1/\">5.7.1 の HelpHub ドキュメンテーションページ</a>を確認してください。</p>\n\n\n\n<h2>感謝と称賛を</h2>\n\n\n\n<p>(翻訳者より: 日本語版では貢献者全員の名前を載せることができませんので、オリジナルの<a href=\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\">英語版リリース告知</a>をぜひ参照してください。)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:62:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"ブロックパターンの作り方\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://ja.wordpress.org/2021/04/03/so-you-want-to-make-block-patterns/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 03 Apr 2021 08:05:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6156\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"ブロックパターンとは何か、そしてパターンを使う場面や作り方をご紹介します。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:59:\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\";s:6:\"length\";s:6:\"273436\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:58:\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\";s:6:\"length\";s:6:\"493389\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:17326:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/cbringmann/\"><a href=\"https://profiles.wordpress.org/beafialho/\">Beatriz Fialho</a></a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\"></a><a href=\"https://wordpress.org/news/2020/03/adderley/\"></a><a href=\"https://wordpress.org/news/2021/02/welcome-to-your-wp-briefing/\"></a><a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\"><a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">So you want to make block patterns?</a></a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://ja.wordpress.org/files/2021/04/Block-Patterns.png\"><img loading=\"lazy\" width=\"1024\" height=\"575\" src=\"https://ja.wordpress.org/files/2021/04/Block-Patterns-1024x575.png?resize=632%2C414&amp;ssl=1\" alt=\"ブロックパターン\" class=\"wp-image-6157\" srcset=\"https://ja.wordpress.org/files/2021/04/Block-Patterns-1024x575.png 1024w, https://ja.wordpress.org/files/2021/04/Block-Patterns-300x169.png 300w, https://ja.wordpress.org/files/2021/04/Block-Patterns-768x431.png 768w, https://ja.wordpress.org/files/2021/04/Block-Patterns.png 1264w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>テーマやプラグインなど、WordPress のブロックエディターで何かを作ったことがある人は、<strong>ブロックパターン</strong>についても聞いたことがあるかもしれません。</p>\n\n\n\n<p>WordPress に同梱されているパターンを眺めていて、これについて短い記事を書くのも良いかなと思いました。パターンは知っているととても便利なショートカットなのですが、一体何なのかとか、使う場面を知らない方も多いと思います。</p>\n\n\n\n<h2>ブロックパターンとは</h2>\n\n\n\n<p>パターンは<strong>あらかじめ配置されたブロックの集まり</strong>で、多様に組み合わせたり配置を変えることができるので、美しいコンテンツをもっと簡単に作れるようになります。レイアウトをスタートするためのツールとして、必要に応じてコンテンツに追加してすぐに使うことがで、1個のブロックのようなシンプルなものから、全ページのレイアウトのような複雑なものまであります。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=632%2C414&amp;ssl=1\" alt=\"ブロックライブラリ内のブロックパターン\" class=\"wp-image-10021\" /></figure>\n\n\n\n<p>パターンは、ブロックライブラリのタブに格納されています。クリックしたりドラッグしたりすると、サイトのスタイルでプレビューできます。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=632%2C413&amp;ssl=1\" alt=\"ブロックパターンの例\" class=\"wp-image-10022\" /></figure>\n\n\n\n<p>基本的にブロックパターンとは、あらかじめ束ねられた単なるブロックです。</p>\n\n\n\n<pre class=\"wp-block-code has-small-font-size\"><code>&lt;!-- wp:group --&gt;\n&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;\n&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;\n&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;\n&lt;!-- /wp:image --&gt;\n&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;\n&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;\n&lt;!-- /wp:quote --&gt;\n&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;!-- /wp:group --&gt;</code></pre>\n\n\n\n<p>ブロックエディターを使っていくつかのブロックを好きなように設定するだけで、難しい作業の部分は終了です。</p>\n\n\n\n<h2>ブロックライブラリに入れるには</h2>\n\n\n\n<p><a href=\"https://ja.wordpress.org/team/handbook/block-editor/reference-guides/block-api/block-patterns/\">ハンドブックにはもっと詳しい説明がありますが</a>、結論から言うと以下のとおりです。</p>\n\n\n\n<pre class=\"wp-block-code has-small-font-size\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n	\'my-plugin/my-quote-pattern\',\n	array(\n		\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n		\'categories\'  =&gt; array( \'text\' ),\n		\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n		\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n	)\n);\n\n?&gt;</code></pre>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f446.png\" alt=\"👆\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> これは PHP のスニペットですので、WordPress のプラグインに落とし込んだり、もっと簡単に言えば、テーマの<strong>functions.php</strong> ファイルに貼り付けたりすることができます。完了すると、以下のようになります。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=632%2C430&amp;ssl=1\" alt=\"区切り線、中央配置の画像、引用、区切り線を含むブロックパターン\" class=\"wp-image-10047\" /></figure></div>\n\n\n\n<p>画像を含むパターンでは、画像をどこに保存するかを考える時間を割く価値があります。<a href=\"https://ja.wordpress.org/themes/tt1-blocks/\">TT1 Blocks テーマ</a> (&#8220;TwentyTwentyOne Blocks&#8221; の略) では、画像をテーマライブラリに保存しています。</p>\n\n\n\n<h2>次のステップ</h2>\n\n\n\n<p>ブロックパターンは、ブロックライブラリから挿入した時点でユニットとしてのまとまりを失ってしまいます。作ったパターンから切り離された単なるブロックの寄せ集めになり、好みに合わせてカスタマイズできるものになるのです。パターンはテンプレートではなく、あくまでもショートカットです。これはつまり、テーマの切り替えやパターンプラグインの無効化を気にする必要はないということでもあります。挿入済みのブロックがどこかに行ってしまうこともありません。</p>\n\n\n\n<p>とはいえ、あるパターンをとても気に入って、まったくカスタマイズせずに何度も使いたい場合は、<a href=\"https://ja.wordpress.org/2021/03/05/gutenberg-tutorial-reusable-blocks/\" data-type=\"post\" data-id=\"6128\">再利用ブロック</a>にすることもできます。</p>\n\n\n\n<figure class=\"wp-block-embed is-type-rich is-provider-embed-handler wp-block-embed-embed-handler\"><div class=\"wp-block-embed__wrapper\">\n<div style=\"width: 612px;\" class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->\n<video class=\"wp-video-shortcode\" id=\"video-6156-1\" width=\"612\" height=\"344\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"https://wordpress.org/news/files/2021/03/reusable-block.mp4?_=1\" /><a href=\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\">https://wordpress.org/news/files/2021/03/reusable-block.mp4</a></video></div>\n</div></figure>\n\n\n\n<p>再利用ブロックは、その名の通り、再利用するために作成されます。この機能を使うのに良い場面は、よく使うちょっとしたスニペットを保存しておいて、一箇所で編集することで挿入したものすべてを更新するといった時です。<strong>「Twitter でフォロー」、「シリーズに含まれる記事一覧」、「メルマガ購読」</strong>などがその好例です。</p>\n\n\n\n<h2>良いブロックパターンとは</h2>\n\n\n\n<p>現在 WordPress コアに含まれるパターンは、利用できる機能によって制限されます。ブロックエディター上で文字間隔をカスタマイズできない場合、ブロックパターンでもそれは実現できません。グローバルスタイルプロジェクトではブロックの機能を拡張していく予定ですが、それまでは、利用可能なツールを使っていくしかありません。</p>\n\n\n\n<p>それでも、色、画像、タイポグラフィといった最も基本的な要素があれば、多くのことが可能になります。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh5.googleusercontent.com/W3RKCu5c7ONKnmuLdChmOhD40iZAFseq30i-qGwqFaq0dPTj_U5b1JXhhRR96-jRvJvKgC8BBZA4p_-EBYF-WoMRPoDLgCX8FG3RIWQhv6zX6-H7xBj4FZGGRm7cl_qdVgRy9G8q\" alt=\"画像とテキストを含む3カラムのブロックパターン\" /><figcaption>画像とテキストを含む3カラム</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=632%2C397&amp;ssl=1\" alt=\"右側に画像 、左側にメディアとテキストを配置したブロックパターン\" class=\"wp-image-10036\" /><figcaption>右側に画像 + メディアとテキスト</figcaption></figure>\n\n\n\n<p>これらのパターンは、WordPress のコアに採用される可能性があるものとしてデザインしたのですが、すべてに共通するいくつかの特性があります。</p>\n\n\n\n<h3>テーマが共通している。</h3>\n\n\n\n<p>パターンは、サイトの一部と考えることができます。パターンは全体の一部であるため、同じテーマを共有する他のパターンの文脈の中で存在するのが最も効果的です。上のパターンには、「自然」、「アート」、「建築」といったテーマを共有したものなどがいくつかあります。このように、複数のパターンを組み合わせることで、サイトの複数のページを一度にまとめることが可能になります。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=632%2C406&amp;ssl=1\" alt=\"画像背景のカバーブロック上に見出し、パラグラフ、ボタンを配置したブロックパターン\" class=\"wp-image-10033\" /></figure>\n\n\n\n<h3>ミニマルなカラーパレットが共通している。</h3>\n\n\n\n<p>全体を構成するパーツであるパターンは、必然的に異なる色を使ったコンテキストで使われます。色数を減らすことで調和の可能性が高まると同時に、ジャストフィットさせるためのカスタマイズも少なくて済みます。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=632%2C535&amp;ssl=1\" alt=\"見出しと2カラムのパラグラフを含むブロックパターン\" class=\"wp-image-10042\" /></figure>\n\n\n\n<h3>最高のパターンは、それなくしてはできないようなことを実現する。</h3>\n\n\n\n<p>画像をオフセットしてユニークなシルエットを作ったり、目立たない機能 (カバーブロックの固定配置など) を利用したりすることで、創造性を発揮することができます。</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>ヒント: プラグイン由来のブロックも含めて、どんなブロックでもパターンに使うことができます。また、そのブロックがブロックディレクトリにあって、まだお使いの WordPress に存在しない場合は、ワンクリックでインストールするよう促されます。</p></blockquote>\n\n\n\n<figure class=\"wp-block-embed is-type-rich is-provider-embed-handler wp-block-embed-embed-handler\"><div class=\"wp-block-embed__wrapper\">\n<div style=\"width: 612px;\" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-6156-2\" width=\"612\" height=\"344\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4?_=2\" /><a href=\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\">https://wordpress.org/news/files/2021/03/waves-pattern.mp4</a></video></div>\n</div></figure>\n\n\n\n<h2>こちらのプラグインをどうぞ</h2>\n\n\n\n<pre class=\"wp-block-code has-small-font-size\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n	\'my-plugin/my-quote-pattern\',\n	array(\n		\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n		\'categories\'  =&gt; array( \'text\' ),\n		\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n		\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\" s-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n	)\n);\n\n?&gt;</code></pre>\n\n\n\n<p>パターンを作りたい場合のために、このサンプルプラグインでは、上でご紹介したパターンのうち2つを採用しています。プラグインのフォルダーに入れれば、ブロックライブラリに表示されます。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=632%2C966&amp;ssl=1\" alt=\"アバターと引用のブロックパターンが追加されたパターンタブ\" class=\"wp-image-10062\" /><figcaption>「テキスト」カテゴリーにインストールされたパターン</figcaption></figure></div>\n\n\n\n<p>自由に調整し、カスタマイズして、お好みのようにしてください。結局のところ、これは GPL ですから !</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WordPress 5.7 “エスペランサ”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ja.wordpress.org/2021/03/10/esperanza/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Mar 2021 11:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6134\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:232:\"以下は、Matt Mullenweg が書いた WordPress.org 公式ブログの記事「WordPress 5.7 “Esperanza”」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくだ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\";s:6:\"length\";s:6:\"183815\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8438:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\" data-type=\"URL\" data-id=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/03/esperanza/\" data-type=\"URL\" data-id=\"https://wordpress.org/news/2021/03/esperanza/\"></a><a href=\"https://wordpress.org/news/2021/03/esperanza/\">WordPress 5.7 “Esperanza”</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<div class=\"wp-block-cover\" style=\"background-color:#0a5b89\"><img class=\"wp-block-cover__image-background wp-image-9932\" alt=\"\" src=\"https://wordpress.org/news/files/2021/03/about-header-brushes.png\" data-object-fit=\"cover\" data-object-position=\"52% 67%\" /><div class=\"wp-block-cover__inner-container\">\n<p class=\"has-text-align-center has-large-font-size\"><strong>WordPress 5.7</strong> <strong>エスペランサ</strong></p>\n\n\n\n<p class=\"has-text-align-center\">管理画面に導入された新しいカラーパレット。よりシンプルな操作を可能にするエディター。適切な場所に配置されたコントロール。WordPress 5.7 はあなたがコンテンツに集中できる環境を作ります。</p>\n\n\n\n<div style=\"height:120px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p></p>\n</div></div>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>2021年最初の WordPress リリース、「エスペランサ」を紹介します。「エスペランサ」は現代の天才的ミュージシャン、エスペランサ・スポルディングにちなんで名付けられました。彼女の音楽家としての事績は多岐に渡り、気持ちを奮い立たせます。<a href=\"https://ja.wikipedia.org/wiki/%E3%82%A8%E3%82%B9%E3%83%9A%E3%83%A9%E3%83%B3%E3%82%B5%E3%83%BB%E3%82%B9%E3%83%9D%E3%83%AB%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0\">エスペランサ・スポルディング</a>についてもっと知ってください。そして彼女の音楽を聴いてみてください !</p>\n\n\n\n<p>この新しいバージョンではエディターの色設定を整理し、これまでコードを書いたり、プロを雇ったりすることなく変更することはできなかった箇所での操作が可能になりました。よく使うコントロールをさらに多数の必要な場所へ配置し、レイアウト変更もさらにシンプルになりました。</p>\n\n\n\n<h2>エディターがもっと使いやすくなりました</h2>\n\n\n\n<p><strong>より多くの場所でのフォントサイズ調整:</strong> リストブロックとコードブロックでフォントサイズの制御が必要な時には、ブロック内でできるようになりました。この変更を行うためだけに別の画面に移動する必要はもうありません。</p>\n\n\n\n<p><strong>再利用可能ブロック:</strong> いくつかの機能強化により、再利用可能ブロックがより安定し、使いやすくなりました。また、「更新」ボタンをクリックすると、投稿時に自動保存されるようになりました。</p>\n\n\n\n<p><strong>インサーターのドラッグ &amp; ドロップ: </strong>インサーターから直接、ブロックとブロックパターンを投稿にドラッグできます。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\"></video></figure>\n\n\n\n<h2>カスタムコーディング無しでできることがさらに多く</h2>\n\n\n\n<p><strong>最大高の配置:</strong> カバーブロックのようなブロックを、ウィンドウ全体に表示できるようになりました。</p>\n\n\n\n<p><strong>ボタンブロック:</strong> 縦または横のレイアウトを選択できます。また、ボタンの幅を事前に設定したパーセンテージに設定できます。</p>\n\n\n\n<p><strong>ソーシャルアイコンブロック:</strong> アイコンのサイズを変更できるようになりました。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/s.w.org/images/core/5.7/about-57-cover.jpg?w=632&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h2>よりシンプルなデフォルトカラーパレット</h2>\n\n\n\n<p>この新しく効率化されたカラーパレットでは、WordPress のソースコードに含まれていたすべての色を、白と黒に対して<a href=\"https://www.w3.org/WAI/WCAG2AAA-Conformance\">WCAG 2.0AA 推奨コントラスト比</a>を満たす7つのコアカラーと56の色調範囲にまとめました。</p>\n\n\n\n<p>デフォルトの WordPress ダッシュボード配色の新しい配色を、テーマやプラグイン、またはその他のコンポーネントを作成するときに使用しましょう。詳細については<a href=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7\">カラーパレットの開発メモ</a>をご覧ください。</p>\n\n\n\n<h2>ワンクリックで HTTP から HTTPS へ</h2>\n\n\n\n<p>これからは、ワンクリックでサイトを HTTP から HTTPS へ切り替えられます。切り替えを行うと、WordPress はデータベースの URL を自動更新します。探したり推測したりする必要はもうありません。</p>\n\n\n\n<h2>新しい Robots API</h2>\n\n\n\n<p>新しい Robots API では robots メタタグにフィルターディレクティブを含めることができ、API には <code>max-image-preview: large</code> ディレクティブがデフォルトで含まれています。つまり、検索エンジンはより大きな画像プレビューを表示できます。これがトラフィックを後押ししてくれることもあるでしょう (サイトが <em>not-public</em>、つまり非公開とマークされている場合を除く)。</p>\n\n\n\n<h2>iframe の遅延読み込み</h2>\n\n\n\n<p>簡単に iframe を遅延読み込みできます。幅と高さの両方を指定すると、デフォルトで WordPress は iframe タグに <code>loading=\"lazy\"</code> 属性を追加します。</p>\n\n\n\n<h2>jQuery 3.5.1 へのアップデート後の継続的なクリーンアップ</h2>\n\n\n\n<p>長年 jQuery は、ベーシックなツールではできなかった画面上の物に動きをつけるのを支援してきましたが、それは変化し続けており、jQuery もまた変化しています。</p>\n\n\n\n<p>5.7では jQuery はさらに焦点を絞って干渉することが減り、コンソール内のメッセージも少なくなりました。</p>\n\n\n\n<h2>詳細はフィールドガイドを参照してください。</h2>\n\n\n\n<p>WordPress フィールドガイドの最新バージョンを参照してください。各変更の開発者向けノートをまとめた必読のガイドです。<a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide\">WordPress 5.7 フィールドガイド</a>。</p>\n\n\n\n<h2>リリースチーム</h2>\n\n\n\n<p>WordPress 5.7 は経験豊富な少数精鋭のリリースチームの主導によりリリースされました:</p>\n\n\n\n<ul><li><strong>Release Lead:</strong>&nbsp;Matt Mullenweg</li><li><strong>Triage Lead:</strong>&nbsp;Tonya Mork</li><li><strong>Release Coordinator:</strong>&nbsp;Ebonie Butler</li><li><strong>Core Tech Lead:</strong>&nbsp;Sergey Biryukov</li><li><strong>Editor Tech Lead:</strong>&nbsp;Robert Anderson</li><li><strong>Design Lead:</strong>&nbsp;Tim Hengeveld</li><li><strong>Accessibility Lead:</strong>&nbsp;Sarah Ricker</li><li><strong>Documentation Lead:&nbsp;</strong>Jb Audras</li><li><strong>Test Lead:</strong>&nbsp;Monika Rao</li></ul>\n\n\n\n<p>このリリースは総勢481名のボランティア貢献者たちのハードワークの賜物です。GitHub では約250件のチケットと約950件のプルリクエストが作成され、活発な協働が行われました。(翻訳者より: 日本語版では貢献者全員の名前を載せることができませんので、オリジナルの<a href=\"https://wordpress.org/news/2021/03/esperanza/\">英語版リリース告知</a>をぜひ参照してください。)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:66:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n\n\n\n\n\n\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"「再利用ブロック」を活用してみよう\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://ja.wordpress.org/2021/03/05/gutenberg-tutorial-reusable-blocks/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Mar 2021 23:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6128\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:204:\"以下は、Chloe Bringmanna が書いた WordPress.org 公式ブログの記事「Did You Know About Reusable Blocks?」を訳したものです。 誤字脱字誤訳などありましたらフ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:9:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:61:\"https://wordpress.org/news/files/2021/02/1_create_content.mov\";s:6:\"length\";s:7:\"1586076\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:66:\"https://wordpress.org/news/files/2021/02/2_convert_to_reusable.mov\";s:6:\"length\";s:7:\"2637657\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:66:\"https://wordpress.org/news/files/2021/02/3_reusable_blocks_tab.mov\";s:6:\"length\";s:7:\"1482152\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:68:\"https://wordpress.org/news/files/2021/02/4_saving_global_changes.mov\";s:6:\"length\";s:7:\"2110818\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:73:\"https://wordpress.org/news/files/2021/02/5_manage_all_reusable_blocks.mov\";s:6:\"length\";s:7:\"2310871\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/02/6_tip_name_them.mov\";s:6:\"length\";s:7:\"1498729\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:64:\"https://wordpress.org/news/files/2021/02/7_tip_place_in_flow.mov\";s:6:\"length\";s:7:\"8545345\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:65:\"https://wordpress.org/news/files/2021/02/10_complex_layouts-2.mov\";s:6:\"length\";s:8:\"22852109\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:66:\"https://wordpress.org/news/files/2021/02/8_tip_import_export-1.mov\";s:6:\"length\";s:7:\"5534991\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11239:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloe Bringmanna</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\"></a><a href=\"https://wordpress.org/news/2020/03/adderley/\"></a><a href=\"https://wordpress.org/news/2021/02/welcome-to-your-wp-briefing/\"></a><a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\">Did You Know About Reusable Blocks?</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><strong>このチュートリアルは<em> Joen Asmussen <a href=\"https://profiles.wordpress.org/joen/\">@joen</a></em> が作成しました。</strong></p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><a href=\"https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja.png\"><img loading=\"lazy\" width=\"1024\" height=\"576\" src=\"https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja-1024x576.png?resize=632%2C414&amp;ssl=1\" alt=\"\" class=\"wp-image-6129\" srcset=\"https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja-1024x576.png 1024w, https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja-300x169.png 300w, https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja-768x432.png 768w, https://ja.wordpress.org/files/2021/03/Reusable-Blocks-featured-ja.png 1264w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></div>\n\n\n\n<p>WordPress のブロックエディター (別名 Gutenberg) には「再利用ブロック」という機能があります。後で使うために保存され、一箇所で編集できるブロックです。</p>\n\n\n\n<p>こんなことをしたいと思ったことはありませんか ?</p>\n\n\n\n<ul><li>投稿やページをまたいで同じスニペット (断片) を再利用すること。</li><li>複雑なレイアウトを保存して、1つの投稿から別の投稿にコピー &amp; ペーストする手間を省くこと。</li></ul>\n\n\n\n<p>再利用ブロックは、これらのことを可能にします。</p>\n\n\n\n<h2>つまり、テンプレートみたいなもの ?</h2>\n\n\n\n<p>完全にそうというわけでもありません。再利用ブロックは、グローバルに同期された、あなただけのコンテンツのスニペットと考えてください。すべての再利用ブロックを一箇所で編集することができ、そのブロックを挿入した投稿やページも、更新されたバージョンを取得します。</p>\n\n\n\n<p>テンプレートを使用してサイトを構成する代わりに、再利用ブロックを活用できます。例えば、</p>\n\n\n\n<ul><li>ホームページや商品ページに掲載されている利用者の声。</li><li>記事の途中に挿入する「この記事はシリーズの一部です」というボックス。</li><li>人気記事の文章内に織り込む「ソーシャルメディアでフォローください」セクション。</li><li>「ニュースレター購読」ボックス、お問い合わせフォーム、アンケート、クイズ、投票など、複雑ながら静的なブロック。</li></ul>\n\n\n\n<p>再利用ブロックの重要な特徴として、コンテンツのスニペットを再利用したい時や、一箇所で編集して変更をすべてのインスタンスに伝播させたい時に、他にはないほど便利です。</p>\n\n\n\n<h2>作り方</h2>\n\n\n\n<p>再利用ブロックを作成するには、ブロックエディターを開き、再利用したいコンテンツを作成します。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/1_create_content.mov\"></video></figure>\n\n\n\n<p>ここで、再利用ブロックにしたいコンテンツを選択し、3つのドットの「詳細」メニューをクリックして「再利用可能なブロックに追加」を選択します。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/2_convert_to_reusable.mov\"></video></figure>\n\n\n\n<p>これで再利用ブロックができました。今後は、このブロックや作成した他のブロックは、ブロックライブラリの「再利用ブロック」タブで見つけることができます。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/3_reusable_blocks_tab.mov\"></video></figure>\n\n\n\n<p>ここでは、投稿または固定ページに新しく作成したブロックを挿入することもできます。</p>\n\n\n\n<h2>既存の再利用ブロックの編集</h2>\n\n\n\n<p>再利用ブロックを編集するには、選択して編集を加えます。編集を行うと、「公開」ボタンに小さなドットが表示されます。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/4_saving_global_changes.mov\"></video></figure>\n\n\n\n<p>このドットは、テンプレートを編集しているときと同じように、編集中の投稿以外の投稿にも影響を与える可能性のあるグローバルな変更を行ったことを示しています。これにより、変更が意図的に行われたのかどうか確認することができます。</p>\n\n\n\n<p><strong>再利用ブロックを編集する別の方法としては</strong>、3ドットのグローバル追加メニューをクリックして「すべての再利用ブロックを管理」を選択することもできます。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/5_manage_all_reusable_blocks.mov\"></video></figure>\n\n\n\n<p>そうすると、作成したすべての再利用ブロックの編集、名前の変更、エクスポート、削除ができるセクションに移動します。</p>\n\n\n\n<h2>他にできること</h2>\n\n\n\n<p>ここでは、再利用ブロックを最大限に活用するためのヒントとコツをご紹介します。</p>\n\n\n\n<h3>良い名前をつける</h3>\n\n\n\n<p>再利用ブロックに名前を付けるとき、つまりこれはブロックライブラリで検索する名前になるため、検索語を選択していることになります (または、空の段落に / と入力して「スラッシュコマンド」を使用するとき)。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/6_tip_name_them.mov\"></video></figure>\n\n\n\n<p>「ギャラリー」や「画像」のような名前は避けてください。それらのブロックを挿入する時にじゃまになるからです。「自分のプロフィール」のようなユニークな名前にすれば、問題を避けることができます。</p>\n\n\n\n<h3>コンテンツフローの最適な位置に挿入する</h3>\n\n\n\n<p>再利用ブロックの明らかな利点の1つは、ブロックエディターの他のすべてのものと同じように、これがただのブロックであるということです。つまり、コンテンツのどこにでも挿入できるということです。情報豊富なプロフィール文は投稿の上部または下部に配置したいかもしれませんが、「この投稿はシリーズの一部です」というボックスは、読む流れを乱さないように、2つか3つ目の段落に置いたほうが座りが良いかもしれません。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/7_tip_place_in_flow.mov\"></video></figure>\n\n\n\n<h3>デザインのショートカット</h3>\n\n\n\n<p>気に入った複雑なレイアウトが作れたり、適切な画像やボタンを使った CTA (コールトゥアクション/注意喚起要素) を作れたけれど、良い状態になるまでに時間がかかってしまったということもあるでしょう。ぜひ、再利用ブロックとして保存してください。通常のブロックに変換するためだけに挿入するつもりであっても、時間の短縮になるかもしれません。</p>\n\n\n\n<p>再利用ブロックを通常のブロックに変換するには、選択して「通常のブロックへ変換」をクリックします。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/10_complex_layouts-2.mov\"></video><figcaption><em><a href=\"https://beatrizfialho.com/\">Beatriz Fialho</a></em> によるデザイン。</figcaption></figure>\n\n\n\n<p><strong>ヒント</strong>: <a href=\"https://gutenberghub.com/\">Gutenberg Hub</a> や <a href=\"https://shareablock.com/\">ShareABlock</a> でも素敵なパターンを見つけることができます。</p>\n\n\n\n<h3>他のサイトに移動する</h3>\n\n\n\n<p>別のサイトに再利用ブロックを移動する必要がある場合、エクスポートすることも、インポートすることもできます。3ドットのグローバル追加メニューから「すべての再利用ブロックを管理」セクションに移動します。エクスポートしたいブロックにカーソルを合わせ、「JSON 形式でエクスポート」をクリックします。</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2021/02/8_tip_import_export-1.mov\"></video></figure>\n\n\n\n<p>ダウンロードしたファイルは、WordPress 5.0以降のどのサイトでもインポート可能です。</p>\n\n\n\n<h2>試してみましょう</h2>\n\n\n\n<p>投稿の下書きを作成し、再利用ブロックを使い、どうやって使い始めるかを見てみましょう。遊び終わったらいつでも削除してかまいません。</p>\n\n\n\n<p>私が作成した小さな再利用ブロックをインポートし、例としてテストしてみることもできます。「注目」カテゴリーの最新投稿4件が表示される「続きを読む」ブロックです。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh6.googleusercontent.com/33_L1WQrTxNiidm8IKcSfn7_nYjcpq5zpSzycmKliDnGzFI_hLu7yLPV1vnqWgCS7H6JtFAGEXz-AVkNBLtQQEM80VA6KUfcmj1JAoVZ5ZNMavVzlGzBPEiqiD3-eUzZSvOTYm_E\" alt=\"\" /></figure>\n\n\n\n<p>記事の中のハイライトとして、読者に何か新しい読み物を提供したり、あなたの他のコンテンツを意識してもらったりするために役立ってくれるかもしれません。</p>\n\n\n\n<p><strong>この記事の動画では、近日公開予定の</strong><strong><em> WordPress 5.7</em></strong><strong>での再利用ブロックの流れを紹介しています。</strong></p>\n\n\n\n<p>この <a href=\"https://gist.github.com/jasmussen/53cb51dcd9a2bb561893aa7c5e126cdf\"><strong>gist からブロックをダウンロードして</strong></a> WordPress サイトにインポートし、独自にカスタマイズしてみてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress 5.7 RC 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://ja.wordpress.org/2021/03/03/wordpress-5-7-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Mar 2021 22:23:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6119\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:214:\"以下は、Ebonie Butler が書いた WordPress.org 公式ブログの記事「WordPress 5.7 Release Candidate 2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムま [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3158:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/03/wordpress-5-7-release-candidate-2/\">WordPress 5.7 Release Candidate 2</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.7 のリリース候補第2版 (RC 2) が利用可能になりました ! <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>WordPress 5.7 RC をテストする方法は二通りあります:</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストール/有効化する (更新チャンネルは<strong>最前線</strong>を、ストリーム設定は<strong>ベータ / RC のみ</strong>を選択)</li><li>RC の <a href=\"https://wordpress.org/wordpress-5.7-RC2.zip\">zip ファイルをダウンロード</a>してテストする</li></ul>\n\n\n\n<p>ベータおよび RC リリースをテストしてフィードバックをくださったコントリビューターのみなさん、ありがとうございます。バグのテストはリリースを万全に行う上で不可欠な要素です。</p>\n\n\n\n<h2>プラグイン・テーマ開発者のみなさんへ</h2>\n\n\n\n<p>自作のプラグインやテーマを WordPress 5.7 でテストして、問題なければ readme.txt の <em>Tested up to</em> バージョンを 5.7 に更新してください。互換性の問題を発見した場合は<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>へ投稿してください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで)。そうすれば最終リリースの前までに解決できるかもしれません。</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide\">WordPress 5.7 Field Guide</a> に主要な変更に関するより詳しい情報があるので参照してください。</p>\n\n\n\n<h2>ご協力ください</h2>\n\n\n\n<p>英語以外の言語話者の方はぜひ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の翻訳にご協力ください</a>。</p>\n\n\n\n<p>バグを見つけたと思ったときはサポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta</a> エリアに投稿してお知らせください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで) 。再現条件を含むバグ報告の作成に慣れている方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> までご報告ください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>のリストも Trac で確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress 5.7 RC\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://ja.wordpress.org/2021/02/25/wordpress-5-7-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 25 Feb 2021 00:19:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6107\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:218:\"以下は、Ebonie Butler が書いた WordPress.org 公式ブログの記事「WordPress 5.7 Release Candidate」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4592:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-release-candidate/\" data-type=\"URL\" data-id=\"https://wordpress.org/news/2021/02/wordpress-5-7-release-candidate/\">WordPress 5.7 Release Candidate</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.7 の最初のリリース候補版 (RC) が利用可能になりました ! <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>最終リリースへと続くコミュニティの重要なマイルストーンを一緒にお祝いしましょう !</p>\n\n\n\n<p>「リリース候補」というのはつまり、新バージョンのリリース準備はあらかた済んでいるものの、とは言っても何百万人ものユーザーがいて何千種ものプラグインやテーマがある環境にこれから放り込もうというのですから、何かしら見落としがあってはいけません。WordPress 5.7 は<strong>3月9日</strong>にリリースを予定していますが、それにはあなたの手助けが必要です。まだ 5.7 を試していないなら<strong>今がその時です</strong> !</p>\n\n\n\n<p>WordPress 5.7 RC をテストする方法は二通りあります:</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストール/有効化する (更新チャンネルは<strong>最前線</strong>を、ストリーム設定は<strong>ベータ / RC のみ</strong>を選択)</li><li>RC の <a href=\"https://wordpress.org/wordpress-5.7-RC1.zip\" data-type=\"URL\" data-id=\"https://wordpress.org/wordpress-5.7-RC1.zip\">zip ファイルをダウンロード</a>してテストする</li></ul>\n\n\n\n<p>ベータリリースをテストしてフィードバックをくださったコントリビューターのみなさん、ありがとうございます。バグのテストはリリースを万全に行う上で不可欠な要素です。</p>\n\n\n\n<h2>WordPress 5.7 で何が変わるの ?</h2>\n\n\n\n<ul><li>ロボット API とメディア検索エンジン可視性</li><li>HTTPS サポートの検出</li><li>遅延ロード iframe</li><li>jQuery migrate 関連非推奨通知のクリーンアップ</li><li>管理画面カラーパレットの標準化</li><li>最新版の Gutenberg プラグイン</li></ul>\n\n\n\n<h2>プラグイン・テーマ開発者のみなさんへ</h2>\n\n\n\n<p>自作のプラグインやテーマを WordPress 5.7 でテストして、問題なければ readme.txt の <em>Tested up to</em> バージョンを 5.7 に更新してください。互換性の問題を発見した場合は<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>へ投稿してください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで)。そうすれば最終リリースの前までに解決できるかもしれません。</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide\">WordPress 5.7 Field Guide</a> に主要な変更に関するより詳しい情報があるので参照してください。</p>\n\n\n\n<h2>ご協力ください</h2>\n\n\n\n<p>英語以外の言語話者の方はぜひ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の翻訳にご協力ください</a>。WordPress 5.7 の翻訳対象語句はこの RC において<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">確定</a>され、今後の変更はない見込みです。</p>\n\n\n\n<p>バグを見つけたと思ったときはサポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta</a> エリアに投稿してお知らせください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで) 。再現条件を含むバグ報告の作成に慣れている方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> までご報告ください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>のリストも Trac で確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress 5.6.2 メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2021/02/23/wordpress-5-6-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Feb 2021 03:26:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6104\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:198:\"以下は、Jonathan Desrosiers が書いた WordPress.org 公式ブログの記事「WordPress 5.6.2 Maintenance Release」を訳したものです。 誤字脱字誤訳などありまし [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"JOTAKI, Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5822:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/02/wordpress-5-6-2-maintenance-release/\">WordPress 5.6.2 Maintenance Release</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.6.2が利用可能になりました。</p>\n\n\n\n<p>今回のメンテナンスリリースでは、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.6.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">5個のバグ修正</a>が行われています。これらのバグは WordPress バージョン 5.6.1 に影響を与えますので、アップグレードをお勧めします。</p>\n\n\n\n<p><a href=\"https://ja.wordpress.org/wordpress-5.6.2-ja.zip\">WordPress 5.6.2は直接ダウンロード</a>可能です。または、管理画面メニュー<strong>「ダッシュボード」→「更新」</strong>から<strong>「今すぐ更新」</strong>をクリックします。自動バックグラウンド更新をサポートしているサイトではすでに更新プロセスが始まっていることでしょう。</p>\n\n\n\n<p>WordPress 5.6.2は、ユーザー側の問題を修正することに焦点を当てた小規模なメンテナンスリリースです。次のメジャーリリースは<a href=\"https://make.wordpress.org/core/5-7/\">バージョン5.7</a>で、いまのところ、2021年3月9日のリリースを予定しています。</p>\n\n\n\n<p>変更のすべてのリストは閲覧するには <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.6.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">Trac のリスト</a>を参照するか、<a href=\"https://make.wordpress.org/core/2021/02/17/wordpress-5-6-2-rc1/\">5.6.2 RC1</a> についての投稿をお読になるか、<a href=\"https://wordpress.org/support/wordpress-version/version-5-6-2/\">5.6.2ドキュメントページ</a>を開いてみてください。</p>\n\n\n\n<h2>感謝と敬意を!</h2>\n\n\n\n<p>5.6.1 は<a href=\"https://profiles.wordpress.org/desrosj/\">@desrosj</a> によってリードされました。ブロックエディター関連の修正の準備を手伝ってくれた<a href=\"https://profiles.wordpress.org/isabel_brison/\">@isabel_brison</a> と <a href=\"https://profiles.wordpress.org/talldanwp/\">@talldanwp</a>、その他のリリース関連のタスクを手伝ってくれた<a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a> と <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">@sergeybiryukov</a> に感謝します。</p>\n\n\n\n<p>WordPress 5.6.2のリリースに関わってくれたみなさまに感謝します:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/aaronrobertshaw/\">aaronrobertshaw</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">André Maneiro</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/bartosz777/\">bartosz777</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/dbtedg/\">dbtedg</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>, <a href=\"https://profiles.wordpress.org/hmabpera/\">hmabpera</a>, <a href=\"https://profiles.wordpress.org/ibiza69/\">ibiza69</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/viablethought/\">Jason Ryan</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/kevin940726/\">Kai Hao</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>, <a href=\"https://profiles.wordpress.org/hwk-fr/\">Konrad Chmielewski</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/magnuswebdesign/\">magnuswebdesign</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/freewebmentor/\">Prem Tiwari</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/roger995/\">roger995</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sterndata/\">Steven Stern (sterndata)</a>, <a href=\"https://profiles.wordpress.org/inc2734/\">Takashi Kitajima</a>, <a href=\"https://profiles.wordpress.org/tonysandwich/\">tonysandwich</a>, <a href=\"https://profiles.wordpress.org/worldedu/\">worldedu</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.7 ベータ 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/02/17/wordpress-5-7-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Feb 2021 11:03:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6096\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Ebonie Butler が書いた WordPress.org 公式ブログの記事「WordPress 5.7 Beta 3」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7175:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-3/\" data-type=\"URL\" data-id=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-3/\">WordPress 5.7 Beta 3</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.7 ベータ 3 をテストする準備が整いました ! <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f5e3.png\" alt=\"🗣\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>ベータバージョンは<strong>このソフトウェアが未だ開発途上にある</strong>ことを意味します。従って、このバージョンを本番運用中のサイトで利用することは推奨されません。テスト用の環境を設けてそこで試用することをお勧めします。</p>\n\n\n\n<p>WordPress 5.7 ベータ 3 をテストする方法は二通りあります:</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストール/有効化する (更新チャンネルは<strong>最前線</strong>を、ストリーム設定は<strong>ベータ / RC のみ</strong>を選択)</li><li>ベータバージョンの <a href=\"https://wordpress.org/wordpress-5.7-beta3.zip\" data-type=\"URL\" data-id=\"https://wordpress.org/wordpress-5.7-beta3.zip\">zip ファイルをダウンロード</a>してテストする</li></ul>\n\n\n\n<p>現時点で設定されている正式リリース日は3月9日です。正式リリースをできる限り問題の少ないものにできるよう、ぜひご協力をお願いします。</p>\n\n\n\n<h2><strong>ベータ 3 の主な変更</strong></h2>\n\n\n\n<p><a href=\"https://ja.wordpress.org/2021/02/13/wordpress-5-7-beta-2/\">ベータ 2</a> のリリース後、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F10%2F2021..02%2F17%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\" data-type=\"URL\" data-id=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F10%2F2021..02%2F17%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">27件</a>のバグ修正が行われました。いくつかの主要な変更を以下に整理します:</p>\n\n\n\n<ul><li>管理画面の多数のボタンで色コントラストの調整を実施しアクセシビリティと可読性を改善 (<a href=\"https://core.trac.wordpress.org/ticket/52402\">#52402</a>)</li><li>Twenty Twenty-One テーマの修正 (<a href=\"https://core.trac.wordpress.org/ticket/52287\">#52287</a>, <a href=\"https://core.trac.wordpress.org/ticket/52377\">#52377</a>, <a href=\"https://core.trac.wordpress.org/ticket/52431\">#52431</a>, <a href=\"https://core.trac.wordpress.org/ticket/52500\">#52500</a>, <a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-3/#52502\">#5</a><a href=\"https://core.trac.wordpress.org/ticket/52502\">2</a><a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-3/#52502\">502</a>, <a href=\"https://core.trac.wordpress.org/ticket/52412\">#52412</a>)</li><li>エディターの使用書体をシステムフォントに置き換えることでプライバシーとパフォーマンスを改善 (<a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-3/#46169\">#46169</a>)</li><li><code>register_block_type_from_metadata</code> 関数に国際化のサポートを追加 (<a href=\"https://core.trac.wordpress.org/ticket/52301\">#52301</a>)</li><li>メディアアップロード時のエラーのアクセシビリティを改善 (<a href=\"https://core.trac.wordpress.org/ticket/47120\">#47120</a>)</li><li><code>paginate_links</code> 関数を利用して出力されるページネーションリンクに変更を加えるための新しいフィルター (<a href=\"https://core.trac.wordpress.org/ticket/44018\">#44018</a>)</li></ul>\n\n\n\n<h2><strong>ご協力ください</strong></h2>\n\n\n\n<p>これからの数週間にわたって 5.7 関連の開発者ノートが Make WordPress Core ブログに掲載されますので目を通してください。</p>\n\n\n\n<p>これまでのところ WordPress 5.7 で<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=..02%2F16%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\" data-type=\"URL\" data-id=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=..02%2F16%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">171件のチケット</a>が貢献者のみなさんの協力により解決されました。これには<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;changetime=..02%2F16%2F2021&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=changetime&amp;col=owner&amp;col=priority&amp;col=keywords&amp;order=changetime\" data-type=\"URL\" data-id=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;changetime=..02%2F16%2F2021&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=changetime&amp;col=owner&amp;col=priority&amp;col=keywords&amp;order=changetime\">64件の新機能と機能強化</a>が含まれ、さらに多数のバグ修正が進行中です。</p>\n\n\n\n<p><strong>テストをしましょう !</strong></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/beta-testing/\">バグのテスト</a>はベータステージにあるリリースを磨き上げる上で特に重要な意味を持つ貢献です。<img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>バグを見つけたと思ったときはサポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta</a> エリアに投稿してお知らせください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで) 。再現条件を含むバグ報告の作成に慣れている方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> までご報告ください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>のリストも Trac で確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress = Free(dom)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/02/16/wordpress-is-freedom/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Feb 2021 03:23:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6091\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:246:\"以下は、Josepha が書いた WordPress.org 公式ブログの記事「WordPress is Free(dom)」の一部を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 ファイ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:3:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:73:\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:10:\"audio/mpeg\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:86:\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3?ref=download\";s:6:\"length\";s:7:\"9957921\";s:4:\"type\";s:10:\"audio/mpeg\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:88:\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3?ref=new_window\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:10:\"audio/mpeg\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:20179:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\"></a><a href=\"https://wordpress.org/news/2020/03/adderley/\"></a><a href=\"https://wordpress.org/news/2021/02/welcome-to-your-wp-briefing/\"></a><a href=\"https://wordpress.org/news/2021/02/wordpress-is-freedom/\">WordPress is Free(dom)</a>」の一部を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<div class=\"wp-block-cover aligncenter has-background-dim\" style=\"background-color:#0a4b78\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://ja.wordpress.org/files/2021/02/wp-briefing-logo.jpg\"><img loading=\"lazy\" width=\"490\" height=\"490\" src=\"https://ja.wordpress.org/files/2021/02/wp-briefing-logo.jpg\" alt=\"\" class=\"wp-image-6069\" srcset=\"https://ja.wordpress.org/files/2021/02/wp-briefing-logo.jpg 490w, https://ja.wordpress.org/files/2021/02/wp-briefing-logo-300x300.jpg 300w, https://ja.wordpress.org/files/2021/02/wp-briefing-logo-150x150.jpg 150w\" sizes=\"(max-width: 490px) 100vw, 490px\" /></a></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\">\n<h2 class=\"has-text-color\" style=\"color:#faebd6;font-size:30px\"><strong>WP Briefing</strong></h2>\n\n\n\n<h3 class=\"has-text-color\" style=\"color:#faebd6;font-size:18px\">The WordPress Podcast</h3>\n\n\n\n<p class=\"has-text-color\" style=\"color:#faebd6;font-size:15px\">WordPress プロジェクトのエグゼクティブ・ディレクターである Josepha Haden と、共同創設者 Matt Mullenweg と一緒に WordPress についてもっと知りましょう。WordPress がどこに向かっているのか、どうやってそこに到達するのか、そしてみなさんがどう参加できるのかを学びましょう。そして、パブリッシングの民主化に貢献してみませんか。</p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#faebd6;font-size:15px\">ポッドキャストはこちら:&nbsp;<strong><a href=\"https://podcasts.apple.com/us/podcast/wp-briefing/id1551691710\">Apple</a>,&nbsp;<a href=\"https://pca.st/uqvvmt8t\">Pocket Casts</a>,&nbsp;<a href=\"https://wordpress.org/news/feed/podcast\">RSS</a>,&nbsp;<a href=\"https://open.spotify.com/show/6BxgmE9Qg2TZA8EKZLJ4zS\">Spotify</a>,&nbsp;<a href=\"https://www.stitcher.com/show/wp-briefing\">Stitcher</a></strong></p>\n</div>\n</div>\n</div></div>\n\n\n\n<div style=\"height:31px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-embed is-type-rich is-provider-embed-handler wp-block-embed-embed-handler\"><div class=\"wp-block-embed__wrapper\">\n<!--[if lt IE 9]><script>document.createElement(\'audio\');</script><![endif]-->\n<audio class=\"wp-audio-shortcode\" id=\"audio-6091-1\" preload=\"none\" style=\"width: 100%;\" controls=\"controls\"><source type=\"audio/mpeg\" src=\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3?_=1\" /><a href=\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3\">https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3</a></audio>\n</div></figure>\n\n\n\n<p><a href=\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3?ref=download\">ファイルをダウンロード</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://wordpress.org/news/podcast-download/9722/wordpress-is-freedom.mp3?ref=new_window\" target=\"_blank\">新しいウィンドウで再生</a>&nbsp;|&nbsp;再生時間: 10:17</p>\n\n\n\n<p>登録:&nbsp;<a rel=\"noreferrer noopener\" href=\"https://podcasts.apple.com/us/podcast/wp-briefing/id1551691710\" target=\"_blank\">Apple Podcasts</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://podcasts.google.com/feed/aHR0cHM6Ly93b3JkcHJlc3Mub3JnL25ld3MvZmVlZC9wb2RjYXN0\" target=\"_blank\">Google Podcasts</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://pca.st/uqvvmt8t\" target=\"_blank\">PocketCasts</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://wordpress.org/news/feed/podcast\" target=\"_blank\">RSS</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://open.spotify.com/show/6BxgmE9Qg2TZA8EKZLJ4zS\" target=\"_blank\">Spotify</a>&nbsp;|&nbsp;<a rel=\"noreferrer noopener\" href=\"https://www.stitcher.com/show/wp-briefing\" target=\"_blank\">Stitcher</a></p>\n\n\n\n<p>このエピソードでは Josepha Haden Chomphosy が、オープンソースの4つの自由、「無料のビールの『フリー』ではなく、言論の自由の『フリー』」というフレーズ、そして、なぜオープンソースが全体の中で重要なのか、について簡単に説明しています。</p>\n\n\n\n<p><em>回答してほしい質問があれば、wpbriefing@wordpress.org まで、テキストまたは音声録音のいずれかでお送りください。</em></p>\n\n\n\n<h2><strong>クレジット</strong></h2>\n\n\n\n<ul><li>エディター:<a href=\"https://profiles.wordpress.org/dustinhartzler/\">&nbsp;Dustin Hartzler</a></li><li>ロゴ:<a href=\"https://profiles.wordpress.org/beafialho/\">&nbsp;Beatriz Fialho</a></li><li>プロダクション: <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>音楽: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>リファレンス</h2>\n\n\n\n<ul><li><a href=\"https://www.gnu.org/philosophy/free-sw.ja.html\">自由ソフトウェアとは ?</a></li><li><a href=\"https://hugh.blog/2019/03/15/becoming-a-good-open-source-citizen/\">Hugh Lashbrooke によるケーキとの類似性</a></li><li><a href=\"https://ma.tt/2014/01/four-freedoms/\">4つの自由についての Matt の良い視点に関するボーナスコンテンツ</a></li><li><a href=\"https://twitter.com/topher1kenobe/status/1356698714996432897\">コントリビューターハイライト</a></li><li><a href=\"https://wordpress.tv/event/wordcamp-india-2021/\">WordCamp India (インド) 動画</a></li><li><a href=\"https://make.wordpress.org/core/5-7/\">WordPress 5.7</a></li><li><a href=\"https://make.wordpress.org/core/2021/02/03/committers-maintainers-and-emeriti/\">コミッター、メインテナー、名誉退位者</a></li><li><a href=\"https://make.wordpress.org/test/tag/fse-outreach-program/\">フルサイト編集 (FSE) の動向をフォロー</a></li></ul>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"oEeScxI2vq\"><a href=\"https://make.wordpress.org/core/2020/05/20/ways-to-keep-up-with-full-site-editing-fse/\">Ways to keep up with Full Site Editing (FSE)</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Ways to keep up with Full Site Editing (FSE)&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/05/20/ways-to-keep-up-with-full-site-editing-fse/embed/#?secret=oEeScxI2vq\" data-secret=\"oEeScxI2vq\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>トランスクリプト</h2>\n\n\n\n<p><s><a href=\"https://wordpress.org/news/2021/02/wordpress-is-freedom/\">原文</a>をご覧ください。翻訳に協力したい方は、<a href=\"https://ja.wordpress.org/support/article/slack/\">WordSlack</a> の<a href=\"https://wpja.slack.com/archives/C02T7MR4C/p1613445678022600\"> #translate チャンネル</a>までどうぞ。</s></p>\n\n\n\n<p>以下のトランスクリプトは、<a href=\"https://profiles.wordpress.org/kappasan/\">@kappasan</a> の翻訳協力により公開することができました。ありがとうございました。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>みなさんこんにちは、WordPress Briefing へようこそ。このポッドキャストでは、WordPress オープンソースプロジェクトとそれを取り巻くコミュニティの背後にあるアイデアを簡単に説明したり、今後2週間に予定されている大きなことの小さなリストをご紹介します。私がホストの Josepha Haden Chomphosy です。さあ、始めましょう。</p>\n\n\n\n<p>今日はまず、「言論の自由という意味でのフリー (free as in free speech)」という言葉について見ていきたいと思います。WordPress コミュニティをよくご存知であれば、他のコミュニティメンバーからこの言葉を聞いたことがあるかもしれません。そしてあなたが私たちのことをよく知らなければ、この言葉を初めて聞くかもしれません。いずれにしても、この言葉をもう少し詳しく知ることは大事だと思います。全文は「言論の自由での意味のフリー (自由) であり、無料のビールでの意味のフリー (無料) ではない」というもので、具体的にはオープンソースソフトウェアに関連しています。しかし、WordPress はこれらの両方の要素を少しずつ備えています。</p>\n\n\n\n<p>WordPress は文字通り無料で、今すぐ WordPress サイトのダウンロードセクションに行って、ボタンをクリックするだけでコピーを手に入れることができます。初めてサイトをオンラインで作るには、いくらかお金がかかるでしょう。しかし、ソフトウェアについては、ゼロ、まったくかかりません。<strong>だからフリー (無料) です。</strong>しかし、WordPressはオープンソースです。言論の自由での意味の「フリー (自由)」の部分はそこから来ています。</p>\n\n\n\n<p>90年代初頭に制定されたオープンソースの4つの自由は、基本的に以下の通りです。</p>\n\n\n\n<ol><li>目的を問わず、プログラムを実行する自由</li><li>プログラムがどのように動作するかを研究し、必要に応じて改変する自由</li><li>他の人を助けられるよう、コピーを再配布する自由</li><li>改変版のコピーを配布し、その変更がコミュニティの利益になる機会を提供する自由</li></ol>\n\n\n\n<p>昨年か一昨年のあるとき、WordPress コミュニティで活動している <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a> が、ケーキを例に挙げて4つの自由 についての素晴らしい投稿をしてくれました。とても素晴らしい説明を使った投稿なので、その記事へのリンクをこのポッドキャストのリファレンスのところに貼っておきます。この説明をするのはとても時間がかかりそうでした。でも、もしあなたが4つの自由の概念を理解するのに少し苦労しているのであれば、この投稿の説明は素晴らしいものだと思います。</p>\n\n\n\n<p>このオープンソースの4つの自由が日常的にどれぐらい大切なのかを知るのは難しいですよね。つまり、実用的な観点から見ると、これが意味するのは、使いやすく、勉強しやすく、学びやすく、改変しやすく、共有しやすいソフトウェアのコピーを手に入れることができるということです。また、一度あなたの改変ソフトを他の人と共有すれば、その変更をより広いコミュニティに戻すことができるので、彼らもその変更の恩恵を受けることができます。その変更でソフトウェアが少しだけ改善していき、少しだけ機能的になってきたと実感しています。しかし、哲学的な観点から見れば、これはもっと多くのことを意味します。</p>\n\n\n\n<p>オープンソースの自由は、人間の営み全般の規模で適用されれれば、または、そこまでではなくウェブに限定したとしても39％も適用されれば、この世界で何かやろうとするときに邪魔になる壁を取り除けます。オンライン上での場所を持つのにお金持ちである必要はありません。独自プラットフォームの抜け穴を見つけて、そのプラットフォームが利用規約を変更しないことを願う必要はありません。WordPress サイトで作成したコンテンツはすべて自分のものであり、必要に応じて新しいホストに移動したり、気分に合わせてテーマを変更したりする自由があります。</p>\n\n\n\n<p>インターネットに接続している場所や、人生における苦難が問題にはならない場合、場所や言語、移動の手段に左右されることなく、ジャムや蜂蜜を売るための店を開いたり、特定のサービスを宣伝するためのサイトを開いたりすることができます。これによって、他の方法では本当に難しい、世代を超えた富の機会が開かれます。もしあなた自身はまだ準備ができていないとしても、安定した受動的所得や、素晴らしく鍛え抜かれた顧客獲得手段を持つことで、世界が本当に不安定な時代にでも安定性を獲得できるということには、少なくとも同意していただけると思います。</p>\n\n\n\n<p>いつものように、何かわからないことがあったり、答えて欲しい質問があれば、聞かせてください。wpbriefing@wordpress.org までメールしてください。</p>\n\n\n\n<p>お話は以上です。なぜオープンソースが私にとって日常的に大切なのか、そしてなぜオープンソースがあなたにとっても少しは大切であるはずなのか、また、言論の自由のように自由でありながらも無料のビールのように無料の意味も少しはあることをごく簡単に説明しました。</p>\n\n\n\n<p>さて、コミュニティのハイライトの時間です。Twitter でクラウドソーシングすることでいくつかのコントリビューターの成功事例を集めました。このポッドキャストでは年間を通じてこれらの事例にハイライトを当てていきます。しかしその前に、本当に注目すべきだと思ったことを挙げておきたいと思います。</p>\n\n\n\n<p>私は「この人は、私がWordPress に貢献する方法や、エコシステムとしての WordPress がどのように機能しているかを考えていたときの、相棒なりメンターなのだ」というような人たちの3分の1に注意を向けていました。このような人たちの約3分の1は女性でした。そして、彼女たちは女性というだけでなく、WordPress のリーダーシップを発揮していた女性です。そして、その中には現在もプロジェクトでリーダーシップを発揮している女性もいます。そのリストを踏まえると、WordPress でも、こういったサポート的な仕事をすることになる他のどこの場所でも、おそらく将来的にはリーダーシップを発揮することになる女性も見られます。これはかなり驚くべきことだと思います、というのは、技術の世界ではもちろん、よく知られているように多様性が欠けていることを耳にするからです。最近調べたわけではありませんが、長い間、テクノロジー分野で見られる女性の数はちょうど10％程度でした。ある時点では14％に増えていたと誰かが教えてくれました。</p>\n\n\n\n<p>WordPress に参加して特定分野の専門家になったり、代表になったりしている女性の数は、その割合を遥かに上回っています。そして私たちは完璧ではありません。やらなければならないことはたくさんあります。そしてこんな私でも、どのように WordPress で活動するか、どのようにコミュニティで活動するか、そしてどのようにお互い一緒に活動するかについて (ＷordPress という)、私たちが持っているシステムに小さくわずかな変更を加えることができるのです。私は各チームの代表者にも同じことをするように頼みました。そうすることで、長期的には、より歓迎され開かれたコミュニティになり、女性が30％という現状を脱して男女半々という最高の割合にぴったりになるよう望ましく変わり続けると考えています。しかしながらご承知の通り、その話は何か別のポッドキャストでやることになりそうです。</p>\n\n\n\n<p>Twitter でクラウドソーシングして集めた事例にコミュニティのハイライトを当てることを約束しました。今日ハイライトを当てたい事例は、<a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a> からです。彼は <a href=\"https://heropress.com/\">HeroPress</a> サイトを運営している人の一人で、こんな素敵な話をしてくれました。</p>\n\n\n\n<p>「私が貢献者のプールの端っこに立っていたとき、 <a href=\"https://profiles.wordpress.org/siobhan/\">Siobhan McKeown</a> に助けを求めましたが、彼女はとても親切にも私を #docs の世界に頭から飛び込むよう後押ししてくれました。これですべてが変わりました。」</p>\n\n\n\n<p>私がこの話が大好きなのは、話に出てくる人たちはもちろん、とても刺激的な話だからです。私も WordPress に貢献し始めたとき、まったく同じように感じたものでした。プールの例えはまさにその通りです。</p>\n\n\n\n<p>この話に続いて大きなことの小さなリストの話題に移ります。このポッドキャストの3つ目の話題です。</p>\n\n\n\n<p>今週は私のリストにある4つのことを紹介します。1つ目は、WordCamp India です。3週連続で週末に開催された初のオンラインイベントがつい先日終了しました。その素晴らしいセッションのいくつかを wordpress.tv や YouTube チャンネルでチェックすることを忘れないでください。</p>\n\n\n\n<p>2つ目は、WordPress 5.7 が3月9日にリリースされることです。恐らく私のせいでこれまで少し誤解されていたことについて、早めにはっきりさせておきたいと思います。WordPress 5.7では、コアにフルサイト編集機能のプロトタイプは含まれません。この機能は、引き続き Gutenberg プラグインに入ったままになります。しかし3つ目として、フルサイト編集は2021年中に WordPress に導入されます。そのため、いくつかのアップデートやステータス、デモが表示されるようになってくるでしょう。他の人が準備できるよう手助けするため、 wordpress.org/news に注目しておくか、Twitter でお気に入りのコミッターをフォローしておいてください。</p>\n\n\n\n<p>これは、私の大きなことの小さなリストの4つ目につながります。現在私は、コミッターリストの整理をしているところです。こうすることで、新規または学んでいる途中の貢献者が、誰が活動中なのかを簡単に知ることができ、プロジェクトに参加するための道筋で助けてくれる人を見つけやすくなります。</p>\n\n\n\n<p>&nbsp;以上、「大きなことの小さなリスト」でした。WordPress Briefing をお聴きいただきありがとうございます。お相手は Josepha Haden Chomphosy でした。ではまた、2週間後にお会いしましょう。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.7 ベータ 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/02/13/wordpress-5-7-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 13 Feb 2021 09:18:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6063\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Ebonie Butler が書いた WordPress.org 公式ブログの記事「WordPress 5.7 Beta 2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6134:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/02/wordpress-5-7-beta-2/\">WordPress 5.7 Beta 2</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.7 ベータ 2 をテストする準備が整いました ! <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f5e3.png\" alt=\"🗣\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>ベータバージョンは<strong>このソフトウェアが未だ開発途上にある</strong>ことを意味します。従って、このバージョンを本番運用中のサイトで利用することは推奨されません。テスト用の環境を設けてそこで試用することをお勧めします。</p>\n\n\n\n<p>WordPress 5.7 ベータ 2 をテストする方法は二通りあります:</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストール/有効化する (更新チャンネルは<strong>最前線</strong>を、ストリーム設定は<strong>ベータ / RC のみ</strong>を選択)</li><li>ベータバージョンの <a href=\"https://wordpress.org/wordpress-5.7-beta2.zip\">zip ファイルをダウンロード</a>してテストする</li></ul>\n\n\n\n<p>現時点で設定されている正式リリース日は3月9日です。正式リリースをできる限り問題の少ないものにできるよう、ぜひご協力をお願いします。</p>\n\n\n\n<h2><strong>ベータ 2 の主な変更</strong></h2>\n\n\n\n<p><a href=\"https://ja.wordpress.org/2021/02/12/wordpress-5-7-beta-1/\">ベータ 1</a> のリリース後、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F03%2F2021..02%2F10%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">38件</a>のバグ修正が行われました。いくつかの主要な変更を以下に整理します:</p>\n\n\n\n<ul><li>アクセシビリティと可読性の向上のため、イタリック体のテキストを削除 (<a href=\"https://core.trac.wordpress.org/ticket/47327\">#47326</a>)</li><li>メディアモーダルを閉じる際に再生中のメディアを停止する (<a href=\"https://core.trac.wordpress.org/ticket/48562\">#48562</a>)</li><li>Content-Security-Policy スクリプトローダーを追加 (<a href=\"https://core.trac.wordpress.org/ticket/39941\">#39941</a>)</li><li>Twenty Twenty-One テーマのいくつかの修正 (<a rel=\"noreferrer noopener\" href=\"https://core.trac.wordpress.org/ticket/50454\" target=\"_blank\">#50454</a>, <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://core.trac.wordpress.org/ticket/52432\">#52432</a>, <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://core.trac.wordpress.org/ticket/52433\">#52433</a>, <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://core.trac.wordpress.org/ticket/52473\">#52473</a>, <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://core.trac.wordpress.org/ticket/52477\">#52477</a>, <a href=\"https://core.trac.wordpress.org/ticket/52374\">#52374</a>)</li><li>Gutenberg エディターで custom-spacing をサポートする (<a href=\"https://core.trac.wordpress.org/ticket/51760\">#51760</a>)</li><li>中〜大サイズのスクリーンにおけるメニュー UI の問題を解決 (<a href=\"https://core.trac.wordpress.org/ticket/49576\">#49576</a>)</li><li>管理画面 UI カラーパレット: すべてのインタラクティブ要素に適切なコントラスト比を持たせる (<a href=\"https://core.trac.wordpress.org/ticket/52402\">#52402</a>)</li></ul>\n\n\n\n<h2><strong>ご協力ください</strong></h2>\n\n\n\n<p>これからの数週間にわたって 5.7 関連の開発者ノートが Make WordPress Core ブログに掲載されますので目を通してください。</p>\n\n\n\n<p>これまでのところ WordPress 5.7 で<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=..02%2F09%2F2021&amp;milestone=5.7&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">157件のチケット</a>が貢献者のみなさんの協力により解決されました。これには<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;changetime=..02%2F03%2F2021&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=changetime&amp;col=owner&amp;col=priority&amp;col=keywords&amp;order=changetime\">68件の新機能と機能強化</a>が含まれ、さらに多数のバグ修正が進行中です。</p>\n\n\n\n<p><strong>テストをしましょう !</strong></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/beta-testing/\">バグのテスト</a>はベータステージにあるリリースを磨き上げる上で特に重要な意味を持つ貢献です。<img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>バグを見つけたと思ったときはサポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta</a> エリアに投稿してお知らせください (日本語での投稿は<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">開発版フォーラム</a>まで) 。再現条件を含むバグ報告の作成に慣れている方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> までご報告ください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>のリストも Trac で確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ja.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 17 Apr 2021 03:27:50 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Mon, 15 Jun 2020 00:12:19 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20201016172007\";}','no');
INSERT INTO `wp_options` VALUES (523,'_transient_timeout_feed_mod_992efac292246ae35bf235a03417a202','1618673271','no');
INSERT INTO `wp_options` VALUES (524,'_transient_feed_mod_992efac292246ae35bf235a03417a202','1618630071','no');
INSERT INTO `wp_options` VALUES (525,'_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27','1618673273','no');
INSERT INTO `wp_options` VALUES (526,'_transient_feed_6f409681938158427d2ded6eb1b9ea27','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Apr 2021 03:27:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://bbpress.org/?v=2.7.0-alpha-1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e3%82%b5%e3%83%bc%e3%83%90%e3%83%bc%e3%81%ab%e7%a7%bb%e8%a1%8c%e3%81%97%e3%81%9f%e3%82%89%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93/#post-11671010\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"返信先: 新サーバーに移行したらサイトが表示されません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e3%82%b5%e3%83%bc%e3%83%90%e3%83%bc%e3%81%ab%e7%a7%bb%e8%a1%8c%e3%81%97%e3%81%9f%e3%82%89%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93/#post-11671010\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Apr 2021 03:20:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:667:\"\n						\n						<p>こんにちは</p>\n<p>WordPress 本体のファイル（/wp-includes/plugin.php）が見つからない（読み込めない）といエラーになります。</p>\n<blockquote><p>手動でワードプレスサイトを新サーバーに移したのですが、</p></blockquote>\n<p>手動による移行がうまくいかなかった可能性があります。もう一度やり直してみてはと思います。</p>\n<p><a href=\"https://ja.wordpress.org/plugins/all-in-one-wp-migration/\" rel=\"nofollow\">All-in-One WP Migration</a> プラグインを使用すると簡単に移行することができるのでおすすめです。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e3%82%b5%e3%83%bc%e3%83%90%e3%83%bc%e3%81%ab%e7%a7%bb%e8%a1%8c%e3%81%97%e3%81%9f%e3%82%89%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93/#post-11671009\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"新サーバーに移行したらサイトが表示されません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e3%82%b5%e3%83%bc%e3%83%90%e3%83%bc%e3%81%ab%e7%a7%bb%e8%a1%8c%e3%81%97%e3%81%9f%e3%82%89%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93/#post-11671009\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Apr 2021 01:56:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2178:\"\n						\n						<p>レンタルサーバー移行のため、手動でワードプレスサイトを新サーバーに移したのですが、<br />\n以下の表示になりサイトが表示されません。</p>\n<blockquote><p>このページは動作していません<br />\nxxxxx.com では現在このリクエストを処理できません。<br />\nHTTP ERROR 500</p></blockquote>\n<p>解決方法がわからず困っています、アドバイスいただけないでしょうか。<br />\nサーバー会社に問い合わせたところ、以下の返答でした。</p>\n<blockquote><p>この度はお問合せいただき、ありがとうございます。<br />\nカスタマーサービスでございます。</p>\n<p>ご質問いただいた内容についてご案内します。</p>\n<p>弊社にて確認したところ、以下エラーを確認いたしました。</p>\n<p>▼エラー内容</p>\n<pre><code>Warning: require_once(/home/users/2/xxxxxx/web/xxxxxx.com/wp-includes/plugin.php): failed to open stream: No such file or directory in /home/users/2xxxxxx/web/xxxxxx.com/wp-settings.php on line 21\n\nFatal error: require_once(): Failed opening required &#039;/home/users/2/xxxxxx/web/xxxxxx.com/wp-includes/plugin.php&#039; (include_path=&#039;.:/usr/local/php/7.3/lib/php&#039;) in /home/users/2/xxxxxx/web/xxxxxx.com/wp-settings.php on line 21</code></pre>\n<p>上記より、「xxxxxx.com」フォルダ内の「wp-settings.php」ファイル、21行目の記述が起因でエラーが発生しているようです。</p>\n<p>状況としましては、PHPファイルの記述が、現在のWordpressやPHPバージョンに対応していない、<br />\n他のプラグインやテーマと干渉しているといった可能性が考えられます。</p></blockquote>\n<p>上記の line 21 は、以下の箇所でした。</p>\n<blockquote><p>require_once( ABSPATH . WPINC . &#8216;/plugin.php&#8217; );</p></blockquote>\n<p>サーバー会社からのコメントを読んでも、解決方法が分からず困っております。<br />\nお詳しい方いましたらお助けください、、よろしくお願いいたします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"tps2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11671008\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"返信先: Warning の意味がわからないので教えていただますか？\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11671008\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 22:13:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:461:\"\n						\n						<p>ishitakaさん、Aoba Momouchiさん、</p>\n<p>早速のご回答ありがとうございました！</p>\n<p>初心者なので、全て勉強になります！！</p>\n<p>一般ユーザーですが<br />\n原理をある程度理解した上で、</p>\n<p>プラグインを変更し、<br />\nエラーの解決をすることができました。</p>\n<p>週末の夜遅くに<br />\nどうもありがとうございました。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"yukamomma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e7%ae%a1%e7%90%86%e7%94%bb%e9%9d%a2%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f%ef%bc%88%e3%83%86%e3%83%bc%e3%83%9e%ef%bc%9abizvektor/#post-11671007\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"返信先: 管理画面が表示されなくなりました（テーマ：BizVektor）\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e7%ae%a1%e7%90%86%e7%94%bb%e9%9d%a2%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f%ef%bc%88%e3%83%86%e3%83%bc%e3%83%9e%ef%bc%9abizvektor/#post-11671007\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 21:35:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:448:\"\n						\n						<p>munyagu (@munyagu)さま</p>\n<p>ありがとうございます！</p>\n<p>＞WordPress 4.3.25 は PHP7.4 に対応していないと思います。<br />\n＞いきなり 5.7 にアップデートするのはプラグインなどが 5.7 に対応していない可能性もあり、リスクもありますが手動アップデートしてみてはどうでしょうか？</p>\n<p>この方法をやってみます。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"foxmoldor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:207:\"https://ja.wordpress.org/support/topic/%e3%82%a2%e3%82%a4%e3%82%ad%e3%83%a3%e3%83%83%e3%83%81%e7%94%bb%e5%83%8f%e3%81%8c%e8%a8%ad%e5%ae%9a%e3%81%a7%e3%81%8d%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11671006\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"返信先: アイキャッチ画像が設定できません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:207:\"https://ja.wordpress.org/support/topic/%e3%82%a2%e3%82%a4%e3%82%ad%e3%83%a3%e3%83%83%e3%83%81%e7%94%bb%e5%83%8f%e3%81%8c%e8%a8%ad%e5%ae%9a%e3%81%a7%e3%81%8d%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11671006\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 19:41:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:871:\"\n						\n						<p>エラーの特定が解決の近道ですので、まずはエラーログの収集をしてみると良いと思います</p>\n<ul>\n<li>WordPressの<a href=\"https://ja.wordpress.org/support/article/debugging-in-wordpress/\">デバッグ機能をON</a>にしてdebug.logを記録する</li>\n<li>PHPのエラーログを確認する</li>\n<li>ブラウザの開発者機能を使い、Console画面で操作時にエラーが出ていないか確認する</li>\n</ul>\n<p>後は定番のチェック項目ですが</p>\n<ul>\n<li>htaccessやfunctions.phpに画像表示やアクセス制限に関わる記述が無いか確認する</li>\n<li>サーバのWAFなどセキュリティ機能を設定している場合は無効にしてみる</li>\n<li>WordPress本体ファイルをアップロードし直してみる</li>\n</ul>\n<p>などなど。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"moyo55\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671004\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"返信先: Validation Engineのチェックボックスの位置調整\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671004\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 15:38:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:751:\"\n						\n						<p>ありがとうございます。<br />\npromptPosition: “inline”にしてしまうと<br />\nチェックボックスやラジオボタンの際に表示が崩れてしまいます。</p>\n<p>原因は&lt;input&gt;の後にエラー文がでるようになっているため、&lt;/label&gt;の後にエラー文が表示できればpromptPosition: “inline”でも良いのですが、、、</p>\n<pre><code>&lt;input type=&quot;checkbox&quot;&gt;\n エラー文\n &lt;label&gt;\n テキスト\n &lt;/label&gt;</code></pre>\n<p>◆実際の表示<br />\n□エラー文<br />\nテキスト<br />\n（□はチェックボックスです。）</p>\n<p>◆希望の表示イメージ<br />\n□テキスト<br />\nエラー文</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"poncyan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671002\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"返信先: Validation Engineのチェックボックスの位置調整\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671002\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 15:24:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:853:\"\n						\n						<p>promptPosition: &#8220;inline&#8221;を全てに指定するなら以下でも良さそうです。</p>\n<pre><code>jQuery(document).ready(function(){\njQuery(&quot;#form_1&quot;).validationEngine();\n});</code></pre>\n<p>のところを</p>\n<pre><code>jQuery(document).ready(function(){\njQuery(&quot;#form_1&quot;).validationEngine({promptPosition:&quot;inline&quot;});\n});</code></pre>\n\n\n<ul id=\"bbp-reply-revision-log-11671002\" class=\"bbp-reply-revision-log\">\n\n	<li id=\"bbp-reply-revision-log-11671002-item-11671003\" class=\"bbp-reply-revision-log-item\">\n		この返信は12時間、 2分前に<a href=\"https://ja.wordpress.org/support/users/aoixtreme/\" title=\"Aoba Momouchi のプロフィールを表示\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">Aoba Momouchi</span></a>が編集しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Aoba Momouchi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"返信先: Validation Engineのチェックボックスの位置調整\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://ja.wordpress.org/support/topic/validation-engine%e3%81%ae%e3%83%81%e3%82%a7%e3%83%83%e3%82%af%e3%83%9c%e3%83%83%e3%82%af%e3%82%b9%e3%81%ae%e4%bd%8d%e7%bd%ae%e8%aa%bf%e6%95%b4/#post-11671001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 15:07:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:699:\"\n						\n						<p>promptPosition: “inline”<br />\nは、header内に下記のように記述をしています。</p>\n<p>jQuery(&#8220;#check input&#8221;).addClass(&#8220;validate[minCheckbox[2]]&#8221;) .attr(“data-prompt-position”, “inline”);</p>\n\n\n<ul id=\"bbp-reply-revision-log-11671001\" class=\"bbp-reply-revision-log\">\n\n	<li id=\"bbp-reply-revision-log-11671001-item-11671005\" class=\"bbp-reply-revision-log-item\">\n		この返信は11時間、 27分前に<a href=\"https://ja.wordpress.org/support/users/poncyan/\" title=\"poncyan のプロフィールを表示\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">poncyan</span></a>が編集しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"poncyan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11670999\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"返信先: Warning の意味がわからないので教えていただますか？\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11670999\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 14:34:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1431:\"\n						\n						<p>なぜエラーが出ているのかを読み解くならば、facebooknotes.phpというファイルの343行目に「facebook_options_subpanel」という文字列があり、これがシングルクオーテーションマーク（&#8221;）やダブルクオーテーションマーク（&#8221;&#8221;）で囲われていないため、将来のPHPバージョンアップでエラーになる、という意味です。</p>\n<p>多少プログラムのわかる方であれば、PHPコードに手を入れるというのも一つの方法です。おそらく「&#8217;」で囲えば解決するでしょう。</p>\n<p>一般ユーザーの立場であれば、もはや「<a href=\"http://jameslow.com/2007/11/18/wordpress-plugin-facebook-comments/\" rel=\"nofollow ugc\">Facebook Comments</a>」というプラグインが新しいものに対応できてないということなので、別のプラグインに変更するのがよいでしょう。</p>\n\n\n<ul id=\"bbp-reply-revision-log-11670999\" class=\"bbp-reply-revision-log\">\n\n	<li id=\"bbp-reply-revision-log-11670999-item-11671000\" class=\"bbp-reply-revision-log-item\">\n		この返信は12時間、 49分前に<a href=\"https://ja.wordpress.org/support/users/aoixtreme/\" title=\"Aoba Momouchi のプロフィールを表示\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">Aoba Momouchi</span></a>が編集しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Aoba Momouchi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11670998\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"返信先: Warning の意味がわからないので教えていただますか？\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://ja.wordpress.org/support/topic/warning-%e3%81%ae%e6%84%8f%e5%91%b3%e3%81%8c%e3%82%8f%e3%81%8b%e3%82%89%e3%81%aa%e3%81%84%e3%81%ae%e3%81%a7%e6%95%99%e3%81%88%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%be%e3%81%99%e3%81%8b%ef%bc%9f/#post-11670998\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 14:34:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"\n						\n						<p>こんにちは</p>\n<p>Facebook Comments プラグインがお使いの PHP バージョンに対応していないため表示されるメッセージだと思います。とても古い（10年以上前）プラグインで、既に公開も停止されているので、別の同様の機能を有するプラグイン（私は知りませんが）へ移行されるといいかと思います。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 17 Apr 2021 03:27:53 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20201016172007\";}','no');
INSERT INTO `wp_options` VALUES (527,'_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27','1618673273','no');
INSERT INTO `wp_options` VALUES (528,'_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27','1618630073','no');
INSERT INTO `wp_options` VALUES (529,'_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f','1618673273','no');
INSERT INTO `wp_options` VALUES (530,'_transient_dash_v2_45827e8e892dd0b85803a110fad8690f','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2021/04/15/wordpress-5-7-1-security-and-maintenance-release/\'>WordPress 5.7.1 セキュリティとメンテナンスのリリース</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2021/04/03/so-you-want-to-make-block-patterns/\'>ブロックパターンの作り方</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E6%96%B0%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%81%AB%E7%A7%BB%E8%A1%8C%E3%81%97%E3%81%9F%E3%82%89%E3%82%B5%E3%82%A4%E3%83%88%E3%81%8C%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%BE%E3%81%9B%E3%82%93/#post-11671010\'>返信先: 新サーバーに移行したらサイトが表示されません。</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E6%96%B0%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%81%AB%E7%A7%BB%E8%A1%8C%E3%81%97%E3%81%9F%E3%82%89%E3%82%B5%E3%82%A4%E3%83%88%E3%81%8C%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%BE%E3%81%9B%E3%82%93/#post-11671009\'>新サーバーに移行したらサイトが表示されません。</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/warning-%E3%81%AE%E6%84%8F%E5%91%B3%E3%81%8C%E3%82%8F%E3%81%8B%E3%82%89%E3%81%AA%E3%81%84%E3%81%AE%E3%81%A7%E6%95%99%E3%81%88%E3%81%A6%E3%81%84%E3%81%9F%E3%81%A0%E3%81%BE%E3%81%99%E3%81%8B%EF%BC%9F/#post-11671008\'>返信先: Warning の意味がわからないので教えていただますか？</a></li></ul></div>','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=1357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (4,5,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,5,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (6,5,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (7,5,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (9,5,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,5,'_menu_item_url','http://nantoka.local/');
INSERT INTO `wp_postmeta` VALUES (11,5,'_menu_item_orphaned','1616931090');
INSERT INTO `wp_postmeta` VALUES (12,6,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (13,6,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (14,6,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (15,6,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (16,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (18,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,6,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (20,6,'_menu_item_orphaned','1616931091');
INSERT INTO `wp_postmeta` VALUES (39,9,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (40,9,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (41,9,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (42,9,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (43,9,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (44,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (45,9,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (46,9,'_menu_item_url','http://nantoka.local/');
INSERT INTO `wp_postmeta` VALUES (47,9,'_menu_item_orphaned','1616931250');
INSERT INTO `wp_postmeta` VALUES (57,11,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (58,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (59,11,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (60,11,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (61,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (62,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (63,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (64,11,'_menu_item_url','http://nantoka.local/');
INSERT INTO `wp_postmeta` VALUES (65,11,'_menu_item_orphaned','1616931253');
INSERT INTO `wp_postmeta` VALUES (111,17,'_edit_lock','1618298908:1');
INSERT INTO `wp_postmeta` VALUES (112,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (113,18,'_edit_lock','1617538138:1');
INSERT INTO `wp_postmeta` VALUES (114,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,17,'top-schedule_news-content__day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (116,17,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (117,17,'top-schedule_news-content__text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (118,17,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (119,17,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (120,17,'_top-schedule','field_60613d12c45d7');
INSERT INTO `wp_postmeta` VALUES (121,22,'top-schedule_news-content__day','');
INSERT INTO `wp_postmeta` VALUES (122,22,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (123,22,'top-schedule_news-content__text','');
INSERT INTO `wp_postmeta` VALUES (124,22,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (125,22,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (126,22,'_top-schedule','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (127,23,'top-schedule_news-content__day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (128,23,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (129,23,'top-schedule_news-content__text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (130,23,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (131,23,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (132,23,'_top-schedule','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (134,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (135,2,'_wp_trash_meta_time','1616985193');
INSERT INTO `wp_postmeta` VALUES (136,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (137,17,'top-schedule_schedule-day','2020.10.01');
INSERT INTO `wp_postmeta` VALUES (138,17,'_top-schedule_schedule-day','field_60613d12c45d8');
INSERT INTO `wp_postmeta` VALUES (139,17,'top-schedule_schedule-text','社屋を一部改装いたしました。');
INSERT INTO `wp_postmeta` VALUES (140,17,'_top-schedule_schedule-text','field_60613d12c45d9');
INSERT INTO `wp_postmeta` VALUES (141,28,'top-schedule_news-content__day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (142,28,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (143,28,'top-schedule_news-content__text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (144,28,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (145,28,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (146,28,'_top-schedule','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (147,28,'top-schedule_schedule-day','2020.08.02');
INSERT INTO `wp_postmeta` VALUES (148,28,'_top-schedule_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (149,28,'top-schedule_schedule-text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (150,28,'_top-schedule_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (151,32,'top-schedule_news-content__day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (152,32,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (153,32,'top-schedule_news-content__text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (154,32,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (155,32,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (156,32,'_top-schedule','field_60613d12c45d7');
INSERT INTO `wp_postmeta` VALUES (157,32,'top-schedule_schedule-day','2020.10.01');
INSERT INTO `wp_postmeta` VALUES (158,32,'_top-schedule_schedule-day','field_60613d12c45d8');
INSERT INTO `wp_postmeta` VALUES (159,32,'top-schedule_schedule-text','社屋を一部改装いたしました。');
INSERT INTO `wp_postmeta` VALUES (160,32,'_top-schedule_schedule-text','field_60613d12c45d9');
INSERT INTO `wp_postmeta` VALUES (161,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (162,33,'_edit_lock','1617000076:1');
INSERT INTO `wp_postmeta` VALUES (163,59,'_wp_attached_file','2021/03/newmanA.jpg');
INSERT INTO `wp_postmeta` VALUES (164,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:530;s:4:\"file\";s:19:\"2021/03/newmanA.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"newmanA-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"newmanA-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (165,60,'_wp_attached_file','2021/03/newmanC.jpg');
INSERT INTO `wp_postmeta` VALUES (166,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:530;s:4:\"file\";s:19:\"2021/03/newmanC.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"newmanC-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"newmanC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (167,61,'_wp_attached_file','2021/03/newmanB.jpg');
INSERT INTO `wp_postmeta` VALUES (168,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:530;s:4:\"file\";s:19:\"2021/03/newmanB.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"newmanB-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"newmanB-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (169,62,'_wp_attached_file','2021/03/newmanD.jpg');
INSERT INTO `wp_postmeta` VALUES (170,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:530;s:4:\"file\";s:19:\"2021/03/newmanD.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"newmanD-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"newmanD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (171,17,'top-schedule_1_schedule-day','2021.01.01');
INSERT INTO `wp_postmeta` VALUES (172,17,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (173,17,'top-schedule_1_schedule-text','HP更新しました。');
INSERT INTO `wp_postmeta` VALUES (174,17,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (175,17,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (176,17,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (177,17,'top-schedule_2_schedule-day','2020.12.01');
INSERT INTO `wp_postmeta` VALUES (178,17,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (179,17,'top-schedule_2_schedule-text','年末年始の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (180,17,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (181,17,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (182,17,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (183,17,'top-schedule_3_schedule-day','2020.10.01');
INSERT INTO `wp_postmeta` VALUES (184,17,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (185,17,'top-schedule_3_schedule-text','社屋を一部改装いたしました。');
INSERT INTO `wp_postmeta` VALUES (186,17,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (187,17,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (188,17,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (189,17,'top-schedule_4_schedule-day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (190,17,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (191,17,'top-schedule_4_schedule-text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (192,17,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (193,17,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (194,17,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (195,17,'interview_1_interview_img','59');
INSERT INTO `wp_postmeta` VALUES (196,17,'_interview_1_interview_img','field_60617586117d4');
INSERT INTO `wp_postmeta` VALUES (197,17,'interview_1_interview_name','先輩 Aさん');
INSERT INTO `wp_postmeta` VALUES (198,17,'_interview_1_interview_name','field_606175f2117d5');
INSERT INTO `wp_postmeta` VALUES (199,17,'interview_1_interview_text','私なんかがまた雇ってもらえるとはおまわなかったんですがね。\r\n雇ってもらえるだけじゃなくて他の若い人たちに混ざってしっかり研修も受けさせていただきました。\r\n中途採用の即戦力として会社のルールも分からずやるのと\r\n分かってから仕事に就くのとはやっぱり安心感も違いますから\r\n\r\n今は楽しく毎日を過ごしていますよ。');
INSERT INTO `wp_postmeta` VALUES (200,17,'_interview_1_interview_text','field_60617635117d6');
INSERT INTO `wp_postmeta` VALUES (201,17,'interview_1','');
INSERT INTO `wp_postmeta` VALUES (202,17,'_interview_1','field_6061749e117d3');
INSERT INTO `wp_postmeta` VALUES (203,17,'interview_2_interview_img','61');
INSERT INTO `wp_postmeta` VALUES (204,17,'_interview_2_interview_img','field_606176f53a89d');
INSERT INTO `wp_postmeta` VALUES (205,17,'interview_2_interview_name','先輩 Bさん');
INSERT INTO `wp_postmeta` VALUES (206,17,'_interview_2_interview_name','field_606176f53a89e');
INSERT INTO `wp_postmeta` VALUES (207,17,'interview_2_interview_text','いやー、楽しいよ、仕事はさぁー。\r\n何がって俺が作ったものを皆んなが使ってくれるんだよ。\r\nそんな楽しい事はないよ。\r\n\r\nうん、楽しいよ、本当にね。');
INSERT INTO `wp_postmeta` VALUES (208,17,'_interview_2_interview_text','field_606176f53a89f');
INSERT INTO `wp_postmeta` VALUES (209,17,'interview_2','');
INSERT INTO `wp_postmeta` VALUES (210,17,'_interview_2','field_606176f53a89c');
INSERT INTO `wp_postmeta` VALUES (211,17,'interview_3_interview_img','60');
INSERT INTO `wp_postmeta` VALUES (212,17,'_interview_3_interview_img','field_606177023a8a1');
INSERT INTO `wp_postmeta` VALUES (213,17,'interview_3_interview_name','先輩 Cさん');
INSERT INTO `wp_postmeta` VALUES (214,17,'_interview_3_interview_name','field_606177023a8a2');
INSERT INTO `wp_postmeta` VALUES (215,17,'interview_3_interview_text','頑張ればそれだけ返って来る職場だよ。\r\n 俺も入って直ぐは右も左も分かんなかったけど先輩たちに色々フォローしてもらって一個づつできるようになったんだから\r\n気がついたらできることが増えていってるそんな感じ\r\nいろんな事ができればそれが評価に繋がって任される仕事も増えるし責任もふえて\r\nやり甲斐しかないから\r\n入ってみれば分かる！！');
INSERT INTO `wp_postmeta` VALUES (216,17,'_interview_3_interview_text','field_606177023a8a3');
INSERT INTO `wp_postmeta` VALUES (217,17,'interview_3','');
INSERT INTO `wp_postmeta` VALUES (218,17,'_interview_3','field_606177023a8a0');
INSERT INTO `wp_postmeta` VALUES (219,17,'interview_4_interview_img','62');
INSERT INTO `wp_postmeta` VALUES (220,17,'_interview_4_interview_img','field_606177063a8a5');
INSERT INTO `wp_postmeta` VALUES (221,17,'interview_4_interview_name','先輩 Dさん');
INSERT INTO `wp_postmeta` VALUES (222,17,'_interview_4_interview_name','field_606177063a8a6');
INSERT INTO `wp_postmeta` VALUES (223,17,'interview_4_interview_text','入って直ぐは研修もちゃんとあるし面倒見がいい会社だなって思ったんだけど\r\n慣れてきたら、ちょっと変わった会社なのかもって思い出したのね。\r\n\r\nでもそれが面白いんだって気づいたの\r\n\r\nちょっと個性的な性格でも実力重視の会社だからやればやっただけ返ってくる。\r\n外見や個性で判断しないところが凄く私にとってあってるって感じたの\r\n だから実力だけで試したいって人には向いてる会社ね。');
INSERT INTO `wp_postmeta` VALUES (224,17,'_interview_4_interview_text','field_606177063a8a7');
INSERT INTO `wp_postmeta` VALUES (225,17,'interview_4','');
INSERT INTO `wp_postmeta` VALUES (226,17,'_interview_4','field_606177063a8a4');
INSERT INTO `wp_postmeta` VALUES (227,63,'top-schedule_news-content__day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (228,63,'_top-schedule_news-content__day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (229,63,'top-schedule_news-content__text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (230,63,'_top-schedule_news-content__text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (231,63,'top-schedule','');
INSERT INTO `wp_postmeta` VALUES (232,63,'_top-schedule','field_60613d12c45d7');
INSERT INTO `wp_postmeta` VALUES (233,63,'top-schedule_schedule-day','2020.10.01');
INSERT INTO `wp_postmeta` VALUES (234,63,'_top-schedule_schedule-day','field_60613d12c45d8');
INSERT INTO `wp_postmeta` VALUES (235,63,'top-schedule_schedule-text','社屋を一部改装いたしました。');
INSERT INTO `wp_postmeta` VALUES (236,63,'_top-schedule_schedule-text','field_60613d12c45d9');
INSERT INTO `wp_postmeta` VALUES (237,63,'top-schedule_1_schedule-day','2021.01.01');
INSERT INTO `wp_postmeta` VALUES (238,63,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (239,63,'top-schedule_1_schedule-text','HP更新しました。');
INSERT INTO `wp_postmeta` VALUES (240,63,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (241,63,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (242,63,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (243,63,'top-schedule_2_schedule-day','2020.12.01');
INSERT INTO `wp_postmeta` VALUES (244,63,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (245,63,'top-schedule_2_schedule-text','年末年始の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (246,63,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (247,63,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (248,63,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (249,63,'top-schedule_3_schedule-day','2020.10.01');
INSERT INTO `wp_postmeta` VALUES (250,63,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (251,63,'top-schedule_3_schedule-text','社屋を一部改装いたしました。');
INSERT INTO `wp_postmeta` VALUES (252,63,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (253,63,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (254,63,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (255,63,'top-schedule_4_schedule-day','2020.08.01');
INSERT INTO `wp_postmeta` VALUES (256,63,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (257,63,'top-schedule_4_schedule-text','お盆の営業に関しまして');
INSERT INTO `wp_postmeta` VALUES (258,63,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (259,63,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (260,63,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (261,63,'interview_1_interview_img','59');
INSERT INTO `wp_postmeta` VALUES (262,63,'_interview_1_interview_img','field_60617586117d4');
INSERT INTO `wp_postmeta` VALUES (263,63,'interview_1_interview_name','先輩 Aさん');
INSERT INTO `wp_postmeta` VALUES (264,63,'_interview_1_interview_name','field_606175f2117d5');
INSERT INTO `wp_postmeta` VALUES (265,63,'interview_1_interview_text','私なんかがまた雇ってもらえるとはおまわなかったんですがね。\r\n雇ってもらえるだけじゃなくて他の若い人たちに混ざってしっかり研修も受けさせていただきました。\r\n中途採用の即戦力として会社のルールも分からずやるのと\r\n分かってから仕事に就くのとはやっぱり安心感も違いますから\r\n\r\n今は楽しく毎日を過ごしていますよ。');
INSERT INTO `wp_postmeta` VALUES (266,63,'_interview_1_interview_text','field_60617635117d6');
INSERT INTO `wp_postmeta` VALUES (267,63,'interview_1','');
INSERT INTO `wp_postmeta` VALUES (268,63,'_interview_1','field_6061749e117d3');
INSERT INTO `wp_postmeta` VALUES (269,63,'interview_2_interview_img','61');
INSERT INTO `wp_postmeta` VALUES (270,63,'_interview_2_interview_img','field_606176f53a89d');
INSERT INTO `wp_postmeta` VALUES (271,63,'interview_2_interview_name','先輩 Bさん');
INSERT INTO `wp_postmeta` VALUES (272,63,'_interview_2_interview_name','field_606176f53a89e');
INSERT INTO `wp_postmeta` VALUES (273,63,'interview_2_interview_text','いやー、楽しいよ、仕事はさぁー。\r\n何がって俺が作ったものを皆んなが使ってくれるんだよ。\r\nそんな楽しい事はないよ。\r\n\r\nうん、楽しいよ、本当にね。');
INSERT INTO `wp_postmeta` VALUES (274,63,'_interview_2_interview_text','field_606176f53a89f');
INSERT INTO `wp_postmeta` VALUES (275,63,'interview_2','');
INSERT INTO `wp_postmeta` VALUES (276,63,'_interview_2','field_606176f53a89c');
INSERT INTO `wp_postmeta` VALUES (277,63,'interview_3_interview_img','60');
INSERT INTO `wp_postmeta` VALUES (278,63,'_interview_3_interview_img','field_606177023a8a1');
INSERT INTO `wp_postmeta` VALUES (279,63,'interview_3_interview_name','先輩 Cさん');
INSERT INTO `wp_postmeta` VALUES (280,63,'_interview_3_interview_name','field_606177023a8a2');
INSERT INTO `wp_postmeta` VALUES (281,63,'interview_3_interview_text','頑張ればそれだけ返って来る職場だよ。\r\n 俺も入って直ぐは右も左も分かんなかったけど先輩たちに色々フォローしてもらって一個づつできるようになったんだから\r\n気がついたらできることが増えていってるそんな感じ\r\nいろんな事ができればそれが評価に繋がって任される仕事も増えるし責任もふえて\r\nやり甲斐しかないから\r\n入ってみれば分かる！！');
INSERT INTO `wp_postmeta` VALUES (282,63,'_interview_3_interview_text','field_606177023a8a3');
INSERT INTO `wp_postmeta` VALUES (283,63,'interview_3','');
INSERT INTO `wp_postmeta` VALUES (284,63,'_interview_3','field_606177023a8a0');
INSERT INTO `wp_postmeta` VALUES (285,63,'interview_4_interview_img','62');
INSERT INTO `wp_postmeta` VALUES (286,63,'_interview_4_interview_img','field_606177063a8a5');
INSERT INTO `wp_postmeta` VALUES (287,63,'interview_4_interview_name','先輩 Dさん');
INSERT INTO `wp_postmeta` VALUES (288,63,'_interview_4_interview_name','field_606177063a8a6');
INSERT INTO `wp_postmeta` VALUES (289,63,'interview_4_interview_text','入って直ぐは研修もちゃんとあるし面倒見がいい会社だなって思ったんだけど\r\n慣れてきたら、ちょっと変わった会社なのかもって思い出したのね。\r\n\r\nでもそれが面白いんだって気づいたの\r\n\r\nちょっと個性的な性格でも実力重視の会社だからやればやっただけ返ってくる。\r\n外見や個性で判断しないところが凄く私にとってあってるって感じたの\r\n だから実力だけで試したいって人には向いてる会社ね。');
INSERT INTO `wp_postmeta` VALUES (290,63,'_interview_4_interview_text','field_606177063a8a7');
INSERT INTO `wp_postmeta` VALUES (291,63,'interview_4','');
INSERT INTO `wp_postmeta` VALUES (292,63,'_interview_4','field_606177063a8a4');
INSERT INTO `wp_postmeta` VALUES (293,65,'_form','<label> 氏名\n    [text* your-name] </label>\n\n<label> メールアドレス\n    [email* your-email] </label>\n\n<label> 題名\n    [text* your-subject] </label>\n\n<label> メッセージ本文 (任意)\n    [textarea your-message] </label>\n\n[submit \"送信\"]');
INSERT INTO `wp_postmeta` VALUES (294,65,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@nantoka.local>\";s:4:\"body\";s:212:\"差出人: [your-name] <[your-email]>\n題名: [your-subject]\n\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは [_site_title] ([_site_url]) のお問い合わせフォームから送信されました\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (295,65,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@nantoka.local>\";s:4:\"body\";s:150:\"メッセージ本文:\n[your-message]\n\n-- \nこのメールは [_site_title] ([_site_url]) のお問い合わせフォームから送信されました\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (296,65,'_messages','a:12:{s:12:\"mail_sent_ok\";s:75:\"ありがとうございます。メッセージは送信されました。\";s:12:\"mail_sent_ng\";s:84:\"メッセージの送信に失敗しました。後でまたお試しください。\";s:16:\"validation_error\";s:81:\"入力内容に問題があります。確認して再度お試しください。\";s:4:\"spam\";s:84:\"メッセージの送信に失敗しました。後でまたお試しください。\";s:12:\"accept_terms\";s:66:\"メッセージを送信する前に承諾確認が必要です。\";s:16:\"invalid_required\";s:42:\"必須項目に入力してください。\";s:16:\"invalid_too_long\";s:48:\"入力されたテキストが長すぎます。\";s:17:\"invalid_too_short\";s:48:\"入力されたテキストが短すぎます。\";s:13:\"upload_failed\";s:81:\"ファイルのアップロード時に不明なエラーが発生しました。\";s:24:\"upload_file_type_invalid\";s:66:\"この形式のファイルはアップロードできません。\";s:21:\"upload_file_too_large\";s:36:\"ファイルが大きすぎます。\";s:23:\"upload_failed_php_error\";s:72:\"ファイルのアップロード中にエラーが発生しました。\";}');
INSERT INTO `wp_postmeta` VALUES (297,65,'_additional_settings',NULL);
INSERT INTO `wp_postmeta` VALUES (298,65,'_locale','ja');
INSERT INTO `wp_postmeta` VALUES (308,67,'_edit_lock','1617536063:1');
INSERT INTO `wp_postmeta` VALUES (309,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (310,67,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (311,67,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (312,67,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (313,67,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (314,67,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (315,67,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (316,67,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (317,67,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (318,67,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (319,67,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (320,67,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (321,67,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (322,67,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (323,67,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (324,67,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (325,67,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (326,67,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (327,67,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (328,67,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (329,67,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (330,67,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (331,67,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (332,67,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (333,67,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (334,68,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (335,68,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (336,68,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (337,68,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (338,68,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (339,68,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (340,68,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (341,68,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (342,68,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (343,68,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (344,68,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (345,68,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (346,68,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (347,68,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (348,68,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (349,68,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (350,68,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (351,68,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (352,68,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (353,68,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (354,68,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (355,68,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (356,68,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (357,68,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (358,69,'_edit_lock','1617536106:1');
INSERT INTO `wp_postmeta` VALUES (359,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (360,69,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (361,69,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (362,69,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (363,69,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (364,69,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (365,69,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (366,69,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (367,69,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (368,69,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (369,69,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (370,69,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (371,69,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (372,69,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (373,69,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (374,69,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (375,69,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (376,69,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (377,69,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (378,69,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (379,69,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (380,69,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (381,69,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (382,69,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (383,69,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (384,70,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (385,70,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (386,70,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (387,70,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (388,70,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (389,70,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (390,70,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (391,70,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (392,70,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (393,70,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (394,70,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (395,70,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (396,70,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (397,70,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (398,70,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (399,70,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (400,70,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (401,70,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (402,70,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (403,70,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (404,70,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (405,70,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (406,70,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (407,70,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (408,71,'_edit_lock','1617536238:1');
INSERT INTO `wp_postmeta` VALUES (409,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (410,71,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (411,71,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (412,71,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (413,71,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (414,71,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (415,71,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (416,71,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (417,71,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (418,71,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (419,71,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (420,71,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (421,71,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (422,71,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (423,71,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (424,71,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (425,71,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (426,71,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (427,71,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (428,71,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (429,71,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (430,71,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (431,71,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (432,71,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (433,71,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (434,72,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (435,72,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (436,72,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (437,72,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (438,72,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (439,72,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (440,72,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (441,72,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (442,72,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (443,72,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (444,72,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (445,72,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (446,72,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (447,72,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (448,72,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (449,72,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (450,72,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (451,72,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (452,72,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (453,72,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (454,72,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (455,72,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (456,72,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (457,72,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (458,73,'_edit_lock','1618299401:1');
INSERT INTO `wp_postmeta` VALUES (459,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (460,73,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (461,73,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (462,73,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (463,73,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (464,73,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (465,73,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (466,73,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (467,73,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (468,73,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (469,73,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (470,73,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (471,73,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (472,73,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (473,73,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (474,73,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (475,73,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (476,73,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (477,73,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (478,73,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (479,73,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (480,73,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (481,73,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (482,73,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (483,73,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (484,74,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (485,74,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (486,74,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (487,74,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (488,74,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (489,74,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (490,74,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (491,74,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (492,74,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (493,74,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (494,74,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (495,74,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (496,74,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (497,74,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (498,74,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (499,74,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (500,74,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (501,74,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (502,74,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (503,74,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (504,74,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (505,74,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (506,74,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (507,74,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (508,75,'_edit_lock','1617536264:1');
INSERT INTO `wp_postmeta` VALUES (509,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (510,75,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (511,75,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (512,75,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (513,75,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (514,75,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (515,75,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (516,75,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (517,75,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (518,75,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (519,75,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (520,75,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (521,75,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (522,75,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (523,75,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (524,75,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (525,75,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (526,75,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (527,75,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (528,75,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (529,75,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (530,75,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (531,75,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (532,75,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (533,75,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (534,76,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (535,76,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (536,76,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (537,76,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (538,76,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (539,76,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (540,76,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (541,76,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (542,76,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (543,76,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (544,76,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (545,76,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (546,76,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (547,76,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (548,76,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (549,76,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (550,76,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (551,76,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (552,76,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (553,76,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (554,76,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (555,76,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (556,76,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (557,76,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (558,77,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (559,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (560,77,'_menu_item_object_id','73');
INSERT INTO `wp_postmeta` VALUES (561,77,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (562,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (563,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (564,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (565,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (595,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (596,18,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (597,18,'_wp_desired_post_slug','group_60606f4156803');
INSERT INTO `wp_postmeta` VALUES (598,19,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (599,19,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (600,19,'_wp_desired_post_slug','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (601,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (602,50,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (603,50,'_wp_desired_post_slug','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (604,53,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (605,53,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (606,53,'_wp_desired_post_slug','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (607,56,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (608,56,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (609,56,'_wp_desired_post_slug','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (610,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (611,33,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (612,33,'_wp_desired_post_slug','group_6061748fc70c1');
INSERT INTO `wp_postmeta` VALUES (613,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (614,34,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (615,34,'_wp_desired_post_slug','field_6061749e117d3');
INSERT INTO `wp_postmeta` VALUES (616,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (617,38,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (618,38,'_wp_desired_post_slug','field_606176f53a89c');
INSERT INTO `wp_postmeta` VALUES (619,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (620,42,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (621,42,'_wp_desired_post_slug','field_606177023a8a0');
INSERT INTO `wp_postmeta` VALUES (622,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (623,46,'_wp_trash_meta_time','1617538290');
INSERT INTO `wp_postmeta` VALUES (624,46,'_wp_desired_post_slug','field_606177063a8a4');
INSERT INTO `wp_postmeta` VALUES (625,83,'_edit_lock','1617589955:1');
INSERT INTO `wp_postmeta` VALUES (628,85,'_dp_original','83');
INSERT INTO `wp_postmeta` VALUES (629,85,'_edit_lock','1617589888:1');
INSERT INTO `wp_postmeta` VALUES (637,89,'_dp_original','85');
INSERT INTO `wp_postmeta` VALUES (639,90,'_dp_original','89');
INSERT INTO `wp_postmeta` VALUES (640,89,'_edit_lock','1617690380:1');
INSERT INTO `wp_postmeta` VALUES (643,90,'_edit_lock','1618047683:1');
INSERT INTO `wp_postmeta` VALUES (646,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (647,90,'_wp_trash_meta_time','1618047841');
INSERT INTO `wp_postmeta` VALUES (648,90,'_wp_desired_post_slug','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f4');
INSERT INTO `wp_postmeta` VALUES (649,89,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (650,89,'_wp_trash_meta_time','1618047841');
INSERT INTO `wp_postmeta` VALUES (651,89,'_wp_desired_post_slug','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f3');
INSERT INTO `wp_postmeta` VALUES (652,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (653,85,'_wp_trash_meta_time','1618047841');
INSERT INTO `wp_postmeta` VALUES (654,85,'_wp_desired_post_slug','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (655,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (656,83,'_wp_trash_meta_time','1618047841');
INSERT INTO `wp_postmeta` VALUES (657,83,'_wp_desired_post_slug','news');
INSERT INTO `wp_postmeta` VALUES (658,93,'_edit_lock','1618049674:1');
INSERT INTO `wp_postmeta` VALUES (661,95,'_dp_original','93');
INSERT INTO `wp_postmeta` VALUES (662,95,'_edit_lock','1618050688:1');
INSERT INTO `wp_postmeta` VALUES (666,97,'_dp_original','95');
INSERT INTO `wp_postmeta` VALUES (667,97,'_edit_lock','1618050711:1');
INSERT INTO `wp_postmeta` VALUES (670,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (671,71,'_wp_trash_meta_time','1618050987');
INSERT INTO `wp_postmeta` VALUES (672,71,'_wp_desired_post_slug','news');
INSERT INTO `wp_postmeta` VALUES (673,99,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (674,99,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (675,99,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (676,99,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (677,99,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (678,99,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (679,99,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (680,99,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (681,99,'_menu_item_orphaned','1618051179');
INSERT INTO `wp_postmeta` VALUES (682,100,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (683,100,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (684,100,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (685,100,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (686,100,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (687,100,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (688,100,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (689,100,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (690,100,'_menu_item_orphaned','1618051238');
INSERT INTO `wp_postmeta` VALUES (691,101,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (692,101,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (693,101,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (694,101,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (695,101,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (696,101,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (697,101,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (698,101,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (699,101,'_menu_item_orphaned','1618051244');
INSERT INTO `wp_postmeta` VALUES (700,102,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (701,102,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (702,102,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (703,102,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (704,102,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (705,102,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (706,102,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (707,102,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (708,102,'_menu_item_orphaned','1618051254');
INSERT INTO `wp_postmeta` VALUES (709,103,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (710,103,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (711,103,'_menu_item_object_id','103');
INSERT INTO `wp_postmeta` VALUES (712,103,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (713,103,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (714,103,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (715,103,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (716,103,'_menu_item_url','front-page.php/#news');
INSERT INTO `wp_postmeta` VALUES (720,77,'_wp_old_date','2021-04-04');
INSERT INTO `wp_postmeta` VALUES (721,104,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (722,104,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (723,104,'_menu_item_object_id','104');
INSERT INTO `wp_postmeta` VALUES (724,104,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (725,104,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (726,104,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (727,104,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (728,104,'_menu_item_url','front-page.php/#intoro');
INSERT INTO `wp_postmeta` VALUES (730,105,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (731,105,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (732,105,'_menu_item_object_id','105');
INSERT INTO `wp_postmeta` VALUES (733,105,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (734,105,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (735,105,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (736,105,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (737,105,'_menu_item_url','front-page.php/#about');
INSERT INTO `wp_postmeta` VALUES (739,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (740,75,'_wp_trash_meta_time','1618052259');
INSERT INTO `wp_postmeta` VALUES (741,75,'_wp_desired_post_slug','interview');
INSERT INTO `wp_postmeta` VALUES (742,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (743,69,'_wp_trash_meta_time','1618052264');
INSERT INTO `wp_postmeta` VALUES (744,69,'_wp_desired_post_slug','intoro');
INSERT INTO `wp_postmeta` VALUES (745,67,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (746,67,'_wp_trash_meta_time','1618052268');
INSERT INTO `wp_postmeta` VALUES (747,67,'_wp_desired_post_slug','about');
INSERT INTO `wp_postmeta` VALUES (748,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (749,106,'_edit_lock','1618208180:1');
INSERT INTO `wp_postmeta` VALUES (750,73,'recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (751,73,'_recruitment-work','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (752,73,'recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (753,73,'_recruitment-text','field_607189fe8c4a5');
INSERT INTO `wp_postmeta` VALUES (754,73,'recruitment-location','東京都港区');
INSERT INTO `wp_postmeta` VALUES (755,73,'_recruitment-location','field_60718a408c4a6');
INSERT INTO `wp_postmeta` VALUES (756,73,'recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (757,73,'_recruitment-time','field_60718a828c4a7');
INSERT INTO `wp_postmeta` VALUES (758,73,'recruitment-condition','高校卒業以上の学歴。\r\nコミュニケーションが取れる人\r\n挨拶ができる\r\n基本的なマナーがある');
INSERT INTO `wp_postmeta` VALUES (759,73,'_recruitment-condition','field_60718afe8c4a8');
INSERT INTO `wp_postmeta` VALUES (760,73,'recruitment-saraly','年収 300万 以上\r\n実力により査定いたします');
INSERT INTO `wp_postmeta` VALUES (761,73,'_recruitment-saraly','field_60718b468c4a9');
INSERT INTO `wp_postmeta` VALUES (762,73,'recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (763,73,'_recruitment-allowance','field_60718b898c4aa');
INSERT INTO `wp_postmeta` VALUES (764,73,'recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (765,73,'_recruitment-vacation','field_60718c298c4ab');
INSERT INTO `wp_postmeta` VALUES (766,73,'recruitment-subscription','メールアドレス（testtest@index.co.jp）に履歴書及び職務経歴書を添付のうえご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (767,73,'_recruitment-subscription','field_60718c648c4ac');
INSERT INTO `wp_postmeta` VALUES (768,74,'recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (769,74,'_recruitment-work','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (770,74,'recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (771,74,'_recruitment-text','field_607189fe8c4a5');
INSERT INTO `wp_postmeta` VALUES (772,74,'recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (773,74,'_recruitment-location','field_60718a408c4a6');
INSERT INTO `wp_postmeta` VALUES (774,74,'recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (775,74,'_recruitment-time','field_60718a828c4a7');
INSERT INTO `wp_postmeta` VALUES (776,74,'recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (777,74,'_recruitment-condition','field_60718afe8c4a8');
INSERT INTO `wp_postmeta` VALUES (778,74,'recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (779,74,'_recruitment-saraly','field_60718b468c4a9');
INSERT INTO `wp_postmeta` VALUES (780,74,'recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (781,74,'_recruitment-allowance','field_60718b898c4aa');
INSERT INTO `wp_postmeta` VALUES (782,74,'recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (783,74,'_recruitment-vacation','field_60718c298c4ab');
INSERT INTO `wp_postmeta` VALUES (784,74,'recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (785,74,'_recruitment-subscription','field_60718c648c4ac');
INSERT INTO `wp_postmeta` VALUES (828,117,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (829,117,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (830,117,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (831,117,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (832,117,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (833,117,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (834,117,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (835,117,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (836,117,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (837,117,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (838,117,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (839,117,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (840,117,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (841,117,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (842,117,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (843,117,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (844,117,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (845,117,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (846,117,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (847,117,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (848,117,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (849,117,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (850,117,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (851,117,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (852,117,'recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (853,117,'_recruitment-work','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (854,117,'recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (855,117,'_recruitment-text','field_607189fe8c4a5');
INSERT INTO `wp_postmeta` VALUES (856,117,'recruitment-location','東京都港区');
INSERT INTO `wp_postmeta` VALUES (857,117,'_recruitment-location','field_60718a408c4a6');
INSERT INTO `wp_postmeta` VALUES (858,117,'recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (859,117,'_recruitment-time','field_60718a828c4a7');
INSERT INTO `wp_postmeta` VALUES (860,117,'recruitment-condition','高校卒業以上の学歴。\r\nコミュニケーションが取れる人\r\n挨拶ができる\r\n基本的なマナーがある');
INSERT INTO `wp_postmeta` VALUES (861,117,'_recruitment-condition','field_60718afe8c4a8');
INSERT INTO `wp_postmeta` VALUES (862,117,'recruitment-saraly','年収 300万 以上\r\n実力により査定いたします');
INSERT INTO `wp_postmeta` VALUES (863,117,'_recruitment-saraly','field_60718b468c4a9');
INSERT INTO `wp_postmeta` VALUES (864,117,'recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (865,117,'_recruitment-allowance','field_60718b898c4aa');
INSERT INTO `wp_postmeta` VALUES (866,117,'recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (867,117,'_recruitment-vacation','field_60718c298c4ab');
INSERT INTO `wp_postmeta` VALUES (868,117,'recruitment-subscription','メールアドレス（testtest@index.co.jp）に履歴書及び職務経歴書を添付のうえご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (869,117,'_recruitment-subscription','field_60718c648c4ac');
INSERT INTO `wp_postmeta` VALUES (870,73,'recruitment_recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (871,73,'_recruitment_recruitment-work','field_607192964adfe');
INSERT INTO `wp_postmeta` VALUES (872,73,'recruitment_recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (873,73,'_recruitment_recruitment-text','field_607192f84adff');
INSERT INTO `wp_postmeta` VALUES (874,73,'recruitment_recruitment-location','東京都港区 本社');
INSERT INTO `wp_postmeta` VALUES (875,73,'_recruitment_recruitment-location','field_607193354ae00');
INSERT INTO `wp_postmeta` VALUES (876,73,'recruitment_recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (877,73,'_recruitment_recruitment-time','field_6071935b4ae01');
INSERT INTO `wp_postmeta` VALUES (878,73,'recruitment_recruitment-condition','高校卒業以上\r\nコミュニケーションが取れる方\r\n節度あるマナーのある方\r\n挨拶ができる方');
INSERT INTO `wp_postmeta` VALUES (879,73,'_recruitment_recruitment-condition','field_607193824ae02');
INSERT INTO `wp_postmeta` VALUES (880,73,'recruitment_recruitment-saraly','実力により査定\r\n年収 300万以上');
INSERT INTO `wp_postmeta` VALUES (881,73,'_recruitment_recruitment-saraly','field_607193a84ae03');
INSERT INTO `wp_postmeta` VALUES (882,73,'recruitment_recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万（当社規定資格）\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (883,73,'_recruitment_recruitment-allowance','field_607193d04ae04');
INSERT INTO `wp_postmeta` VALUES (884,73,'recruitment_recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (885,73,'_recruitment_recruitment-vacation','field_6071940e4ae05');
INSERT INTO `wp_postmeta` VALUES (886,73,'recruitment_recruitment-subscription','メールアドレス（texttext@index.co.jp）まで履歴書・職務経歴書を添付の上ご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (887,73,'_recruitment_recruitment-subscription','field_607194324ae06');
INSERT INTO `wp_postmeta` VALUES (888,73,'recruitment','');
INSERT INTO `wp_postmeta` VALUES (889,73,'_recruitment','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (890,127,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (891,127,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (892,127,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (893,127,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (894,127,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (895,127,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (896,127,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (897,127,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (898,127,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (899,127,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (900,127,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (901,127,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (902,127,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (903,127,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (904,127,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (905,127,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (906,127,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (907,127,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (908,127,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (909,127,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (910,127,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (911,127,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (912,127,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (913,127,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (914,127,'recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (915,127,'_recruitment-work','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (916,127,'recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (917,127,'_recruitment-text','field_607189fe8c4a5');
INSERT INTO `wp_postmeta` VALUES (918,127,'recruitment-location','東京都港区');
INSERT INTO `wp_postmeta` VALUES (919,127,'_recruitment-location','field_60718a408c4a6');
INSERT INTO `wp_postmeta` VALUES (920,127,'recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (921,127,'_recruitment-time','field_60718a828c4a7');
INSERT INTO `wp_postmeta` VALUES (922,127,'recruitment-condition','高校卒業以上の学歴。\r\nコミュニケーションが取れる人\r\n挨拶ができる\r\n基本的なマナーがある');
INSERT INTO `wp_postmeta` VALUES (923,127,'_recruitment-condition','field_60718afe8c4a8');
INSERT INTO `wp_postmeta` VALUES (924,127,'recruitment-saraly','年収 300万 以上\r\n実力により査定いたします');
INSERT INTO `wp_postmeta` VALUES (925,127,'_recruitment-saraly','field_60718b468c4a9');
INSERT INTO `wp_postmeta` VALUES (926,127,'recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (927,127,'_recruitment-allowance','field_60718b898c4aa');
INSERT INTO `wp_postmeta` VALUES (928,127,'recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (929,127,'_recruitment-vacation','field_60718c298c4ab');
INSERT INTO `wp_postmeta` VALUES (930,127,'recruitment-subscription','メールアドレス（testtest@index.co.jp）に履歴書及び職務経歴書を添付のうえご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (931,127,'_recruitment-subscription','field_60718c648c4ac');
INSERT INTO `wp_postmeta` VALUES (932,127,'recruitment_recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (933,127,'_recruitment_recruitment-work','field_607192964adfe');
INSERT INTO `wp_postmeta` VALUES (934,127,'recruitment_recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (935,127,'_recruitment_recruitment-text','field_607192f84adff');
INSERT INTO `wp_postmeta` VALUES (936,127,'recruitment_recruitment-location','東京都港区 本社');
INSERT INTO `wp_postmeta` VALUES (937,127,'_recruitment_recruitment-location','field_607193354ae00');
INSERT INTO `wp_postmeta` VALUES (938,127,'recruitment_recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (939,127,'_recruitment_recruitment-time','field_6071935b4ae01');
INSERT INTO `wp_postmeta` VALUES (940,127,'recruitment_recruitment-condition','高校卒業以上\r\nコミュニケーションが取れる方\r\n節度あるマナーのある方\r\n挨拶ができる方');
INSERT INTO `wp_postmeta` VALUES (941,127,'_recruitment_recruitment-condition','field_607193824ae02');
INSERT INTO `wp_postmeta` VALUES (942,127,'recruitment_recruitment-saraly','実力により査定\r\n年収 300万以上');
INSERT INTO `wp_postmeta` VALUES (943,127,'_recruitment_recruitment-saraly','field_607193a84ae03');
INSERT INTO `wp_postmeta` VALUES (944,127,'recruitment_recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万（当社規定資格）\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (945,127,'_recruitment_recruitment-allowance','field_607193d04ae04');
INSERT INTO `wp_postmeta` VALUES (946,127,'recruitment_recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (947,127,'_recruitment_recruitment-vacation','field_6071940e4ae05');
INSERT INTO `wp_postmeta` VALUES (948,127,'recruitment_recruitment-subscription','メールアドレス（texttext@index.co.jp）まで履歴書・職務経歴書を添付の上ご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (949,127,'_recruitment_recruitment-subscription','field_607194324ae06');
INSERT INTO `wp_postmeta` VALUES (950,127,'recruitment','');
INSERT INTO `wp_postmeta` VALUES (951,127,'_recruitment','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (952,128,'top-schedule_1_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (953,128,'_top-schedule_1_schedule-day','field_60606f9325475');
INSERT INTO `wp_postmeta` VALUES (954,128,'top-schedule_1_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (955,128,'_top-schedule_1_schedule-text','field_6060700325476');
INSERT INTO `wp_postmeta` VALUES (956,128,'top-schedule_1','');
INSERT INTO `wp_postmeta` VALUES (957,128,'_top-schedule_1','field_60606f5025474');
INSERT INTO `wp_postmeta` VALUES (958,128,'top-schedule_2_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (959,128,'_top-schedule_2_schedule-day','field_60617737e9d73');
INSERT INTO `wp_postmeta` VALUES (960,128,'top-schedule_2_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (961,128,'_top-schedule_2_schedule-text','field_60617737e9d74');
INSERT INTO `wp_postmeta` VALUES (962,128,'top-schedule_2','');
INSERT INTO `wp_postmeta` VALUES (963,128,'_top-schedule_2','field_60617737e9d72');
INSERT INTO `wp_postmeta` VALUES (964,128,'top-schedule_3_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (965,128,'_top-schedule_3_schedule-day','field_60617752e9d76');
INSERT INTO `wp_postmeta` VALUES (966,128,'top-schedule_3_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (967,128,'_top-schedule_3_schedule-text','field_60617752e9d77');
INSERT INTO `wp_postmeta` VALUES (968,128,'top-schedule_3','');
INSERT INTO `wp_postmeta` VALUES (969,128,'_top-schedule_3','field_60617752e9d75');
INSERT INTO `wp_postmeta` VALUES (970,128,'top-schedule_4_schedule-day','');
INSERT INTO `wp_postmeta` VALUES (971,128,'_top-schedule_4_schedule-day','field_60617754e9d79');
INSERT INTO `wp_postmeta` VALUES (972,128,'top-schedule_4_schedule-text','');
INSERT INTO `wp_postmeta` VALUES (973,128,'_top-schedule_4_schedule-text','field_60617754e9d7a');
INSERT INTO `wp_postmeta` VALUES (974,128,'top-schedule_4','');
INSERT INTO `wp_postmeta` VALUES (975,128,'_top-schedule_4','field_60617754e9d78');
INSERT INTO `wp_postmeta` VALUES (976,128,'recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (977,128,'_recruitment-work','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (978,128,'recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (979,128,'_recruitment-text','field_607189fe8c4a5');
INSERT INTO `wp_postmeta` VALUES (980,128,'recruitment-location','東京都港区');
INSERT INTO `wp_postmeta` VALUES (981,128,'_recruitment-location','field_60718a408c4a6');
INSERT INTO `wp_postmeta` VALUES (982,128,'recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (983,128,'_recruitment-time','field_60718a828c4a7');
INSERT INTO `wp_postmeta` VALUES (984,128,'recruitment-condition','高校卒業以上の学歴。\r\nコミュニケーションが取れる人\r\n挨拶ができる\r\n基本的なマナーがある');
INSERT INTO `wp_postmeta` VALUES (985,128,'_recruitment-condition','field_60718afe8c4a8');
INSERT INTO `wp_postmeta` VALUES (986,128,'recruitment-saraly','年収 300万 以上\r\n実力により査定いたします');
INSERT INTO `wp_postmeta` VALUES (987,128,'_recruitment-saraly','field_60718b468c4a9');
INSERT INTO `wp_postmeta` VALUES (988,128,'recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (989,128,'_recruitment-allowance','field_60718b898c4aa');
INSERT INTO `wp_postmeta` VALUES (990,128,'recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (991,128,'_recruitment-vacation','field_60718c298c4ab');
INSERT INTO `wp_postmeta` VALUES (992,128,'recruitment-subscription','メールアドレス（testtest@index.co.jp）に履歴書及び職務経歴書を添付のうえご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (993,128,'_recruitment-subscription','field_60718c648c4ac');
INSERT INTO `wp_postmeta` VALUES (994,128,'recruitment_recruitment-work','営業');
INSERT INTO `wp_postmeta` VALUES (995,128,'_recruitment_recruitment-work','field_607192964adfe');
INSERT INTO `wp_postmeta` VALUES (996,128,'recruitment_recruitment-text','この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。この営業はダミーです。営業の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (997,128,'_recruitment_recruitment-text','field_607192f84adff');
INSERT INTO `wp_postmeta` VALUES (998,128,'recruitment_recruitment-location','東京都港区 本社');
INSERT INTO `wp_postmeta` VALUES (999,128,'_recruitment_recruitment-location','field_607193354ae00');
INSERT INTO `wp_postmeta` VALUES (1000,128,'recruitment_recruitment-time','9:00 〜 18:00');
INSERT INTO `wp_postmeta` VALUES (1001,128,'_recruitment_recruitment-time','field_6071935b4ae01');
INSERT INTO `wp_postmeta` VALUES (1002,128,'recruitment_recruitment-condition','高校卒業以上\r\nコミュニケーションが取れる方\r\n節度あるマナーのある方\r\n挨拶ができる方');
INSERT INTO `wp_postmeta` VALUES (1003,128,'_recruitment_recruitment-condition','field_607193824ae02');
INSERT INTO `wp_postmeta` VALUES (1004,128,'recruitment_recruitment-saraly','実力により査定\r\n年収 300万以上');
INSERT INTO `wp_postmeta` VALUES (1005,128,'_recruitment_recruitment-saraly','field_607193a84ae03');
INSERT INTO `wp_postmeta` VALUES (1006,128,'recruitment_recruitment-allowance','住宅手当　5万\r\n残業手当　2万\r\n資格手当　各1万（当社規定資格）\r\n交通費　　実費（〜2万）');
INSERT INTO `wp_postmeta` VALUES (1007,128,'_recruitment_recruitment-allowance','field_607193d04ae04');
INSERT INTO `wp_postmeta` VALUES (1008,128,'recruitment_recruitment-vacation','年間 130日間');
INSERT INTO `wp_postmeta` VALUES (1009,128,'_recruitment_recruitment-vacation','field_6071940e4ae05');
INSERT INTO `wp_postmeta` VALUES (1010,128,'recruitment_recruitment-subscription','メールアドレス（texttext@index.co.jp）まで履歴書・職務経歴書を添付の上ご連絡ください。\r\nまた、郵送においても受け付けております。');
INSERT INTO `wp_postmeta` VALUES (1011,128,'_recruitment_recruitment-subscription','field_607194324ae06');
INSERT INTO `wp_postmeta` VALUES (1012,128,'recruitment','');
INSERT INTO `wp_postmeta` VALUES (1013,128,'_recruitment','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (1014,140,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1015,140,'_edit_lock','1618145151:1');
INSERT INTO `wp_postmeta` VALUES (1016,144,'_edit_lock','1618130141:1');
INSERT INTO `wp_postmeta` VALUES (1017,147,'_edit_lock','1618130767:1');
INSERT INTO `wp_postmeta` VALUES (1020,147,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1021,147,'interview_interview-img','59');
INSERT INTO `wp_postmeta` VALUES (1022,147,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1023,147,'interview_interview-name','先輩 Aさん');
INSERT INTO `wp_postmeta` VALUES (1024,147,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1025,147,'interview_interview-text','私なんかがまた雇ってもらえるとはおまわなかったんですがね。\r\n雇ってもらえるだけじゃなくて他の若い人たちに混ざってしっかり研修も受けさせていただきました。\r\n中途採用の即戦力として会社のルールも分からずやるのと\r\n分かってから仕事に就くのとはやっぱり安心感も違いますから\r\n\r\n 今は楽しく毎日を過ごしていますよ。');
INSERT INTO `wp_postmeta` VALUES (1026,147,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1027,147,'interview','');
INSERT INTO `wp_postmeta` VALUES (1028,147,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1029,149,'interview_interview-img','59');
INSERT INTO `wp_postmeta` VALUES (1030,149,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1031,149,'interview_interview-name','先輩 Aさん');
INSERT INTO `wp_postmeta` VALUES (1032,149,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1033,149,'interview_interview-text','私なんかがまた雇ってもらえるとはおまわなかったんですがね。\r\n雇ってもらえるだけじゃなくて他の若い人たちに混ざってしっかり研修も受けさせていただきました。\r\n中途採用の即戦力として会社のルールも分からずやるのと\r\n分かってから仕事に就くのとはやっぱり安心感も違いますから\r\n\r\n 今は楽しく毎日を過ごしていますよ。');
INSERT INTO `wp_postmeta` VALUES (1034,149,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1035,149,'interview','');
INSERT INTO `wp_postmeta` VALUES (1036,149,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1041,150,'_edit_lock','1618137242:1');
INSERT INTO `wp_postmeta` VALUES (1042,151,'_edit_lock','1618137302:1');
INSERT INTO `wp_postmeta` VALUES (1043,152,'_edit_lock','1618147263:1');
INSERT INTO `wp_postmeta` VALUES (1044,152,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1045,152,'interview_interview-img','59');
INSERT INTO `wp_postmeta` VALUES (1046,152,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1047,152,'interview_interview-name','先輩 Aさん');
INSERT INTO `wp_postmeta` VALUES (1048,152,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1049,152,'interview_interview-text','私なんかがまた雇ってもらえるとはおまわなかったんですがね。\r\n 雇ってもらえるだけじゃなくて他の若い人たちに混ざってしっかり研修も受けさせていただきました。\r\n中途採用の即戦力として会社のルールも分からずやるのと\r\n分かってから仕事に就くのとはやっぱり安心感も違いますから\r\n\r\n 今は楽しく毎日を過ごしていますよ。');
INSERT INTO `wp_postmeta` VALUES (1050,152,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1051,152,'interview','');
INSERT INTO `wp_postmeta` VALUES (1052,152,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1053,152,'_thumbnail_id','59');
INSERT INTO `wp_postmeta` VALUES (1054,154,'_edit_lock','1618142979:1');
INSERT INTO `wp_postmeta` VALUES (1055,154,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (1056,154,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1057,154,'interview_interview-img','61');
INSERT INTO `wp_postmeta` VALUES (1058,154,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1059,154,'interview_interview-name','先輩 Bさん');
INSERT INTO `wp_postmeta` VALUES (1060,154,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1061,154,'interview_interview-text','いやー、楽しいよ、仕事はさぁー。\r\n 何がって俺が作ったものを皆んなが使ってくれるんだよ。\r\nそんな楽しい事はないよ。\r\n\r\nうん、楽しいよ、本当にね。');
INSERT INTO `wp_postmeta` VALUES (1062,154,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1063,154,'interview','');
INSERT INTO `wp_postmeta` VALUES (1064,154,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1065,155,'_edit_lock','1618193115:1');
INSERT INTO `wp_postmeta` VALUES (1066,155,'_thumbnail_id','60');
INSERT INTO `wp_postmeta` VALUES (1067,155,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1068,155,'interview_interview-img','60');
INSERT INTO `wp_postmeta` VALUES (1069,155,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1070,155,'interview_interview-name','先輩 Cさん');
INSERT INTO `wp_postmeta` VALUES (1071,155,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1072,155,'interview_interview-text','頑張ればそれだけ返って来る職場だよ。\r\n 俺も入って直ぐは右も左も分かんなかったけど先輩たちに色々フォローしてもらって一個づつできるようになったんだから\r\n気がついたらできることが増えていってるそんな感じ\r\nいろんな事ができればそれが評価に繋がって任される仕事も増えるし責任もふえて\r\nやり甲斐しかないから\r\n入ってみれば分かる！！');
INSERT INTO `wp_postmeta` VALUES (1073,155,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1074,155,'interview','');
INSERT INTO `wp_postmeta` VALUES (1075,155,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1076,156,'_edit_lock','1618193194:1');
INSERT INTO `wp_postmeta` VALUES (1077,156,'_thumbnail_id','62');
INSERT INTO `wp_postmeta` VALUES (1078,156,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1079,156,'interview_interview-img','62');
INSERT INTO `wp_postmeta` VALUES (1080,156,'_interview_interview-img','field_6072b4729ceb9');
INSERT INTO `wp_postmeta` VALUES (1081,156,'interview_interview-name','先輩 Dさん');
INSERT INTO `wp_postmeta` VALUES (1082,156,'_interview_interview-name','field_6072b57f5ad98');
INSERT INTO `wp_postmeta` VALUES (1083,156,'interview_interview-text','入って直ぐは研修もちゃんとあるし面倒見がいい会社だなって思ったんだけど\r\n 慣れてきたら、ちょっと変わった会社なのかもって思い出したのね。\r\n\r\nでもそれが面白いんだって気づいたの\r\n\r\nちょっと個性的な性格でも実力重視の会社だからやればやっただけ返ってくる。\r\n外見や個性で判断しないところが凄く私にとってあってるって感じたの\r\nだから実力だけで試したいって人には向いてる会社ね。');
INSERT INTO `wp_postmeta` VALUES (1084,156,'_interview_interview-text','field_6072b4a69ceba');
INSERT INTO `wp_postmeta` VALUES (1085,156,'interview','');
INSERT INTO `wp_postmeta` VALUES (1086,156,'_interview','field_6072b44d9ceb8');
INSERT INTO `wp_postmeta` VALUES (1087,152,'_wp_old_slug','%e5%85%88%e8%bc%a9a%e3%81%95%e3%82%93');
INSERT INTO `wp_postmeta` VALUES (1088,154,'_wp_old_slug','%e5%85%88%e8%bc%a9b%e3%81%95%e3%82%93');
INSERT INTO `wp_postmeta` VALUES (1089,155,'_wp_old_slug','%e5%85%88%e8%bc%a9-c%e3%81%95%e3%82%93');
INSERT INTO `wp_postmeta` VALUES (1090,156,'_wp_old_slug','%e5%85%88%e8%bc%a9d%e3%81%95%e3%82%93');
INSERT INTO `wp_postmeta` VALUES (1091,157,'_edit_lock','1618147470:1');
INSERT INTO `wp_postmeta` VALUES (1092,157,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (1093,157,'_wp_trash_meta_time','1618147617');
INSERT INTO `wp_postmeta` VALUES (1094,157,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (1095,158,'_edit_lock','1618194451:1');
INSERT INTO `wp_postmeta` VALUES (1096,159,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1097,159,'_edit_lock','1618208257:1');
INSERT INTO `wp_postmeta` VALUES (1098,163,'_edit_lock','1618194780:1');
INSERT INTO `wp_postmeta` VALUES (1099,164,'_edit_lock','1618572767:1');
INSERT INTO `wp_postmeta` VALUES (1100,164,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1101,164,'recruitment_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1102,164,'_recruitment_recruitment-work','field_607192964adfe');
INSERT INTO `wp_postmeta` VALUES (1103,164,'recruitment_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1104,164,'_recruitment_recruitment-text','field_607192f84adff');
INSERT INTO `wp_postmeta` VALUES (1105,164,'recruitment_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1106,164,'_recruitment_recruitment-location','field_607193354ae00');
INSERT INTO `wp_postmeta` VALUES (1107,164,'recruitment_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1108,164,'_recruitment_recruitment-time','field_6071935b4ae01');
INSERT INTO `wp_postmeta` VALUES (1109,164,'recruitment_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1110,164,'_recruitment_recruitment-condition','field_607193824ae02');
INSERT INTO `wp_postmeta` VALUES (1111,164,'recruitment_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1112,164,'_recruitment_recruitment-saraly','field_607193a84ae03');
INSERT INTO `wp_postmeta` VALUES (1113,164,'recruitment_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1114,164,'_recruitment_recruitment-allowance','field_607193d04ae04');
INSERT INTO `wp_postmeta` VALUES (1115,164,'recruitment_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1116,164,'_recruitment_recruitment-vacation','field_6071940e4ae05');
INSERT INTO `wp_postmeta` VALUES (1117,164,'recruitment_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1118,164,'_recruitment_recruitment-subscription','field_607194324ae06');
INSERT INTO `wp_postmeta` VALUES (1119,164,'recruitment','');
INSERT INTO `wp_postmeta` VALUES (1120,164,'_recruitment','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (1121,164,'recruitment_2_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1122,164,'_recruitment_2_recruitment-work','field_60726fbc07d15');
INSERT INTO `wp_postmeta` VALUES (1123,164,'recruitment_2_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1124,164,'_recruitment_2_recruitment-text','field_60726fbc07d16');
INSERT INTO `wp_postmeta` VALUES (1125,164,'recruitment_2_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1126,164,'_recruitment_2_recruitment-location','field_60726fbc07d17');
INSERT INTO `wp_postmeta` VALUES (1127,164,'recruitment_2_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1128,164,'_recruitment_2_recruitment-time','field_60726fbc07d18');
INSERT INTO `wp_postmeta` VALUES (1129,164,'recruitment_2_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1130,164,'_recruitment_2_recruitment-condition','field_60726fbc07d19');
INSERT INTO `wp_postmeta` VALUES (1131,164,'recruitment_2_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1132,164,'_recruitment_2_recruitment-saraly','field_60726fbc07d1a');
INSERT INTO `wp_postmeta` VALUES (1133,164,'recruitment_2_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1134,164,'_recruitment_2_recruitment-allowance','field_60726fbc07d1b');
INSERT INTO `wp_postmeta` VALUES (1135,164,'recruitment_2_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1136,164,'_recruitment_2_recruitment-vacation','field_60726fbc07d1c');
INSERT INTO `wp_postmeta` VALUES (1137,164,'recruitment_2_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1138,164,'_recruitment_2_recruitment-subscription','field_60726fbc07d1d');
INSERT INTO `wp_postmeta` VALUES (1139,164,'recruitment_2','');
INSERT INTO `wp_postmeta` VALUES (1140,164,'_recruitment_2','field_60726fbc07d14');
INSERT INTO `wp_postmeta` VALUES (1141,165,'recruitment_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1142,165,'_recruitment_recruitment-work','field_607192964adfe');
INSERT INTO `wp_postmeta` VALUES (1143,165,'recruitment_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1144,165,'_recruitment_recruitment-text','field_607192f84adff');
INSERT INTO `wp_postmeta` VALUES (1145,165,'recruitment_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1146,165,'_recruitment_recruitment-location','field_607193354ae00');
INSERT INTO `wp_postmeta` VALUES (1147,165,'recruitment_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1148,165,'_recruitment_recruitment-time','field_6071935b4ae01');
INSERT INTO `wp_postmeta` VALUES (1149,165,'recruitment_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1150,165,'_recruitment_recruitment-condition','field_607193824ae02');
INSERT INTO `wp_postmeta` VALUES (1151,165,'recruitment_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1152,165,'_recruitment_recruitment-saraly','field_607193a84ae03');
INSERT INTO `wp_postmeta` VALUES (1153,165,'recruitment_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1154,165,'_recruitment_recruitment-allowance','field_607193d04ae04');
INSERT INTO `wp_postmeta` VALUES (1155,165,'recruitment_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1156,165,'_recruitment_recruitment-vacation','field_6071940e4ae05');
INSERT INTO `wp_postmeta` VALUES (1157,165,'recruitment_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1158,165,'_recruitment_recruitment-subscription','field_607194324ae06');
INSERT INTO `wp_postmeta` VALUES (1159,165,'recruitment','');
INSERT INTO `wp_postmeta` VALUES (1160,165,'_recruitment','field_607189368c4a4');
INSERT INTO `wp_postmeta` VALUES (1161,165,'recruitment_2_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1162,165,'_recruitment_2_recruitment-work','field_60726fbc07d15');
INSERT INTO `wp_postmeta` VALUES (1163,165,'recruitment_2_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1164,165,'_recruitment_2_recruitment-text','field_60726fbc07d16');
INSERT INTO `wp_postmeta` VALUES (1165,165,'recruitment_2_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1166,165,'_recruitment_2_recruitment-location','field_60726fbc07d17');
INSERT INTO `wp_postmeta` VALUES (1167,165,'recruitment_2_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1168,165,'_recruitment_2_recruitment-time','field_60726fbc07d18');
INSERT INTO `wp_postmeta` VALUES (1169,165,'recruitment_2_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1170,165,'_recruitment_2_recruitment-condition','field_60726fbc07d19');
INSERT INTO `wp_postmeta` VALUES (1171,165,'recruitment_2_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1172,165,'_recruitment_2_recruitment-saraly','field_60726fbc07d1a');
INSERT INTO `wp_postmeta` VALUES (1173,165,'recruitment_2_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1174,165,'_recruitment_2_recruitment-allowance','field_60726fbc07d1b');
INSERT INTO `wp_postmeta` VALUES (1175,165,'recruitment_2_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1176,165,'_recruitment_2_recruitment-vacation','field_60726fbc07d1c');
INSERT INTO `wp_postmeta` VALUES (1177,165,'recruitment_2_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1178,165,'_recruitment_2_recruitment-subscription','field_60726fbc07d1d');
INSERT INTO `wp_postmeta` VALUES (1179,165,'recruitment_2','');
INSERT INTO `wp_postmeta` VALUES (1180,165,'_recruitment_2','field_60726fbc07d14');
INSERT INTO `wp_postmeta` VALUES (1181,166,'_edit_lock','1618299159:1');
INSERT INTO `wp_postmeta` VALUES (1182,166,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1183,166,'intoro_intoro-name','人材派遣');
INSERT INTO `wp_postmeta` VALUES (1184,166,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1185,166,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1186,166,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1187,166,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1188,166,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1189,169,'intoro_intoro-name','人材派遣');
INSERT INTO `wp_postmeta` VALUES (1190,169,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1191,169,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1192,169,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1193,169,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1194,169,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1195,170,'intoro_intoro-name','業務委託');
INSERT INTO `wp_postmeta` VALUES (1196,170,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1197,170,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1198,170,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1199,170,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1200,170,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1201,170,'_dp_original','166');
INSERT INTO `wp_postmeta` VALUES (1202,171,'intoro_intoro-name','アルバイト');
INSERT INTO `wp_postmeta` VALUES (1203,171,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1204,171,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1205,171,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1206,171,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1207,171,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1209,171,'_dp_original','170');
INSERT INTO `wp_postmeta` VALUES (1210,170,'_edit_lock','1618299323:1');
INSERT INTO `wp_postmeta` VALUES (1211,170,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1212,173,'intoro_intoro-name','業務委託');
INSERT INTO `wp_postmeta` VALUES (1213,173,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1214,173,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1215,173,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1216,173,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1217,173,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1218,171,'_edit_lock','1618572779:1');
INSERT INTO `wp_postmeta` VALUES (1219,171,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1220,175,'intoro_intoro-name','アルバイト');
INSERT INTO `wp_postmeta` VALUES (1221,175,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1222,175,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1223,175,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1224,175,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1225,175,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1226,176,'intoro_intoro-name','警備員');
INSERT INTO `wp_postmeta` VALUES (1227,176,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1228,176,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1229,176,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1230,176,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1231,176,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1233,176,'_dp_original','170');
INSERT INTO `wp_postmeta` VALUES (1234,177,'intoro_intoro-name','シニア派遣');
INSERT INTO `wp_postmeta` VALUES (1235,177,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1236,177,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1237,177,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1238,177,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1239,177,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1241,177,'_dp_original','176');
INSERT INTO `wp_postmeta` VALUES (1242,178,'intoro_intoro-name','ドライバー派遣');
INSERT INTO `wp_postmeta` VALUES (1243,178,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1244,178,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1245,178,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1246,178,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1247,178,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1249,178,'_dp_original','177');
INSERT INTO `wp_postmeta` VALUES (1250,176,'_edit_lock','1618299361:1');
INSERT INTO `wp_postmeta` VALUES (1251,176,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1252,180,'intoro_intoro-name','警備員');
INSERT INTO `wp_postmeta` VALUES (1253,180,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1254,180,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1255,180,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1256,180,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1257,180,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1258,177,'_edit_lock','1618299248:1');
INSERT INTO `wp_postmeta` VALUES (1259,177,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1260,182,'intoro_intoro-name','シニア派遣');
INSERT INTO `wp_postmeta` VALUES (1261,182,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1262,182,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1263,182,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1264,182,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1265,182,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1266,178,'_edit_lock','1618299166:1');
INSERT INTO `wp_postmeta` VALUES (1267,178,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1268,184,'intoro_intoro-name','ドライバー派遣');
INSERT INTO `wp_postmeta` VALUES (1269,184,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1270,184,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1271,184,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1272,184,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1273,184,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1274,185,'intoro_intoro-name','求人広告');
INSERT INTO `wp_postmeta` VALUES (1275,185,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1276,185,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1277,185,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1278,185,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1279,185,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1281,185,'_dp_original','176');
INSERT INTO `wp_postmeta` VALUES (1282,186,'intoro_intoro-name','社員研修');
INSERT INTO `wp_postmeta` VALUES (1283,186,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1284,186,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1285,186,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1286,186,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1287,186,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1289,186,'_dp_original','185');
INSERT INTO `wp_postmeta` VALUES (1290,185,'_edit_lock','1618299337:1');
INSERT INTO `wp_postmeta` VALUES (1291,185,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1292,188,'intoro_intoro-name','求人広告');
INSERT INTO `wp_postmeta` VALUES (1293,188,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1294,188,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1295,188,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1296,188,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1297,188,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1298,186,'_edit_lock','1618299350:1');
INSERT INTO `wp_postmeta` VALUES (1299,186,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1300,190,'intoro_intoro-name','社員研修');
INSERT INTO `wp_postmeta` VALUES (1301,190,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1302,190,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1303,190,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1304,190,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1305,190,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1306,191,'intoro_intoro-name','アルバイト');
INSERT INTO `wp_postmeta` VALUES (1307,191,'_intoro_intoro-name','field_6073b13a47aaa');
INSERT INTO `wp_postmeta` VALUES (1308,191,'intoro_intoro-text','この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。');
INSERT INTO `wp_postmeta` VALUES (1309,191,'_intoro_intoro-text','field_6073b15a47aab');
INSERT INTO `wp_postmeta` VALUES (1310,191,'intoro','');
INSERT INTO `wp_postmeta` VALUES (1311,191,'_intoro','field_6073b0c747aa9');
INSERT INTO `wp_postmeta` VALUES (1312,73,'recruitment_2_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1313,73,'_recruitment_2_recruitment-work','field_60726fbc07d15');
INSERT INTO `wp_postmeta` VALUES (1314,73,'recruitment_2_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1315,73,'_recruitment_2_recruitment-text','field_60726fbc07d16');
INSERT INTO `wp_postmeta` VALUES (1316,73,'recruitment_2_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1317,73,'_recruitment_2_recruitment-location','field_60726fbc07d17');
INSERT INTO `wp_postmeta` VALUES (1318,73,'recruitment_2_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1319,73,'_recruitment_2_recruitment-time','field_60726fbc07d18');
INSERT INTO `wp_postmeta` VALUES (1320,73,'recruitment_2_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1321,73,'_recruitment_2_recruitment-condition','field_60726fbc07d19');
INSERT INTO `wp_postmeta` VALUES (1322,73,'recruitment_2_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1323,73,'_recruitment_2_recruitment-saraly','field_60726fbc07d1a');
INSERT INTO `wp_postmeta` VALUES (1324,73,'recruitment_2_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1325,73,'_recruitment_2_recruitment-allowance','field_60726fbc07d1b');
INSERT INTO `wp_postmeta` VALUES (1326,73,'recruitment_2_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1327,73,'_recruitment_2_recruitment-vacation','field_60726fbc07d1c');
INSERT INTO `wp_postmeta` VALUES (1328,73,'recruitment_2_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1329,73,'_recruitment_2_recruitment-subscription','field_60726fbc07d1d');
INSERT INTO `wp_postmeta` VALUES (1330,73,'recruitment_2','');
INSERT INTO `wp_postmeta` VALUES (1331,73,'_recruitment_2','field_60726fbc07d14');
INSERT INTO `wp_postmeta` VALUES (1332,128,'recruitment_2_recruitment-work','');
INSERT INTO `wp_postmeta` VALUES (1333,128,'_recruitment_2_recruitment-work','field_60726fbc07d15');
INSERT INTO `wp_postmeta` VALUES (1334,128,'recruitment_2_recruitment-text','');
INSERT INTO `wp_postmeta` VALUES (1335,128,'_recruitment_2_recruitment-text','field_60726fbc07d16');
INSERT INTO `wp_postmeta` VALUES (1336,128,'recruitment_2_recruitment-location','');
INSERT INTO `wp_postmeta` VALUES (1337,128,'_recruitment_2_recruitment-location','field_60726fbc07d17');
INSERT INTO `wp_postmeta` VALUES (1338,128,'recruitment_2_recruitment-time','');
INSERT INTO `wp_postmeta` VALUES (1339,128,'_recruitment_2_recruitment-time','field_60726fbc07d18');
INSERT INTO `wp_postmeta` VALUES (1340,128,'recruitment_2_recruitment-condition','');
INSERT INTO `wp_postmeta` VALUES (1341,128,'_recruitment_2_recruitment-condition','field_60726fbc07d19');
INSERT INTO `wp_postmeta` VALUES (1342,128,'recruitment_2_recruitment-saraly','');
INSERT INTO `wp_postmeta` VALUES (1343,128,'_recruitment_2_recruitment-saraly','field_60726fbc07d1a');
INSERT INTO `wp_postmeta` VALUES (1344,128,'recruitment_2_recruitment-allowance','');
INSERT INTO `wp_postmeta` VALUES (1345,128,'_recruitment_2_recruitment-allowance','field_60726fbc07d1b');
INSERT INTO `wp_postmeta` VALUES (1346,128,'recruitment_2_recruitment-vacation','');
INSERT INTO `wp_postmeta` VALUES (1347,128,'_recruitment_2_recruitment-vacation','field_60726fbc07d1c');
INSERT INTO `wp_postmeta` VALUES (1348,128,'recruitment_2_recruitment-subscription','');
INSERT INTO `wp_postmeta` VALUES (1349,128,'_recruitment_2_recruitment-subscription','field_60726fbc07d1d');
INSERT INTO `wp_postmeta` VALUES (1350,128,'recruitment_2','');
INSERT INTO `wp_postmeta` VALUES (1351,128,'_recruitment_2','field_60726fbc07d14');
INSERT INTO `wp_postmeta` VALUES (1352,103,'_wp_old_date','2021-04-10');
INSERT INTO `wp_postmeta` VALUES (1353,104,'_wp_old_date','2021-04-10');
INSERT INTO `wp_postmeta` VALUES (1354,105,'_wp_old_date','2021-04-10');
INSERT INTO `wp_postmeta` VALUES (1355,77,'_wp_old_date','2021-04-10');
INSERT INTO `wp_postmeta` VALUES (1356,192,'_edit_lock','1618574604:1');
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-03-28 03:32:30','2021-03-28 03:32:30','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-03-28 03:32:30','2021-03-28 03:32:30','',0,'http://nantoka.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-03-28 03:32:30','2021-03-28 03:32:30','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nantoka.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-03-29 02:33:13','2021-03-29 02:33:13','',0,'http://nantoka.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-03-28 03:32:30','2021-03-28 03:32:30','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://nantoka.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-03-28 03:32:30','2021-03-28 03:32:30','',0,'http://nantoka.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-03-28 11:31:30','0000-00-00 00:00:00','','ホーム','','draft','closed','closed','','','','','2021-03-28 11:31:30','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=5',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-03-28 11:31:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-03-28 11:31:30','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=6',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-03-28 11:34:10','0000-00-00 00:00:00','','ホーム','','draft','closed','closed','','','','','2021-03-28 11:34:10','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=9',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-03-28 11:34:13','0000-00-00 00:00:00','','ホーム','','draft','closed','closed','','','','','2021-03-28 11:34:13','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-03-28 11:54:40','2021-03-28 11:54:40','','トップページ','','publish','closed','closed','','home','','','2021-03-29 06:50:45','2021-03-29 06:50:45','',0,'http://nantoka.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-03-28 12:03:32','2021-03-28 12:03:32','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:45:\"トップページ用のフィールドです\";}','トップページ','%e3%83%88%e3%83%83%e3%83%97%e3%83%9a%e3%83%bc%e3%82%b8','trash','closed','closed','','group_60606f4156803__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',0,'http://nantoka.local/?post_type=acf-field-group&#038;p=18',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-03-28 12:03:32','2021-03-28 12:03:32','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','スケジュール','top-schedule_1','trash','closed','closed','','field_60606f5025474__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',18,'http://nantoka.local/?post_type=acf-field&#038;p=19',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-03-28 12:03:32','2021-03-28 12:03:32','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"新着の日付（0000.00.00）\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','日時','schedule-day','publish','closed','closed','','field_60606f9325475','','','2021-03-29 02:28:14','2021-03-29 02:28:14','',19,'http://nantoka.local/?post_type=acf-field&#038;p=20',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-03-28 12:03:32','2021-03-28 12:03:32','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"新着のタイトルテキスト\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','テキスト','schedule-text','publish','closed','closed','','field_6060700325476','','','2021-03-29 02:28:14','2021-03-29 02:28:14','',19,'http://nantoka.local/?post_type=acf-field&#038;p=21',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-03-28 12:10:01','2021-03-28 12:10:01','','トップページ','','inherit','closed','closed','','17-revision-v1','','','2021-03-28 12:10:01','2021-03-28 12:10:01','',17,'http://nantoka.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-03-28 12:11:57','2021-03-28 12:11:57','','トップページ','','inherit','closed','closed','','17-revision-v1','','','2021-03-28 12:11:57','2021-03-28 12:11:57','',17,'http://nantoka.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-03-29 02:33:13','2021-03-29 02:33:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nantoka.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-03-29 02:33:13','2021-03-29 02:33:13','',2,'http://nantoka.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-03-29 02:35:03','2021-03-29 02:35:03','','トップページ','','inherit','closed','closed','','17-revision-v1','','','2021-03-29 02:35:03','2021-03-29 02:35:03','',17,'http://nantoka.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-03-29 02:37:22','2021-03-29 02:37:22','','トップページ','','inherit','closed','closed','','17-revision-v1','','','2021-03-29 02:37:22','2021-03-29 02:37:22','',17,'http://nantoka.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-03-29 06:41:54','2021-03-29 06:41:54','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','先輩インタビュー','%e5%85%88%e8%bc%a9%e3%82%a4%e3%83%b3%e3%82%bf%e3%83%93%e3%83%a5%e3%83%bc','trash','closed','closed','','group_6061748fc70c1__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',0,'http://nantoka.local/?post_type=acf-field-group&#038;p=33',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-03-29 06:41:54','2021-03-29 06:41:54','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"インタビューした先輩\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','先輩インタビュー','interview_1','trash','closed','closed','','field_6061749e117d3__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',33,'http://nantoka.local/?post_type=acf-field&#038;p=34',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-03-29 06:41:54','2021-03-29 06:41:54','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"インタビューした先輩の画像\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','画像','interview_img','publish','closed','closed','','field_60617586117d4','','','2021-03-29 06:41:54','2021-03-29 06:41:54','',34,'http://nantoka.local/?post_type=acf-field&p=35',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-03-29 06:41:54','2021-03-29 06:41:54','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"インタビューした先輩の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','名前','interview_name','publish','closed','closed','','field_606175f2117d5','','','2021-03-29 06:41:54','2021-03-29 06:41:54','',34,'http://nantoka.local/?post_type=acf-field&p=36',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-03-29 06:41:54','2021-03-29 06:41:54','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"インタビューした先輩の文章\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}','文章','interview_text','publish','closed','closed','','field_60617635117d6','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',34,'http://nantoka.local/?post_type=acf-field&#038;p=37',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"インタビューした先輩\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','先輩インタビュー','interview_2','trash','closed','closed','','field_606176f53a89c__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',33,'http://nantoka.local/?post_type=acf-field&#038;p=38',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"インタビューした先輩の画像\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','画像','interview_img','publish','closed','closed','','field_606176f53a89d','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',38,'http://nantoka.local/?post_type=acf-field&p=39',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"インタビューした先輩の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','名前','interview_name','publish','closed','closed','','field_606176f53a89e','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',38,'http://nantoka.local/?post_type=acf-field&p=40',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"インタビューした先輩の文章\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}','文章','interview_text','publish','closed','closed','','field_606176f53a89f','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',38,'http://nantoka.local/?post_type=acf-field&p=41',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"インタビューした先輩\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','先輩インタビュー','interview_3','trash','closed','closed','','field_606177023a8a0__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',33,'http://nantoka.local/?post_type=acf-field&#038;p=42',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"インタビューした先輩の画像\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','画像','interview_img','publish','closed','closed','','field_606177023a8a1','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',42,'http://nantoka.local/?post_type=acf-field&p=43',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"インタビューした先輩の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','名前','interview_name','publish','closed','closed','','field_606177023a8a2','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',42,'http://nantoka.local/?post_type=acf-field&p=44',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"インタビューした先輩の文章\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}','文章','interview_text','publish','closed','closed','','field_606177023a8a3','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',42,'http://nantoka.local/?post_type=acf-field&p=45',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"インタビューした先輩\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','先輩インタビュー','interview_4','trash','closed','closed','','field_606177063a8a4__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',33,'http://nantoka.local/?post_type=acf-field&#038;p=46',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"インタビューした先輩の画像\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','画像','interview_img','publish','closed','closed','','field_606177063a8a5','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',46,'http://nantoka.local/?post_type=acf-field&p=47',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"インタビューした先輩の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','名前','interview_name','publish','closed','closed','','field_606177063a8a6','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',46,'http://nantoka.local/?post_type=acf-field&p=48',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-03-29 06:43:24','2021-03-29 06:43:24','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"インタビューした先輩の文章\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}','文章','interview_text','publish','closed','closed','','field_606177063a8a7','','','2021-03-29 06:43:24','2021-03-29 06:43:24','',46,'http://nantoka.local/?post_type=acf-field&p=49',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','スケジュール','top-schedule_2','trash','closed','closed','','field_60617737e9d72__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',18,'http://nantoka.local/?post_type=acf-field&#038;p=50',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"新着の日付（0000.00.00）\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','日時','schedule-day','publish','closed','closed','','field_60617737e9d73','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',50,'http://nantoka.local/?post_type=acf-field&p=51',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"新着のタイトルテキスト\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','テキスト','schedule-text','publish','closed','closed','','field_60617737e9d74','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',50,'http://nantoka.local/?post_type=acf-field&p=52',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','スケジュール','top-schedule_3','trash','closed','closed','','field_60617752e9d75__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',18,'http://nantoka.local/?post_type=acf-field&#038;p=53',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"新着の日付（0000.00.00）\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','日時','schedule-day','publish','closed','closed','','field_60617752e9d76','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',53,'http://nantoka.local/?post_type=acf-field&p=54',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"新着のタイトルテキスト\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','テキスト','schedule-text','publish','closed','closed','','field_60617752e9d77','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',53,'http://nantoka.local/?post_type=acf-field&p=55',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','スケジュール','top-schedule_4','trash','closed','closed','','field_60617754e9d78__trashed','','','2021-04-04 12:11:30','2021-04-04 12:11:30','',18,'http://nantoka.local/?post_type=acf-field&#038;p=56',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"新着の日付（0000.00.00）\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','日時','schedule-day','publish','closed','closed','','field_60617754e9d79','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',56,'http://nantoka.local/?post_type=acf-field&p=57',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-03-29 06:44:46','2021-03-29 06:44:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"新着のタイトルテキスト\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','テキスト','schedule-text','publish','closed','closed','','field_60617754e9d7a','','','2021-03-29 06:44:46','2021-03-29 06:44:46','',56,'http://nantoka.local/?post_type=acf-field&p=58',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-03-29 06:47:13','2021-03-29 06:47:13','','newmanA','','inherit','open','closed','','newmana','','','2021-03-29 06:47:13','2021-03-29 06:47:13','',17,'http://nantoka.local/wp-content/uploads/2021/03/newmanA.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-03-29 06:47:13','2021-03-29 06:47:13','','newmanC','','inherit','open','closed','','newmanc','','','2021-03-29 06:47:13','2021-03-29 06:47:13','',17,'http://nantoka.local/wp-content/uploads/2021/03/newmanC.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-03-29 06:47:13','2021-03-29 06:47:13','','newmanB','','inherit','open','closed','','newmanb','','','2021-03-29 06:47:13','2021-03-29 06:47:13','',17,'http://nantoka.local/wp-content/uploads/2021/03/newmanB.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-03-29 06:47:13','2021-03-29 06:47:13','','newmanD','','inherit','open','closed','','newmand','','','2021-03-29 06:47:13','2021-03-29 06:47:13','',17,'http://nantoka.local/wp-content/uploads/2021/03/newmanD.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-03-29 06:50:45','2021-03-29 06:50:45','','トップページ','','inherit','closed','closed','','17-revision-v1','','','2021-03-29 06:50:45','2021-03-29 06:50:45','',17,'http://nantoka.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-04-04 11:26:49','2021-04-04 11:26:49','<label> 氏名\n    [text* your-name] </label>\n\n<label> メールアドレス\n    [email* your-email] </label>\n\n<label> 題名\n    [text* your-subject] </label>\n\n<label> メッセージ本文 (任意)\n    [textarea your-message] </label>\n\n[submit \"送信\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@nantoka.local>\n差出人: [your-name] <[your-email]>\n題名: [your-subject]\n\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは [_site_title] ([_site_url]) のお問い合わせフォームから送信されました\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@nantoka.local>\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは [_site_title] ([_site_url]) のお問い合わせフォームから送信されました\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nありがとうございます。メッセージは送信されました。\nメッセージの送信に失敗しました。後でまたお試しください。\n入力内容に問題があります。確認して再度お試しください。\nメッセージの送信に失敗しました。後でまたお試しください。\nメッセージを送信する前に承諾確認が必要です。\n必須項目に入力してください。\n入力されたテキストが長すぎます。\n入力されたテキストが短すぎます。\nファイルのアップロード時に不明なエラーが発生しました。\nこの形式のファイルはアップロードできません。\nファイルが大きすぎます。\nファイルのアップロード中にエラーが発生しました。','コンタクトフォーム 1','','publish','closed','closed','','%e3%82%b3%e3%83%b3%e3%82%bf%e3%82%af%e3%83%88%e3%83%95%e3%82%a9%e3%83%bc%e3%83%a0-1','','','2021-04-04 11:26:49','2021-04-04 11:26:49','',0,'http://nantoka.local/?post_type=wpcf7_contact_form&p=65',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-04-04 11:34:23','2021-04-04 11:34:23','','会社概要','','trash','closed','closed','','about__trashed','','','2021-04-10 10:57:48','2021-04-10 10:57:48','',0,'http://nantoka.local/?page_id=67',100,'page','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-04-04 11:34:23','2021-04-04 11:34:23','','会社概要','','inherit','closed','closed','','67-revision-v1','','','2021-04-04 11:34:23','2021-04-04 11:34:23','',67,'http://nantoka.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-04-04 11:35:05','2021-04-04 11:35:05','','事業紹介','','trash','closed','closed','','intoro__trashed','','','2021-04-10 10:57:44','2021-04-10 10:57:44','',0,'http://nantoka.local/?page_id=69',200,'page','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-04-04 11:35:05','2021-04-04 11:35:05','','事業紹介','','inherit','closed','closed','','69-revision-v1','','','2021-04-04 11:35:05','2021-04-04 11:35:05','',69,'http://nantoka.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-04-04 11:35:32','2021-04-04 11:35:32','','お知らせ','','trash','closed','closed','','news__trashed','','','2021-04-10 10:36:27','2021-04-10 10:36:27','',0,'http://nantoka.local/?page_id=71',300,'page','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-04-04 11:35:32','2021-04-04 11:35:32','','お知らせ','','inherit','closed','closed','','71-revision-v1','','','2021-04-04 11:35:32','2021-04-04 11:35:32','',71,'http://nantoka.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-04-04 11:36:06','2021-04-04 11:36:06','','人材募集','','publish','closed','closed','','recruitment','','','2021-04-13 07:36:41','2021-04-13 07:36:41','',0,'http://nantoka.local/?page_id=73',400,'page','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-04-04 11:36:06','2021-04-04 11:36:06','','人材募集','','inherit','closed','closed','','73-revision-v1','','','2021-04-04 11:36:06','2021-04-04 11:36:06','',73,'http://nantoka.local/?p=74',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-04-04 11:37:00','2021-04-04 11:37:00','','先輩インタビュー','','trash','closed','closed','','interview__trashed','','','2021-04-10 10:57:39','2021-04-10 10:57:39','',0,'http://nantoka.local/?page_id=75',500,'page','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-04-04 11:37:00','2021-04-04 11:37:00','','先輩インタビュー','','inherit','closed','closed','','75-revision-v1','','','2021-04-04 11:37:00','2021-04-04 11:37:00','',75,'http://nantoka.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-04-16 11:53:37','2021-04-04 11:38:42',' ','','','publish','closed','closed','','77','','','2021-04-16 11:53:37','2021-04-16 11:53:37','',0,'http://nantoka.local/?p=77',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-04-04 12:18:49','2021-04-04 12:18:49','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','HPを開設しました','','trash','closed','closed','','news__trashed','','','2021-04-10 09:44:01','2021-04-10 09:44:01','',0,'http://nantoka.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-04-04 12:18:49','2021-04-04 12:18:49','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました','','inherit','closed','closed','','83-revision-v1','','','2021-04-04 12:18:49','2021-04-04 12:18:49','',83,'http://nantoka.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-04-05 02:17:33','2021-04-05 02:17:33','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました2','','trash','closed','closed','','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f__trashed','','','2021-04-10 09:44:01','2021-04-10 09:44:01','',0,'http://nantoka.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-04-05 02:17:33','2021-04-05 02:17:33','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました','','inherit','closed','closed','','85-revision-v1','','','2021-04-05 02:17:33','2021-04-05 02:17:33','',85,'http://nantoka.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-04-05 02:17:44','2021-04-05 02:17:44','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました2','','inherit','closed','closed','','85-revision-v1','','','2021-04-05 02:17:44','2021-04-05 02:17:44','',85,'http://nantoka.local/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-04-05 02:34:43','2021-04-05 02:34:43','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','HPを開設しました','','inherit','closed','closed','','83-revision-v1','','','2021-04-05 02:34:43','2021-04-05 02:34:43','',83,'http://nantoka.local/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-04-06 06:28:43','2021-04-06 06:28:43','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました3','','trash','closed','closed','','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f3__trashed','','','2021-04-10 09:44:01','2021-04-10 09:44:01','',0,'http://nantoka.local/?p=89',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-04-06 06:28:57','2021-04-06 06:28:57','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました4','','trash','closed','closed','','hp%e3%82%92%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f4__trashed','','','2021-04-10 09:44:01','2021-04-10 09:44:01','',0,'http://nantoka.local/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-04-06 06:28:43','2021-04-06 06:28:43','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました3','','inherit','closed','closed','','89-revision-v1','','','2021-04-06 06:28:43','2021-04-06 06:28:43','',89,'http://nantoka.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-04-06 06:28:57','2021-04-06 06:28:57','<!-- wp:paragraph -->\n<p>ホームページを新しく開設しました。</p>\n<!-- /wp:paragraph -->','HPを開設しました4','','inherit','closed','closed','','90-revision-v1','','','2021-04-06 06:28:57','2021-04-06 06:28:57','',90,'http://nantoka.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-04-10 10:12:59','2021-04-10 10:12:59','<!-- wp:paragraph -->\n<p>ホームページを開設しました。</p>\n<!-- /wp:paragraph -->','HP開設しました','','publish','closed','closed','','hp%e9%96%8b%e8%a8%ad%e3%81%97%e3%81%be%e3%81%97%e3%81%9f','','','2021-04-10 10:12:59','2021-04-10 10:12:59','',0,'http://nantoka.local/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-04-10 10:12:59','2021-04-10 10:12:59','<!-- wp:paragraph -->\n<p>ホームページを開設しました。</p>\n<!-- /wp:paragraph -->','HP開設しました','','inherit','closed','closed','','93-revision-v1','','','2021-04-10 10:12:59','2021-04-10 10:12:59','',93,'http://nantoka.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-04-10 10:33:51','2021-04-10 10:33:51','<!-- wp:paragraph -->\n<p>ホームページを更新しました。</p>\n<!-- /wp:paragraph -->','HP更新しました１','','publish','closed','closed','','hp%e6%9b%b4%e6%96%b0%e3%81%97%e3%81%be%e3%81%97%e3%81%9f%ef%bc%91','','','2021-04-10 10:33:51','2021-04-10 10:33:51','',0,'http://nantoka.local/?p=95',0,'post','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-04-10 10:33:51','2021-04-10 10:33:51','<!-- wp:paragraph -->\n<p>ホームページを更新しました。</p>\n<!-- /wp:paragraph -->','HP更新しました１','','inherit','closed','closed','','95-revision-v1','','','2021-04-10 10:33:51','2021-04-10 10:33:51','',95,'http://nantoka.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-04-10 10:34:14','2021-04-10 10:34:14','<!-- wp:paragraph -->\n<p>ホームページを更新しました。</p>\n<!-- /wp:paragraph -->','HP更新しました２','','publish','closed','closed','','hp%e6%9b%b4%e6%96%b0%e3%81%97%e3%81%be%e3%81%97%e3%81%9f%ef%bc%92','','','2021-04-10 10:34:14','2021-04-10 10:34:14','',0,'http://nantoka.local/?p=97',0,'post','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-04-10 10:34:14','2021-04-10 10:34:14','<!-- wp:paragraph -->\n<p>ホームページを更新しました。</p>\n<!-- /wp:paragraph -->','HP更新しました２','','inherit','closed','closed','','97-revision-v1','','','2021-04-10 10:34:14','2021-04-10 10:34:14','',97,'http://nantoka.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-04-10 10:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-04-10 10:39:39','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=99',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-04-10 10:40:38','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-04-10 10:40:38','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=100',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-04-10 10:40:44','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-04-10 10:40:44','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=101',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-04-10 10:40:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-04-10 10:40:54','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=102',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-04-16 11:53:37','2021-04-10 10:44:11','','お知らせ','','publish','closed','closed','','%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b','','','2021-04-16 11:53:37','2021-04-16 11:53:37','',0,'http://nantoka.local/?p=103',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-04-16 11:53:37','2021-04-10 10:57:15','','事業紹介','','publish','closed','closed','','%e4%ba%8b%e6%a5%ad%e7%b4%b9%e4%bb%8b','','','2021-04-16 11:53:37','2021-04-16 11:53:37','',0,'http://nantoka.local/?p=104',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-04-16 11:53:37','2021-04-10 10:57:15','','会社概要','','publish','closed','closed','','%e4%bc%9a%e7%a4%be%e6%a6%82%e8%a6%81','','','2021-04-16 11:53:37','2021-04-16 11:53:37','',0,'http://nantoka.local/?p=105',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-04-10 11:36:06','2021-04-10 11:36:06','a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"73\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','人材募集','%e4%ba%ba%e6%9d%90%e5%8b%9f%e9%9b%86','publish','closed','closed','','group_60718915b75ae','','','2021-04-12 06:18:42','2021-04-12 06:18:42','',0,'http://nantoka.local/?post_type=acf-field-group&#038;p=106',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-04-10 11:36:06','2021-04-10 11:36:06','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:33:\"人材募集の入力項目です\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','人材募集','recruitment','publish','closed','closed','','field_607189368c4a4','','','2021-04-10 12:04:42','2021-04-10 12:04:42','',106,'http://nantoka.local/?post_type=acf-field&#038;p=107',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-04-10 11:52:54','2021-04-10 11:52:54','','人材募集','','inherit','closed','closed','','73-revision-v1','','','2021-04-10 11:52:54','2021-04-10 11:52:54','',73,'http://nantoka.local/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:45:\"募集する職種を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','職種','recruitment-work','publish','closed','closed','','field_607192964adfe','','','2021-04-10 12:04:42','2021-04-10 12:04:42','',107,'http://nantoka.local/?post_type=acf-field&p=118',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"職務内容を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','職業内容','recruitment-text','publish','closed','closed','','field_607192f84adff','','','2021-04-11 03:29:42','2021-04-11 03:29:42','',107,'http://nantoka.local/?post_type=acf-field&#038;p=119',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"勤務場所を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','勤務場所','recruitment-location','publish','closed','closed','','field_607193354ae00','','','2021-04-10 12:04:42','2021-04-10 12:04:42','',107,'http://nantoka.local/?post_type=acf-field&p=120',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"勤務時間を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','勤務時間','recruitment-time','publish','closed','closed','','field_6071935b4ae01','','','2021-04-10 12:04:42','2021-04-10 12:04:42','',107,'http://nantoka.local/?post_type=acf-field&p=121',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:48:\"募集資格、条件を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','募集資格','recruitment-condition','publish','closed','closed','','field_607193824ae02','','','2021-04-11 03:29:42','2021-04-11 03:29:42','',107,'http://nantoka.local/?post_type=acf-field&#038;p=122',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:48:\"報酬額、給与額を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','報酬額','recruitment-saraly','publish','closed','closed','','field_607193a84ae03','','','2021-04-11 03:29:42','2021-04-11 03:29:42','',107,'http://nantoka.local/?post_type=acf-field&#038;p=123',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:42:\"諸手当などを記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','諸手当等','recruitment-allowance','publish','closed','closed','','field_607193d04ae04','','','2021-04-10 12:04:42','2021-04-10 12:04:42','',107,'http://nantoka.local/?post_type=acf-field&p=124',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"休暇制度を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','休暇制度','recruitment-vacation','publish','closed','closed','','field_6071940e4ae05','','','2021-04-11 03:29:42','2021-04-11 03:29:42','',107,'http://nantoka.local/?post_type=acf-field&#038;p=125',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-04-10 12:04:42','2021-04-10 12:04:42','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"応募方法を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','応募方法','recruitment-subscription','publish','closed','closed','','field_607194324ae06','','','2021-04-11 03:29:42','2021-04-11 03:29:42','',107,'http://nantoka.local/?post_type=acf-field&#038;p=126',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-04-10 12:10:49','2021-04-10 12:10:49','','人材募集','','inherit','closed','closed','','73-revision-v1','','','2021-04-10 12:10:49','2021-04-10 12:10:49','',73,'http://nantoka.local/?p=127',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-04-10 12:14:01','2021-04-10 12:14:01','','人材募集','','inherit','closed','closed','','73-revision-v1','','','2021-04-10 12:14:01','2021-04-10 12:14:01','',73,'http://nantoka.local/?p=128',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2021-04-11 03:36:45','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-04-11 03:36:45','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=129',0,'post','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:33:\"人材募集の入力項目です\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','人材募集2','recruitment_2','publish','closed','closed','','field_60726fbc07d14','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',106,'http://nantoka.local/?post_type=acf-field&p=130',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:45:\"募集する職種を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','職種','recruitment-work','publish','closed','closed','','field_60726fbc07d15','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=131',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"職務内容を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','職業内容','recruitment-text','publish','closed','closed','','field_60726fbc07d16','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=132',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"勤務場所を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','勤務場所','recruitment-location','publish','closed','closed','','field_60726fbc07d17','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=133',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"勤務時間を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','勤務時間','recruitment-time','publish','closed','closed','','field_60726fbc07d18','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=134',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:48:\"募集資格、条件を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','募集資格','recruitment-condition','publish','closed','closed','','field_60726fbc07d19','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=135',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:48:\"報酬額、給与額を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','報酬額','recruitment-saraly','publish','closed','closed','','field_60726fbc07d1a','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=136',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:42:\"諸手当などを記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','諸手当等','recruitment-allowance','publish','closed','closed','','field_60726fbc07d1b','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=137',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"休暇制度を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','休暇制度','recruitment-vacation','publish','closed','closed','','field_60726fbc07d1c','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=138',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-04-11 03:41:15','2021-04-11 03:41:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"応募方法を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','応募方法','recruitment-subscription','publish','closed','closed','','field_60726fbc07d1d','','','2021-04-11 03:41:15','2021-04-11 03:41:15','',130,'http://nantoka.local/?post_type=acf-field&p=139',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-04-11 08:35:32','2021-04-11 08:35:32','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"interview\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"category:interview\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','先輩インタビュー','%e5%85%88%e8%bc%a9%e3%82%a4%e3%83%b3%e3%82%bf%e3%83%93%e3%83%a5%e3%83%bc','publish','closed','closed','','group_6072b444cea53','','','2021-04-11 10:38:12','2021-04-11 10:38:12','',0,'http://nantoka.local/?post_type=acf-field-group&#038;p=140',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-04-11 08:35:32','2021-04-11 08:35:32','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:33:\"先輩インタビューを記入\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','インタビュー','interview','publish','closed','closed','','field_6072b44d9ceb8','','','2021-04-11 08:35:32','2021-04-11 08:35:32','',140,'http://nantoka.local/?post_type=acf-field&p=141',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-04-11 08:35:32','2021-04-11 08:35:32','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"インタビューした先輩の画像\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','先輩の画像','interview-img','publish','closed','closed','','field_6072b4729ceb9','','','2021-04-11 08:39:47','2021-04-11 08:39:47','',141,'http://nantoka.local/?post_type=acf-field&#038;p=142',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-04-11 08:35:32','2021-04-11 08:35:32','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:54:\"インタビューの内容を記入してください\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','インタビュー文','interview-text','publish','closed','closed','','field_6072b4a69ceba','','','2021-04-11 08:39:47','2021-04-11 08:39:47','',141,'http://nantoka.local/?post_type=acf-field&#038;p=143',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2021-04-11 08:37:10','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-04-11 08:37:10','0000-00-00 00:00:00','',0,'http://nantoka.local/?p=144',0,'post','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2021-04-11 08:39:09','2021-04-11 08:39:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"インタビューした先輩の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','先輩の名前','interview-name','publish','closed','closed','','field_6072b57f5ad98','','','2021-04-11 08:39:47','2021-04-11 08:39:47','',141,'http://nantoka.local/?post_type=acf-field&#038;p=145',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2021-04-11 08:41:25','2021-04-11 08:41:25','','Aせんぱ','','publish','closed','closed','','a%e3%81%9b%e3%82%93%e3%81%b1','','','2021-04-11 08:42:49','2021-04-11 08:42:49','',0,'http://nantoka.local/?p=147',0,'post','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2021-04-11 08:41:25','2021-04-11 08:41:25','','Aせんぱ','','inherit','closed','closed','','147-revision-v1','','','2021-04-11 08:41:25','2021-04-11 08:41:25','',147,'http://nantoka.local/?p=148',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2021-04-11 08:41:25','2021-04-11 08:41:25','','Aせんぱ','','inherit','closed','closed','','147-revision-v1','','','2021-04-11 08:41:25','2021-04-11 08:41:25','',147,'http://nantoka.local/?p=149',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-04-11 10:36:02','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2021-04-11 10:36:02','0000-00-00 00:00:00','',0,'http://nantoka.local/?post_type=interview&p=150',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2021-04-11 10:37:18','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2021-04-11 10:37:18','0000-00-00 00:00:00','',0,'http://nantoka.local/?post_type=interview&p=151',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2021-04-11 10:39:43','2021-04-11 10:39:43','','先輩Aさん','','publish','closed','closed','','a-san','','','2021-04-11 12:09:23','2021-04-11 12:09:23','',0,'http://nantoka.local/?post_type=interview&#038;p=152',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2021-04-11 10:59:44','2021-04-11 10:59:44','','先輩Bさん','','publish','closed','closed','','b-san','','','2021-04-11 12:09:38','2021-04-11 12:09:38','',0,'http://nantoka.local/?post_type=interview&#038;p=154',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-04-11 11:01:34','2021-04-11 11:01:34','','先輩 Cさん','','publish','closed','closed','','c-san','','','2021-04-11 12:09:52','2021-04-11 12:09:52','',0,'http://nantoka.local/?post_type=interview&#038;p=155',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2021-04-11 11:02:44','2021-04-11 11:02:44','','先輩Dさん','','publish','closed','closed','','d-san','','','2021-04-12 01:55:27','2021-04-12 01:55:27','',0,'http://nantoka.local/?post_type=interview&#038;p=156',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2021-04-11 13:26:57','2021-04-11 13:26:57','','','','trash','closed','closed','','__trashed','','','2021-04-11 13:26:57','2021-04-11 13:26:57','',0,'http://nantoka.local/?post_type=interview&#038;p=157',0,'interview','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-04-12 02:29:43','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2021-04-12 02:29:43','0000-00-00 00:00:00','',0,'http://nantoka.local/?page_id=158',0,'page','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-04-12 02:34:27','2021-04-12 02:34:27','a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"164\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','事業紹介','%e4%ba%8b%e6%a5%ad%e7%b4%b9%e4%bb%8b','publish','closed','closed','','group_6073b0bc4db6c','','','2021-04-12 06:20:00','2021-04-12 06:20:00','',0,'http://nantoka.local/?post_type=acf-field-group&#038;p=159',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-04-12 02:34:27','2021-04-12 02:34:27','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:15:\"事業の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','事業紹介','intoro','publish','closed','closed','','field_6073b0c747aa9','','','2021-04-12 02:34:27','2021-04-12 02:34:27','',159,'http://nantoka.local/?post_type=acf-field&p=160',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2021-04-12 02:34:27','2021-04-12 02:34:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:15:\"事業の名前\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','事業名','intoro-name','publish','closed','closed','','field_6073b13a47aaa','','','2021-04-12 02:34:27','2021-04-12 02:34:27','',160,'http://nantoka.local/?post_type=acf-field&p=161',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2021-04-12 02:34:27','2021-04-12 02:34:27','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:12:\"事業内容\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','事業内容','intoro-text','publish','closed','closed','','field_6073b15a47aab','','','2021-04-12 02:34:27','2021-04-12 02:34:27','',160,'http://nantoka.local/?post_type=acf-field&p=162',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2021-04-12 02:35:04','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2021-04-12 02:35:04','0000-00-00 00:00:00','',0,'http://nantoka.local/?page_id=163',0,'page','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2021-04-12 02:36:39','2021-04-12 02:36:39','','事業紹介','','publish','closed','closed','','intoro','','','2021-04-13 07:33:26','2021-04-13 07:33:26','',0,'http://nantoka.local/?page_id=164',200,'page','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2021-04-12 02:36:39','2021-04-12 02:36:39','','事業紹介','','inherit','closed','closed','','164-revision-v1','','','2021-04-12 02:36:39','2021-04-12 02:36:39','',164,'http://nantoka.local/?p=165',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2021-04-12 06:19:41','2021-04-12 06:19:41','','人材派遣','','publish','closed','closed','','human','','','2021-04-13 07:34:42','2021-04-13 07:34:42','',164,'http://nantoka.local/?page_id=166',240,'page','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2021-04-12 06:19:41','2021-04-12 06:19:41','<!-- wp:paragraph -->\n<p>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</p>\n<!-- /wp:paragraph -->','人材派遣','','inherit','closed','closed','','166-revision-v1','','','2021-04-12 06:19:41','2021-04-12 06:19:41','',166,'http://nantoka.local/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2021-04-12 06:20:35','2021-04-12 06:20:35','','人材派遣','','inherit','closed','closed','','166-revision-v1','','','2021-04-12 06:20:35','2021-04-12 06:20:35','',166,'http://nantoka.local/?p=168',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2021-04-12 06:20:36','2021-04-12 06:20:36','','人材派遣','','inherit','closed','closed','','166-revision-v1','','','2021-04-12 06:20:36','2021-04-12 06:20:36','',166,'http://nantoka.local/?p=169',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2021-04-12 06:21:24','2021-04-12 06:21:24','','業務委託','','publish','closed','closed','','entrust','','','2021-04-13 07:35:23','2021-04-13 07:35:23','',164,'http://nantoka.local/?page_id=170',250,'page','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2021-04-12 06:21:45','2021-04-12 06:21:45','<!-- wp:paragraph -->\n<p>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</p>\n<!-- /wp:paragraph -->','アルバイト','','publish','closed','closed','','part','','','2021-04-13 07:33:41','2021-04-13 07:33:41','',164,'http://nantoka.local/?page_id=171',210,'page','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2021-04-12 06:21:24','2021-04-12 06:21:24','','業務委託','','inherit','closed','closed','','170-revision-v1','','','2021-04-12 06:21:24','2021-04-12 06:21:24','',170,'http://nantoka.local/?p=172',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2021-04-12 06:21:24','2021-04-12 06:21:24','','業務委託','','inherit','closed','closed','','170-revision-v1','','','2021-04-12 06:21:24','2021-04-12 06:21:24','',170,'http://nantoka.local/?p=173',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2021-04-12 06:21:45','2021-04-12 06:21:45','','アルバイト','','inherit','closed','closed','','171-revision-v1','','','2021-04-12 06:21:45','2021-04-12 06:21:45','',171,'http://nantoka.local/?p=174',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2021-04-12 06:21:45','2021-04-12 06:21:45','','アルバイト','','inherit','closed','closed','','171-revision-v1','','','2021-04-12 06:21:45','2021-04-12 06:21:45','',171,'http://nantoka.local/?p=175',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2021-04-12 06:22:17','2021-04-12 06:22:17','','警備員','','publish','closed','closed','','%e8%ad%a6%e5%82%99%e5%93%a1','','','2021-04-13 07:36:01','2021-04-13 07:36:01','',164,'http://nantoka.local/?page_id=176',280,'page','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2021-04-12 06:22:35','2021-04-12 06:22:35','','シニア派遣','','publish','closed','closed','','old','','','2021-04-13 07:34:08','2021-04-13 07:34:08','',164,'http://nantoka.local/?page_id=177',220,'page','',0);
INSERT INTO `wp_posts` VALUES (178,1,'2021-04-12 06:22:58','2021-04-12 06:22:58','','ドライバー派遣','','publish','closed','closed','','drivey','','','2021-04-13 07:34:25','2021-04-13 07:34:25','',164,'http://nantoka.local/?page_id=178',230,'page','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2021-04-12 06:22:17','2021-04-12 06:22:17','','警備員','','inherit','closed','closed','','176-revision-v1','','','2021-04-12 06:22:17','2021-04-12 06:22:17','',176,'http://nantoka.local/?p=179',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2021-04-12 06:22:17','2021-04-12 06:22:17','','警備員','','inherit','closed','closed','','176-revision-v1','','','2021-04-12 06:22:17','2021-04-12 06:22:17','',176,'http://nantoka.local/?p=180',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2021-04-12 06:22:35','2021-04-12 06:22:35','','シニア派遣','','inherit','closed','closed','','177-revision-v1','','','2021-04-12 06:22:35','2021-04-12 06:22:35','',177,'http://nantoka.local/?p=181',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2021-04-12 06:22:36','2021-04-12 06:22:36','','シニア派遣','','inherit','closed','closed','','177-revision-v1','','','2021-04-12 06:22:36','2021-04-12 06:22:36','',177,'http://nantoka.local/?p=182',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2021-04-12 06:22:58','2021-04-12 06:22:58','','ドライバー派遣','','inherit','closed','closed','','178-revision-v1','','','2021-04-12 06:22:58','2021-04-12 06:22:58','',178,'http://nantoka.local/?p=183',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2021-04-12 06:22:58','2021-04-12 06:22:58','','ドライバー派遣','','inherit','closed','closed','','178-revision-v1','','','2021-04-12 06:22:58','2021-04-12 06:22:58','',178,'http://nantoka.local/?p=184',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2021-04-12 06:23:31','2021-04-12 06:23:31','','求人広告','','publish','closed','closed','','job','','','2021-04-13 07:35:37','2021-04-13 07:35:37','',164,'http://nantoka.local/?page_id=185',260,'page','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2021-04-12 06:23:51','2021-04-12 06:23:51','','社員研修','','publish','closed','closed','','training','','','2021-04-13 07:35:50','2021-04-13 07:35:50','',164,'http://nantoka.local/?page_id=186',270,'page','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2021-04-12 06:23:31','2021-04-12 06:23:31','','求人広告','','inherit','closed','closed','','185-revision-v1','','','2021-04-12 06:23:31','2021-04-12 06:23:31','',185,'http://nantoka.local/?p=187',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2021-04-12 06:23:31','2021-04-12 06:23:31','','求人広告','','inherit','closed','closed','','185-revision-v1','','','2021-04-12 06:23:31','2021-04-12 06:23:31','',185,'http://nantoka.local/?p=188',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2021-04-12 06:23:51','2021-04-12 06:23:51','','社員研修','','inherit','closed','closed','','186-revision-v1','','','2021-04-12 06:23:51','2021-04-12 06:23:51','',186,'http://nantoka.local/?p=189',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2021-04-12 06:23:51','2021-04-12 06:23:51','','社員研修','','inherit','closed','closed','','186-revision-v1','','','2021-04-12 06:23:51','2021-04-12 06:23:51','',186,'http://nantoka.local/?p=190',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2021-04-12 06:40:59','2021-04-12 06:40:59','<!-- wp:paragraph -->\n<p>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</p>\n<!-- /wp:paragraph -->','アルバイト','','inherit','closed','closed','','171-revision-v1','','','2021-04-12 06:40:59','2021-04-12 06:40:59','',171,'http://nantoka.local/?p=191',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2021-04-16 12:03:55','2021-04-16 12:03:55','<!-- wp:shortcode -->\n[contact-form-7 id=\"65\" title=\"コンタクトフォーム 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','お問い合わせ','','publish','closed','closed','','%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b','','','2021-04-16 12:03:55','2021-04-16 12:03:55','',0,'http://nantoka.local/?page_id=192',0,'page','',0);
INSERT INTO `wp_posts` VALUES (193,1,'2021-04-16 12:03:55','2021-04-16 12:03:55','<!-- wp:shortcode -->\n[contact-form-7 id=\"65\" title=\"コンタクトフォーム 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','お問い合わせ','','inherit','closed','closed','','192-revision-v1','','','2021-04-16 12:03:55','2021-04-16 12:03:55','',192,'http://nantoka.local/?p=193',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (77,4,0);
INSERT INTO `wp_term_relationships` VALUES (83,5,0);
INSERT INTO `wp_term_relationships` VALUES (85,5,0);
INSERT INTO `wp_term_relationships` VALUES (89,5,0);
INSERT INTO `wp_term_relationships` VALUES (90,5,0);
INSERT INTO `wp_term_relationships` VALUES (93,5,0);
INSERT INTO `wp_term_relationships` VALUES (95,5,0);
INSERT INTO `wp_term_relationships` VALUES (97,5,0);
INSERT INTO `wp_term_relationships` VALUES (103,4,0);
INSERT INTO `wp_term_relationships` VALUES (104,4,0);
INSERT INTO `wp_term_relationships` VALUES (105,4,0);
INSERT INTO `wp_term_relationships` VALUES (147,6,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','先輩インタビューのカテゴリー',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'interview','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (4,'global','global',0);
INSERT INTO `wp_terms` VALUES (5,'news','news-category',0);
INSERT INTO `wp_terms` VALUES (6,'インタビュー','interview',0);
INSERT INTO `wp_terms` VALUES (9,'インタビューアイテム','interview',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','hiraiwa');
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
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"2c05ead02d3a04120e5ab308da771fe73917080f45226e20b003e24a937d2742\";a:4:{s:10:\"expiration\";i:1618743917;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618571117;}s:64:\"e845d8a77ad1a32d068f6270ec9c9292b24e9c428b5625ca93abc8e17d5bb09e\";a:4:{s:10:\"expiration\";i:1618802866;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1618630066;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','129');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings-time','1617000641');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
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
INSERT INTO `wp_users` VALUES (1,'hiraiwa','$P$BgFbwyuobMh6WC9mR2y76UhVVmAvAe1','hiraiwa','dev-email@flywheel.local','http://nantoka.local','2021-03-28 03:32:30','',0,'hiraiwa');
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

-- Dump completed on 2021-04-17 12:51:12
