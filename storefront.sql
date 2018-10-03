-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2018 at 12:51 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storefront`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En WordPress-kommentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-27 12:50:58', '2018-09-27 10:50:58', 'Hej, dette er en kommentar.\nFor at komme i gang med at moderere, redigere og slette kommentarer, skal du gå til kommentarskærmbilledet i kontrolpanelet.\nKommentaravatarer kommer fra <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/storefront', 'yes'),
(2, 'home', 'http://localhost/storefront', 'yes'),
(3, 'blogname', 'ReSoccer', 'yes'),
(4, 'blogdescription', 'Find brugt fodboldudstyr', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dortenoa@gmail.com', 'yes'),
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
(23, 'date_format', 'j. F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:180:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:29:\"vendors/([^/]*)/page/([0-9]+)\";s:69:\"index.php?post_type=product&vendor_shop=$matches[1]&paged=$matches[2]\";s:15:\"vendors/([^/]*)\";s:51:\"index.php?post_type=product&vendor_shop=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:52:\"vare-kategori/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:47:\"vare-kategori/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:28:\"vare-kategori/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:40:\"vare-kategori/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:22:\"vare-kategori/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:49:\"vare-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:44:\"vare-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:25:\"vare-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:37:\"vare-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:19:\"vare-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"shop_order_vendor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"shop_order_vendor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"shop_order_vendor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_vendor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_vendor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"shop_order_vendor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"shop_order_vendor/([^/]+)/embed/?$\";s:50:\"index.php?shop_order_vendor=$matches[1]&embed=true\";s:38:\"shop_order_vendor/([^/]+)/trackback/?$\";s:44:\"index.php?shop_order_vendor=$matches[1]&tb=1\";s:46:\"shop_order_vendor/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?shop_order_vendor=$matches[1]&paged=$matches[2]\";s:53:\"shop_order_vendor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?shop_order_vendor=$matches[1]&cpage=$matches[2]\";s:43:\"shop_order_vendor/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?shop_order_vendor=$matches[1]&wc-api=$matches[3]\";s:49:\"shop_order_vendor/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"shop_order_vendor/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"shop_order_vendor/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?shop_order_vendor=$matches[1]&page=$matches[2]\";s:34:\"shop_order_vendor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"shop_order_vendor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"shop_order_vendor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_vendor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_vendor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"shop_order_vendor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"vare/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"vare/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"vare/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vare/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vare/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"vare/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"vare/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:25:\"vare/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:45:\"vare/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:40:\"vare/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:33:\"vare/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:40:\"vare/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:30:\"vare/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:36:\"vare/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"vare/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"vare/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:21:\"vare/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"vare/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"vare/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"vare/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"vare/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"vare/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:34:\"(.?.+?)/become-a-vendor(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&become-a-vendor=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:2;s:47:\"one-click-demo-import/one-click-demo-import.php\";i:3;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:4;s:31:\"wc-vendors/class-wc-vendors.php\";i:5;s:57:\"woo-social-media-marketing/woo-social-media-marketing.php\";i:6;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:7;s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";i:8;s:45:\"woocommerce-services/woocommerce-services.php\";i:9;s:27:\"woocommerce/woocommerce.php\";i:10;s:40:\"yith-woocommerce-zoom-magnifier/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:65:\"C:\\MAMP\\htdocs\\storefront/wp-content/themes/storefront/header.php\";i:1;s:76:\"C:\\MAMP\\htdocs\\storefront/wp-content/themes/storefront/template-homepage.php\";i:2;s:64:\"C:\\MAMP\\htdocs\\storefront/wp-content/themes/storefront/style.css\";i:3;s:70:\"C:\\MAMP\\htdocs\\storefront/wp-content/themes/storefront-child/style.css\";i:4;s:63:\"C:\\MAMP\\htdocs\\storefront/wp-content/themes/storefront/page.php\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Copenhagen', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '36', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:116:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;}}s:14:\"pending_vendor\";a:2:{s:4:\"name\";s:14:\"Pending Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:6:\"vendor\";a:2:{s:4:\"name\";s:6:\"Vendor\";s:12:\"capabilities\";a:14:{s:20:\"assign_product_terms\";s:3:\"yes\";s:13:\"edit_products\";b:1;s:12:\"edit_product\";b:1;s:23:\"edit_published_products\";s:3:\"yes\";s:25:\"delete_published_products\";s:3:\"yes\";s:15:\"delete_products\";s:3:\"yes\";s:14:\"manage_product\";s:3:\"yes\";s:16:\"publish_products\";s:3:\"yes\";s:12:\"delete_posts\";b:1;s:4:\"read\";b:1;s:13:\"read_products\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:24:\"view_woocommerce_reports\";b:0;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'da_DK', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:10:\"archives-2\";i:3;s:6:\"meta-2\";i:4;s:12:\"categories-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:14:{i:1538567475;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538569212;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538571059;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538571290;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538574305;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1538578265;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538589065;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538604000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538607059;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538650472;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538653865;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541079831;a:1:{s:25:\"otgs_send_components_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1541462400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538048436;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, '_site_transient_timeout_browser_5753d201b82454df9cc548ed0ac1a108', '1538650473', 'no'),
(127, '_site_transient_browser_5753d201b82454df9cc548ed0ac1a108', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"69.0.3497.92\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(148, 'current_theme', 'Storefront Child', 'yes'),
(149, 'theme_mods_blossom-pin', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:15:\"site_title_font\";a:2:{s:11:\"font-family\";s:11:\"Convergence\";s:7:\"variant\";s:7:\"regular\";}s:12:\"social_links\";a:0:{}s:17:\"ed_banner_section\";s:9:\"no_banner\";s:11:\"slider_type\";s:12:\"latest_posts\";s:19:\"page_sidebar_layout\";s:8:\"centered\";s:19:\"post_sidebar_layout\";s:8:\"centered\";s:12:\"layout_style\";s:10:\"no-sidebar\";s:12:\"header_image\";s:78:\"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:24;s:3:\"url\";s:78:\"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\";s:13:\"thumbnail_url\";s:78:\"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\";s:6:\"height\";i:660;s:5:\"width\";i:1903;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538056804;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:12:\"categories-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:7:\"sidebar\";a:2:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:12:\"shop-sidebar\";a:0:{}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(155, 'recently_activated', 'a:2:{s:59:\"woocommerce-products-slider/woocommerce-products-slider.php\";i:1538395939;s:49:\"woocommerce-customizer/woocommerce-customizer.php\";i:1538395038;}', 'yes'),
(165, 'woocommerce_store_address', 'Mønsvej 19', 'yes'),
(166, 'woocommerce_store_address_2', '', 'yes'),
(167, 'woocommerce_store_city', 'Virum', 'yes'),
(168, 'woocommerce_default_country', 'DK:*', 'yes'),
(169, 'woocommerce_store_postcode', '2830', 'yes'),
(170, 'woocommerce_allowed_countries', 'all', 'yes'),
(171, 'woocommerce_all_except_countries', '', 'yes'),
(172, 'woocommerce_specific_allowed_countries', '', 'yes'),
(173, 'woocommerce_ship_to_countries', '', 'yes'),
(174, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(175, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(176, 'woocommerce_calc_taxes', 'yes', 'yes'),
(177, 'woocommerce_enable_coupons', 'yes', 'yes'),
(178, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(179, 'woocommerce_currency', 'DKK', 'yes'),
(180, 'woocommerce_currency_pos', 'left', 'yes'),
(181, 'woocommerce_price_thousand_sep', ',', 'yes'),
(182, 'woocommerce_price_decimal_sep', '.', 'yes'),
(183, 'woocommerce_price_num_decimals', '2', 'yes'),
(184, 'woocommerce_shop_page_id', '8', 'yes'),
(185, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(186, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(187, 'woocommerce_weight_unit', 'kg', 'yes'),
(188, 'woocommerce_dimension_unit', 'cm', 'yes'),
(189, 'woocommerce_enable_reviews', 'yes', 'yes'),
(190, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(191, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(192, 'woocommerce_enable_review_rating', 'no', 'yes'),
(193, 'woocommerce_review_rating_required', 'yes', 'no'),
(194, 'woocommerce_manage_stock', 'yes', 'yes'),
(195, 'woocommerce_hold_stock_minutes', '60', 'no'),
(196, 'woocommerce_notify_low_stock', 'yes', 'no'),
(197, 'woocommerce_notify_no_stock', 'yes', 'no'),
(198, 'woocommerce_stock_email_recipient', 'dortenoa@gmail.com', 'no'),
(199, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(200, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(201, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(202, 'woocommerce_stock_format', '', 'yes'),
(203, 'woocommerce_file_download_method', 'force', 'no'),
(204, 'woocommerce_downloads_require_login', 'no', 'no'),
(205, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(206, 'woocommerce_prices_include_tax', 'no', 'yes'),
(207, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(208, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(209, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(210, 'woocommerce_tax_classes', 'Reducerede sats\r\nNulsats', 'yes'),
(211, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(212, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(213, 'woocommerce_price_display_suffix', '', 'yes'),
(214, 'woocommerce_tax_total_display', 'itemized', 'no'),
(215, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(216, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(217, 'woocommerce_ship_to_destination', 'billing', 'no'),
(218, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(219, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(221, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(222, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(223, 'woocommerce_registration_generate_username', 'yes', 'no'),
(224, 'woocommerce_registration_generate_password', 'yes', 'no'),
(225, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(226, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(227, 'woocommerce_registration_privacy_policy_text', 'Dine personlige data vil blive anvendt til at understøtte din brugeroplevelse på webshoppen, til at administrere adgang til din konto, og til andre formål, som er beskrevet i vores [privacy_policy].', 'yes'),
(228, 'woocommerce_checkout_privacy_policy_text', 'Dine personlige data vil blive anvendt til at gennemføre din bestilling, understøtte din brugeroplevelse på webshoppen, og til andre formål, som er beskrevet i vores [privacy_policy].', 'yes'),
(229, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(230, 'woocommerce_trash_pending_orders', '', 'no'),
(231, 'woocommerce_trash_failed_orders', '', 'no'),
(232, 'woocommerce_trash_cancelled_orders', '', 'no'),
(233, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(234, 'woocommerce_email_from_name', 'ReSoccer', 'no'),
(235, 'woocommerce_email_from_address', 'dortenoa@gmail.com', 'no'),
(236, 'woocommerce_email_header_image', '', 'no'),
(237, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(238, 'woocommerce_email_base_color', '#96588a', 'no'),
(239, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(240, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(241, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(242, 'woocommerce_cart_page_id', '9', 'yes'),
(243, 'woocommerce_checkout_page_id', '10', 'yes'),
(244, 'woocommerce_myaccount_page_id', '11', 'yes'),
(245, 'woocommerce_terms_page_id', '', 'no'),
(246, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(247, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(249, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(250, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(251, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(252, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(253, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(254, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(255, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(256, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(257, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(258, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(259, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(260, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(261, 'woocommerce_api_enabled', 'no', 'yes'),
(262, 'woocommerce_single_image_width', '600', 'yes'),
(263, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(264, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(265, 'woocommerce_demo_store', 'no', 'no'),
(266, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:4:\"vare\";s:13:\"category_base\";s:13:\"vare-kategori\";s:8:\"tag_base\";s:8:\"vare-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(267, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(268, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(269, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(271, 'default_product_cat', '15', 'yes'),
(274, 'woocommerce_version', '3.4.5', 'yes'),
(275, 'woocommerce_db_version', '3.4.5', 'yes'),
(276, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(277, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(278, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:10:\"FIND VARER\";s:6:\"number\";i:10;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:3:\"asc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(294, '_transient_timeout_external_ip_address_127.0.0.1', '1538653867', 'no'),
(295, '_transient_external_ip_address_127.0.0.1', '176.22.194.82', 'no'),
(299, 'woocommerce_product_type', 'physical', 'yes'),
(300, 'woocommerce_allow_tracking', 'yes', 'yes'),
(302, 'woocommerce_tracker_last_send', '1538049145', 'yes'),
(304, 'woocommerce_klarna_payments_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(306, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:18:\"dortenoa@gmail.com\";}', 'yes'),
(307, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(308, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(309, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(310, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(311, 'wc_ppec_version', '1.6.4', 'yes'),
(317, '_transient_shipping-transient-version', '1538049266', 'yes'),
(318, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Fast sats\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"55\";}', 'yes'),
(319, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Fast sats\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"55\";}', 'yes'),
(320, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(323, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(327, 'jetpack_activated', '1', 'yes'),
(330, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(331, 'jetpack_sync_settings_disable', '0', 'yes'),
(332, '_transient_timeout_jetpack_file_data_6.5', '1540897218', 'no'),
(333, '_transient_jetpack_file_data_6.5', 'a:58:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(334, 'jetpack_available_modules', 'a:1:{s:3:\"6.5\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(335, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"6.5:1538049290\";s:11:\"old_version\";s:14:\"6.5:1538049290\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:2;}', 'yes'),
(336, 'jetpack_testimonial', '0', 'yes'),
(337, 'do_activate', '0', 'yes'),
(342, 'mailchimp_woocommerce_version', '2.1.9', 'no'),
(343, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(345, 'mailchimp-woocommerce-store_id', '5bacc50f85872', 'yes'),
(348, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(361, 'wcvendors_vendor_allow_registration', 'yes', 'yes'),
(362, 'wcvendors_terms_and_conditions_visibility', 'yes', 'yes'),
(363, 'wcvendors_vendor_approve_registration', '', 'yes'),
(364, 'wcvendors_become_a_vendor_my_account_link_visibility', 'yes', 'yes'),
(365, 'wcvendors_vendor_give_taxes', '', 'yes'),
(366, 'wcvendors_vendor_give_shipping', '', 'yes'),
(367, 'wcvendors_vendor_commission_rate', '10', 'yes'),
(368, 'wcvendors_capability_products_enabled', 'yes', 'yes'),
(369, 'wcvendors_capability_products_edit', 'yes', 'yes'),
(370, 'wcvendors_capability_products_live', 'yes', 'yes'),
(371, 'wcvendors_capability_orders_enabled', 'yes', 'yes'),
(372, 'wcvendors_capability_orders_export', 'yes', 'yes'),
(373, 'wcvendors_capability_frontend_reports', 'yes', 'yes'),
(374, 'wcvendors_capability_product_types', 'simple', 'yes'),
(375, 'wcvendors_capability_product_type_options', 'simple', 'yes'),
(376, 'wcvendors_capability_product_data_tabs', 'simple', 'yes'),
(377, 'wcvendors_capability_product_featured', 'no', 'yes'),
(378, 'wcvendors_capability_product_duplicate', 'no', 'yes'),
(379, 'wcvendors_capability_product_sku', 'no', 'yes'),
(380, 'wcvendors_capability_product_taxes', 'no', 'yes'),
(381, 'wcvendors_capability_order_read_notes', 'yes', 'yes'),
(382, 'wcvendors_capability_order_update_notes', 'yes', 'yes'),
(383, 'wcvendors_capability_order_customer_name', 'yes', 'yes'),
(384, 'wcvendors_capability_order_customer_billing', 'yes', 'yes'),
(385, 'wcvendors_capability_order_customer_shipping', 'yes', 'yes'),
(386, 'wcvendors_capability_order_customer_email', 'yes', 'yes'),
(387, 'wcvendors_capability_order_customer_phone', 'yes', 'yes'),
(388, 'wcvendors_vendor_dashboard_page_id', '12', 'yes'),
(389, 'wcvendors_shop_settings_page_id', '14', 'yes'),
(390, 'wcvendors_product_orders_page_id', '15', 'yes'),
(391, 'wcvendors_vendors_page_id', '13', 'yes'),
(392, 'wcvendors_vendor_terms_page_id', '2', 'yes'),
(393, 'wcvendors_vendor_shop_permalink', 'vendors', 'yes'),
(394, 'wcvendors_display_shop_headers', 'no', 'yes'),
(395, 'wcvendors_display_shop_description_html', 'no', 'yes'),
(396, 'wcvendors_display_shop_display_name', 'user_login', 'yes'),
(397, 'wcvendors_vendor_singular', 'Vendor', 'yes'),
(398, 'wcvendors_vendor_plural', 'Vendors', 'yes'),
(399, 'wcvendors_display_label_sold_by_enable', 'yes', 'yes'),
(400, 'wcvendors_label_sold_by_separator', ':', 'yes'),
(401, 'wcvendors_label_sold_by', 'Sold By', 'yes'),
(402, 'wcvendors_label_store_info_enable', 'yes', 'yes'),
(403, 'wcvendors_display_label_store_info', 'Store Info', 'yes'),
(404, 'wcvendors_display_advanced_stylesheet', '', 'yes'),
(405, 'wcvendors_redirect_wp_registration_to_woocommerce_myaccount', 'no', 'yes'),
(406, 'wcvendors_payments_paypal_instantpay_enable', 'no', 'yes'),
(407, 'wcvendors_payments_paypal_email_enable', 'no', 'yes'),
(408, 'wcvendors_uninstall_delete_all_data', 'no', 'yes'),
(409, 'wcvendors_uninstall_delete_custom_table', 'no', 'yes'),
(410, 'wcvendors_uninstall_delete_settings_options', 'no', 'yes'),
(411, 'wcvendors_uninstall_delete_custom_pages', 'no', 'yes'),
(412, 'wcvendors_uninstall_delete_vendor_roles', 'no', 'yes'),
(413, 'wcvendors_version', '2.1.1', 'yes'),
(415, 'wcvendors_admin_notices', 'a:0:{}', 'yes'),
(416, 'wcvendors_db_version', '2.1.1', 'yes'),
(417, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(422, '_transient_timeout_wc_shipping_method_count_1_1538049266', '1540642691', 'no'),
(423, '_transient_wc_shipping_method_count_1_1538049266', '2', 'no'),
(424, 'woocommerce_default_catalog_orderby', 'date', 'yes'),
(425, 'woocommerce_catalog_rows', '4', 'yes'),
(426, '_transient_product_query-transient-version', '1538396518', 'yes'),
(428, '_transient_product-transient-version', '1538396518', 'yes'),
(457, 'theme_mods_envo-multipurpose', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:13:\"remove-header\";s:11:\"custom_logo\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538386644;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:12:\"categories-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:55:\"envo-multipurpose-content-widget-woocommerce-products-3\";}s:31:\"envo-multipurpose-right-sidebar\";a:0:{}s:29:\"envo-multipurpose-header-area\";a:0:{}s:27:\"envo-multipurpose-menu-area\";a:0:{}s:29:\"envo-multipurpose-footer-area\";a:0:{}s:31:\"envo-multipurpose-homepage-area\";a:0:{}}}}', 'yes'),
(458, 'widget_envo-multipurpose-extended-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(459, 'widget_envo-multipurpose-popular-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(460, 'widget_envo-multipurpose-content-widget-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(461, 'widget_envo-multipurpose-content-widget-services', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(462, 'widget_envo-multipurpose-widget-static-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(463, 'widget_envo-multipurpose-content-widget-woocommerce-products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:19:{s:5:\"title\";s:9:\"Produkter\";s:8:\"subtitle\";s:0:\"\";s:13:\"heading_style\";s:13:\"title-style-1\";s:16:\"background_color\";s:7:\"#ffffff\";s:10:\"text_color\";s:0:\"\";s:5:\"limit\";i:4;s:7:\"columns\";s:1:\"4\";s:7:\"orderby\";s:4:\"date\";s:8:\"post_ids\";s:0:\"\";s:8:\"category\";s:0:\"\";s:5:\"order\";s:3:\"asc\";s:12:\"selling_type\";s:0:\"\";s:11:\"button_text\";s:0:\"\";s:11:\"button_link\";s:0:\"\";s:12:\"button_style\";s:7:\"default\";s:12:\"button_color\";s:7:\"#81d742\";s:11:\"padding_top\";i:40;s:14:\"padding_bottom\";i:40;s:13:\"margin_bottom\";i:0;}}', 'yes'),
(464, 'widget_envo-multipurpose-content-widget-woocommerce-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(465, 'widget_envo-multipurpose-widget-blog-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(477, 'category_children', 'a:0:{}', 'yes'),
(478, '_transient_timeout_wc_product_loop308c1538051098', '1540646470', 'no'),
(479, '_transient_wc_product_loop308c1538051098', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:19;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(482, '_transient_timeout_wc_product_loopa7be1538051098', '1540646625', 'no'),
(483, '_transient_wc_product_loopa7be1538051098', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:19;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(489, 'product_cat_children', 'a:0:{}', 'yes'),
(516, 'woocommerce_tracker_ua', 'a:2:{i:0;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/69.0.3497.92 safari/537.36\";i:1;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/69.0.3497.100 safari/537.36\";}', 'yes'),
(531, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1538978883', 'no'),
(532, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(561, 'rlrsssl_options', 'a:13:{s:12:\"site_has_ssl\";b:0;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.0.5\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:0;s:19:\"javascript_redirect\";b:1;s:11:\"wp_redirect\";b:0;s:31:\"switch_mixed_content_fixer_hook\";b:0;}', 'yes'),
(562, 'woocommerce_vendor_notify_application_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(563, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(585, 'theme_mods_storefront', 'a:16:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:13:\"remove-header\";s:28:\"storefront_header_link_color\";s:7:\"#6fd626\";s:16:\"background_image\";s:0:\"\";s:34:\"storefront_footer_background_color\";s:7:\"#6fd626\";s:28:\"storefront_footer_text_color\";s:7:\"#ffffff\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:34:\"storefront_button_background_color\";s:7:\"#6fd626\";s:38:\"storefront_button_alt_background_color\";s:7:\"#6fd626\";s:29:\"storefront_product_pagination\";b:0;s:29:\"storefront_sticky_add_to_cart\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538389864;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:10:\"archives-2\";i:3;s:6:\"meta-2\";i:4;s:12:\"categories-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(586, 'storefront_nux_fresh_site', '0', 'yes'),
(587, 'woocommerce_catalog_columns', '3', 'yes'),
(601, 'storefront_nux_dismissed', '1', 'yes'),
(604, 'storefront_nux_guided_tour', '1', 'yes'),
(613, 'woocommerce_shop_page_display', '', 'yes'),
(614, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(615, 'woocommerce_thumbnail_cropping_custom_width', '1', 'yes'),
(616, 'woocommerce_thumbnail_cropping_custom_height', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(622, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:10:\"Del dette:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(623, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(627, 'wcvendors_queue_flush_rewrite_rules', 'no', 'yes'),
(638, 'theme_mods_storefront-child', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:24:\"storefront_heading_color\";s:7:\"#73d62c\";s:28:\"storefront_header_text_color\";s:7:\"#404040\";s:34:\"storefront_footer_background_color\";s:7:\"#73d62c\";s:28:\"storefront_header_link_color\";s:7:\"#73d62c\";s:31:\"storefront_footer_heading_color\";s:7:\"#ffffff\";s:28:\"storefront_footer_text_color\";s:7:\"#ffffff\";s:12:\"header_image\";s:65:\"http://localhost/storefront/wp-content/uploads/2018/10/header.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:83;s:3:\"url\";s:65:\"http://localhost/storefront/wp-content/uploads/2018/10/header.png\";s:13:\"thumbnail_url\";s:65:\"http://localhost/storefront/wp-content/uploads/2018/10/header.png\";s:6:\"height\";i:197;s:5:\"width\";i:851;}}', 'yes'),
(664, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"da_DK\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538570706;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(667, 'wc_customizer_version', '2.6.0', 'yes'),
(673, '_transient_timeout_wc_addons_sections', '1538999540', 'no'),
(674, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:7:\"bundles\";s:5:\"label\";s:7:\"Bundles\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(675, '_transient_timeout_wc_addons_featured', '1538999540', 'no'),
(676, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:147:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:5:\"Free!\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:146:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(698, '_transient_orders-transient-version', '1538395867', 'yes'),
(699, '_transient_timeout_wc_cbp_b3f0413b81049d7d909c2d9d12072287', '1540987867', 'no'),
(700, '_transient_wc_cbp_b3f0413b81049d7d909c2d9d12072287', 'a:0:{}', 'no'),
(720, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(721, '_transient_is_multi_author', '0', 'yes'),
(723, '_transient_timeout_wc_low_stock_count', '1540988671', 'no'),
(724, '_transient_wc_low_stock_count', '0', 'no'),
(725, '_transient_timeout_wc_outofstock_count', '1540988671', 'no'),
(726, '_transient_wc_outofstock_count', '0', 'no'),
(736, 'yit_recently_activated', 'a:0:{}', 'yes'),
(737, 'yith_wcmg_slider_direction', 'left', 'yes'),
(738, 'yith_wcas_general_videobox', 'a:7:{s:11:\"plugin_name\";s:31:\"YITH WooCommerce Zoom Magnifier\";s:18:\"title_first_column\";s:30:\"Discover The Advanced Features\";s:24:\"description_first_column\";s:95:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE ZOOM MAGNIFIER to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"122436840\";s:15:\"video_image_url\";s:134:\"http://localhost/storefront/wp-content/plugins/yith-woocommerce-zoom-magnifier/assets/images/yith-woocommerce-zoom-magnifier-video.jpg\";s:17:\"video_description\";s:79:\"See YITH WooCommerce Zoom Magnifier plugin with full premium features in action\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:206:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product, and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:84:\"http://yithemes.com/themes/plugins/yith-woocommerce-zoom-magnifier/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(739, 'yith_wcmg_enable_plugin', 'yes', 'yes'),
(740, 'yith_wcmg_enable_mobile', 'yes', 'yes'),
(741, 'yith_wcmg_force_sizes', 'yes', 'yes'),
(742, 'yith_wcmg_zoom_width', 'auto', 'yes'),
(743, 'yith_wcmg_zoom_height', 'auto', 'yes'),
(744, 'woocommerce_magnifier_image', 'a:3:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"crop\";b:1;}', 'yes'),
(745, 'yith_wcmg_zoom_position', 'right', 'yes'),
(746, 'yith_wcmg_zoom_mobile_position', 'inside', 'yes'),
(747, 'yith_wcmg_loading_label', 'Loading...', 'yes'),
(748, 'yith_wcmg_lens_opacity', '0.5', 'yes'),
(749, 'yith_wcmg_softfocus', 'no', 'yes'),
(750, 'yith_wcmg_enableslider', 'yes', 'yes'),
(751, 'yith_wcmg_slider_responsive', 'yes', 'yes'),
(752, 'yith_wcmg_slider_items', '3', 'yes'),
(753, 'yith_wcmg_slider_circular', 'yes', 'yes'),
(754, 'yith_wcmg_slider_infinite', 'yes', 'yes'),
(755, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:37:\"yith_woocommerce_zoom-magnifier_panel\";b:1;}', 'yes'),
(769, 'wp_installer_settings', 'eJxNzDEOhDAMBdG7+ARJyAr4PoxlwEUkBFEcKsTdodx6nkYx4HbEBGpWTy/9bMWcWBFwP46UQbt6l/8sV920G3FB/A1TnlMOI3+bESS1mUQJsu6mxyeJF0R+XnGXIwI=', 'yes'),
(781, '_transient_timeout_wc_term_counts', '1541064512', 'no'),
(782, '_transient_wc_term_counts', 'a:3:{i:16;s:1:\"4\";i:18;s:1:\"3\";i:20;s:1:\"1\";}', 'no'),
(796, '_transient_timeout_jetpack_https_test', '1538578808', 'no'),
(797, '_transient_jetpack_https_test', '1', 'no'),
(798, '_transient_timeout_jetpack_https_test_message', '1538578808', 'no'),
(799, '_transient_jetpack_https_test_message', '', 'no'),
(800, '_transient_timeout_wc_report_sales_by_date', '1538578808', 'no'),
(801, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"b0a76106910b735d3400dc0a4080e6fa\";a:0:{}s:32:\"bb20619e32db74cfd0c83466eab32d60\";a:0:{}s:32:\"5e9b508ca3cd354242c6d4ebbd826097\";a:0:{}s:32:\"c74a7fd251952e497ecdeff58e151ee5\";N;s:32:\"72f5c1c330f9db2b7f8a3d7c4444c509\";a:0:{}s:32:\"5e94b7ba55243d868d88b3d91ee4f40b\";a:0:{}s:32:\"b2d9c2f7a9a41b5a2413ec0cd5e2c832\";a:0:{}s:32:\"a1738e53e1ab8709f115b07f797abde0\";a:0:{}}', 'no'),
(802, '_transient_timeout_wc_admin_report', '1538578808', 'no'),
(803, '_transient_wc_admin_report', 'a:1:{s:32:\"43484385b7e0ce59b4cbab03b29e1406\";a:0:{}}', 'no'),
(818, '_site_transient_timeout_theme_roots', '1538572506', 'no'),
(819, '_site_transient_theme_roots', 'a:7:{s:11:\"blossom-pin\";s:7:\"/themes\";s:17:\"envo-multipurpose\";s:7:\"/themes\";s:16:\"storefront-child\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(820, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538570708;s:7:\"checked\";a:7:{s:11:\"blossom-pin\";s:5:\"1.0.0\";s:17:\"envo-multipurpose\";s:5:\"1.1.4\";s:16:\"storefront-child\";s:3:\"1.0\";s:10:\"storefront\";s:5:\"2.3.3\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:11:\"blossom-pin\";a:4:{s:5:\"theme\";s:11:\"blossom-pin\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:41:\"https://wordpress.org/themes/blossom-pin/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/blossom-pin.1.0.1.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(821, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538570709;s:7:\"checked\";a:16:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:69:\"envothemes-importer-kingcomposer/envothemes-importer-kingcomposer.php\";s:5:\"1.0.4\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:3:\"6.5\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.9\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:5:\"2.5.0\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.0.5\";s:31:\"wc-vendors/class-wc-vendors.php\";s:5:\"2.1.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.5\";s:49:\"woocommerce-customizer/woocommerce-customizer.php\";s:5:\"2.6.0\";s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";s:5:\"4.3.6\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.4\";s:59:\"woocommerce-products-slider/woocommerce-products-slider.php\";s:7:\"1.12.21\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.16.1\";s:57:\"woo-social-media-marketing/woo-social-media-marketing.php\";s:3:\"2.0\";s:40:\"yith-woocommerce-zoom-magnifier/init.php\";s:5:\"1.3.4\";}s:8:\"response\";a:1:{s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.10\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:15:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:69:\"envothemes-importer-kingcomposer/envothemes-importer-kingcomposer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:46:\"w.org/plugins/envothemes-importer-kingcomposer\";s:4:\"slug\";s:32:\"envothemes-importer-kingcomposer\";s:6:\"plugin\";s:69:\"envothemes-importer-kingcomposer/envothemes-importer-kingcomposer.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/envothemes-importer-kingcomposer/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/envothemes-importer-kingcomposer.1.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/envothemes-importer-kingcomposer/assets/icon-256x256.jpg?rev=1765776\";s:2:\"1x\";s:85:\"https://ps.w.org/envothemes-importer-kingcomposer/assets/icon-128x128.jpg?rev=1765776\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/envothemes-importer-kingcomposer/assets/banner-1544x500.jpg?rev=1765776\";s:2:\"1x\";s:87:\"https://ps.w.org/envothemes-importer-kingcomposer/assets/banner-772x250.jpg?rev=1765776\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"6.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.6.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"one-click-demo-import/one-click-demo-import.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/one-click-demo-import\";s:4:\"slug\";s:21:\"one-click-demo-import\";s:6:\"plugin\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/one-click-demo-import/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/one-click-demo-import.2.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-256x256.png?rev=1694310\";s:2:\"1x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-128x128.png?rev=1694310\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/one-click-demo-import/assets/banner-1544x500.png?rev=1694310\";s:2:\"1x\";s:76:\"https://ps.w.org/one-click-demo-import/assets/banner-772x250.png?rev=1694310\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.0.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.3.0.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.jpg?rev=1881345\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wc-vendors/class-wc-vendors.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wc-vendors\";s:4:\"slug\";s:10:\"wc-vendors\";s:6:\"plugin\";s:31:\"wc-vendors/class-wc-vendors.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wc-vendors/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wc-vendors.2.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/wc-vendors/assets/icon-256x256.png?rev=1645455\";s:2:\"1x\";s:55:\"https://ps.w.org/wc-vendors/assets/icon.svg?rev=1645455\";s:3:\"svg\";s:55:\"https://ps.w.org/wc-vendors/assets/icon.svg?rev=1645455\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wc-vendors/assets/banner-1544x500.png?rev=1873809\";s:2:\"1x\";s:65:\"https://ps.w.org/wc-vendors/assets/banner-772x250.png?rev=1873809\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"woocommerce-customizer/woocommerce-customizer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/woocommerce-customizer\";s:4:\"slug\";s:22:\"woocommerce-customizer\";s:6:\"plugin\";s:49:\"woocommerce-customizer/woocommerce-customizer.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/woocommerce-customizer/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/woocommerce-customizer.2.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/woocommerce-customizer/assets/icon.svg?rev=1620526\";s:3:\"svg\";s:67:\"https://ps.w.org/woocommerce-customizer/assets/icon.svg?rev=1620526\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/woocommerce-customizer/assets/banner-1544x500.png?rev=1620526\";s:2:\"1x\";s:77:\"https://ps.w.org/woocommerce-customizer/assets/banner-772x250.png?rev=1620526\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/woocommerce-multilingual\";s:4:\"slug\";s:24:\"woocommerce-multilingual\";s:6:\"plugin\";s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";s:11:\"new_version\";s:5:\"4.3.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/woocommerce-multilingual/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/woocommerce-multilingual.4.3.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-multilingual/assets/icon-256x256.png?rev=1106864\";s:2:\"1x\";s:77:\"https://ps.w.org/woocommerce-multilingual/assets/icon-128x128.png?rev=1106864\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/woocommerce-multilingual/assets/banner-772x250.png?rev=744957\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"woocommerce-products-slider/woocommerce-products-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-slider\";s:4:\"slug\";s:27:\"woocommerce-products-slider\";s:6:\"plugin\";s:59:\"woocommerce-products-slider/woocommerce-products-slider.php\";s:11:\"new_version\";s:7:\"1.12.21\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-slider/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-slider.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-slider/assets/icon-256x256.png?rev=1637877\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-slider/assets/icon-128x128.png?rev=1637877\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/woocommerce-products-slider/assets/banner-1544x500.png?rev=1637877\";s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-slider/assets/banner-772x250.png?rev=1637877\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.16.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.16.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1910075\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1910075\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woo-social-media-marketing/woo-social-media-marketing.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woo-social-media-marketing\";s:4:\"slug\";s:26:\"woo-social-media-marketing\";s:6:\"plugin\";s:57:\"woo-social-media-marketing/woo-social-media-marketing.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woo-social-media-marketing/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woo-social-media-marketing.2.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woo-social-media-marketing/assets/icon-256x256.png?rev=1681667\";s:2:\"1x\";s:79:\"https://ps.w.org/woo-social-media-marketing/assets/icon-128x128.png?rev=1681667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woo-social-media-marketing/assets/banner-1544x500.png?rev=1564252\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-social-media-marketing/assets/banner-772x250.png?rev=1681667\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"yith-woocommerce-zoom-magnifier/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/yith-woocommerce-zoom-magnifier\";s:4:\"slug\";s:31:\"yith-woocommerce-zoom-magnifier\";s:6:\"plugin\";s:40:\"yith-woocommerce-zoom-magnifier/init.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/yith-woocommerce-zoom-magnifier/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/yith-woocommerce-zoom-magnifier.1.3.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-zoom-magnifier/assets/icon-128x128.jpg?rev=1461225\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/yith-woocommerce-zoom-magnifier/assets/banner-1544x500.jpg?rev=1461225\";s:2:\"1x\";s:86:\"https://ps.w.org/yith-woocommerce-zoom-magnifier/assets/banner-772x250.jpg?rev=1461225\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(823, '_transient_timeout_jetpack_idc_allowed', '1538574310', 'no'),
(824, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1538048586'),
(6, 7, '_wp_attached_file', '2018/09/soccergoal1.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1698;s:6:\"height\";i:1125;s:4:\"file\";s:23:\"2018/09/soccergoal1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"soccergoal1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"soccergoal1-416x276.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"soccergoal1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"soccergoal1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"soccergoal1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"soccergoal1-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"soccergoal1-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-schema\";a:4:{s:4:\"file\";s:21:\"soccergoal1-91x60.jpg\";s:5:\"width\";i:91;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-slider\";a:4:{s:4:\"file\";s:23:\"soccergoal1-375x450.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-archive\";a:4:{s:4:\"file\";s:23:\"soccergoal1-224x280.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-related\";a:4:{s:4:\"file\";s:23:\"soccergoal1-374x249.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attachment_is_custom_background', 'blossom-pin'),
(9, 1, '_edit_lock', '1538050669:1'),
(10, 6, '_customize_restore_dismissed', '1'),
(11, 16, '_edit_lock', '1538050596:1'),
(12, 16, '_wp_trash_meta_status', 'publish'),
(13, 16, '_wp_trash_meta_time', '1538050624'),
(14, 17, '_edit_lock', '1538050656:1'),
(15, 17, '_wp_trash_meta_status', 'publish'),
(16, 17, '_wp_trash_meta_time', '1538050660'),
(17, 18, '_wp_trash_meta_status', 'publish'),
(18, 18, '_wp_trash_meta_time', '1538050752'),
(19, 19, '_wc_review_count', '0'),
(20, 19, '_wc_rating_count', 'a:0:{}'),
(21, 19, '_wc_average_rating', '0'),
(22, 19, '_edit_last', '1'),
(23, 19, '_edit_lock', '1538055648:1'),
(24, 20, '_wp_attached_file', '2018/09/nike_superfly_6_academy_cr7_jr_mg_1_1001574249.jpg'),
(25, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:58:\"2018/09/nike_superfly_6_academy_cr7_jr_mg_1_1001574249.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-schema\";a:4:{s:4:\"file\";s:56:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-slider\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-375x450.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-archive\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-224x280.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-related\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-374x249.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:58:\"nike_superfly_6_academy_cr7_jr_mg_1_1001574249-324x500.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 19, 'pv_commission_rate', ''),
(27, 19, '_sku', ''),
(28, 19, '_regular_price', '399'),
(29, 19, '_sale_price', '100'),
(30, 19, '_sale_price_dates_from', ''),
(31, 19, '_sale_price_dates_to', ''),
(32, 19, 'total_sales', '0'),
(33, 19, '_tax_status', 'taxable'),
(34, 19, '_tax_class', ''),
(35, 19, '_manage_stock', 'no'),
(36, 19, '_backorders', 'no'),
(37, 19, '_sold_individually', 'no'),
(38, 19, '_weight', ''),
(39, 19, '_length', ''),
(40, 19, '_width', ''),
(41, 19, '_height', ''),
(42, 19, '_upsell_ids', 'a:0:{}'),
(43, 19, '_crosssell_ids', 'a:0:{}'),
(44, 19, '_purchase_note', ''),
(45, 19, '_default_attributes', 'a:0:{}'),
(46, 19, '_virtual', 'no'),
(47, 19, '_downloadable', 'no'),
(48, 19, '_product_image_gallery', ''),
(49, 19, '_download_limit', '-1'),
(50, 19, '_download_expiry', '-1'),
(51, 19, '_stock', NULL),
(52, 19, '_stock_status', 'instock'),
(53, 19, '_product_version', '3.4.5'),
(54, 19, '_price', '100'),
(55, 19, '_thumbnail_id', '20'),
(56, 22, '_wp_trash_meta_status', 'publish'),
(57, 22, '_wp_trash_meta_time', '1538051935'),
(59, 23, '_customize_restore_dismissed', '1'),
(60, 24, '_wp_attached_file', '2018/09/cropped-soccergoal1.jpg'),
(61, 24, '_wp_attachment_context', 'custom-header'),
(62, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1903;s:6:\"height\";i:660;s:4:\"file\";s:31:\"2018/09/cropped-soccergoal1.jpg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"cropped-soccergoal1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-416x144.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-300x104.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-768x266.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cropped-soccergoal1-1024x355.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-schema\";a:4:{s:4:\"file\";s:30:\"cropped-soccergoal1-173x60.jpg\";s:5:\"width\";i:173;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blossom-pin-slider\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-375x450.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-archive\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-224x280.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-pin-related\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-374x249.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"cropped-soccergoal1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-416x144.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-soccergoal1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 24, '_wp_attachment_custom_header_last_used_blossom-pin', '1538052185'),
(64, 24, '_wp_attachment_is_custom_header', 'blossom-pin'),
(65, 25, '_edit_lock', '1538052181:1'),
(66, 25, '_wp_trash_meta_status', 'publish'),
(67, 25, '_wp_trash_meta_time', '1538052185'),
(68, 26, '_edit_lock', '1538054638:1'),
(69, 26, '_wp_trash_meta_status', 'publish'),
(70, 26, '_wp_trash_meta_time', '1538054658'),
(71, 21, '_wc_review_count', '0'),
(72, 21, '_wc_rating_count', 'a:0:{}'),
(73, 21, '_wc_average_rating', '0'),
(74, 21, '_wp_trash_meta_status', 'draft'),
(75, 21, '_wp_trash_meta_time', '1538055147'),
(76, 21, '_wp_desired_post_slug', ''),
(77, 13, '_edit_lock', '1538376550:1'),
(78, 12, '_edit_lock', '1538055080:1'),
(80, 29, '_wp_attached_file', '2018/09/soccerpinkball.jpg'),
(81, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:540;s:4:\"file\";s:26:\"2018/09/soccerpinkball.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"soccerpinkball-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"envo-multipurpose-med\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-720x405.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"envo-multipurpose-thumbnail\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-160x120.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"soccerpinkball-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"soccerpinkball-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 30, '_wp_attached_file', '2018/09/cropped-soccerpinkball.jpg'),
(83, 30, '_wp_attachment_context', 'custom-header'),
(84, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:200;s:4:\"file\";s:34:\"2018/09/cropped-soccerpinkball.jpg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-soccerpinkball-324x200.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"cropped-soccerpinkball-416x42.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:42;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-soccerpinkball-300x30.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"cropped-soccerpinkball-768x77.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"cropped-soccerpinkball-1024x102.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"envo-multipurpose-single\";a:4:{s:4:\"file\";s:35:\"cropped-soccerpinkball-1140x200.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"envo-multipurpose-med\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-720x200.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"envo-multipurpose-thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-160x120.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"cropped-soccerpinkball-324x200.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"cropped-soccerpinkball-416x42.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:42;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 30, '_wp_attachment_custom_header_last_used_envo-multipurpose', '1538055772'),
(86, 30, '_wp_attachment_is_custom_header', 'envo-multipurpose'),
(87, 27, '_customize_restore_dismissed', '1'),
(88, 31, '_wp_trash_meta_status', 'publish'),
(89, 31, '_wp_trash_meta_time', '1538055772'),
(90, 32, '_wc_review_count', '0'),
(91, 32, '_wc_rating_count', 'a:0:{}'),
(92, 32, '_wc_average_rating', '0'),
(93, 32, '_edit_last', '1'),
(94, 32, '_edit_lock', '1538377680:1'),
(95, 33, '_wp_attached_file', '2018/09/adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584.png'),
(96, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:202;s:6:\"height\";i:202;s:4:\"file\";s:81:\"2018/09/adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"envo-multipurpose-thumbnail\";a:4:{s:4:\"file\";s:81:\"adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584-160x120.png\";s:5:\"width\";i:160;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:81:\"adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:81:\"adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 32, '_thumbnail_id', '33'),
(98, 32, 'pv_commission_rate', ''),
(99, 32, '_sku', ''),
(100, 32, '_regular_price', '400'),
(101, 32, '_sale_price', '150'),
(102, 32, '_sale_price_dates_from', ''),
(103, 32, '_sale_price_dates_to', ''),
(104, 32, 'total_sales', '0'),
(105, 32, '_tax_status', 'none'),
(106, 32, '_tax_class', 'nulsats'),
(107, 32, '_manage_stock', 'no'),
(108, 32, '_backorders', 'no'),
(109, 32, '_sold_individually', 'no'),
(110, 32, '_weight', ''),
(111, 32, '_length', ''),
(112, 32, '_width', ''),
(113, 32, '_height', ''),
(114, 32, '_upsell_ids', 'a:0:{}'),
(115, 32, '_crosssell_ids', 'a:0:{}'),
(116, 32, '_purchase_note', ''),
(117, 32, '_default_attributes', 'a:0:{}'),
(118, 32, '_virtual', 'no'),
(119, 32, '_downloadable', 'no'),
(120, 32, '_product_image_gallery', ''),
(121, 32, '_download_limit', '-1'),
(122, 32, '_download_expiry', '-1'),
(123, 32, '_stock', NULL),
(124, 32, '_stock_status', 'instock'),
(125, 32, '_product_version', '3.4.5'),
(126, 32, '_price', '150'),
(127, 34, '_wp_trash_meta_status', 'publish'),
(128, 34, '_wp_trash_meta_time', '1538056020'),
(129, 35, '_wp_attached_file', '2018/09/cropped-soccerpinkball-1.jpg'),
(130, 35, '_wp_attachment_context', 'custom-logo'),
(131, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:243;s:4:\"file\";s:36:\"2018/09/cropped-soccerpinkball-1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-324x243.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-416x125.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-soccerpinkball-1-300x90.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-768x230.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-300x243.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"envo-multipurpose-med\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-720x243.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"envo-multipurpose-thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-160x120.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-324x243.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-416x125.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 36, '_wp_attached_file', '2018/09/cropped-soccerpinkball-2.jpg'),
(133, 36, '_wp_attachment_context', 'site-icon'),
(134, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:36:\"2018/09/cropped-soccerpinkball-2.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"envo-multipurpose-med\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-512x405.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"envo-multipurpose-thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-160x120.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:34:\"cropped-soccerpinkball-2-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 37, '_edit_lock', '1538056426:1'),
(136, 37, '_wp_trash_meta_status', 'publish'),
(137, 37, '_wp_trash_meta_time', '1538056460'),
(138, 38, '_edit_lock', '1538376305:1'),
(140, 39, '_customize_changeset_uuid', 'b1029338-02b0-4aa5-bdb7-ec72b3d2b148'),
(142, 40, '_customize_changeset_uuid', 'b1029338-02b0-4aa5-bdb7-ec72b3d2b148'),
(144, 41, '_customize_changeset_uuid', 'b1029338-02b0-4aa5-bdb7-ec72b3d2b148'),
(145, 45, '_menu_item_type', 'post_type'),
(146, 45, '_menu_item_menu_item_parent', '0'),
(147, 45, '_menu_item_object_id', '39'),
(148, 45, '_menu_item_object', 'page'),
(149, 45, '_menu_item_target', ''),
(150, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 45, '_menu_item_xfn', ''),
(152, 45, '_menu_item_url', ''),
(153, 46, '_menu_item_type', 'post_type'),
(154, 46, '_menu_item_menu_item_parent', '0'),
(155, 46, '_menu_item_object_id', '40'),
(156, 46, '_menu_item_object', 'page'),
(157, 46, '_menu_item_target', ''),
(158, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 46, '_menu_item_xfn', ''),
(160, 46, '_menu_item_url', ''),
(161, 47, '_menu_item_type', 'post_type'),
(162, 47, '_menu_item_menu_item_parent', '0'),
(163, 47, '_menu_item_object_id', '41'),
(164, 47, '_menu_item_object', 'page'),
(165, 47, '_menu_item_target', ''),
(166, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 47, '_menu_item_xfn', ''),
(168, 47, '_menu_item_url', ''),
(169, 38, '_wp_trash_meta_status', 'publish'),
(170, 38, '_wp_trash_meta_time', '1538376331'),
(171, 48, '_wp_trash_meta_status', 'publish'),
(172, 48, '_wp_trash_meta_time', '1538376394'),
(173, 49, '_wp_trash_meta_status', 'publish'),
(174, 49, '_wp_trash_meta_time', '1538376668'),
(175, 50, '_wp_trash_meta_status', 'publish'),
(176, 50, '_wp_trash_meta_time', '1538377356'),
(177, 8, '_wp_page_template', 'default'),
(178, 51, '_edit_lock', '1538387333:1'),
(179, 51, '_wp_trash_meta_status', 'publish'),
(180, 51, '_wp_trash_meta_time', '1538387333'),
(181, 52, '_wp_attached_file', '2018/09/cropped-soccerpinkball-3.jpg'),
(182, 52, '_wp_attachment_context', 'custom-header'),
(183, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:810;s:6:\"height\";i:208;s:4:\"file\";s:36:\"2018/09/cropped-soccerpinkball-3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-soccerpinkball-3-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-768x197.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-324x208.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-324x208.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-soccerpinkball-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:29;}'),
(184, 52, '_wp_attachment_custom_header_last_used_storefront', '1538387391'),
(185, 52, '_wp_attachment_is_custom_header', 'storefront'),
(186, 53, '_edit_lock', '1538387396:1'),
(187, 53, '_wp_trash_meta_status', 'publish'),
(188, 53, '_wp_trash_meta_time', '1538387444'),
(189, 29, '_wp_attachment_is_custom_background', 'storefront'),
(190, 54, '_edit_lock', '1538387696:1'),
(191, 54, '_wp_trash_meta_status', 'publish'),
(192, 54, '_wp_trash_meta_time', '1538387728'),
(193, 55, '_edit_lock', '1538390698:1'),
(194, 55, '_wp_trash_meta_status', 'publish'),
(195, 55, '_wp_trash_meta_time', '1538390701'),
(196, 8, '_edit_lock', '1538401566:1'),
(197, 8, '_edit_last', '1'),
(198, 58, '_wp_attached_file', '2018/10/benskinner.png'),
(199, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:501;s:6:\"height\";i:653;s:4:\"file\";s:22:\"2018/10/benskinner.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"benskinner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"benskinner-230x300.png\";s:5:\"width\";i:230;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"benskinner-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"benskinner-416x542.png\";s:5:\"width\";i:416;s:6:\"height\";i:542;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"benskinner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"benskinner-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"benskinner-416x542.png\";s:5:\"width\";i:416;s:6:\"height\";i:542;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"benskinner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 59, '_wp_attached_file', '2018/10/fodbold-blue.png'),
(201, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:640;s:4:\"file\";s:24:\"2018/10/fodbold-blue.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"fodbold-blue-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-416x427.png\";s:5:\"width\";i:416;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-416x427.png\";s:5:\"width\";i:416;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"fodbold-blue-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 60, '_wp_attached_file', '2018/10/fodboldpink.png'),
(203, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:631;s:4:\"file\";s:23:\"2018/10/fodboldpink.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"fodboldpink-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"fodboldpink-300x291.png\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"fodboldpink-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"fodboldpink-416x404.png\";s:5:\"width\";i:416;s:6:\"height\";i:404;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"fodboldpink-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"fodboldpink-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"fodboldpink-416x404.png\";s:5:\"width\";i:416;s:6:\"height\";i:404;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"fodboldpink-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 61, '_wp_attached_file', '2018/10/Hummel_QILvG2XL.jpg'),
(205, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:762;s:6:\"height\";i:1100;s:4:\"file\";s:27:\"2018/10/Hummel_QILvG2XL.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Hummel_QILvG2XL-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-416x601.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:601;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-416x601.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:601;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Hummel_QILvG2XL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 62, '_wp_attached_file', '2018/10/målmandshandske.png'),
(207, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:475;s:6:\"height\";i:644;s:4:\"file\";s:28:\"2018/10/målmandshandske.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"målmandshandske-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"målmandshandske-221x300.png\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"målmandshandske-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"målmandshandske-416x564.png\";s:5:\"width\";i:416;s:6:\"height\";i:564;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"målmandshandske-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"målmandshandske-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"målmandshandske-416x564.png\";s:5:\"width\";i:416;s:6:\"height\";i:564;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"målmandshandske-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 63, '_wp_attached_file', '2018/10/målmandstrøje.png'),
(209, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:556;s:6:\"height\";i:662;s:4:\"file\";s:27:\"2018/10/målmandstrøje.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-252x300.png\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"målmandstrøje-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-416x495.png\";s:5:\"width\";i:416;s:6:\"height\";i:495;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-416x495.png\";s:5:\"width\";i:416;s:6:\"height\";i:495;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"målmandstrøje-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 64, '_wp_attached_file', '2018/10/markeringssæt.png'),
(211, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:367;s:6:\"height\";i:625;s:4:\"file\";s:26:\"2018/10/markeringssæt.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"markeringssæt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"markeringssæt-176x300.png\";s:5:\"width\";i:176;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"markeringssæt-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"markeringssæt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"markeringssæt-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"markeringssæt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 65, '_wp_attached_file', '2018/10/mood.jpg'),
(213, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2000;s:4:\"file\";s:16:\"2018/10/mood.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"mood-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"mood-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"mood-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"mood-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"mood-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"mood-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"mood-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"mood-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"mood-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"mood-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(214, 66, '_wp_attached_file', '2018/10/overtræksvest.png'),
(215, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:521;s:6:\"height\";i:645;s:4:\"file\";s:26:\"2018/10/overtræksvest.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"overtræksvest-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"overtræksvest-242x300.png\";s:5:\"width\";i:242;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"overtræksvest-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"overtræksvest-416x515.png\";s:5:\"width\";i:416;s:6:\"height\";i:515;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"overtræksvest-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"overtræksvest-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"overtræksvest-416x515.png\";s:5:\"width\";i:416;s:6:\"height\";i:515;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"overtræksvest-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 67, '_wp_attached_file', '2018/10/pink-sort-adidas.png'),
(217, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:526;s:6:\"height\";i:654;s:4:\"file\";s:28:\"2018/10/pink-sort-adidas.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-241x300.png\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"pink-sort-adidas-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-416x517.png\";s:5:\"width\";i:416;s:6:\"height\";i:517;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-416x517.png\";s:5:\"width\";i:416;s:6:\"height\";i:517;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"pink-sort-adidas-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 68, '_wp_attached_file', '2018/10/shorts.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(219, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:588;s:6:\"height\";i:567;s:4:\"file\";s:18:\"2018/10/shorts.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"shorts-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"shorts-300x289.png\";s:5:\"width\";i:300;s:6:\"height\";i:289;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"shorts-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"shorts-416x401.png\";s:5:\"width\";i:416;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"shorts-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"shorts-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"shorts-416x401.png\";s:5:\"width\";i:416;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"shorts-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 69, '_wp_attached_file', '2018/10/strømper.png'),
(221, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:459;s:6:\"height\";i:656;s:4:\"file\";s:21:\"2018/10/strømper.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"strømper-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"strømper-210x300.png\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"strømper-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"strømper-416x595.png\";s:5:\"width\";i:416;s:6:\"height\";i:595;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"strømper-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"strømper-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"strømper-416x595.png\";s:5:\"width\";i:416;s:6:\"height\";i:595;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"strømper-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 77, '_edit_last', '1'),
(223, 77, 'wcps_bg_img', 'http://localhost/storefront/wp-content/plugins/woocommerce-products-slider/assets/global/images/bg/dimension.png'),
(224, 77, 'wcps_container_padding', ''),
(225, 77, 'wcps_container_bg_color', ''),
(226, 77, 'wcps_items_bg_color', ''),
(227, 77, 'wcps_items_padding', ''),
(228, 77, 'wcps_themes', 'flat'),
(229, 77, 'wcps_total_items', '20'),
(230, 77, 'wcps_items_price_format', 'full'),
(231, 77, 'wcps_column_number', '3'),
(232, 77, 'wcps_column_number_mobile', '1'),
(233, 77, 'wcps_column_number_tablet', '2'),
(234, 77, 'wcps_auto_play', 'true'),
(235, 77, 'wcps_auto_play_speed', '500'),
(236, 77, 'wcps_auto_play_timeout', '500'),
(237, 77, 'wcps_rewind', 'true'),
(238, 77, 'wcps_loop', 'true'),
(239, 77, 'wcps_center', 'false'),
(240, 77, 'wcps_stop_on_hover', 'true'),
(241, 77, 'wcps_slider_navigation', 'true'),
(242, 77, 'wcps_slider_navigation_position', 'topright'),
(243, 77, 'wcps_slide_speed', '1000'),
(244, 77, 'wcps_slider_pagination', 'true'),
(245, 77, 'wcps_pagination_slide_speed', '1000'),
(246, 77, 'wcps_slider_pagination_count', 'false'),
(247, 77, 'wcps_slider_pagination_bg', ''),
(248, 77, 'wcps_slider_pagination_text_color', ''),
(249, 77, 'wcps_slider_touch_drag', 'true'),
(250, 77, 'wcps_slider_mouse_drag', 'true'),
(251, 77, 'wcps_slider_rtl', 'false'),
(252, 77, 'wcps_slider_animateout', 'fadeOut'),
(253, 77, 'wcps_slider_animatein', 'flipInX'),
(254, 77, 'wcps_product_featured', 'no_check'),
(255, 77, 'wcps_product_on_sale', 'no'),
(256, 77, 'wcps_product_visibility', 'visible'),
(257, 77, 'wcps_items_cat_font_size', ''),
(258, 77, 'wcps_items_cat_text_align', 'left'),
(259, 77, 'wcps_items_cat_font_color', ''),
(260, 77, 'wcps_items_tag_font_size', ''),
(261, 77, 'wcps_items_tag_text_align', 'left'),
(262, 77, 'wcps_items_tag_font_color', ''),
(263, 77, 'wcps_items_sku_font_size', ''),
(264, 77, 'wcps_items_sku_text_align', 'left'),
(265, 77, 'wcps_items_sku_font_color', ''),
(266, 77, 'wcps_featured_icon_url', ''),
(267, 77, 'wcps_sale_icon_url', ''),
(268, 77, 'wcps_ratings_text_align', 'left'),
(269, 77, 'wcps_items_ratings_font_size', ''),
(270, 77, 'wcps_items_ratings_color', ''),
(271, 77, 'wcps_cart_style', 'default'),
(272, 77, 'wcps_cart_bg', ''),
(273, 77, 'wcps_cart_text_color', ''),
(274, 77, 'wcps_cart_text_align', 'left'),
(275, 77, 'wcps_grid_items', 'a:11:{s:5:\"thumb\";s:9:\"Thumbnail\";s:5:\"title\";s:5:\"Title\";s:7:\"excerpt\";s:7:\"Excerpt\";s:8:\"category\";s:8:\"Category\";s:3:\"tag\";s:4:\"Tags\";s:5:\"price\";s:5:\"Price\";s:6:\"rating\";s:6:\"Rating\";s:4:\"cart\";s:4:\"Cart\";s:4:\"sale\";s:4:\"Sale\";s:8:\"featured\";s:8:\"Featured\";s:3:\"sku\";s:3:\"SKU\";}'),
(276, 77, 'wcps_grid_items_hide', NULL),
(277, 77, 'wcps_items_title_color', ''),
(278, 77, 'wcps_items_title_font_size', ''),
(279, 77, 'wcps_items_title_text_align', 'left'),
(280, 77, 'wcps_items_excerpt_count', '20'),
(281, 77, 'wcps_items_excerpt_read_more', 'View product.'),
(282, 77, 'wcps_items_excerpt_text_align', 'left'),
(283, 77, 'wcps_items_excerpt_font_size', ''),
(284, 77, 'wcps_items_excerpt_font_color', ''),
(285, 77, 'wcps_items_price_color', ''),
(286, 77, 'wcps_items_price_font_size', ''),
(287, 77, 'wcps_items_price_text_align', 'left'),
(288, 77, 'wcps_items_thumb_link_to', 'product'),
(289, 77, 'wcps_items_thumb_size', 'large'),
(290, 77, 'wcps_items_thumb_max_hieght', ''),
(291, 77, 'wcps_items_thumb_zoom', 'no'),
(292, 77, 'wcps_items_empty_thumb', 'http://localhost/storefront/wp-content/plugins/woocommerce-products-slider/assets/front/images/no-thumb.png'),
(293, 77, 'wcps_query_order', 'DESC'),
(294, 77, 'wcps_query_orderby', 'date'),
(295, 77, 'wcps_hide_out_of_stock', 'no_check'),
(296, 77, 'wcps_ribbon_name', 'hot'),
(297, 77, 'wcps_ribbon_custom', ''),
(298, 77, 'wcps_items_custom_css', '.wcps-container #wcps-77{} .wcps-container #wcps-77 .wcps-items{} .wcps-container #wcps-77 .wcps-items-thumb{} .wcps-container #wcps-77 .items-info{}'),
(299, 77, '_edit_lock', '1538395490:1'),
(300, 78, '_wc_review_count', '0'),
(301, 78, '_wc_rating_count', 'a:0:{}'),
(302, 78, '_wc_average_rating', '0'),
(303, 78, '_edit_last', '1'),
(304, 78, '_edit_lock', '1538395559:1'),
(305, 78, '_thumbnail_id', '67'),
(306, 78, 'pv_commission_rate', ''),
(307, 78, '_sku', ''),
(308, 78, '_regular_price', '400'),
(309, 78, '_sale_price', '100'),
(310, 78, '_sale_price_dates_from', ''),
(311, 78, '_sale_price_dates_to', ''),
(312, 78, 'total_sales', '0'),
(313, 78, '_tax_status', 'taxable'),
(314, 78, '_tax_class', ''),
(315, 78, '_manage_stock', 'no'),
(316, 78, '_backorders', 'no'),
(317, 78, '_sold_individually', 'no'),
(318, 78, '_weight', ''),
(319, 78, '_length', ''),
(320, 78, '_width', ''),
(321, 78, '_height', ''),
(322, 78, '_upsell_ids', 'a:0:{}'),
(323, 78, '_crosssell_ids', 'a:0:{}'),
(324, 78, '_purchase_note', ''),
(325, 78, '_default_attributes', 'a:0:{}'),
(326, 78, '_virtual', 'no'),
(327, 78, '_downloadable', 'no'),
(328, 78, '_product_image_gallery', ''),
(329, 78, '_download_limit', '-1'),
(330, 78, '_download_expiry', '-1'),
(331, 78, '_stock', NULL),
(332, 78, '_stock_status', 'instock'),
(333, 78, '_product_version', '3.4.5'),
(334, 78, '_price', '100'),
(335, 79, '_wc_review_count', '0'),
(336, 79, '_wc_rating_count', 'a:0:{}'),
(337, 79, '_wc_average_rating', '0'),
(338, 79, '_edit_last', '1'),
(339, 79, '_edit_lock', '1538395754:1'),
(340, 79, 'pv_commission_rate', ''),
(341, 79, '_sku', ''),
(342, 79, '_regular_price', '199'),
(343, 79, '_sale_price', '50'),
(344, 79, '_sale_price_dates_from', ''),
(345, 79, '_sale_price_dates_to', ''),
(346, 79, 'total_sales', '0'),
(347, 79, '_tax_status', 'taxable'),
(348, 79, '_tax_class', ''),
(349, 79, '_manage_stock', 'no'),
(350, 79, '_backorders', 'no'),
(351, 79, '_sold_individually', 'no'),
(352, 79, '_weight', ''),
(353, 79, '_length', ''),
(354, 79, '_width', ''),
(355, 79, '_height', ''),
(356, 79, '_upsell_ids', 'a:0:{}'),
(357, 79, '_crosssell_ids', 'a:0:{}'),
(358, 79, '_purchase_note', ''),
(359, 79, '_default_attributes', 'a:0:{}'),
(360, 79, '_virtual', 'no'),
(361, 79, '_downloadable', 'no'),
(362, 79, '_product_image_gallery', ''),
(363, 79, '_download_limit', '-1'),
(364, 79, '_download_expiry', '-1'),
(365, 79, '_stock', NULL),
(366, 79, '_stock_status', 'instock'),
(367, 79, '_product_version', '3.4.5'),
(368, 79, '_price', '50'),
(369, 80, '_wc_review_count', '0'),
(370, 80, '_wc_rating_count', 'a:0:{}'),
(371, 80, '_wc_average_rating', '0'),
(372, 80, '_edit_last', '1'),
(373, 80, '_edit_lock', '1538395642:1'),
(374, 80, '_thumbnail_id', '68'),
(375, 80, 'pv_commission_rate', ''),
(376, 80, '_sku', ''),
(377, 80, '_regular_price', '250'),
(378, 80, '_sale_price', '75'),
(379, 80, '_sale_price_dates_from', ''),
(380, 80, '_sale_price_dates_to', ''),
(381, 80, 'total_sales', '0'),
(382, 80, '_tax_status', 'taxable'),
(383, 80, '_tax_class', ''),
(384, 80, '_manage_stock', 'no'),
(385, 80, '_backorders', 'no'),
(386, 80, '_sold_individually', 'no'),
(387, 80, '_weight', ''),
(388, 80, '_length', ''),
(389, 80, '_width', ''),
(390, 80, '_height', ''),
(391, 80, '_upsell_ids', 'a:0:{}'),
(392, 80, '_crosssell_ids', 'a:0:{}'),
(393, 80, '_purchase_note', ''),
(394, 80, '_default_attributes', 'a:0:{}'),
(395, 80, '_virtual', 'no'),
(396, 80, '_downloadable', 'no'),
(397, 80, '_product_image_gallery', ''),
(398, 80, '_download_limit', '-1'),
(399, 80, '_download_expiry', '-1'),
(400, 80, '_stock', NULL),
(401, 80, '_stock_status', 'instock'),
(402, 80, '_product_version', '3.4.5'),
(403, 80, '_price', '75'),
(404, 81, '_wc_review_count', '0'),
(405, 81, '_wc_rating_count', 'a:0:{}'),
(406, 81, '_wc_average_rating', '0'),
(407, 81, '_edit_last', '1'),
(408, 81, '_edit_lock', '1538410992:1'),
(409, 81, '_thumbnail_id', '69'),
(410, 81, 'pv_commission_rate', ''),
(411, 81, '_sku', ''),
(412, 81, '_regular_price', '99'),
(413, 81, '_sale_price', '25'),
(414, 81, '_sale_price_dates_from', ''),
(415, 81, '_sale_price_dates_to', ''),
(416, 81, 'total_sales', '0'),
(417, 81, '_tax_status', 'taxable'),
(418, 81, '_tax_class', ''),
(419, 81, '_manage_stock', 'no'),
(420, 81, '_backorders', 'no'),
(421, 81, '_sold_individually', 'no'),
(422, 81, '_weight', ''),
(423, 81, '_length', ''),
(424, 81, '_width', ''),
(425, 81, '_height', ''),
(426, 81, '_upsell_ids', 'a:0:{}'),
(427, 81, '_crosssell_ids', 'a:0:{}'),
(428, 81, '_purchase_note', ''),
(429, 81, '_default_attributes', 'a:0:{}'),
(430, 81, '_virtual', 'no'),
(431, 81, '_downloadable', 'no'),
(432, 81, '_product_image_gallery', ''),
(433, 81, '_download_limit', '-1'),
(434, 81, '_download_expiry', '-1'),
(435, 81, '_stock', NULL),
(436, 81, '_stock_status', 'instock'),
(437, 81, '_product_version', '3.4.5'),
(438, 81, '_price', '25'),
(439, 79, '_thumbnail_id', '58'),
(440, 83, '_wp_attached_file', '2018/10/header.png'),
(441, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:851;s:6:\"height\";i:197;s:4:\"file\";s:18:\"2018/10/header.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"header-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"header-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"header-768x178.png\";s:5:\"width\";i:768;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"header-324x197.png\";s:5:\"width\";i:324;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"header-416x96.png\";s:5:\"width\";i:416;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"header-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"header-324x197.png\";s:5:\"width\";i:324;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"header-416x96.png\";s:5:\"width\";i:416;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"header-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 83, '_wp_attachment_custom_header_last_used_storefront-child', '1538396034'),
(443, 83, '_wp_attachment_is_custom_header', 'storefront-child'),
(444, 84, '_wp_trash_meta_status', 'publish'),
(445, 84, '_wp_trash_meta_time', '1538396034');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-27 12:50:58', '2018-09-27 10:50:58', 'Velkommen til WordPress. Dette er dit første indlæg. Rediger eller slet det og begynd derefter at skrive!', 'Hej verden!', '', 'publish', 'open', 'open', '', 'hej-verden', '', '', '2018-09-27 12:50:58', '2018-09-27 10:50:58', '', 0, 'http://localhost/storefront/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-27 12:50:58', '2018-09-27 10:50:58', 'Dette er en eksempelside. Den er forskellig fra et blogindlæg, fordi den vil forblive det samme sted og være en del af dit websteds navigation (i de fleste temaer). De fleste vil lægge ud med en Om-side, der præsenterer dem til potentielle besøgende. Ordlyden kunne være noget i retning af:\n\n<blockquote>Hejsa! Jeg er cykelbud om dagen, prøver at blive skuespiller om aftenen og dette er min blog. Jeg bor i København, har en dejlig hund, der hedder King, og jeg kan lide Mojitos. (og at blive overrasket af regnvejr.)</blockquote>\n\n... eller noget i retning af:\n\n<blockquote>XYZ Dingenot fabrikken blev grundlagt i 1971 og har leveret kvalitetsdingenoter til offentligheden lige siden. Beliggende i Andeby, har 2.000 ansatte og bidrager med alverdens seje tiltag i lokalområdet.</blockquote>\n\nSom ny WordPress bruger, bør du gå til <a href=\"http://localhost/storefront/wp-admin/\">dit kontrolpanel</a> for at slette denne side og oprette nye sider til dit indhold. God fornøjelse!', 'Eksempelside', '', 'publish', 'closed', 'open', '', 'eksempel-side', '', '', '2018-09-27 12:50:58', '2018-09-27 10:50:58', '', 0, 'http://localhost/storefront/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-27 12:50:58', '2018-09-27 10:50:58', '<h2>Hvem er vi</h2><p>Vores webstedsadresse er: http://localhost/storefront.</p><h2>Hvilke personlige data vi indsamler og hvorfor vi indsamler det</h2><h3>Kommentarer</h3><p>Når besøgende skriver kommentarer på webstedet, indsamler vi de data, som vises i kommentarformularen, og også den besøgendes IP-adresse og browserens user agent string for at hjælpe med at opdage spam.</p><p>En anonymiseret streng som er oprettet ud fra din e-mailadresse (også kaldet et hash), kan leveres til Gravatar tjenesten for at se om du bruger denne. Gravatar tjenestens privatlivspolitik er tilgængelig her: https://automattic.com/privacy/. Efter godkendelse af din kommentar, vil dit profilbillede være synligt for offentligheden sammen med din kommentar.</p><h3>Medier</h3><p>Hvis du uploader billeder til webstedet, så bør du undlade at uploade billeder med indlejrede lokalitetsdata (EXIF GPS) inkluderet. Besøgende på webstedet kan downloade og udtrække alle lokalitetsdata fra billeder på webstedet.</p><h3>Kontaktformularer</h3><h3>Cookies</h3><p>Hvis du skriver en kommentar på vores websted, kan du vælge at gemme dit navn, e-mailadresse og websted i cookies. Disse er til din bekvemmeligehed, så du ikke skal udfylde dine oplysninger igen, når du skriver endnu en kommentar. Disse cookies vil holde i et år.</p><p>Hvis du har en konto, og du logger ind på dette websted, vil vi opsætte en midlertidig cookie for at afgøre om din browser accpeterer cookies. Denne cookie indeholder ikke nogen personlige data og fjernes, når du lukker browseren.</p><p>Når du logger ind, vil vi opsætte en række cookies og gemme din logininformation og dine valg af skærmvisning. Login cookies holder i to dage, og skærmvalg cookies holder i et år. Hvis du vælger &quot;Husk mig&quot;, vil dit login holde i to uger. Hvis du logger ud af din konto, vil login cookierne forsvinde.</p><p>Hvis du redigerer eller udgiver en artikel, vil en yderligere cookie blive gemt i din browser. Denne cookie indeholder ikke nogle personlige data og opgiver simpelthen indlægsID på den artikel, du lige har redigeret. Den udløber efter 1 dag.</p><h3>Indlejret indhold fra andre websteder</h3><p>Artikler på dette websted kan indeholde indlejret indhold (f.eks. videoer, billeder, artikler osv.). Indlejret indhold fra andre websteder opfører sig på nøjagtig samme måde, som hvis den besøgende har besøgt det andet websted.</p><p>Disse websteder indsamler måske data om dig, bruger cookies, indlejrer ekstra tredjeparts sporing, og overvåger din interaktion med dette indlejrede indhold, heriblandt at spore din interaktion med indlejret indhold, hvis du har en konto og en logget ind på det websted.</p><h3>Analytics</h3><h2>Hvem vi deler dine data med</h2><h2>Hvor længe vi gemmer dine data</h2><p>Hvis du skriver en kommentar, så bliver kommentarer og dens metadata bevaret på ubestemt tid. Dette er så vi kan genkende og godkende enhver opfølgende kommentar automatisk i stedet for at have dem i en moderationskø.</p><p>For brugere som opretter sig på vores websted (om nogen), gemmer vi også den personlige information de giver til deres brugerprofil. Alle brugere kan se, redigere, eller slette deres personlige information til enhver tid (med den undtagelse at de ikke kan ændre deres brugernavn). Webstedets administratorer kan også se og redigere den information.</p><h2>Hvilke rettigheder har du over dine data</h2><p>Hvis du har en konto på dette websted, eller har skrevet kommentarer, kan du bede om en eksporteret fil med de personlige data vi har liggende om dig, heriblandt alt data, du har givet os. Du kan også bede om, at vi sletter alle personlige data, vi har om dig. Dette indbefatter ikke nogen form for data, som vi er forpligtede til at gemme af administrative, lovmæssige eller sikkerhedsmæssige grunde.</p><h2>Hvor vi sender dine data</h2><p>Besøgendes kommentarer kan muligvis blive kontrolleret af en automatisk spam-genkendelse tjeneste.</p><h2>Din kontaktinformation</h2><h2>Yderligere information</h2><h3>Hvordan vi beskytter dine data</h3><h3>Hvilke databrudsprocedurer vi har på plads.</h3><h3>Hvilke tredjeparter vi modtager data fra</h3><h3>Hvilke automatiserede beslutninger og/eller profilering vi foretager med brugerdata.</h3><h3>Industriregulative krav om fremlæggelse</h3>', 'Privatlivspolitik', '', 'draft', 'closed', 'open', '', 'privatlivs-politik', '', '', '2018-09-27 12:50:58', '2018-09-27 10:50:58', '', 0, 'http://localhost/storefront/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-27 12:54:33', '0000-00-00 00:00:00', '', 'Automatisk kladde', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-27 12:54:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/storefront/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-27 13:43:06', '2018-09-27 11:43:06', '{\n    \"blogdescription\": {\n        \"value\": \"Find brugte fodboldst\\u00f8vler\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:43:06\"\n    },\n    \"blossom-pin::site_title_font\": {\n        \"value\": {\n            \"font-family\": \"Convergence\",\n            \"variant\": \"regular\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:43:06\"\n    },\n    \"blossom-pin::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:43:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9439f44-e0e9-495c-a821-3504cc4418b2', '', '', '2018-09-27 13:43:06', '2018-09-27 11:43:06', '', 0, 'http://localhost/storefront/2018/09/27/d9439f44-e0e9-495c-a821-3504cc4418b2/', 0, 'customize_changeset', '', 0),
(6, 1, '2018-09-27 13:49:17', '0000-00-00 00:00:00', '{\n    \"blossom-pin::primary_color\": {\n        \"value\": \"#46f900\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:44:16\"\n    },\n    \"blossom-pin::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:44:16\"\n    },\n    \"blossom-pin::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:46:16\"\n    },\n    \"blossom-pin::primary_font\": {\n        \"value\": \"Convergence\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:47:16\"\n    },\n    \"blossom-pin::secondary_font\": {\n        \"value\": \"Convergence\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:47:16\"\n    },\n    \"blossom-pin::font_size\": {\n        \"value\": \"18\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:47:16\"\n    },\n    \"blossom-pin::page_sidebar_layout\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:48:16\"\n    },\n    \"blossom-pin::post_sidebar_layout\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:48:16\"\n    },\n    \"blossom-pin::layout_style\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:48:16\"\n    },\n    \"blossom-pin::ed_post_update_date\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 11:49:17\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ada7acd8-f866-4866-922d-02b9090c2d1f', '', '', '2018-09-27 13:49:17', '2018-09-27 11:49:17', '', 0, 'http://localhost/storefront/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2018-09-27 13:45:59', '2018-09-27 11:45:59', '', 'soccergoal1', '', 'inherit', 'open', 'closed', '', 'soccergoal1', '', '', '2018-09-27 13:45:59', '2018-09-27 11:45:59', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/soccergoal1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-09-27 13:52:24', '2018-09-27 11:52:24', '', 'ALT i FODBOLDUDSTYR', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-10-01 14:16:39', '2018-10-01 12:16:39', '', 0, 'http://localhost/storefront/shop/', 0, 'page', '', 0),
(9, 1, '2018-09-27 13:52:24', '2018-09-27 11:52:24', '[woocommerce_cart]', 'Kurv', '', 'publish', 'closed', 'closed', '', 'kurv', '', '', '2018-09-27 13:52:24', '2018-09-27 11:52:24', '', 0, 'http://localhost/storefront/kurv/', 0, 'page', '', 0),
(10, 1, '2018-09-27 13:52:24', '2018-09-27 11:52:24', '[woocommerce_checkout]', 'Kasse', '', 'publish', 'closed', 'closed', '', 'kasse', '', '', '2018-09-27 13:52:24', '2018-09-27 11:52:24', '', 0, 'http://localhost/storefront/kasse/', 0, 'page', '', 0),
(11, 1, '2018-09-27 13:52:24', '2018-09-27 11:52:24', '[woocommerce_my_account]', 'Min Konto', '', 'publish', 'closed', 'closed', '', 'min-konto', '', '', '2018-09-27 13:52:24', '2018-09-27 11:52:24', '', 0, 'http://localhost/storefront/min-konto/', 0, 'page', '', 0),
(12, 1, '2018-09-27 14:01:53', '2018-09-27 12:01:53', '[wcv_vendor_dashboard]', 'Vendor Dashboard', '', 'publish', 'closed', 'closed', '', 'vendor_dashboard', '', '', '2018-09-27 14:01:53', '2018-09-27 12:01:53', '', 0, 'http://localhost/storefront/vendor_dashboard/', 0, 'page', '', 0),
(13, 1, '2018-09-27 14:01:53', '2018-09-27 12:01:53', '[wcv_vendorslist]', 'Vendors', '', 'publish', 'closed', 'closed', '', 'vendors', '', '', '2018-09-27 14:01:53', '2018-09-27 12:01:53', '', 0, 'http://localhost/storefront/vendors/', 0, 'page', '', 0),
(14, 1, '2018-09-27 14:01:53', '2018-09-27 12:01:53', '[wcv_shop_settings]', 'Shop Settings', '', 'publish', 'closed', 'closed', '', 'shop_settings', '', '', '2018-09-27 14:01:53', '2018-09-27 12:01:53', '', 12, 'http://localhost/storefront/vendor_dashboard/shop_settings/', 0, 'page', '', 0),
(15, 1, '2018-09-27 14:01:53', '2018-09-27 12:01:53', '[wcv_orders]', 'Orders', '', 'publish', 'closed', 'closed', '', 'product_orders', '', '', '2018-09-27 14:01:53', '2018-09-27 12:01:53', '', 12, 'http://localhost/storefront/vendor_dashboard/product_orders/', 0, 'page', '', 0),
(16, 1, '2018-09-27 14:17:03', '2018-09-27 12:17:03', '{\n    \"blossom-pin::ed_banner_section\": {\n        \"value\": \"slider_banner\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:17:03\"\n    },\n    \"blossom-pin::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:08:20\"\n    },\n    \"blossom-pin::slider_type\": {\n        \"value\": \"latest_posts\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:17:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f4aa4c0-0e04-4039-85ec-0426a8c9e1a0', '', '', '2018-09-27 14:17:03', '2018-09-27 12:17:03', '', 0, 'http://localhost/storefront/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-09-27 14:17:40', '2018-09-27 12:17:40', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:17:24\"\n    },\n    \"page_on_front\": {\n        \"value\": \"13\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:17:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '00d5f4be-9d09-4bcb-9d10-27c443a1e966', '', '', '2018-09-27 14:17:40', '2018-09-27 12:17:40', '', 0, 'http://localhost/storefront/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-09-27 14:19:12', '2018-09-27 12:19:12', '{\n    \"woocommerce_default_catalog_orderby\": {\n        \"value\": \"date\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:19:12\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"50\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:19:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '31bcd9b8-48bd-4e28-8bf6-8d3fc3396e53', '', '', '2018-09-27 14:19:12', '2018-09-27 12:19:12', '', 0, 'http://localhost/storefront/2018/09/27/31bcd9b8-48bd-4e28-8bf6-8d3fc3396e53/', 0, 'customize_changeset', '', 0),
(19, 1, '2018-09-27 14:22:36', '2018-09-27 12:22:36', '', 'Fodboldstøvler pige str 33', 'Grøn/sorte fodboldstøvler, pige, str 33 med guld mønster på siden. Kun brugt få gange.', 'publish', 'open', 'closed', '', 'fodboldstoevler-pige-str-33', '', '', '2018-09-27 15:39:42', '2018-09-27 13:39:42', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2018-09-27 14:20:37', '2018-09-27 12:20:37', '', 'nike_superfly_6_academy_cr7_jr_mg_1_1001574249', '', 'inherit', 'open', 'closed', '', 'nike_superfly_6_academy_cr7_jr_mg_1_1001574249', '', '', '2018-09-27 14:20:37', '2018-09-27 12:20:37', '', 19, 'http://localhost/storefront/wp-content/uploads/2018/09/nike_superfly_6_academy_cr7_jr_mg_1_1001574249.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-09-27 15:32:27', '2018-09-27 13:32:27', '<img class=\"alignnone size-medium wp-image-20\" src=\"http://localhost/storefront/wp-content/uploads/2018/09/nike_superfly_6_academy_cr7_jr_mg_1_1001574249-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'Fodboldstøvler pige str 33', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-09-27 15:32:27', '2018-09-27 13:32:27', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=19', 0, 'product', '', 0),
(22, 1, '2018-09-27 14:38:55', '2018-09-27 12:38:55', '{\n    \"blossom-pin::page_sidebar_layout\": {\n        \"value\": \"centered\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:38:55\"\n    },\n    \"blossom-pin::post_sidebar_layout\": {\n        \"value\": \"centered\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:38:55\"\n    },\n    \"blossom-pin::layout_style\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:38:55\"\n    },\n    \"blossom-pin::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:38:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6d4786a1-914d-4ff8-88e3-8098442ff3a3', '', '', '2018-09-27 14:38:55', '2018-09-27 12:38:55', '', 0, 'http://localhost/storefront/2018/09/27/6d4786a1-914d-4ff8-88e3-8098442ff3a3/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-09-27 14:40:12', '0000-00-00 00:00:00', '{\n    \"blossom-pin::no_of_slides\": {\n        \"value\": \"7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4dc53734-7778-4bf5-8495-bbde1d891c54', '', '', '2018-09-27 14:40:12', '2018-09-27 12:40:12', '', 0, 'http://localhost/storefront/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2018-09-27 14:42:41', '2018-09-27 12:42:41', '', 'cropped-soccergoal1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-soccergoal1-jpg', '', '', '2018-09-27 14:42:41', '2018-09-27 12:42:41', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-09-27 14:43:05', '2018-09-27 12:43:05', '{\n    \"blossom-pin::header_image\": {\n        \"value\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:43:01\"\n    },\n    \"blossom-pin::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\",\n            \"thumbnail_url\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccergoal1.jpg\",\n            \"timestamp\": 1538052162423,\n            \"attachment_id\": 24,\n            \"width\": 1903,\n            \"height\": 660\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:43:01\"\n    },\n    \"blossom-pin::ed_banner_section\": {\n        \"value\": \"no_banner\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:43:01\"\n    },\n    \"blossom-pin::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:43:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a612942-24f2-49e6-be8a-15c6862f22b4', '', '', '2018-09-27 14:43:05', '2018-09-27 12:43:05', '', 0, 'http://localhost/storefront/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2018-09-27 15:24:18', '2018-09-27 13:24:18', '{\n    \"sidebars_widgets[envo-multipurpose-right-sidebar]\": {\n        \"value\": [\n            \"search-2\",\n            \"woocommerce_price_filter-3\",\n            \"envo-multipurpose-content-widget-woocommerce-products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:21:58\"\n    },\n    \"widget_woocommerce_price_filter[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:20:58\"\n    },\n    \"widget_envo-multipurpose-content-widget-woocommerce-products[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOTp7czo1OiJ0aXRsZSI7czo5OiJQcm9kdWt0ZXIiO3M6ODoic3VidGl0bGUiO3M6MDoiIjtzOjEzOiJoZWFkaW5nX3N0eWxlIjtzOjEzOiJ0aXRsZS1zdHlsZS0xIjtzOjE2OiJiYWNrZ3JvdW5kX2NvbG9yIjtzOjc6IiNmZmZmZmYiO3M6MTA6InRleHRfY29sb3IiO3M6MDoiIjtzOjU6ImxpbWl0IjtpOjQ7czo3OiJjb2x1bW5zIjtzOjE6IjQiO3M6Nzoib3JkZXJieSI7czo0OiJkYXRlIjtzOjg6InBvc3RfaWRzIjtzOjA6IiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6NToib3JkZXIiO3M6MzoiYXNjIjtzOjEyOiJzZWxsaW5nX3R5cGUiO3M6MDoiIjtzOjExOiJidXR0b25fdGV4dCI7czowOiIiO3M6MTE6ImJ1dHRvbl9saW5rIjtzOjA6IiI7czoxMjoiYnV0dG9uX3N0eWxlIjtzOjc6ImRlZmF1bHQiO3M6MTI6ImJ1dHRvbl9jb2xvciI7czo3OiIjODFkNzQyIjtzOjExOiJwYWRkaW5nX3RvcCI7aTo0MDtzOjE0OiJwYWRkaW5nX2JvdHRvbSI7aTo0MDtzOjEzOiJtYXJnaW5fYm90dG9tIjtpOjA7fQ==\",\n            \"title\": \"Produkter\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8244517d074bfbf5f42fb223430ba11b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:23:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c58b981-e14e-4574-ad1a-1bcd6e754b86', '', '', '2018-09-27 15:24:18', '2018-09-27 13:24:18', '', 0, 'http://localhost/storefront/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2018-09-27 15:38:07', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[envo-multipurpose-right-sidebar]\": {\n        \"value\": [\n            \"search-2\",\n            \"woocommerce_products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:38:07\"\n    },\n    \"widget_woocommerce_products[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjIwOiJGaW5kIGZvZGJvbGRzdMO4dmxlciI7czo2OiJudW1iZXIiO2k6MTA7czo0OiJzaG93IjtzOjA6IiI7czo3OiJvcmRlcmJ5IjtzOjQ6ImRhdGUiO3M6NToib3JkZXIiO3M6MzoiYXNjIjtzOjk6ImhpZGVfZnJlZSI7aTowO3M6MTE6InNob3dfaGlkZGVuIjtpOjA7fQ==\",\n            \"title\": \"Find fodboldst\\u00f8vler\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c113169372bd22400b6262a13b4fbd3b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:38:07\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ee04bc24-dfbf-4773-9dc1-c66e9900b734', '', '', '2018-09-27 15:38:07', '2018-09-27 13:38:07', '', 0, 'http://localhost/storefront/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2018-09-27 15:39:05', '0000-00-00 00:00:00', '', 'Automatisk kladde', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-27 15:39:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/storefront/?p=28', 0, 'post', '', 0),
(29, 1, '2018-09-27 15:42:21', '2018-09-27 13:42:21', '', 'soccerpinkball', '', 'inherit', 'open', 'closed', '', 'soccerpinkball', '', '', '2018-09-27 15:42:21', '2018-09-27 13:42:21', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/soccerpinkball.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-09-27 15:42:44', '2018-09-27 13:42:44', '', 'cropped-soccerpinkball.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-soccerpinkball-jpg', '', '', '2018-09-27 15:42:44', '2018-09-27 13:42:44', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-09-27 15:42:52', '2018-09-27 13:42:52', '{\n    \"envo-multipurpose::header_image\": {\n        \"value\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:42:52\"\n    },\n    \"envo-multipurpose::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball.jpg\",\n            \"thumbnail_url\": \"http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball.jpg\",\n            \"timestamp\": 1538055764515,\n            \"attachment_id\": 30,\n            \"width\": 2000,\n            \"height\": 200\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:42:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b16d3602-2486-497e-b6f9-836940e9d78c', '', '', '2018-09-27 15:42:52', '2018-09-27 13:42:52', '', 0, 'http://localhost/storefront/2018/09/27/b16d3602-2486-497e-b6f9-836940e9d78c/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-09-27 15:44:11', '2018-09-27 13:44:11', '', 'Fodboldstøvler pige str 35', 'Grøn/sort pige fodboldstøvle', 'publish', 'open', 'closed', '', 'fodboldstoevler-pige-str-35', '', '', '2018-10-01 09:06:37', '2018-10-01 07:06:37', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2018-09-27 15:43:49', '2018-09-27 13:43:49', '', 'adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584', '', 'inherit', 'open', 'closed', '', 'adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584', '', '', '2018-09-27 15:43:49', '2018-09-27 13:43:49', '', 32, 'http://localhost/storefront/wp-content/uploads/2018/09/adidas-x173fgag-borndeadlystrike-aergrnuniinkhiregr-1583427-v1-539584.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-09-27 15:47:00', '2018-09-27 13:47:00', '{\n    \"envo-multipurpose::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:47:00\"\n    },\n    \"envo-multipurpose::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:47:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '30ceaf5f-92ee-4399-84fe-257af29b72b5', '', '', '2018-09-27 15:47:00', '2018-09-27 13:47:00', '', 0, 'http://localhost/storefront/2018/09/27/30ceaf5f-92ee-4399-84fe-257af29b72b5/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-09-27 15:52:45', '2018-09-27 13:52:45', 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball-1.jpg', 'cropped-soccerpinkball-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-soccerpinkball-1-jpg', '', '', '2018-09-27 15:52:45', '2018-09-27 13:52:45', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-09-27 15:53:29', '2018-09-27 13:53:29', 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball-2.jpg', 'cropped-soccerpinkball-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-soccerpinkball-2-jpg', '', '', '2018-09-27 15:53:29', '2018-09-27 13:53:29', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-09-27 15:54:20', '2018-09-27 13:54:20', '{\n    \"site_icon\": {\n        \"value\": 36,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:53:46\"\n    },\n    \"envo-multipurpose::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 13:53:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89cae80a-c71b-482d-af50-af4a715670bf', '', '', '2018-09-27 15:54:20', '2018-09-27 13:54:20', '', 0, 'http://localhost/storefront/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '{\n    \"envo-multipurpose::nav_menu_locations[main_menu]\": {\n        \"value\": -594270585,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:42:43\"\n    },\n    \"nav_menu[-594270585]\": {\n        \"value\": {\n            \"name\": \"Soccer\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:42:43\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            39,\n            40,\n            41\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:45:31\"\n    },\n    \"nav_menu_item[-1141440435]\": {\n        \"value\": {\n            \"object_id\": 39,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"FAVORITTER\",\n            \"url\": \"http://localhost/storefront/?page_id=39\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAVORITTER\",\n            \"nav_menu_term_id\": -594270585,\n            \"_invalid\": false,\n            \"type_label\": \"Side\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:43:43\"\n    },\n    \"nav_menu_item[-1729778155]\": {\n        \"value\": {\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"N\\u00c6ROMR\\u00c5DE\",\n            \"url\": \"http://localhost/storefront/?page_id=40\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"N\\u00c6ROMR\\u00c5DE\",\n            \"nav_menu_term_id\": -594270585,\n            \"_invalid\": false,\n            \"type_label\": \"Side\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:43:43\"\n    },\n    \"nav_menu_item[-1667730816]\": {\n        \"value\": {\n            \"object_id\": 41,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"MIN SHOP\",\n            \"url\": \"http://localhost/storefront/?page_id=41\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"MIN SHOP\",\n            \"nav_menu_term_id\": -594270585,\n            \"_invalid\": false,\n            \"type_label\": \"Side\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:45:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b1029338-02b0-4aa5-bdb7-ec72b3d2b148', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'FAVORITTER', '', 'publish', 'closed', 'closed', '', 'favoritter', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'NÆROMRÅDE', '', 'publish', 'closed', 'closed', '', 'naeromraade', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'MIN SHOP', '', 'publish', 'closed', 'closed', '', 'min-shop', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'FAVORITTER', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 39, 'http://localhost/storefront/2018/10/01/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'NÆROMRÅDE', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 40, 'http://localhost/storefront/2018/10/01/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 'MIN SHOP', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 41, 'http://localhost/storefront/2018/10/01/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/2018/10/01/45/', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/2018/10/01/46/', 2, 'nav_menu_item', '', 0),
(47, 1, '2018-10-01 08:45:31', '2018-10-01 06:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-10-01 08:45:31', '2018-10-01 06:45:31', '', 0, 'http://localhost/storefront/2018/10/01/47/', 3, 'nav_menu_item', '', 0),
(48, 1, '2018-10-01 08:46:34', '2018-10-01 06:46:34', '{\n    \"widget_woocommerce_products[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjEwOiJGSU5EIFZBUkVSIjtzOjY6Im51bWJlciI7aToxMDtzOjQ6InNob3ciO3M6MDoiIjtzOjc6Im9yZGVyYnkiO3M6NDoiZGF0ZSI7czo1OiJvcmRlciI7czozOiJhc2MiO3M6OToiaGlkZV9mcmVlIjtpOjA7czoxMToic2hvd19oaWRkZW4iO2k6MDt9\",\n            \"title\": \"FIND VARER\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2f678a234d19155a3d19e3dd30eebaf0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:46:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '482c6cc5-4356-4b45-901c-19e0b99b1b08', '', '', '2018-10-01 08:46:34', '2018-10-01 06:46:34', '', 0, 'http://localhost/storefront/2018/10/01/482c6cc5-4356-4b45-901c-19e0b99b1b08/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-10-01 08:51:08', '2018-10-01 06:51:08', '{\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 06:51:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c1f6ab7-1175-409a-b70b-f6bb3ef9da34', '', '', '2018-10-01 08:51:08', '2018-10-01 06:51:08', '', 0, 'http://localhost/storefront/2018/10/01/0c1f6ab7-1175-409a-b70b-f6bb3ef9da34/', 0, 'customize_changeset', '', 0),
(50, 1, '2018-10-01 09:02:36', '2018-10-01 07:02:36', '{\n    \"sidebars_widgets[envo-multipurpose-right-sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 07:02:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f9621ffb-9857-44db-bb54-a43ec16904a9', '', '', '2018-10-01 09:02:36', '2018-10-01 07:02:36', '', 0, 'http://localhost/storefront/2018/10/01/f9621ffb-9857-44db-bb54-a43ec16904a9/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-10-01 11:48:53', '2018-10-01 09:48:53', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:45:56\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:45:56\"\n    },\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"1:1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:47:56\"\n    },\n    \"woocommerce_thumbnail_cropping_custom_width\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:47:56\"\n    },\n    \"woocommerce_thumbnail_cropping_custom_height\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:47:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34c89788-cfef-4dd0-b7b5-763b6aefa442', '', '', '2018-10-01 11:48:53', '2018-10-01 09:48:53', '', 0, 'http://localhost/storefront/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2018-10-01 11:49:47', '2018-10-01 09:49:47', '', 'cropped-soccerpinkball-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-soccerpinkball-3-jpg', '', '', '2018-10-01 11:49:47', '2018-10-01 09:49:47', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/09/cropped-soccerpinkball-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-10-01 11:50:44', '2018-10-01 09:50:44', '{\n    \"blogdescription\": {\n        \"value\": \"Find brugt fodboldudstyr\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:49:56\"\n    },\n    \"storefront::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:50:44\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:50:44\"\n    },\n    \"storefront::storefront_header_link_color\": {\n        \"value\": \"#6fd626\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:50:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6aa3a217-8589-407a-ba39-74cd44d09614', '', '', '2018-10-01 11:50:44', '2018-10-01 09:50:44', '', 0, 'http://localhost/storefront/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2018-10-01 11:55:28', '2018-10-01 09:55:28', '{\n    \"storefront::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:52:56\"\n    },\n    \"storefront::storefront_footer_background_color\": {\n        \"value\": \"#6fd626\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:51:56\"\n    },\n    \"storefront::storefront_footer_text_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:51:56\"\n    },\n    \"storefront::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:52:56\"\n    },\n    \"storefront::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:52:56\"\n    },\n    \"storefront::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:52:56\"\n    },\n    \"storefront::storefront_button_background_color\": {\n        \"value\": \"#6fd626\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:53:56\"\n    },\n    \"storefront::storefront_button_alt_background_color\": {\n        \"value\": \"#6fd626\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:53:56\"\n    },\n    \"storefront::storefront_product_pagination\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:54:56\"\n    },\n    \"storefront::storefront_sticky_add_to_cart\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:54:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a9dacae-4ad8-4a88-a5a8-d1363f03d027', '', '', '2018-10-01 11:55:28', '2018-10-01 09:55:28', '', 0, 'http://localhost/storefront/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2018-10-01 12:45:01', '2018-10-01 10:45:01', '{\n    \"storefront-child::storefront_heading_color\": {\n        \"value\": \"#73d62c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:43:59\"\n    },\n    \"storefront-child::storefront_header_text_color\": {\n        \"value\": \"#404040\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:43:59\"\n    },\n    \"storefront-child::storefront_footer_background_color\": {\n        \"value\": \"#73d62c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:43:59\"\n    },\n    \"storefront-child::storefront_header_link_color\": {\n        \"value\": \"#73d62c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:44:58\"\n    },\n    \"storefront-child::storefront_footer_heading_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:44:58\"\n    },\n    \"storefront-child::storefront_footer_text_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 10:44:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b11382dc-e03e-4db0-b636-38e336342870', '', '', '2018-10-01 12:45:01', '2018-10-01 10:45:01', '', 0, 'http://localhost/storefront/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2018-10-01 13:03:44', '2018-10-01 11:03:44', '', 'MARKEDSPLADS FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:03:44', '2018-10-01 11:03:44', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-10-01 13:26:58', '2018-10-01 11:26:58', '<img class=\"alignleft wp-image-58 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-68 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-62 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignnone wp-image-59\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-293x300.png\" alt=\"\" width=\"122\" height=\"125\" /><img class=\"alignnone wp-image-63\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-252x300.png\" alt=\"\" width=\"102\" height=\"121\" />', 'ALT FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-10-01 13:26:58', '2018-10-01 11:26:58', '', 8, 'http://localhost/storefront/2018/10/01/8-autosave-v1/', 0, 'revision', '', 0),
(58, 1, '2018-10-01 13:05:27', '2018-10-01 11:05:27', '', 'benskinner', '', 'inherit', 'open', 'closed', '', 'benskinner', '', '', '2018-10-01 13:05:27', '2018-10-01 11:05:27', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/benskinner.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2018-10-01 13:05:31', '2018-10-01 11:05:31', '', 'fodbold blue', '', 'inherit', 'open', 'closed', '', 'fodbold-blue', '', '', '2018-10-01 13:05:31', '2018-10-01 11:05:31', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-10-01 13:05:35', '2018-10-01 11:05:35', '', 'fodboldpink', '', 'inherit', 'open', 'closed', '', 'fodboldpink', '', '', '2018-10-01 13:05:35', '2018-10-01 11:05:35', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/fodboldpink.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2018-10-01 13:05:39', '2018-10-01 11:05:39', '', 'Hummel_QILvG2XL', '', 'inherit', 'open', 'closed', '', 'hummel_qilvg2xl', '', '', '2018-10-01 13:05:39', '2018-10-01 11:05:39', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/Hummel_QILvG2XL.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-10-01 13:05:42', '2018-10-01 11:05:42', '', 'målmandshandske', '', 'inherit', 'open', 'closed', '', 'maalmandshandske', '', '', '2018-10-01 13:05:42', '2018-10-01 11:05:42', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2018-10-01 13:05:46', '2018-10-01 11:05:46', '', 'målmandstrøje', '', 'inherit', 'open', 'closed', '', 'maalmandstroeje', '', '', '2018-10-01 13:05:46', '2018-10-01 11:05:46', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2018-10-01 13:05:51', '2018-10-01 11:05:51', '', 'markeringssæt', '', 'inherit', 'open', 'closed', '', 'markeringssaet', '', '', '2018-10-01 13:05:51', '2018-10-01 11:05:51', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/markeringssæt.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2018-10-01 13:05:54', '2018-10-01 11:05:54', '', 'mood', '', 'inherit', 'open', 'closed', '', 'mood', '', '', '2018-10-01 13:05:54', '2018-10-01 11:05:54', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/mood.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-10-01 13:05:57', '2018-10-01 11:05:57', '', 'overtræksvest', '', 'inherit', 'open', 'closed', '', 'overtraeksvest', '', '', '2018-10-01 13:05:57', '2018-10-01 11:05:57', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/overtræksvest.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2018-10-01 13:06:03', '2018-10-01 11:06:03', '', 'pink sort adidas', '', 'inherit', 'open', 'closed', '', 'pink-sort-adidas', '', '', '2018-10-01 13:06:03', '2018-10-01 11:06:03', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/pink-sort-adidas.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-10-01 13:06:08', '2018-10-01 11:06:08', '', 'shorts', '', 'inherit', 'open', 'closed', '', 'shorts', '', '', '2018-10-01 13:06:08', '2018-10-01 11:06:08', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/shorts.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2018-10-01 13:06:13', '2018-10-01 11:06:13', '', 'strømper', '', 'inherit', 'open', 'closed', '', 'stroemper', '', '', '2018-10-01 13:06:13', '2018-10-01 11:06:13', '', 8, 'http://localhost/storefront/wp-content/uploads/2018/10/strømper.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2018-10-01 13:08:33', '2018-10-01 11:08:33', '<img class=\"alignnone size-medium wp-image-65\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/mood-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'ALT FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:08:33', '2018-10-01 11:08:33', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-10-01 13:24:42', '2018-10-01 11:24:42', '<img class=\"alignnone size-medium wp-image-58\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-230x300.png\" alt=\"\" width=\"230\" height=\"300\" /> <img class=\"alignnone size-medium wp-image-68\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-300x289.png\" alt=\"\" width=\"300\" height=\"289\" /> <img class=\"alignnone size-medium wp-image-62\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-221x300.png\" alt=\"\" width=\"221\" height=\"300\" /><img class=\"alignnone size-medium wp-image-61\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/Hummel_QILvG2XL-208x300.jpg\" alt=\"\" width=\"208\" height=\"300\" /><img class=\"alignnone size-medium wp-image-59\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-293x300.png\" alt=\"\" width=\"293\" height=\"300\" />', 'ALT FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:24:42', '2018-10-01 11:24:42', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-10-01 13:25:41', '2018-10-01 11:25:41', '<img class=\"alignnone  wp-image-58\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-230x300.png\" alt=\"\" width=\"99\" height=\"129\" /> <img class=\"alignnone  wp-image-68\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-300x289.png\" alt=\"\" width=\"128\" height=\"123\" /> <img class=\"alignnone  wp-image-62\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-221x300.png\" alt=\"\" width=\"88\" height=\"119\" /><img class=\"alignnone  wp-image-59\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-293x300.png\" alt=\"\" width=\"122\" height=\"125\" /><img class=\"alignnone  wp-image-63\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-252x300.png\" alt=\"\" width=\"102\" height=\"121\" />', 'ALT FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:25:41', '2018-10-01 11:25:41', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2018-10-01 13:27:10', '2018-10-01 11:27:10', '<img class=\"alignleft wp-image-58 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-68 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-62 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-59 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-63 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-150x150.png\" alt=\"\" width=\"150\" height=\"150\" />', 'ALT FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:27:10', '2018-10-01 11:27:10', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-10-01 13:27:34', '2018-10-01 11:27:34', '<img class=\"alignleft wp-image-58 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-68 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-62 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-59 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-63 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-150x150.png\" alt=\"\" width=\"150\" height=\"150\" />', 'ALT i FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 13:27:34', '2018-10-01 11:27:34', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-10-01 14:04:15', '0000-00-00 00:00:00', '', 'Automatisk kladde', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 14:04:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/storefront/?post_type=wcps&p=75', 0, 'wcps', '', 0),
(76, 1, '2018-10-01 14:05:00', '2018-10-01 12:05:00', '[wcps id=\"75\"]\r\n\r\n<img class=\"alignleft wp-image-58 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-68 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-62 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-59 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-63 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-150x150.png\" alt=\"\" width=\"150\" height=\"150\" />', 'ALT i FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 14:05:00', '2018-10-01 12:05:00', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-10-01 14:07:05', '2018-10-01 12:07:05', '', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2018-10-01 14:07:05', '2018-10-01 12:07:05', '', 0, 'http://localhost/storefront/?post_type=wcps&#038;p=77', 0, 'wcps', '', 0),
(78, 1, '2018-10-01 14:08:02', '2018-10-01 12:08:02', '', 'Fodboldtrøje pige str. 140', '', 'publish', 'open', 'closed', '', 'foboldtroeje-pige-str-140', '', '', '2018-10-01 14:08:14', '2018-10-01 12:08:14', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2018-10-01 14:08:46', '2018-10-01 12:08:46', '', 'Benskinner', '', 'publish', 'open', 'closed', '', 'benskinner', '', '', '2018-10-01 14:11:31', '2018-10-01 12:11:31', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2018-10-01 14:09:35', '2018-10-01 12:09:35', '', 'Fodboldshorts', '', 'publish', 'open', 'closed', '', 'fodboldshorts', '', '', '2018-10-01 14:09:35', '2018-10-01 12:09:35', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2018-10-01 14:10:17', '2018-10-01 12:10:17', '', 'Fodboldstrømper str 140', '', 'publish', 'open', 'closed', '', 'fodboldstroemper-sttr-140', '', '', '2018-10-01 14:21:58', '2018-10-01 12:21:58', '', 0, 'http://localhost/storefront/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2018-10-01 14:12:56', '2018-10-01 12:12:56', '\r\n<img class=\"alignleft wp-image-58 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/benskinner-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-68 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/shorts-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /> <img class=\"alignleft wp-image-62 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandshandske-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-59 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/fodbold-blue-150x150.png\" alt=\"\" width=\"150\" height=\"150\" /><img class=\"alignleft wp-image-63 size-thumbnail\" src=\"http://localhost/storefront/wp-content/uploads/2018/10/målmandstrøje-150x150.png\" alt=\"\" width=\"150\" height=\"150\" />', 'ALT i FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 14:12:56', '2018-10-01 12:12:56', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-10-01 14:13:19', '2018-10-01 12:13:19', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-10-01 14:13:19', '2018-10-01 12:13:19', '', 0, 'http://localhost/storefront/wp-content/uploads/2018/10/header.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2018-10-01 14:13:54', '2018-10-01 12:13:54', '{\n    \"storefront-child::header_image\": {\n        \"value\": \"http://localhost/storefront/wp-content/uploads/2018/10/header.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 12:13:54\"\n    },\n    \"storefront-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/storefront/wp-content/uploads/2018/10/header.png\",\n            \"thumbnail_url\": \"http://localhost/storefront/wp-content/uploads/2018/10/header.png\",\n            \"timestamp\": 1538396007817,\n            \"attachment_id\": 83,\n            \"width\": 851,\n            \"height\": 197\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 12:13:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93e96e05-22b7-4b13-964d-3b6ea491a071', '', '', '2018-10-01 14:13:54', '2018-10-01 12:13:54', '', 0, 'http://localhost/storefront/2018/10/01/93e96e05-22b7-4b13-964d-3b6ea491a071/', 0, 'customize_changeset', '', 0),
(85, 1, '2018-10-01 14:16:39', '2018-10-01 12:16:39', '', 'ALT i FODBOLDUDSTYR', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-01 14:16:39', '2018-10-01 12:16:39', '', 8, 'http://localhost/storefront/2018/10/01/8-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pv_commission`
--

CREATE TABLE `wp_pv_commission` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `total_due` decimal(20,2) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `total_shipping` decimal(20,2) NOT NULL,
  `tax` decimal(20,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'due',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 19, 'product_count_product_cat', '1'),
(7, 20, 'order', '0'),
(8, 20, 'product_count_product_cat', '1'),
(9, 16, 'product_count_product_cat', '4'),
(10, 18, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Ikke-kategoriseret', 'ikke-kategoriseret', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Ukategoriseret', 'ukategoriseret', 0),
(16, 'Piger', 'piger', 0),
(17, 'Drenge str 30', 'drenge-str-30', 0),
(18, 'Drenge', 'drenge', 0),
(19, 'Piger str 33', 'piger-str-33', 0),
(20, 'Piger str 35', 'piger-str-35', 0),
(21, 'Soccer', 'soccer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(19, 19, 0),
(32, 2, 0),
(32, 20, 0),
(45, 21, 0),
(46, 21, 0),
(47, 21, 0),
(78, 2, 0),
(78, 16, 0),
(79, 2, 0),
(79, 16, 0),
(79, 18, 0),
(80, 2, 0),
(80, 16, 0),
(80, 18, 0),
(81, 2, 0),
(81, 16, 0),
(81, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 4),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', '', 0, 3),
(19, 19, 'product_cat', '', 0, 1),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'esoccer'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"044f843c88f19b922b87855b69eb4d6eaace07afe73b25cc98b8f4faee55c1f8\";a:4:{s:10:\"expiration\";i:1539255272;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36\";s:5:\"login\";i:1538045672;}s:64:\"bfc6763559621fe2a60a0c99d34b89c71bc245241af07558282e317e365cd6d3\";a:4:{s:10:\"expiration\";i:1538546881;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538374081;}s:64:\"60854a128d09069738a55374ff4417923e93838c1e55774136c0661c912cf03d\";a:4:{s:10:\"expiration\";i:1538665204;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538492404;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1538395498'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(22, 1, 'wc_last_active', '1538524800');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'esoccer', '$P$BVUxJ8oIFVyeSgNzoxA4FSx6UgplpN0', 'esoccer', 'dortenoa@gmail.com', '', '2018-09-27 10:50:58', '', 0, 'esoccer');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Danmark', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'DK', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_pv_commission`
--
ALTER TABLE `wp_pv_commission`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=827;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `wp_pv_commission`
--
ALTER TABLE `wp_pv_commission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
