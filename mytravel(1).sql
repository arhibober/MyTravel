-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 09:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-17 21:33:28', '2021-01-17 18:33:28', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/myTravel', 'yes'),
(2, 'home', 'http://localhost/myTravel', 'yes'),
(3, 'blogname', 'Портал путевых заметок', 'yes'),
(4, 'blogdescription', 'Путешественники о своём опыте', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arhibober@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"cyr-and-lat/cyr-and-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:21:\"Привет, мир!\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:27:\"cyr-and-lat/cyr-and-lat.php\";a:2:{i:0;s:19:\"WCTLR_Admin_Notices\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '10', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '14', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1626460407', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1622136809;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622140409;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622140629;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622140632;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622150544;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622486009;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:11:\"custom_logo\";i:16;s:16:\"background_color\";s:6:\"33ffcc\";}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(139, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(163, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"arhibober@gmail.com\";s:7:\"version\";s:5:\"5.7.2\";s:9:\"timestamp\";i:1621348872;}', 'no'),
(164, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":0}', 'yes'),
(196, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(214, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(223, '_wp_suggested_policy_text_has_changed', 'not-changed', 'yes'),
(268, 'category_children', 'a:0:{}', 'yes'),
(421, 'recently_activated', 'a:0:{}', 'yes'),
(422, 'wbcr_cyrandlat_an__activated_on', '1619175305', 'yes'),
(424, 'wbcr_wp_term_1_old_slug', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 'no'),
(425, 'wbcr_wp_term_2_old_slug', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'no'),
(426, 'wbcr_wp_term_3_old_slug', '%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'no'),
(427, 'wbcr_wp_term_4_old_slug', '%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f', 'no'),
(528, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1622134272;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(537, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1622622820', 'no'),
(538, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(539, '_site_transient_timeout_browser_1509ab70d6a2d319ec457fb7f46a8933', '1622622822', 'no'),
(540, '_site_transient_browser_1509ab70d6a2d319ec457fb7f46a8933', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"88.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(557, '_site_transient_timeout_theme_roots', '1622136073', 'no'),
(558, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(559, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622134274;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(560, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622134274;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"cyr-and-lat/cyr-and-lat.php\";s:5:\"1.2.0\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"cyr-and-lat/cyr-and-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/cyr-and-lat\";s:4:\"slug\";s:11:\"cyr-and-lat\";s:6:\"plugin\";s:27:\"cyr-and-lat/cyr-and-lat.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/cyr-and-lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr-and-lat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/cyr-and-lat/assets/icon-256x256.jpg?rev=1877806\";s:2:\"1x\";s:64:\"https://ps.w.org/cyr-and-lat/assets/icon-128x128.jpg?rev=1877806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/cyr-and-lat/assets/banner-1544x500.jpg?rev=1877806\";s:2:\"1x\";s:66:\"https://ps.w.org/cyr-and-lat/assets/banner-772x250.jpg?rev=1877806\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 7, '_customize_changeset_uuid', '8c3674f7-fb61-40d5-9144-ca3f1d89debe'),
(6, 8, '_customize_changeset_uuid', '8c3674f7-fb61-40d5-9144-ca3f1d89debe'),
(8, 9, '_customize_changeset_uuid', '8c3674f7-fb61-40d5-9144-ca3f1d89debe'),
(10, 10, '_customize_changeset_uuid', '8c3674f7-fb61-40d5-9144-ca3f1d89debe'),
(14, 13, '_wp_attached_file', '2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:90:\"2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:90:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:92:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:90:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:90:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 14, '_wp_attached_file', '2021/04/cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg'),
(17, 14, '_wp_attachment_context', 'site-icon'),
(18, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:98:\"2021/04/cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:98:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:98:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:98:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:98:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:98:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:96:\"cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 15, '_wp_attached_file', '2021/04/IMG_6401-scaled.jpg'),
(20, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_6401-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6401-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_6401-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6401-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_6401-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_6401-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_6401-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_6401-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon PowerShot A620\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1532878092\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:6:\"14.926\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_6401.jpg\";}'),
(21, 16, '_wp_attached_file', '2021/04/cropped-IMG_6401-scaled-1.jpg'),
(22, 16, '_wp_attachment_context', 'custom-logo'),
(23, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:854;s:4:\"file\";s:37:\"2021/04/cropped-IMG_6401-scaled-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-IMG_6401-scaled-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"cropped-IMG_6401-scaled-1-1024x342.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-IMG_6401-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"cropped-IMG_6401-scaled-1-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"cropped-IMG_6401-scaled-1-1536x512.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:38:\"cropped-IMG_6401-scaled-1-2048x683.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-IMG_6401-scaled-1-1568x523.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:523;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 21, '_menu_item_type', 'custom'),
(25, 21, '_menu_item_menu_item_parent', '0'),
(26, 21, '_menu_item_object_id', '21'),
(27, 21, '_menu_item_object', 'custom'),
(28, 21, '_menu_item_target', ''),
(29, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 21, '_menu_item_xfn', ''),
(31, 21, '_menu_item_url', 'http://localhost/myTravel/'),
(32, 22, '_menu_item_type', 'post_type'),
(33, 22, '_menu_item_menu_item_parent', '0'),
(34, 22, '_menu_item_object_id', '8'),
(35, 22, '_menu_item_object', 'page'),
(36, 22, '_menu_item_target', ''),
(37, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 22, '_menu_item_xfn', ''),
(39, 22, '_menu_item_url', ''),
(40, 23, '_menu_item_type', 'post_type'),
(41, 23, '_menu_item_menu_item_parent', '0'),
(42, 23, '_menu_item_object_id', '10'),
(43, 23, '_menu_item_object', 'page'),
(44, 23, '_menu_item_target', ''),
(45, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 23, '_menu_item_xfn', ''),
(47, 23, '_menu_item_url', ''),
(48, 24, '_menu_item_type', 'post_type'),
(49, 24, '_menu_item_menu_item_parent', '0'),
(50, 24, '_menu_item_object_id', '9'),
(51, 24, '_menu_item_object', 'page'),
(52, 24, '_menu_item_target', ''),
(53, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 24, '_menu_item_xfn', ''),
(55, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'custom'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '25'),
(59, 25, '_menu_item_object', 'custom'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 25, '_menu_item_xfn', ''),
(63, 25, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(64, 26, '_menu_item_type', 'custom'),
(65, 26, '_menu_item_menu_item_parent', '0'),
(66, 26, '_menu_item_object_id', '26'),
(67, 26, '_menu_item_object', 'custom'),
(68, 26, '_menu_item_target', ''),
(69, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 26, '_menu_item_xfn', ''),
(71, 26, '_menu_item_url', 'https://twitter.com/wordpress'),
(72, 27, '_menu_item_type', 'custom'),
(73, 27, '_menu_item_menu_item_parent', '0'),
(74, 27, '_menu_item_object_id', '27'),
(75, 27, '_menu_item_object', 'custom'),
(76, 27, '_menu_item_target', ''),
(77, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 27, '_menu_item_xfn', ''),
(79, 27, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(80, 28, '_menu_item_type', 'custom'),
(81, 28, '_menu_item_menu_item_parent', '0'),
(82, 28, '_menu_item_object_id', '28'),
(83, 28, '_menu_item_object', 'custom'),
(84, 28, '_menu_item_target', ''),
(85, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 28, '_menu_item_xfn', ''),
(87, 28, '_menu_item_url', 'mailto:wordpress@example.com'),
(90, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:7445:\"<h2>Кто мы</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost/myTravel.</p><h2>Комментарии</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h2>Медиафайлы</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h2>Куки</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h2>Встраиваемое содержимое других вебсайтов</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h2>С кем мы делимся вашими данными</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><h2>Как долго мы храним ваши данные</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\";s:5:\"added\";i:1618145926;}'),
(91, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:17:\"Twenty Twenty-One\";s:11:\"policy_text\";s:842:\"<p class=\"privacy-policy-tutorial\">Twenty Twenty-One будет использовать локальное хранилище браузера, при включении поддержки тёмного режима.</p>\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст:</strong> Сайт будет использовать локальное хранилище для сохранения настроек поддержки тёмного режима.<br>Это требуется для обеспечения работы этой настройки, если пользователь нажмет кнопку включения тёмного режима.<br>Никакие данные при этом не передаются и не сохраняются в базе данных сайта.</p>\n\";s:5:\"added\";i:1618145926;}'),
(92, 7, '_edit_lock', '1618318104:1'),
(94, 30, '_edit_lock', '1618845989:1'),
(96, 33, '_edit_lock', '1618846997:1'),
(99, 36, '_wp_attached_file', '2021/04/IMG_2331-scaled.jpg'),
(100, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2021/04/IMG_2331-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2331-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2331-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2331-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_2331-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2331-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2331-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2331-1568x2091.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:2091;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282384739\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2331.jpg\";}'),
(101, 37, '_wp_attached_file', '2021/04/IMG_2375-scaled.jpg'),
(102, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2375-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2375-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2375-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2375-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2375-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2375-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2375-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2375-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282411869\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2375.jpg\";}'),
(103, 38, '_wp_attached_file', '2021/04/IMG_2388-scaled.jpg'),
(104, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2388-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2388-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2388-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2388-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2388-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2388-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2388-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2388-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282420962\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2388.jpg\";}'),
(105, 39, '_wp_attached_file', '2021/04/IMG_2476-scaled.jpg'),
(106, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2476-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2476-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2476-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2476-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2476-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2476-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2476-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2476-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282483332\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"25.2\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2476.jpg\";}'),
(107, 40, '_wp_attached_file', '2021/04/IMG_2467-scaled.jpg'),
(108, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2467-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2467-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2467-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2467-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2467-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2467-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2467-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2467-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282480073\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"72\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2467.jpg\";}'),
(109, 41, '_wp_attached_file', '2021/04/IMG_2480-scaled.jpg'),
(110, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2480-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2480-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2480-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2480-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2480-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2480-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2480-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2480-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282483635\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.2\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2480.jpg\";}'),
(111, 42, '_wp_attached_file', '2021/04/IMG_2486-scaled.jpg'),
(112, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2486-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2486-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2486-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2486-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2486-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2486-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2486-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2486-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282483818\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"8.6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2486.jpg\";}'),
(113, 43, '_wp_attached_file', '2021/04/IMG_2549-scaled.jpg'),
(114, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2549-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2549-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2549-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2549-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2549-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2549-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2549-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2549-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282568770\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2549.jpg\";}'),
(115, 44, '_wp_attached_file', '2021/04/IMG_2567-scaled.jpg'),
(116, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2567-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2567-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2567-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2567-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2567-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2567-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2567-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2567-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282577118\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2567.jpg\";}'),
(119, 48, '_wp_attached_file', '2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1.jpg'),
(120, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:92:\"2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:92:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:94:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:92:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:92:\"pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 49, '_wp_attached_file', '2021/04/IMG_2359-scaled.jpg'),
(122, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2021/04/IMG_2359-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2359-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2359-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2359-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2359-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2359-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2359-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_2359-1568x1176.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon PowerShot S3 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1282390624\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"41.6\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2359.jpg\";}'),
(133, 55, '_menu_item_type', 'post_type'),
(134, 55, '_menu_item_menu_item_parent', '0'),
(135, 55, '_menu_item_object_id', '30'),
(136, 55, '_menu_item_object', 'page'),
(137, 55, '_menu_item_target', ''),
(138, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 55, '_menu_item_xfn', ''),
(140, 55, '_menu_item_url', ''),
(141, 55, '_menu_item_orphaned', '1618843081'),
(142, 56, '_menu_item_type', 'post_type'),
(143, 56, '_menu_item_menu_item_parent', '0'),
(144, 56, '_menu_item_object_id', '30'),
(145, 56, '_menu_item_object', 'page'),
(146, 56, '_menu_item_target', ''),
(147, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 56, '_menu_item_xfn', ''),
(149, 56, '_menu_item_url', ''),
(151, 21, '_wp_old_date', '2021-04-11'),
(152, 22, '_wp_old_date', '2021-04-11'),
(153, 23, '_wp_old_date', '2021-04-11'),
(154, 24, '_wp_old_date', '2021-04-11'),
(155, 1, 'wbcr_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(156, 7, 'wbcr_wp_old_slug', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%b9%d1%82%d0%b5-%d0%b2%d0%b0%d1%88-%d1%81%d0%b0%d0%b9%d1%82-%d1%81-%d0%bf%d0%be%d0%bc%d0%be%d1%89%d1%8c%d1%8e-%d0%b1%d0%bb%d0%be%d0%ba%d0%be%d0%b2'),
(157, 8, 'wbcr_wp_old_slug', '%d0%be-%d0%bd%d0%b0%d1%81'),
(158, 9, 'wbcr_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(159, 10, 'wbcr_wp_old_slug', '%d0%b1%d0%bb%d0%be%d0%b3'),
(160, 21, 'wbcr_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(161, 30, 'wbcr_wp_old_slug', '%d0%be%d0%b1-%d1%8d%d1%82%d0%be%d0%bc-%d1%81%d0%b0%d0%b9%d1%82%d0%b5'),
(162, 33, 'wbcr_wp_old_slug', '%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f'),
(163, 59, '_edit_lock', '1621352668:1'),
(164, 60, '_edit_lock', '1621356171:1'),
(165, 60, '_wp_page_template', 'last_post.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-17 21:33:28', '2021-01-17 18:33:28', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2021-01-17 21:33:28', '2021-01-17 18:33:28', '', 0, 'http://localhost/myTravel/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-17 21:33:28', '2021-01-17 18:33:28', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/myTravel/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-01-17 21:33:28', '2021-01-17 18:33:28', '', 0, 'http://localhost/myTravel/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-17 21:33:28', '2021-01-17 18:33:28', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/myTravel.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-01-17 21:33:28', '2021-01-17 18:33:28', '', 0, 'http://localhost/myTravel/?page_id=3', 0, 'page', '', 0),
(7, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Создайте ваш сайт с помощью блоков</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;В Булонском лесу&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Молодая женщина в фиолетовом&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Добавьте паттерны блоков</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Паттерны блоков - заранее оформленные группы блоков. Для того, чтобы добавить такую группу, выберите кнопку добавления блока [+] в панели инструментов в верхней части редактора. Переключите вкладку на &quot;Паттерны&quot; под строкой поиска и выберите паттерн.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Кадрируйте ваши изображения</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает стильные границы для содержимого. Выделив блок изображения, откройте &quot;Стили&quot; на боковой панели. Выберите стиль блока &quot;Кадр&quot; для активации.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Перекрывающиеся столбцы</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает перекрывающийся стиль для блоков столбцов. Выделив блок столбца, откройте &quot;Стили&quot; на боковой панели редактора. Выберите стиль &quot;Перекрытие&quot;.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Нужна помощь?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Прочитайте документацию темы</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Посетите форум поддержки</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Создайте ваш сайт с помощью блоков', '', 'publish', 'closed', 'closed', '', 'sozdajte-vash-sajt-s-pomoshhju-blokov', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/?page_id=10', 0, 'page', '', 0),
(13, 1, '2021-04-11 12:57:36', '2021-04-11 09:57:36', '', 'pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357', '', 'inherit', 'open', 'closed', '', 'pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357', '', '', '2021-04-11 12:57:36', '2021-04-11 09:57:36', '', 0, 'http://localhost/myTravel/wp-content/uploads/2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-04-11 13:03:25', '2021-04-11 10:03:25', 'http://localhost/myTravel/wp-content/uploads/2021/04/cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg', 'cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-jpg', '', '', '2021-04-11 13:03:25', '2021-04-11 10:03:25', '', 0, 'http://localhost/myTravel/wp-content/uploads/2021/04/cropped-pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-04-11 13:04:38', '2021-04-11 10:04:38', '', 'IMG_6401', '', 'inherit', 'open', 'closed', '', 'img_6401', '', '', '2021-04-11 13:04:38', '2021-04-11 10:04:38', '', 0, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_6401.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-04-11 13:05:09', '2021-04-11 10:05:09', 'http://localhost/myTravel/wp-content/uploads/2021/04/cropped-IMG_6401-scaled-1.jpg', 'cropped-IMG_6401-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-img_6401-scaled-1-jpg', '', '', '2021-04-11 13:05:09', '2021-04-11 10:05:09', '', 0, 'http://localhost/myTravel/wp-content/uploads/2021/04/cropped-IMG_6401-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Создайте ваш сайт с помощью блоков</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;В Булонском лесу&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/myTravel/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Молодая женщина в фиолетовом&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Добавьте паттерны блоков</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Паттерны блоков - заранее оформленные группы блоков. Для того, чтобы добавить такую группу, выберите кнопку добавления блока [+] в панели инструментов в верхней части редактора. Переключите вкладку на &quot;Паттерны&quot; под строкой поиска и выберите паттерн.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Кадрируйте ваши изображения</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает стильные границы для содержимого. Выделив блок изображения, откройте &quot;Стили&quot; на боковой панели. Выберите стиль блока &quot;Кадр&quot; для активации.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Перекрывающиеся столбцы</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает перекрывающийся стиль для блоков столбцов. Выделив блок столбца, откройте &quot;Стили&quot; на боковой панели редактора. Выберите стиль &quot;Перекрытие&quot;.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Нужна помощь?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Прочитайте документацию темы</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Посетите форум поддержки</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Создайте ваш сайт с помощью блоков', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 7, 'http://localhost/myTravel/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 8, 'http://localhost/myTravel/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 9, 'http://localhost/myTravel/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 10, 'http://localhost/myTravel/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-04-19 17:49:45', '2021-04-11 12:31:44', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'glavnaya-stranica', '', '', '2021-04-19 17:49:45', '2021-04-19 14:49:45', '', 0, 'http://localhost/myTravel/2021/04/11/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0/', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-04-19 17:49:45', '2021-04-11 12:31:44', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-04-19 17:49:45', '2021-04-19 14:49:45', '', 0, 'http://localhost/myTravel/2021/04/11/22/', 2, 'nav_menu_item', '', 0),
(23, 1, '2021-04-19 17:49:45', '2021-04-11 12:31:44', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2021-04-19 17:49:45', '2021-04-19 14:49:45', '', 0, 'http://localhost/myTravel/2021/04/11/23/', 3, 'nav_menu_item', '', 0),
(24, 1, '2021-04-19 17:49:45', '2021-04-11 12:31:44', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-04-19 17:49:45', '2021-04-19 14:49:45', '', 0, 'http://localhost/myTravel/2021/04/11/24/', 4, 'nav_menu_item', '', 0),
(25, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/2021/04/11/facebook/', 0, 'nav_menu_item', '', 0),
(26, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/2021/04/11/twitter/', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/2021/04/11/instagram/', 2, 'nav_menu_item', '', 0),
(28, 1, '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2021-04-11 15:31:44', '2021-04-11 12:31:44', '', 0, 'http://localhost/myTravel/2021/04/11/email/', 3, 'nav_menu_item', '', 0),
(30, 1, '2021-04-14 16:03:48', '2021-04-14 13:03:48', '<!-- wp:paragraph -->\n<p>С помощью этого блога Вы можете:<br>• Публиковать заметки о своих путешествиях;<br>• Сортировать их в зависимости от страны;<br>• Иллюстрировать их фотографиями с возможностью быстрого обзора в общем альбоме.</p>\n<!-- /wp:paragraph -->', 'Об этом сайте', '', 'publish', 'closed', 'closed', '', 'ob-etom-sajte', '', '', '2021-04-19 17:28:31', '2021-04-19 14:28:31', '', 0, 'http://localhost/myTravel/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-04-14 16:03:48', '2021-04-14 13:03:48', '<!-- wp:paragraph -->\n<p>С помощью этого блога Вы можете:<br>• Публиковать заметки о своих путешествиях;<br>• Сортировать их в зависимости от страны;<br>• Иллюстрировать их фотографиями с возможностью быстрого обзора в общем альбоме.</p>\n<!-- /wp:paragraph -->', 'Об этом сайте', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-04-14 16:03:48', '2021-04-14 13:03:48', '', 30, 'http://localhost/myTravel/?p=31', 0, 'revision', '', 0),
(33, 1, '2021-04-14 16:38:45', '2021-04-14 13:38:45', '<!-- wp:preformatted -->\nСплит (хорв. Split, итал. Spalato) — город в Хорватии с более чем 1700-летней историей. Самый крупный город Далмации и второй по величине город страны после столицы — Загреба. Центр известного курортного региона, находится в центральной части побережья Адриатики между городами Задар и Дубровник. Население — 178 102 человек (по данным переписи 2011).\n<!-- /wp:preformatted -->\n\n<!-- wp:gallery {\"ids\":[36,37,38,40,41,42,43,44],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331-768x1024.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2331/\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375-1024x768.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2375/\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388-1024x768.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2388/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467-1024x768.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2467/\" class=\"wp-image-40\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480-1024x768.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2480/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486-1024x768.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2486/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549-1024x768.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2549/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-1024x768.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-scaled.jpg\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2567/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сплит, Хорватия', '', 'publish', 'open', 'open', '', 'split-horvatiya', '', '', '2021-04-19 13:44:29', '2021-04-19 10:44:29', '', 0, 'http://localhost/myTravel/?p=33', 0, 'post', '', 0),
(34, 1, '2021-04-14 16:38:45', '2021-04-14 13:38:45', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Город Сплит довольно красивый, очень понравилось там гулять. Дворец Диоклетиана впечатляет. \nОгромный, вечером там просто кипит жизнь. Туристы, торговля натуральными продуктами и только что \nприготовленными вкусными пирожками (за которыми стоит длинная очередь), рядом огромный порт с паромами, \nгде кипит постоянная суета. Для паромов - около 20-ти причалов.</pre>\n<!-- /wp:preformatted -->', 'Сплит, Хорватия', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-14 16:38:45', '2021-04-14 13:38:45', '', 33, 'http://localhost/myTravel/?p=34', 0, 'revision', '', 0),
(36, 1, '2021-04-15 20:37:22', '2021-04-15 17:37:22', '', 'IMG_2331', '', 'inherit', 'open', 'closed', '', 'img_2331', '', '', '2021-04-15 20:37:22', '2021-04-15 17:37:22', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-04-15 20:38:49', '2021-04-15 17:38:49', '', 'IMG_2375', '', 'inherit', 'open', 'closed', '', 'img_2375', '', '', '2021-04-15 20:38:49', '2021-04-15 17:38:49', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-04-15 20:39:47', '2021-04-15 17:39:47', '', 'IMG_2388', '', 'inherit', 'open', 'closed', '', 'img_2388', '', '', '2021-04-15 20:39:47', '2021-04-15 17:39:47', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-04-15 20:42:28', '2021-04-15 17:42:28', '', 'IMG_2476', '', 'inherit', 'open', 'closed', '', 'img_2476', '', '', '2021-04-15 20:42:28', '2021-04-15 17:42:28', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2476.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-04-15 20:42:55', '2021-04-15 17:42:55', '', 'IMG_2467', '', 'inherit', 'open', 'closed', '', 'img_2467', '', '', '2021-04-15 20:42:55', '2021-04-15 17:42:55', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-04-15 20:43:32', '2021-04-15 17:43:32', '', 'IMG_2480', '', 'inherit', 'open', 'closed', '', 'img_2480', '', '', '2021-04-15 20:43:32', '2021-04-15 17:43:32', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-04-15 20:43:56', '2021-04-15 17:43:56', '', 'IMG_2486', '', 'inherit', 'open', 'closed', '', 'img_2486', '', '', '2021-04-15 20:43:56', '2021-04-15 17:43:56', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-04-15 20:45:55', '2021-04-15 17:45:55', '', 'IMG_2549', '', 'inherit', 'open', 'closed', '', 'img_2549', '', '', '2021-04-15 20:45:55', '2021-04-15 17:45:55', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-04-15 20:46:31', '2021-04-15 17:46:31', '', 'IMG_2567', '', 'inherit', 'open', 'closed', '', 'img_2567', '', '', '2021-04-15 20:46:31', '2021-04-15 17:46:31', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-04-15 23:47:03', '2021-04-15 20:47:03', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Город Сплит довольно красивый, очень понравилось там гулять. Дворец Диоклетиана впечатляет. \nОгромный, вечером там просто кипит жизнь. Туристы, торговля натуральными продуктами и только что \nприготовленными вкусными пирожками (за которыми стоит длинная очередь), рядом огромный порт с паромами, \nгде кипит постоянная суета. Для паромов - около 20-ти причалов.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:gallery {\"ids\":[36,37,38,40,41,42,43,44],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331-768x1024.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2331/\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375-1024x768.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2375/\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388-1024x768.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2388/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467-1024x768.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2467/\" class=\"wp-image-40\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480-1024x768.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2480/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486-1024x768.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2486/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549-1024x768.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2549/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-1024x768.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-scaled.jpg\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2567/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Сплит, Хорватия', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-15 23:47:03', '2021-04-15 20:47:03', '', 33, 'http://localhost/myTravel/?p=45', 0, 'revision', '', 0),
(48, 1, '2021-04-19 13:09:02', '2021-04-19 10:09:02', '', 'pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1', '', 'inherit', 'open', 'closed', '', 'pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1', '', '', '2021-04-19 13:09:02', '2021-04-19 10:09:02', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/pngtree-earth-travel-abroad-travel-tourism-tourism-promotion-png-image_3943357-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-04-19 13:26:31', '2021-04-19 10:26:31', '', 'IMG_2359', '', 'inherit', 'open', 'closed', '', 'img_2359', '', '', '2021-04-19 13:26:31', '2021-04-19 10:26:31', '', 33, 'http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2359.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-04-19 13:33:54', '2021-04-19 10:33:54', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Сплит (хорв. Split, итал. Spalato) — город в Хорватии с более чем 1700-летней историей. Самый крупный город Далмации и второй по величине город страны после столицы — Загреба. Центр известного курортного региона, находится в центральной части побережья Адриатики между городами Задар и Дубровник. Население — 178 102 человек (по данным переписи 2011).</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:gallery {\"ids\":[36,37,38,40,41,42,43,44],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331-768x1024.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2331/\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375-1024x768.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2375/\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388-1024x768.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2388/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467-1024x768.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2467/\" class=\"wp-image-40\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480-1024x768.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2480/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486-1024x768.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2486/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549-1024x768.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2549/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-1024x768.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-scaled.jpg\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2567/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сплит, Хорватия', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-19 13:33:54', '2021-04-19 10:33:54', '', 33, 'http://localhost/myTravel/?p=50', 0, 'revision', '', 0),
(52, 1, '2021-04-19 13:44:29', '2021-04-19 10:44:29', '<!-- wp:preformatted -->\nСплит (хорв. Split, итал. Spalato) — город в Хорватии с более чем 1700-летней историей. Самый крупный город Далмации и второй по величине город страны после столицы — Загреба. Центр известного курортного региона, находится в центральной части побережья Адриатики между городами Задар и Дубровник. Население — 178 102 человек (по данным переписи 2011).\n<!-- /wp:preformatted -->\n\n<!-- wp:gallery {\"ids\":[36,37,38,40,41,42,43,44],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331-768x1024.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2331/\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375-1024x768.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2375/\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388-1024x768.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2388/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467-1024x768.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2467/\" class=\"wp-image-40\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480-1024x768.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2480/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486-1024x768.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2486/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549-1024x768.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2549/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-1024x768.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-scaled.jpg\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2567/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сплит, Хорватия', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-19 13:44:29', '2021-04-19 10:44:29', '', 33, 'http://localhost/myTravel/?p=52', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(53, 1, '2021-04-19 13:45:50', '2021-04-19 10:45:50', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Сплит (хорв. Split, итал. Spalato) — город в Хорватии с более чем 1700-летней историей. Самый крупный город Далмации и второй по величине город страны после столицы — Загреба. Центр известного курортного региона, находится в центральной части побережья Адриатики между городами Задар и Дубровник. Население — 178 102 человек (по данным переписи 2011).</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:gallery {\"ids\":[36,37,38,40,41,42,43,44],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2331-768x1024.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2331/\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2375-1024x768.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2375/\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2388-1024x768.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2388/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2467-1024x768.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2467/\" class=\"wp-image-40\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2480-1024x768.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2480/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2486-1024x768.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2486/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2549-1024x768.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2549/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-1024x768.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost/myTravel/wp-content/uploads/2021/04/IMG_2567-scaled.jpg\" data-link=\"http://localhost/myTravel/%d1%81%d0%bf%d0%bb%d0%b8%d1%82-%d1%85%d0%be%d1%80%d0%b2%d0%b0%d1%82%d0%b8%d1%8f/img_2567/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сплит, Хорватия', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2021-04-19 13:45:50', '2021-04-19 10:45:50', '', 33, 'http://localhost/myTravel/?p=53', 0, 'revision', '', 0),
(55, 1, '2021-04-19 17:38:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-19 17:38:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/myTravel/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2021-04-19 17:49:45', '2021-04-19 14:49:45', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2021-04-19 17:49:45', '2021-04-19 14:49:45', '', 0, 'http://localhost/myTravel/?p=56', 5, 'nav_menu_item', '', 0),
(59, 1, '2021-05-18 18:44:28', '0000-00-00 00:00:00', '', 'Первые сиволы последнего поста', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-18 18:44:28', '2021-05-18 15:44:28', '', 0, 'http://localhost/myTravel/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-05-18 18:44:57', '2021-05-18 15:44:57', '', 'Первые символы последнего поста', '', 'publish', 'closed', 'closed', '', 'pervye-simvoly-poslednego-posta', '', '', '2021-05-18 18:44:57', '2021-05-18 15:44:57', '', 0, 'http://localhost/myTravel/?page_id=60', 0, 'page', '', 0),
(61, 1, '2021-05-18 18:44:57', '2021-05-18 15:44:57', '', 'Первые символы последнего поста', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-18 18:44:57', '2021-05-18 15:44:57', '', 60, 'http://localhost/myTravel/?p=61', 0, 'revision', '', 0),
(63, 1, '2021-05-26 11:33:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-26 11:33:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/myTravel/?p=63', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Основное меню', 'osnovnoe-menju', 0),
(3, 'Дополнительное меню', 'dopolnitelnoe-menju', 0),
(4, 'Хорватия', 'horvatiya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(33, 4, 0),
(56, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4a92fb50d7f102dda2a581591b422eca8117d8b672c6c9381cb5a79564dbf1bd\";a:4:{s:10:\"expiration\";i:1622190820;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0\";s:5:\"login\";i:1622018020;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '63'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1618144364'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7uhedKnxQPh9dMEN5yDv.8wtz0St//', 'admin', 'arhibober@gmail.com', 'http://localhost/myTravel', '2021-01-17 18:33:27', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
