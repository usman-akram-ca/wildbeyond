-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2017 at 12:13 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wild_boyond_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_hugeit_slider_slide`
--

DROP TABLE IF EXISTS `wp_hugeit_slider_slide`;
CREATE TABLE IF NOT EXISTS `wp_hugeit_slider_slide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) unsigned NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `in_new_tab` int(1) unsigned NOT NULL DEFAULT '1',
  `type` enum('image','video','post') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(5) unsigned NOT NULL,
  `post_term_id` bigint(20) unsigned DEFAULT NULL,
  `post_show_title` int(1) unsigned DEFAULT NULL,
  `post_show_description` int(1) unsigned DEFAULT NULL,
  `post_go_to_post` int(1) unsigned DEFAULT NULL,
  `post_max_post_count` int(4) unsigned DEFAULT NULL,
  `video_quality` int(5) unsigned DEFAULT NULL,
  `video_volume` int(3) unsigned DEFAULT NULL,
  `video_show_controls` int(1) unsigned DEFAULT NULL,
  `video_show_info` int(1) unsigned DEFAULT NULL,
  `video_control_color` int(8) unsigned DEFAULT NULL,
  `draft` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_hugeit_slider_slide`
--

INSERT INTO `wp_hugeit_slider_slide` (`id`, `slider_id`, `title`, `description`, `url`, `attachment_id`, `in_new_tab`, `type`, `order`, `post_term_id`, `post_show_title`, `post_show_description`, `post_go_to_post`, `post_max_post_count`, `video_quality`, `video_volume`, `video_show_controls`, `video_show_info`, `video_control_color`, `draft`) VALUES
(1, 1, '', '', '', 39, 0, 'image', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_hugeit_slider_slider`
--

DROP TABLE IF EXISTS `wp_hugeit_slider_slider`;
CREATE TABLE IF NOT EXISTS `wp_hugeit_slider_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My New Slider',
  `width` int(4) unsigned NOT NULL DEFAULT '600',
  `height` int(4) unsigned NOT NULL DEFAULT '375',
  `effect` enum('none','cube_h','cube_v','fade','slice_h','slice_v','slide_h','slide_v','scale_out','scale_in','block_scale','kaleidoscope','fan','blind_h','blind_v','random') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `pause_time` int(5) unsigned NOT NULL DEFAULT '4000',
  `change_speed` int(5) unsigned NOT NULL DEFAULT '1000',
  `position` enum('left','right','center') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'center',
  `show_loading_icon` int(1) unsigned DEFAULT '0',
  `navigate_by` enum('dot','thumbnail','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `pause_on_hover` int(1) unsigned NOT NULL DEFAULT '1',
  `video_autoplay` int(1) unsigned DEFAULT '0',
  `random` int(1) unsigned DEFAULT '0',
  `lightbox` int(1) unsigned DEFAULT '0',
  `slide_effect` enum('effect_1','effect_2','effect_3','effect_4','effect_5','effect_6','effect_7','effect_8','effect_9','effect_10') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'effect_1',
  `open_close_effect` enum('none','unfold','unfold_r','blowup','blowup_r','roadrunner','roadrunner_r','runner','runner_r','rotate','rotate_r') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `arrows_style` enum('arrows_1','arrows_2','arrows_3','arrows_4','arrows_5','arrows_6') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'arrows_1',
  `itemscount` int(2) unsigned NOT NULL DEFAULT '5',
  `view` enum('none','carousel1','thumb_view') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `controls` int(1) unsigned DEFAULT '1',
  `fullscreen` int(1) unsigned DEFAULT '1',
  `vertical` int(1) unsigned DEFAULT '0',
  `thumbposition` int(1) unsigned DEFAULT '0',
  `thumbcontrols` int(1) unsigned DEFAULT '0',
  `dragdrop` int(1) unsigned DEFAULT '0',
  `swipe` int(1) unsigned DEFAULT '1',
  `thumbdragdrop` int(1) unsigned DEFAULT '0',
  `thumbswipe` int(1) unsigned DEFAULT '0',
  `titleonoff` int(1) unsigned DEFAULT '1',
  `desconoff` int(1) unsigned DEFAULT '1',
  `titlesymbollimit` int(3) unsigned NOT NULL DEFAULT '20',
  `descsymbollimit` int(3) unsigned NOT NULL DEFAULT '70',
  `pager` int(1) unsigned DEFAULT '1',
  `mode` enum('slide','fade') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'slide',
  `vthumbwidth` int(3) unsigned NOT NULL DEFAULT '100',
  `hthumbheight` int(3) unsigned NOT NULL DEFAULT '80',
  `thumbitem` int(3) unsigned NOT NULL DEFAULT '10',
  `thumbmargin` int(2) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_hugeit_slider_slider`
--

INSERT INTO `wp_hugeit_slider_slider` (`id`, `name`, `width`, `height`, `effect`, `pause_time`, `change_speed`, `position`, `show_loading_icon`, `navigate_by`, `pause_on_hover`, `video_autoplay`, `random`, `lightbox`, `slide_effect`, `open_close_effect`, `arrows_style`, `itemscount`, `view`, `controls`, `fullscreen`, `vertical`, `thumbposition`, `thumbcontrols`, `dragdrop`, `swipe`, `thumbdragdrop`, `thumbswipe`, `titleonoff`, `desconoff`, `titlesymbollimit`, `descsymbollimit`, `pager`, `mode`, `vthumbwidth`, `hthumbheight`, `thumbitem`, `thumbmargin`) VALUES
(1, 'My First Slider', 1170, 550, 'random', 4000, 1000, 'left', 1, 'dot', 1, 0, 0, 0, 'effect_1', 'none', 'arrows_1', 5, 'none', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 20, 70, 1, 'slide', 100, 80, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=476 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wildbeyond', 'yes'),
(2, 'home', 'http://localhost/wildbeyond', 'yes'),
(3, 'blogname', 'Wild Beyond', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shafaat.ashraf@intellimus.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:109:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:40:"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"./(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:16:"./(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:28:"./(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:10:"./(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:33:"vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:41:"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:48:"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:37:"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:29:"vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:57:"acf-flexible-content-modal/acf-flexible-content-modal.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:33:"js_composer_5.0.1/js_composer.php";i:3;s:37:"post-types-order/post-types-order.php";i:4;s:23:"slider-image/slider.php";}', 'yes'),
(34, 'category_base', '/.', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wildbeyond', 'yes'),
(41, 'stylesheet', 'wildbeyond', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:6:{i:1511292697;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511293516;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511293536;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511342491;a:1:{s:25:"hugeit_slider_opt_in_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:20:"hugeit-slider-weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1511348653;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:3;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506518182;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.9.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.9-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1511260904;s:15:"version_checked";s:3:"4.9";s:12:"translations";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(139, 'category_children', 'a:0:{}', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(142, 'current_theme', 'Wild Beyond', 'yes'),
(143, 'theme_mods_wildbeyond', 'a:19:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:3:"top";i:3;s:6:"social";i:0;s:18:"primary_navigation";i:3;s:25:"primary_footer_navigation";i:3;s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;s:9:"site_logo";s:68:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/logo.png";s:17:"slider_button_url";s:0:"";s:18:"slider_button_text";s:0:"";s:14:"slider_image_1";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png";s:14:"slider_image_2";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-two.png";s:12:"header_image";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png";s:12:"hide_overlay";i:1;s:25:"footer_widgets_background";s:7:"#ffffff";s:17:"footer_background";s:7:"#ffffff";s:12:"footer_color";s:7:"#989898";s:20:"footer_widgets_color";s:7:"#ffffff";s:14:"slider_title_1";s:4:"ASHA";s:17:"slider_subtitle_1";s:144:"Stealth scrum project iPad beta ecosystem launch party innovator hackathon gen-z angel investor success ramen non-disclosure agreement founder. ";s:14:"slider_title_2";s:8:"SHOCKBOY";s:17:"slider_subtitle_2";s:144:"Stealth scrum project iPad beta ecosystem launch party innovator hackathon gen-z angel investor success ramen non-disclosure agreement founder. ";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:39;s:3:"url";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png";s:13:"thumbnail_url";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png";s:6:"height";i:910;s:5:"width";i:1693;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(148, 'theme_mods_sydney', 'a:16:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:3:"top";i:3;s:6:"social";i:0;s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;s:13:"mobile_slider";s:10:"fullscreen";s:11:"sticky_menu";s:6:"sticky";s:9:"site_logo";s:68:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/logo.png";s:16:"textslider_slide";s:0:"";s:14:"slider_image_1";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png";s:14:"slider_image_2";s:74:"http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-two.png";s:17:"slider_subtitle_1";s:202:"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.";s:14:"slider_title_1";s:4:"ASHA";s:14:"slider_title_2";s:8:"SHOCKBOY";s:17:"slider_subtitle_2";s:202:"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.";s:17:"slider_button_url";s:0:"";s:18:"slider_button_text";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506517839;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;}}}', 'yes'),
(166, 'theme_mods_wb', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:3:"top";i:3;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506493923;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(167, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:3:"top";i:3;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506493928;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(181, 'theme_mods_pocketgems', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:3:"top";i:3;s:6:"social";i:0;s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506502322;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(193, 'recently_activated', 'a:0:{}', 'yes'),
(200, 'acf_version', '5.5.9', 'yes'),
(201, 'theme_mods_old-pocketgems', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:3:"top";i:3;s:6:"social";i:0;s:18:"primary_navigation";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506502521;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(210, 'hugeit_slider_title_for_crop_image', 'Slider crop image', 'yes'),
(211, 'hugeit_slider_crop_image', 'stretch', 'yes'),
(212, 'hugeit_slider_title_for_title_color', 'Slider title color', 'yes'),
(213, 'hugeit_slider_title_color', '000000', 'yes'),
(214, 'hugeit_slider_title_for_title_font_size', 'Slider title font size', 'yes'),
(215, 'hugeit_slider_title_font_size', '13', 'yes'),
(216, 'hugeit_slider_title_for_description_color', 'Slider description color', 'yes'),
(217, 'hugeit_slider_description_color', 'ffffff', 'yes'),
(218, 'hugeit_slider_title_for_description_font_size', 'Slider description font size', 'yes'),
(219, 'hugeit_slider_description_font_size', '13', 'yes'),
(220, 'hugeit_slider_title_for_title_position', 'Slider title position', 'yes'),
(221, 'hugeit_slider_title_position', '33', 'yes'),
(222, 'hugeit_slider_title_for_description_position', 'Slider description position', 'yes'),
(223, 'hugeit_slider_description_position', '31', 'yes'),
(224, 'hugeit_slider_title_for_title_border_size', 'Slider Title border size', 'yes'),
(225, 'hugeit_slider_title_border_size', '0', 'yes'),
(226, 'hugeit_slider_title_for_title_border_color', 'Slider title border color', 'yes'),
(227, 'hugeit_slider_title_border_color', 'ffffff', 'yes'),
(228, 'hugeit_slider_title_for_title_border_radius', 'Slider title border radius', 'yes'),
(229, 'hugeit_slider_title_border_radius', '4', 'yes'),
(230, 'hugeit_slider_title_for_description_border_size', 'Slider description border size', 'yes'),
(231, 'hugeit_slider_description_border_size', '0', 'yes'),
(232, 'hugeit_slider_title_for_description_border_color', 'Slider description border color', 'yes'),
(233, 'hugeit_slider_description_border_color', 'ffffff', 'yes'),
(234, 'hugeit_slider_title_for_description_border_radius', 'Slider description border radius', 'yes'),
(235, 'hugeit_slider_description_border_radius', '0', 'yes'),
(236, 'hugeit_slider_title_for_slideshow_border_size', 'Slider border size', 'yes'),
(237, 'hugeit_slider_slideshow_border_size', '0', 'yes'),
(238, 'hugeit_slider_title_for_slideshow_border_color', 'Slider border color', 'yes'),
(239, 'hugeit_slider_slideshow_border_color', 'ffffff', 'yes'),
(240, 'hugeit_slider_title_for_slideshow_border_radius', 'Slider border radius', 'yes'),
(241, 'hugeit_slider_slideshow_border_radius', '0', 'yes'),
(242, 'hugeit_slider_title_for_navigation_type', 'Slider navigation type', 'yes'),
(243, 'hugeit_slider_navigation_type', '1', 'yes'),
(244, 'hugeit_slider_title_for_navigation_position', 'Slider navigation position', 'yes'),
(245, 'hugeit_slider_navigation_position', 'top', 'yes'),
(246, 'hugeit_slider_title_for_title_background_color', 'Slider title background color', 'yes'),
(247, 'hugeit_slider_title_background_color', 'ffffff', 'yes'),
(248, 'hugeit_slider_title_for_description_background_color', 'Slider description background color', 'yes'),
(249, 'hugeit_slider_description_background_color', '000000', 'yes'),
(250, 'hugeit_slider_title_for_slider_background_color', 'Slider slider background color', 'yes'),
(251, 'hugeit_slider_slider_background_color', 'ffffff', 'yes'),
(252, 'hugeit_slider_title_for_slider_background_color_transparency', 'Slider slider background color transparency', 'yes'),
(253, 'hugeit_slider_slider_background_color_transparency', '1', 'yes'),
(254, 'hugeit_slider_title_for_active_dot_color', 'Slider active dot color', 'yes'),
(255, 'hugeit_slider_active_dot_color', 'ffffff', 'yes'),
(256, 'hugeit_slider_title_for_dot_color', 'Slider dots color', 'yes'),
(257, 'hugeit_slider_dot_color', '000000', 'yes'),
(258, 'hugeit_slider_title_for_loading_icon_type', 'Slider Loading Image', 'yes'),
(259, 'hugeit_slider_loading_icon_type', '1', 'yes'),
(260, 'hugeit_slider_title_for_description_width', 'Slider description width', 'yes'),
(261, 'hugeit_slider_description_width', '70', 'yes'),
(262, 'hugeit_slider_title_for_description_height', 'Slider description height', 'yes'),
(263, 'hugeit_slider_description_height', '50', 'yes'),
(264, 'hugeit_slider_title_for_description_background_transparency', 'Slider description background transparency', 'yes'),
(265, 'hugeit_slider_description_background_transparency', '0.7', 'yes'),
(266, 'hugeit_slider_title_for_description_text_align', 'Description text-align', 'yes'),
(267, 'hugeit_slider_description_text_align', 'justify', 'yes'),
(268, 'hugeit_slider_title_for_title_width', 'Slider title width', 'yes'),
(269, 'hugeit_slider_title_width', '30', 'yes'),
(270, 'hugeit_slider_title_for_title_background_transparency', 'Slider title background transparency', 'yes'),
(271, 'hugeit_slider_title_background_transparency', '0.7', 'yes'),
(272, 'hugeit_slider_title_for_title_text_align', 'Title text-align', 'yes'),
(273, 'hugeit_slider_title_text_align', 'right', 'yes'),
(274, 'hugeit_slider_title_for_title_has_margin', 'Title has margin', 'yes'),
(275, 'hugeit_slider_title_has_margin', '1', 'yes'),
(276, 'hugeit_slider_title_for_description_has_margin', 'Description has margin', 'yes'),
(277, 'hugeit_slider_description_has_margin', '1', 'yes'),
(278, 'hugeit_slider_title_for_show_arrows', 'Slider show left right arrows', 'yes'),
(279, 'hugeit_slider_show_arrows', '1', 'yes'),
(280, 'hugeit_slider_title_for_thumb_count_slides', 'Thumbnail Background Color', 'yes'),
(281, 'hugeit_slider_thumb_count_slides', '3', 'yes'),
(282, 'hugeit_slider_thumb_background_color', 'ffffff', 'yes'),
(283, 'hugeit_slider_title_for_thumb_passive_color', 'Passive Thumbnail Color', 'yes'),
(284, 'hugeit_slider_thumb_passive_color', 'ffffff', 'yes'),
(285, 'hugeit_slider_title_for_thumb_height', 'Slider Thumb Height', 'yes'),
(286, 'hugeit_slider_thumb_height', '100', 'yes'),
(287, 'hugeit_slider_title_for_share_buttons', 'Share buttons', 'yes'),
(288, 'hugeit_slider_share_buttons', '1', 'yes'),
(289, 'hugeit_slider_title_for_share_buttons_facebook', 'Facebook', 'yes'),
(290, 'hugeit_slider_share_buttons_facebook', '1', 'yes'),
(291, 'hugeit_slider_title_for_share_buttons_twitter', 'Twitter', 'yes'),
(292, 'hugeit_slider_share_buttons_twitter', '1', 'yes'),
(293, 'hugeit_slider_title_for_share_buttons_gp', 'Google Plus', 'yes'),
(294, 'hugeit_slider_share_buttons_gp', '1', 'yes'),
(295, 'hugeit_slider_title_for_share_buttons_pinterest', 'Pinterest', 'yes'),
(296, 'hugeit_slider_share_buttons_pinterest', '1', 'yes'),
(297, 'hugeit_slider_title_for_share_buttons_linkedin', 'Linkedin', 'yes'),
(298, 'hugeit_slider_share_buttons_linkedin', '1', 'yes'),
(299, 'hugeit_slider_title_for_share_buttons_tumblr', 'Tumblr', 'yes'),
(300, 'hugeit_slider_share_buttons_tumblr', '1', 'yes'),
(301, 'hugeit_slider_title_for_share_buttons_style', 'Share buttons style', 'yes'),
(302, 'hugeit_slider_title_for_share_buttons_hover_style', 'Share buttons hover style', 'yes'),
(303, 'hugeit_slider_version', '4.0.6', 'yes'),
(304, 'widget_hugeit_slider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(308, 'vc_version', '5.0.1', 'yes'),
(311, 'hugeit_slider_allow_tracking', 'opted_out', 'yes'),
(334, '_transient_sydney_categories', '1', 'yes'),
(450, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(451, '_transient_random_seed', 'ea47b272aaf723e85de84607a914ca6e', 'yes'),
(452, 'nonce_key', 'dev)tJFW/N+HHgF0d2i~,2+2T1U8%,)h2|4@Rz=>edp)lkyaS.By94H.K`9]XQ7d', 'no'),
(453, 'nonce_salt', ']/!EoO(wEco)=X#-A+jU**]jO{L8Fwtcm;(!8!LMF3pV:R@{wb;b+p=C9#PxZ_P0', 'no'),
(456, '_transient_timeout_acf_get_remote_plugin_info', '1511347305', 'no'),
(457, '_transient_acf_get_remote_plugin_info', '0', 'no'),
(458, '_site_transient_timeout_theme_roots', '1511262707', 'no'),
(459, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:10:"wildbeyond";s:7:"/themes";}', 'no'),
(460, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511260914;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";s:10:"wildbeyond";s:3:"1.0";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:60:"http://downloads.wordpress.org/theme/twentyseventeen.1.4.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentysixteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'no'),
(461, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511260911;s:8:"response";a:3:{s:57:"acf-flexible-content-modal/acf-flexible-content-modal.php";O:8:"stdClass":11:{s:2:"id";s:40:"w.org/plugins/acf-flexible-content-modal";s:4:"slug";s:26:"acf-flexible-content-modal";s:6:"plugin";s:57:"acf-flexible-content-modal/acf-flexible-content-modal.php";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:57:"https://wordpress.org/plugins/acf-flexible-content-modal/";s:7:"package";s:74:"http://downloads.wordpress.org/plugin/acf-flexible-content-modal.1.1.4.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.8.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"4.9";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"js_composer_5.0.1/js_composer.php";O:8:"stdClass":5:{s:4:"slug";s:11:"js_composer";s:11:"new_version";s:5:"5.4.4";s:3:"url";s:0:"";s:7:"package";b:0;s:4:"name";s:24:"WPBakery Visual Composer";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:23:"slider-image/slider.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/slider-image";s:4:"slug";s:12:"slider-image";s:6:"plugin";s:23:"slider-image/slider.php";s:11:"new_version";s:5:"4.0.6";s:3:"url";s:43:"https://wordpress.org/plugins/slider-image/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/slider-image.4.0.6.zip";s:5:"icons";a:2:{s:2:"1x";s:65:"https://ps.w.org/slider-image/assets/icon-128x128.png?rev=1651701";s:7:"default";s:65:"https://ps.w.org/slider-image/assets/icon-128x128.png?rev=1651701";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/slider-image/assets/banner-772x250.png?rev=1651701";s:7:"default";s:67:"https://ps.w.org/slider-image/assets/banner-772x250.png?rev=1651701";}s:11:"banners_rtl";a:0:{}}s:37:"post-types-order/post-types-order.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/post-types-order";s:4:"slug";s:16:"post-types-order";s:6:"plugin";s:37:"post-types-order/post-types-order.php";s:11:"new_version";s:7:"1.9.3.5";s:3:"url";s:47:"https://wordpress.org/plugins/post-types-order/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/post-types-order.1.9.3.5.zip";s:5:"icons";a:2:{s:2:"1x";s:69:"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428";s:7:"default";s:69:"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428";}s:7:"banners";a:3:{s:2:"2x";s:72:"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574";s:2:"1x";s:71:"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949";s:7:"default";s:72:"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(462, 'auth_key', 'MI<b`YXr=_h|v xU7uh(cM4ThtRya6-II9U=Ml t7@QsY1hlzts>q`1GmoY-P/dS', 'no'),
(463, 'auth_salt', '2#K8&6XEsgYJPY`VVBu+@3vL=/foZuVWaG5vVr]qv P_<l<fu+w|Z5fB4Z<4,X7;', 'no'),
(464, 'logged_in_key', '<F.H(g|&v!vYcr|P~4xr}%@>__:H}siaL;b,Phz#ELAWW78z4Hl;,0`R JFqk|8Q', 'no'),
(465, 'logged_in_salt', 'S)9eVdbK-d^%]qdc/7Ci6f/+C^(|M6EIIxgfo^c=i!4-_O(pR)ksh6j1eiMSTVF#', 'no'),
(466, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1511867054', 'no'),
(467, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(469, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1511305458', 'no'),
(470, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: No working transports found</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: No working transports found</p></div>', 'no'),
(471, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1511305459', 'no'),
(472, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:11:"WordCamp US";s:3:"url";s:29:"https://2017.us.wordcamp.org/";s:6:"meetup";s:0:"";s:10:"meetup_url";s:0:"";s:4:"date";s:19:"2017-12-01 00:00:00";s:8:"location";a:4:{s:8:"location";s:18:"Nashville, TN, USA";s:7:"country";s:2:"US";s:8:"latitude";d:36.15660849999999726378518971614539623260498046875;s:9:"longitude";d:-86.7784908999999942125214147381484508514404296875;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:79:"WordPress Meetup - Building Winning Freelancing Profiles for WordPress Services";s:3:"url";s:57:"https://www.meetup.com/WordPress-Lahore/events/245199512/";s:6:"meetup";s:24:"WordPress Meetups Lahore";s:10:"meetup_url";s:40:"https://www.meetup.com/WordPress-Lahore/";s:4:"date";s:19:"2017-11-25 14:00:00";s:8:"location";a:4:{s:8:"location";s:16:"Lahore, Pakistan";s:7:"country";s:2:"pk";s:8:"latitude";d:31.5010189999999994370227796025574207305908203125;s:9:"longitude";d:74.33305400000000418003764934837818145751953125;}}}}', 'no'),
(474, '_transient_is_multi_author', '0', 'yes'),
(475, '_transient_wildbeyond_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=297 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_last', '1'),
(3, 2, '_edit_lock', '1506517505:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1506455010:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1506455036:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1506455065:1'),
(10, 12, '_edit_last', '1'),
(11, 12, '_edit_lock', '1506615242:1'),
(87, 28, '_wp_attached_file', '2017/09/logo.png'),
(88, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:502;s:6:"height";i:30;s:4:"file";s:16:"2017/09/logo.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x30.png";s:5:"width";i:150;s:6:"height";i:30;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x18.png";s:5:"width";i:300;s:6:"height";i:18;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:15:"logo-230x14.png";s:5:"width";i:230;s:6:"height";i:14;s:9:"mime-type";s:9:"image/png";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:15:"logo-350x21.png";s:5:"width";i:350;s:6:"height";i:21;s:9:"mime-type";s:9:"image/png";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:15:"logo-480x29.png";s:5:"width";i:480;s:6:"height";i:29;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 35, '_wp_attached_file', 'hugeit-slider/slide1.jpg'),
(100, 36, '_wp_attached_file', 'hugeit-slider/slide2.jpg'),
(101, 37, '_wp_attached_file', 'hugeit-slider/slide3.jpg'),
(102, 2, '_oembed_c952cc1664b604fd6ea58740802f157f', '{{unknown}}'),
(103, 2, '_wpb_vc_js_status', 'true'),
(104, 2, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(105, 39, '_wp_attached_file', '2017/09/slider-one.png'),
(106, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1693;s:6:"height";i:910;s:4:"file";s:22:"2017/09/slider-one.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-one-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-one-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-one-768x413.png";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"slider-one-1024x550.png";s:5:"width";i:1024;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 41, '_wp_attached_file', '2017/09/slider-two.png'),
(110, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1693;s:6:"height";i:910;s:4:"file";s:22:"2017/09/slider-two.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-two-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-two-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-two-768x413.png";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"slider-two-1024x550.png";s:5:"width";i:1024;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:22:"slider-two-830x446.png";s:5:"width";i:830;s:6:"height";i:446;s:9:"mime-type";s:9:"image/png";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:22:"slider-two-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:22:"slider-two-230x124.png";s:5:"width";i:230;s:6:"height";i:124;s:9:"mime-type";s:9:"image/png";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:22:"slider-two-350x188.png";s:5:"width";i:350;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:22:"slider-two-480x258.png";s:5:"width";i:480;s:6:"height";i:258;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 54, '_wp_attached_file', '2017/09/cropped-slider-one.png'),
(132, 54, '_wp_attachment_context', 'custom-header'),
(133, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:30:"2017/09/cropped-slider-one.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-slider-one-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-slider-one-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"cropped-slider-one-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:31:"cropped-slider-one-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:22:"WildBeyond-large-thumb";a:4:{s:4:"file";s:30:"cropped-slider-one-830x467.png";s:5:"width";i:830;s:6:"height";i:467;s:9:"mime-type";s:9:"image/png";}s:23:"WildBeyond-medium-thumb";a:4:{s:4:"file";s:30:"cropped-slider-one-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:22:"WildBeyond-small-thumb";a:4:{s:4:"file";s:30:"cropped-slider-one-230x129.png";s:5:"width";i:230;s:6:"height";i:129;s:9:"mime-type";s:9:"image/png";}s:24:"WildBeyond-service-thumb";a:4:{s:4:"file";s:30:"cropped-slider-one-350x197.png";s:5:"width";i:350;s:6:"height";i:197;s:9:"mime-type";s:9:"image/png";}s:20:"WildBeyond-mas-thumb";a:4:{s:4:"file";s:30:"cropped-slider-one-480x270.png";s:5:"width";i:480;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(156, 39, '_wp_attachment_custom_header_last_used_wildbeyond', '1506596053'),
(157, 39, '_wp_attachment_is_custom_header', 'wildbeyond'),
(160, 67, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(161, 68, '_wp_attached_file', '2017/09/graphic.png'),
(162, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:790;s:6:"height";i:721;s:4:"file";s:19:"2017/09/graphic.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"graphic-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"graphic-300x274.png";s:5:"width";i:300;s:6:"height";i:274;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"graphic-768x701.png";s:5:"width";i:768;s:6:"height";i:701;s:9:"mime-type";s:9:"image/png";}s:23:"WildBeyond-medium-thumb";a:4:{s:4:"file";s:19:"graphic-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:22:"WildBeyond-small-thumb";a:4:{s:4:"file";s:19:"graphic-230x210.png";s:5:"width";i:230;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:24:"WildBeyond-service-thumb";a:4:{s:4:"file";s:19:"graphic-350x319.png";s:5:"width";i:350;s:6:"height";i:319;s:9:"mime-type";s:9:"image/png";}s:20:"WildBeyond-mas-thumb";a:4:{s:4:"file";s:19:"graphic-480x438.png";s:5:"width";i:480;s:6:"height";i:438;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 69, '_wp_attached_file', '2017/09/graphic_2.png'),
(164, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:812;s:6:"height";i:810;s:4:"file";s:21:"2017/09/graphic_2.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"graphic_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"graphic_2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:21:"graphic_2-768x766.png";s:5:"width";i:768;s:6:"height";i:766;s:9:"mime-type";s:9:"image/png";}s:23:"WildBeyond-medium-thumb";a:4:{s:4:"file";s:21:"graphic_2-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:22:"WildBeyond-small-thumb";a:4:{s:4:"file";s:21:"graphic_2-230x229.png";s:5:"width";i:230;s:6:"height";i:229;s:9:"mime-type";s:9:"image/png";}s:24:"WildBeyond-service-thumb";a:4:{s:4:"file";s:21:"graphic_2-350x349.png";s:5:"width";i:350;s:6:"height";i:349;s:9:"mime-type";s:9:"image/png";}s:20:"WildBeyond-mas-thumb";a:4:{s:4:"file";s:21:"graphic_2-480x479.png";s:5:"width";i:480;s:6:"height";i:479;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 70, '_wp_attached_file', '2017/09/graphic_3.png'),
(166, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:278;s:6:"height";i:787;s:4:"file";s:21:"2017/09/graphic_3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"graphic_3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"graphic_3-106x300.png";s:5:"width";i:106;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:23:"WildBeyond-medium-thumb";a:4:{s:4:"file";s:21:"graphic_3-278x400.png";s:5:"width";i:278;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:22:"WildBeyond-small-thumb";a:4:{s:4:"file";s:21:"graphic_3-230x651.png";s:5:"width";i:230;s:6:"height";i:651;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 67, '_edit_last', '1'),
(168, 67, '_thumbnail_id', '70'),
(171, 67, '_edit_lock', '1506626469:1'),
(172, 72, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(173, 73, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(174, 72, '_edit_last', '1'),
(175, 72, '_edit_lock', '1506604215:1'),
(176, 72, '_thumbnail_id', '68'),
(179, 73, '_edit_last', '1'),
(180, 73, '_edit_lock', '1506603809:1'),
(181, 73, '_thumbnail_id', '69'),
(197, 12, '_wp_page_template', 'page-templates/page_fullwidth.php'),
(198, 12, '_wpb_vc_js_status', 'true'),
(199, 12, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(200, 87, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(201, 88, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(202, 88, '_menu_item_type', 'post_type'),
(203, 88, '_menu_item_menu_item_parent', '0'),
(204, 88, '_menu_item_object_id', '2'),
(205, 88, '_menu_item_object', 'page'),
(206, 88, '_menu_item_target', ''),
(207, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(208, 88, '_menu_item_xfn', ''),
(209, 88, '_menu_item_url', ''),
(217, 89, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(218, 89, '_menu_item_type', 'post_type'),
(219, 89, '_menu_item_menu_item_parent', '0'),
(220, 89, '_menu_item_object_id', '6'),
(221, 89, '_menu_item_object', 'page'),
(222, 89, '_menu_item_target', ''),
(223, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 89, '_menu_item_xfn', ''),
(225, 89, '_menu_item_url', ''),
(226, 89, '_menu_item_orphaned', '1511262349'),
(227, 90, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(228, 90, '_menu_item_type', 'post_type'),
(229, 90, '_menu_item_menu_item_parent', '0'),
(230, 90, '_menu_item_object_id', '8'),
(231, 90, '_menu_item_object', 'page'),
(232, 90, '_menu_item_target', ''),
(233, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(234, 90, '_menu_item_xfn', ''),
(235, 90, '_menu_item_url', ''),
(236, 90, '_menu_item_orphaned', '1511262355'),
(237, 91, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(238, 91, '_menu_item_type', 'post_type'),
(239, 91, '_menu_item_menu_item_parent', '0'),
(240, 91, '_menu_item_object_id', '6'),
(241, 91, '_menu_item_object', 'page'),
(242, 91, '_menu_item_target', ''),
(243, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(244, 91, '_menu_item_xfn', ''),
(245, 91, '_menu_item_url', ''),
(247, 92, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(248, 92, '_menu_item_type', 'post_type'),
(249, 92, '_menu_item_menu_item_parent', '0'),
(250, 92, '_menu_item_object_id', '8'),
(251, 92, '_menu_item_object', 'page'),
(252, 92, '_menu_item_target', ''),
(253, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 92, '_menu_item_xfn', ''),
(255, 92, '_menu_item_url', ''),
(257, 93, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(258, 93, '_menu_item_type', 'taxonomy'),
(259, 93, '_menu_item_menu_item_parent', '0'),
(260, 93, '_menu_item_object_id', '2'),
(261, 93, '_menu_item_object', 'category'),
(262, 93, '_menu_item_target', ''),
(263, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(264, 93, '_menu_item_xfn', ''),
(265, 93, '_menu_item_url', ''),
(267, 94, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(268, 94, '_menu_item_type', 'post_type'),
(269, 94, '_menu_item_menu_item_parent', '0'),
(270, 94, '_menu_item_object_id', '10'),
(271, 94, '_menu_item_object', 'page'),
(272, 94, '_menu_item_target', ''),
(273, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(274, 94, '_menu_item_xfn', ''),
(275, 94, '_menu_item_url', ''),
(277, 95, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(278, 95, '_menu_item_type', 'post_type'),
(279, 95, '_menu_item_menu_item_parent', '0'),
(280, 95, '_menu_item_object_id', '12'),
(281, 95, '_menu_item_object', 'page'),
(282, 95, '_menu_item_target', ''),
(283, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(284, 95, '_menu_item_xfn', ''),
(285, 95, '_menu_item_url', ''),
(287, 96, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(288, 96, '_menu_item_type', 'custom'),
(289, 96, '_menu_item_menu_item_parent', '0'),
(290, 96, '_menu_item_object_id', '96'),
(291, 96, '_menu_item_object', 'custom'),
(292, 96, '_menu_item_target', ''),
(293, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(294, 96, '_menu_item_xfn', ''),
(295, 96, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=97 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-09-26 19:31:36', '2017-09-26 19:31:36', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-09-27 11:01:13', '2017-09-27 11:01:13', '', 0, 'http://localhost:8080/wildbeyond/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-09-26 19:45:29', '2017-09-26 19:45:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8080/wildbeyond/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-09-26 19:45:29', '2017-09-26 19:45:29', '', 2, 'http://localhost:8080/wildbeyond/2017/09/26/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-09-26 19:45:50', '2017-09-26 19:45:50', '', 'How TO PLAY', '', 'publish', 'closed', 'closed', '', 'how-to-play', '', '', '2017-09-26 19:45:50', '2017-09-26 19:45:50', '', 0, 'http://localhost:8080/wildbeyond/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-09-26 19:45:50', '2017-09-26 19:45:50', '', 'How TO PLAY', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-09-26 19:45:50', '2017-09-26 19:45:50', '', 6, 'http://localhost:8080/wildbeyond/2017/09/26/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-09-26 19:46:00', '2017-09-26 19:46:00', '', 'GAME INFO', '', 'publish', 'closed', 'closed', '', 'game-info', '', '', '2017-09-26 19:46:00', '2017-09-26 19:46:00', '', 0, 'http://localhost:8080/wildbeyond/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-09-26 19:46:00', '2017-09-26 19:46:00', '', 'GAME INFO', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-09-26 19:46:00', '2017-09-26 19:46:00', '', 8, 'http://localhost:8080/wildbeyond/2017/09/26/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-09-26 19:46:46', '2017-09-26 19:46:46', '', 'Community', '', 'publish', 'closed', 'closed', '', 'community', '', '', '2017-09-26 19:46:46', '2017-09-26 19:46:46', '', 0, 'http://localhost:8080/wildbeyond/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-09-26 19:46:46', '2017-09-26 19:46:46', '', 'Community', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-09-26 19:46:46', '2017-09-26 19:46:46', '', 10, 'http://localhost:8080/wildbeyond/2017/09/26/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-09-26 19:46:54', '2017-09-26 19:46:54', '[vc_row][vc_column][vc_column_text]\r\n<div id="layerContentContainer">\r\n<h2 id="layerContent" style="text-align: center;" tabindex="1">Support for Wild Beyond</h2>\r\n</div>\r\n<p style="text-align: center;">Nestled in the heart of San Francisco, Pocket Gems is full of people making the best mobile games and entertainment in the world.</p>\r\n<p style="text-align: center;"><a class="btn btn-lg btn-default" href="#">Visit Our Support Site</a>\r\n<a class="btn btn-lg btn-primary" href="#">Visit Our Support Site</a></p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Support', '', 'publish', 'closed', 'closed', '', 'support', '', '', '2017-09-28 16:14:01', '2017-09-28 16:14:01', '', 0, 'http://localhost:8080/wildbeyond/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-09-26 19:46:54', '2017-09-26 19:46:54', '', 'Support', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-26 19:46:54', '2017-09-26 19:46:54', '', 12, 'http://localhost:8080/wildbeyond/2017/09/26/12-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-09-27 06:33:53', '2017-09-27 06:33:53', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-09-27 06:33:53', '2017-09-27 06:33:53', '', 0, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2017-09-27 06:53:51', '2017-09-27 06:53:51', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-09-27 06:53:51', '2017-09-27 06:53:51', '', 2, 'http://localhost:8080/wildbeyond/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 'Huge-IT First Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-first-slide', '', '', '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 0, 'http://localhost:8080/wildbeyond/huge-it-first-slide/', 0, 'attachment', 'jpg', 0),
(36, 1, '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 'Huge-IT Second Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-second-slide', '', '', '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 0, 'http://localhost:8080/wildbeyond/huge-it-second-slide/', 0, 'attachment', 'jpg', 0),
(37, 1, '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 'Huge-IT Third Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-third-slide', '', '', '2017-09-27 09:21:26', '2017-09-27 09:21:26', '', 0, 'http://localhost:8080/wildbeyond/huge-it-third-slide/', 0, 'attachment', 'jpg', 0),
(39, 1, '2017-09-27 10:48:26', '2017-09-27 10:48:26', '', 'slider-one', '', 'inherit', 'open', 'closed', '', 'slider-one', '', '', '2017-09-27 10:48:26', '2017-09-27 10:48:26', '', 0, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-one.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-09-27 11:05:00', '2017-09-27 11:05:00', '', 'slider-two', '', 'inherit', 'open', 'closed', '', 'slider-two', '', '', '2017-09-27 11:05:00', '2017-09-27 11:05:00', '', 0, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/slider-two.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-09-27 13:21:22', '2017-09-27 13:21:22', '', 'cropped-slider-one.png', '', 'inherit', 'open', 'closed', '', 'cropped-slider-one-png', '', '', '2017-09-27 13:21:22', '2017-09-27 13:21:22', '', 0, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/cropped-slider-one.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2017-09-28 12:57:06', '2017-09-28 12:57:06', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Battle other players in real time', 'in PVP, 2v2, guilds and<br> events.', 'publish', 'open', 'open', '', 'battle-other-players-in-real-time', '', '', '2017-09-28 15:47:11', '2017-09-28 15:47:11', '', 0, 'http://localhost:8080/wildbeyond/?p=67', 0, 'post', '', 0),
(68, 1, '2017-09-28 12:56:46', '2017-09-28 12:56:46', '', 'graphic', '', 'inherit', 'open', 'closed', '', 'graphic', '', '', '2017-09-28 12:56:46', '2017-09-28 12:56:46', '', 67, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/graphic.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2017-09-28 12:56:53', '2017-09-28 12:56:53', '', 'graphic_2', '', 'inherit', 'open', 'closed', '', 'graphic_2', '', '', '2017-09-28 12:56:53', '2017-09-28 12:56:53', '', 67, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/graphic_2.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2017-09-28 12:56:56', '2017-09-28 12:56:56', '', 'graphic_3', '', 'inherit', 'open', 'closed', '', 'graphic_3', '', '', '2017-09-28 12:56:56', '2017-09-28 12:56:56', '', 67, 'http://localhost:8080/wildbeyond/wp-content/uploads/2017/09/graphic_3.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2017-09-28 12:57:06', '2017-09-28 12:57:06', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Battle other players in real time', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-09-28 12:57:06', '2017-09-28 12:57:06', '', 67, 'http://localhost:8080/wildbeyond/uncategorized/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-09-28 12:58:23', '2017-09-28 12:58:23', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Journey across the galaxy', 'Fight return to the inner rim', 'publish', 'open', 'open', '', 'journey-across-the-galaxy', '', '', '2017-09-28 13:02:36', '2017-09-28 13:02:36', '', 0, 'http://localhost:8080/wildbeyond/?p=72', 1, 'post', '', 0),
(73, 1, '2017-09-28 12:59:08', '2017-09-28 12:59:08', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Collect heros and units', 'Explore 3 distinct factions trying different decks and strategies', 'publish', 'open', 'open', '', 'collect-heros-and-units', '', '', '2017-09-28 13:03:26', '2017-09-28 13:03:26', '', 0, 'http://localhost:8080/wildbeyond/?p=73', 2, 'post', '', 0),
(74, 1, '2017-09-28 12:58:23', '2017-09-28 12:58:23', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Journey across the galaxy', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-09-28 12:58:23', '2017-09-28 12:58:23', '', 72, 'http://localhost:8080/wildbeyond/uncategorized/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-09-28 12:59:08', '2017-09-28 12:59:08', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Collect heros and units', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-09-28 12:59:08', '2017-09-28 12:59:08', '', 73, 'http://localhost:8080/wildbeyond/uncategorized/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-09-28 13:02:12', '2017-09-28 13:02:12', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Battle other players in real time', 'in PVP, 2v2, guilds and events.', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-09-28 13:02:12', '2017-09-28 13:02:12', '', 67, 'http://localhost:8080/wildbeyond/uncategorized/67-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-09-28 13:02:36', '2017-09-28 13:02:36', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Journey across the galaxy', 'Fight return to the inner rim', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-09-28 13:02:36', '2017-09-28 13:02:36', '', 72, 'http://localhost:8080/wildbeyond/uncategorized/72-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-09-28 13:02:53', '2017-09-28 13:02:53', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\n\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\n', 'Collect heros and units', 'Explore 3 distince factions trying different decks and strategies', 'inherit', 'closed', 'closed', '', '73-autosave-v1', '', '', '2017-09-28 13:02:53', '2017-09-28 13:02:53', '', 73, 'http://localhost:8080/wildbeyond/uncategorized/73-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-09-28 13:03:26', '2017-09-28 13:03:26', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Collect heros and units', 'Explore 3 distinct factions trying different decks and strategies', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-09-28 13:03:26', '2017-09-28 13:03:26', '', 73, 'http://localhost:8080/wildbeyond/uncategorized/73-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-09-28 15:47:11', '2017-09-28 15:47:11', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n', 'Battle other players in real time', 'in PVP, 2v2, guilds and<br> events.', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-09-28 15:47:11', '2017-09-28 15:47:11', '', 67, 'http://localhost:8080/wildbeyond/uncategorized/67-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-09-28 16:03:29', '2017-09-28 16:03:29', '[vc_row][vc_column][/vc_column][/vc_row]', 'Support', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2017-09-28 16:03:29', '2017-09-28 16:03:29', '', 12, 'http://localhost:8080/wildbeyond/uncategorized/12-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2017-09-28 16:04:46', '2017-09-28 16:04:46', '[vc_row][vc_column][vc_column_text]\r\n<div id="layerContentContainer">\r\n<h2 id="layerContent" style="text-align: center;" tabindex="1">Support for Wild Beyond</h2>\r\n</div>\r\n<p style="text-align: center;">Nestled in the heart of San Francisco, Pocket Gems is full of people making the best mobile games and entertainment in the world.</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Support', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-28 16:04:46', '2017-09-28 16:04:46', '', 12, 'http://localhost:8080/wildbeyond/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-09-28 16:06:59', '2017-09-28 16:06:59', '[vc_row][vc_column][vc_column_text]\r\n<div id="layerContentContainer">\r\n<h2 id="layerContent" style="text-align: center;" tabindex="1">Support for Wild Beyond</h2>\r\n</div>\r\n<p style="text-align: center;">Nestled in the heart of San Francisco, Pocket Gems is full of people making the best mobile games and entertainment in the world.</p>\r\n<a href="btn btn-outline">Visit Our Support Site</a>\r\n<a href="btn">Visit Our Support Site</a>[/vc_column_text][/vc_column][/vc_row]', 'Support', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-28 16:06:59', '2017-09-28 16:06:59', '', 12, 'http://localhost:8080/wildbeyond/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-09-28 16:08:01', '2017-09-28 16:08:01', '[vc_row][vc_column][vc_column_text]\r\n<div id="layerContentContainer">\r\n<h2 id="layerContent" style="text-align: center;" tabindex="1">Support for Wild Beyond</h2>\r\n</div>\r\n<p style="text-align: center;">Nestled in the heart of San Francisco, Pocket Gems is full of people making the best mobile games and entertainment in the world.</p>\r\n<a class="btn btn-lg btn-outline" href="#">Visit Our Support Site</a>\r\n<a class="btn btn-lg" href="#">Visit Our Support Site</a>[/vc_column_text][/vc_column][/vc_row]', 'Support', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-28 16:08:01', '2017-09-28 16:08:01', '', 12, 'http://localhost:8080/wildbeyond/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-09-28 16:14:01', '2017-09-28 16:14:01', '[vc_row][vc_column][vc_column_text]\r\n<div id="layerContentContainer">\r\n<h2 id="layerContent" style="text-align: center;" tabindex="1">Support for Wild Beyond</h2>\r\n</div>\r\n<p style="text-align: center;">Nestled in the heart of San Francisco, Pocket Gems is full of people making the best mobile games and entertainment in the world.</p>\r\n<p style="text-align: center;"><a class="btn btn-lg btn-default" href="#">Visit Our Support Site</a>\r\n<a class="btn btn-lg btn-primary" href="#">Visit Our Support Site</a></p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Support', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-28 16:14:01', '2017-09-28 16:14:01', '', 12, 'http://localhost:8080/wildbeyond/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-11-21 11:04:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-21 11:04:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wildbeyond/?p=87', 0, 'post', '', 0),
(88, 1, '2017-11-21 11:05:10', '2017-11-21 11:05:10', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2017-11-21 11:08:21', '2017-11-21 11:08:21', '', 0, 'http://localhost/wildbeyond/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2017-11-21 11:05:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-21 11:05:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wildbeyond/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2017-11-21 11:05:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-21 11:05:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wildbeyond/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2017-11-21 11:08:21', '2017-11-21 11:08:21', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2017-11-21 11:08:21', '2017-11-21 11:08:21', '', 0, 'http://localhost/wildbeyond/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2017-11-21 11:08:22', '2017-11-21 11:08:22', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2017-11-21 11:08:22', '2017-11-21 11:08:22', '', 0, 'http://localhost/wildbeyond/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2017-11-21 11:08:22', '2017-11-21 11:08:22', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2017-11-21 11:08:22', '2017-11-21 11:08:22', '', 0, 'http://localhost/wildbeyond/?p=93', 4, 'nav_menu_item', '', 0),
(94, 1, '2017-11-21 11:08:22', '2017-11-21 11:08:22', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2017-11-21 11:08:22', '2017-11-21 11:08:22', '', 0, 'http://localhost/wildbeyond/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2017-11-21 11:08:22', '2017-11-21 11:08:22', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2017-11-21 11:08:22', '2017-11-21 11:08:22', '', 0, 'http://localhost/wildbeyond/?p=95', 6, 'nav_menu_item', '', 0),
(96, 1, '2017-11-21 11:08:23', '2017-11-21 11:08:23', '', 'DOWNLOAD', '', 'publish', 'closed', 'closed', '', 'download-2', '', '', '2017-11-21 11:08:23', '2017-11-21 11:08:23', '', 0, 'http://localhost/wildbeyond/?p=96', 7, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'News', 'news', 0),
(3, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(67, 2, 0),
(72, 2, 0),
(73, 2, 0),
(88, 3, 0),
(91, 3, 0),
(92, 3, 0),
(93, 3, 0),
(94, 3, 0),
(95, 3, 0),
(96, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"093e43dfc39a6bf88d9ff347740e2fc3a7c1d71cdc3a6ecd06e595d9615528e0";a:4:{s:10:"expiration";i:1511435051;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511262251;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '87'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=90px&edit_element_vcUIPanelTop=68px'),
(22, 1, 'wp_user-settings-time', '1506615237'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(27, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bi7W0xxRtdTa0I.lz.8HAUAy9PjWtK1', 'admin', 'shafaat.ashraf@intellimus.com', '', '2017-09-26 19:31:35', '', 0, 'admin');
