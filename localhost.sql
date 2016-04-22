-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2016 at 07:24 PM
-- Server version: 5.6.28
-- PHP Version: 5.5.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kohill_ISTC`
--
CREATE DATABASE IF NOT EXISTS `kohill_ISTC` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kohill_ISTC`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1460738615');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress先生', '', 'https://wordpress.org/', '', '2016-04-15 12:17:15', '2016-04-15 04:17:15', '您好，这是一条评论。\n要删除评论，请先登录，然后再查看这篇文章的评论。登录后您可以看到编辑或者删除评论的选项。', 0, 'trash', '', '', 0, 0),
(2, 1, '王虓', 'gzzkdx2867155@163.com', '', '202.120.19.159', '2016-04-22 11:11:55', '2016-04-22 03:11:55', '测试一下评论', 0, '1', 'Mozilla/5.0 (Linux; Android 5.1; MZ-PRO 5 Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/45.0.2454.94 Mobile Safari/537.36', '', 0, 0),
(3, 1, '王虓', 'gzzkdx2867155@163.com', '', '202.120.19.159', '2016-04-22 11:15:42', '2016-04-22 03:15:42', '测试', 0, '1', 'Mozilla/5.0 (Linux; Android 5.1; MZ-PRO 5 Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/45.0.2454.94 Mobile Safari/537.36', '', 0, 0),
(4, 1, 'ISTC2016', 'yangkeshan@stu.xjtu.edu.cn', '', '115.154.31.74', '2016-04-22 11:43:05', '2016-04-22 03:43:05', '评论', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0', '', 0, 1),
(5, 1, '杨科山', '280@22.com', '', '115.154.31.74', '2016-04-22 11:43:57', '2016-04-22 03:43:57', '你是', 0, '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', '', 0, 0),
(6, 1, '网', '1yangkeshan@163.com', '', '115.154.31.74', '2016-04-22 11:48:48', '2016-04-22 03:48:48', '测试评论', 0, '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', '', 0, 0),
(7, 1, '网', '1yangkeshan@163.com', '', '115.154.31.74', '2016-04-22 11:50:49', '2016-04-22 03:50:49', '评论内容', 0, '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', '', 0, 0),
(8, 1, '网', '1yangkeshan@163.com', '', '115.154.31.74', '2016-04-22 11:57:45', '2016-04-22 03:57:45', '你好中国', 0, '0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', '', 0, 0),
(9, 1, '杨科山', '280480002@qq.com', '', '223.104.11.249', '2016-04-22 12:09:37', '2016-04-22 04:09:37', '测试评论', 0, '0', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 Chrome/37.0.0.0 MQQBrowser/6.5 Mobile Safari/537.36', '', 0, 0),
(10, 1, '杨科山', 'f@c.com', '', '223.104.11.103', '2016-04-22 13:06:55', '2016-04-22 05:06:55', '测试手机评论', 0, '1', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 Chrome/37.0.0.0 MQQBrowser/6.5 Mobile Safari/537.36', '', 0, 0),
(11, 1, '1yangkeshan@163.com', '1yangkeshan@163.com', '', '115.154.31.74', '2016-04-22 17:33:07', '2016-04-22 09:33:07', 'sss', 0, '1', 'Mozilla/5.0 (Linux; U; Android 4.1.1; en-us; Motorola Droid Razr - 4.1.1 - API 16 - 540x960 Build/JRO03S) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.8 Mobile Safari/537.36', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mail_bank`
--

CREATE TABLE `wp_mail_bank` (
  `id` int(10) NOT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `mailer_type` int(1) DEFAULT NULL,
  `return_path` int(1) DEFAULT NULL,
  `return_email` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` int(5) DEFAULT NULL,
  `word_wrap` int(10) DEFAULT NULL,
  `encryption` int(1) DEFAULT NULL,
  `smtp_keep_alive` int(5) DEFAULT NULL,
  `authentication` int(1) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_mail_bank`
--

INSERT INTO `wp_mail_bank` (`id`, `from_name`, `from_email`, `mailer_type`, `return_path`, `return_email`, `smtp_host`, `smtp_port`, `word_wrap`, `encryption`, `smtp_keep_alive`, `authentication`, `smtp_username`, `smtp_password`) VALUES
(1, 'ISTC2016', 'xjtuistc@resource0.com', 0, 1, '', 'smtp.resource0.com', 25, 50, 0, 1, 1, 'xjtuistc@resource0.com', 'XJTUistc@');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(5, 'wards', 'wards', '\\wp-content\\gallery\\wards', 'wards', NULL, 0, 34, 1, 196),
(6, 'poster', 'poster', '\\wp-content\\gallery\\poster', 'poster', NULL, 0, 38, 1, 207);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(34, 'img_20160416_170142', 0, 5, 'IMG_20160416_170142.jpg', '', 'IMG_20160416_170142', '2016-04-17 03:56:48', 0, 0, 'eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMCwiZnVsbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfSU1HXzIwMTYwNDE2XzE3MDE0Mi5qcGciLCJnZW5lcmF0ZWQiOiIwLjU2OTczNjAwIDE0NjA4NjU0MDgifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWUsIm5nZzBkeW4tMHgyNTAtMDBmMHcwMTFjMDEwcjExMGYxMTByMDEwdDAxMCI6eyJ3aWR0aCI6MTQxLCJoZWlnaHQiOjI1MCwiZmlsZW5hbWUiOiJJTUdfMjAxNjA0MTZfMTcwMTQyLmpwZy1uZ2dpZDAyMzQtbmdnMGR5bi0weDI1MC0wMGYwdzAxMWMwMTByMTEwZjExMHIwMTB0MDEwLmpwZyIsImdlbmVyYXRlZCI6IjAuMDMxOTY2MDAgMTQ2MDg2NjQwMyJ9fQ==', 195, 1460866403),
(35, 'img_20160416_170227', 0, 5, 'IMG_20160416_170227.jpg', '', 'IMG_20160416_170227', '2016-04-17 03:56:48', 0, 0, 'eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjQ1MCwiZnVsbCI6eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjQ1MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ1MCwiZmlsZW5hbWUiOiJ0aHVtYnNfSU1HXzIwMTYwNDE2XzE3MDIyNy5qcGciLCJnZW5lcmF0ZWQiOiIwLjgzMjUwNTAwIDE0NjA4NjU0MDgifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 198, 1460865408),
(36, 'img_20160416_170312', 0, 5, 'IMG_20160416_170312.jpg', '', 'IMG_20160416_170312', '2016-04-17 03:56:49', 0, 0, 'eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMCwiZnVsbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfSU1HXzIwMTYwNDE2XzE3MDMxMi5qcGciLCJnZW5lcmF0ZWQiOiIwLjAwNjQ4MzAwIDE0NjA4NjU0MDkifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 200, 1460865409),
(37, 'img_20160416_170336', 0, 5, 'IMG_20160416_170336.jpg', '', 'IMG_20160416_170336', '2016-04-17 03:56:49', 0, 0, 'eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMCwiZnVsbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjYwMH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MzM4LCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfSU1HXzIwMTYwNDE2XzE3MDMzNi5qcGciLCJnZW5lcmF0ZWQiOiIwLjE4NzA0OTAwIDE0NjA4NjU0MDkifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 202, 1460865409),
(38, '1', 0, 6, '1.jpg', '', '1', '2016-04-17 03:59:23', 0, 0, 'eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjU2NiwiZnVsbCI6eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjU2Nn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfMS5qcGciLCJnZW5lcmF0ZWQiOiIwLjE3NjQxODAwIDE0NjA4NjU1NjMifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 206, 1460865563),
(39, '2', 0, 6, '2.jpg', '', '2', '2016-04-17 03:59:23', 0, 0, 'eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjU2NiwiZnVsbCI6eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjU2Nn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfMi5qcGciLCJnZW5lcmF0ZWQiOiIwLjUxMjc2MDAwIDE0NjA4NjU1NjMifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 209, 1460865563),
(40, '3', 0, 6, '3.jpg', '', '3', '2016-04-17 03:59:23', 0, 0, 'eyJ3aWR0aCI6NjQ2LCJoZWlnaHQiOjUxMSwiZnVsbCI6eyJ3aWR0aCI6NjQ2LCJoZWlnaHQiOjUxMX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ4MCwiZmlsZW5hbWUiOiJ0aHVtYnNfMy5qcGciLCJnZW5lcmF0ZWQiOiIwLjcxNjkxNTAwIDE0NjA4NjU1NjMifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 211, 1460865563),
(41, '4', 0, 6, '4.jpg', '', '4', '2016-04-17 03:59:23', 0, 0, 'eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjMxNSwiZnVsbCI6eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjMxNX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjMxNSwiZmlsZW5hbWUiOiJ0aHVtYnNfNC5qcGciLCJnZW5lcmF0ZWQiOiIwLjg1NDE3NzAwIDE0NjA4NjU1NjMifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 213, 1460865563),
(42, '5', 0, 6, '5.jpg', '', '5', '2016-04-17 03:59:24', 0, 0, 'eyJ3aWR0aCI6NTgwLCJoZWlnaHQiOjMyOSwiZnVsbCI6eyJ3aWR0aCI6NTgwLCJoZWlnaHQiOjMyOX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NTgwLCJoZWlnaHQiOjMyOSwiZmlsZW5hbWUiOiJ0aHVtYnNfNS5qcGciLCJnZW5lcmF0ZWQiOiIwLjk5NzY4NTAwIDE0NjA4NjU1NjMifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 215, 1460865563),
(43, '6', 0, 6, '6.jpg', '', '6', '2016-04-17 03:59:24', 0, 0, 'eyJ3aWR0aCI6NTMzLCJoZWlnaHQiOjI3MCwiZnVsbCI6eyJ3aWR0aCI6NTMzLCJoZWlnaHQiOjI3MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NTMzLCJoZWlnaHQiOjI3MCwiZmlsZW5hbWUiOiJ0aHVtYnNfNi5qcGciLCJnZW5lcmF0ZWQiOiIwLjEyMzc4OTAwIDE0NjA4NjU1NjQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 217, 1460865564),
(44, '7', 0, 6, '7.jpg', '', '7', '2016-04-17 03:59:24', 0, 0, 'eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjQxOSwiZnVsbCI6eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjQxOX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6NTU4LCJoZWlnaHQiOjQxOSwiZmlsZW5hbWUiOiJ0aHVtYnNfNy5qcGciLCJnZW5lcmF0ZWQiOiIwLjI2NzgzOTAwIDE0NjA4NjU1NjQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 219, 1460865564);

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
(1, 'siteurl', 'http://www.xjtuistc.club/istc', 'yes'),
(2, 'home', 'http://www.xjtuistc.club/istc', 'yes'),
(3, 'blogname', 'IBM技术俱乐部', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'yangkeshan@stu.xjtu.edu.cn', 'yes'),
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
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'ag:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:8:{i:0;s:45:"disable-google-fonts/disable-google-fonts.php";i:1;s:47:"image-slider-widget/easy-slider-widget-lite.php";i:2;s:47:"multi-device-switcher/multi-device-switcher.php";i:3;s:29:"nextgen-gallery/nggallery.php";i:4;s:29:"wp-html-mail/wp-html-mail.php";i:5;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:6;s:27:"wp-super-cache/wp-cache.php";i:7;s:19:"wptouch/wptouch.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:3:{i:0;s:69:"E:\\xampp\\htdocs\\istc/wp-content/plugins/nextgen-gallery/nggallery.php";i:1;s:59:"E:\\xampp\\htdocs\\istc/wp-content/plugins/akismet/akismet.php";i:2;s:0:"";}', 'no'),
(39, 'template', 'accelerate', 'yes'),
(40, 'stylesheet', 'accelerate', 'yes'),
(41, 'comment_whitelist', '', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:3:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(80, 'uninstall_plugins', 'a:2:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";s:29:"wp-mail-bank/wp-mail-bank.php";s:35:"plugin_uninstall_hook_for_mail_bank";}', 'no'),
(81, 'timezone_string', 'Asia/Shanghai', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '20', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:71:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', '', 'yes'),
(93, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:1:{s:5:"title";s:0:"";}i:6;a:0:{}}', 'yes'),
(94, 'widget_recent-posts', 'a:5:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;i:4;a:0:{}i:5;a:0:{}i:7;a:0:{}}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(98, 'sidebars_widgets', 'a:12:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"calendar-7";}s:24:"accelerate_right_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:23:"accelerate_left_sidebar";N;s:25:"accelerate_header_sidebar";a:0:{}s:27:"accelerate_business_sidebar";a:0:{}s:31:"accelerate_contact_page_sidebar";N;s:33:"accelerate_error_404_page_sidebar";N;s:29:"accelerate_footer_sidebar_one";a:0:{}s:29:"accelerate_footer_sidebar_two";N;s:31:"accelerate_footer_sidebar_three";N;s:13:"array_version";i:3;s:9:"sidebar-1";a:0:{}}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:4:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:5;a:0:{}i:7;a:0:{}}', 'yes'),
(102, 'widget_tag_cloud', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1461320022;a:1:{s:11:"wp_cache_gc";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1461320808;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1461341835;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1461385089;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1461386240;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1461386513;a:1:{s:28:"wptouch_cron_backup_settings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1461387403;a:1:{s:16:"ewic_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1461403793;a:1:{s:21:"mail_bank_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(117, '_site_transient_timeout_browser_da41229f59090b195596a12d80fe9307', '1461298655', 'yes'),
(118, '_site_transient_browser_da41229f59090b195596a12d80fe9307', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.0.2623.112";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(140, 'recently_activated', 'a:2:{s:29:"wp-mail-bank/wp-mail-bank.php";i:1461145416;s:29:"apply-online/apply-online.php";i:1460817611;}', 'yes'),
(154, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460694644;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(155, 'current_theme', 'Accelerate', 'yes'),
(156, 'theme_mods_accelerate', 'a:6:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:3:{s:7:"primary";i:2;s:6:"footer";i:0;s:20:"wptouch_primary_menu";i:2;}s:16:"background_image";s:68:"http://www.xjtuistc.club/istc/wp-content/uploads/2016/04/beijing.jpg";s:21:"background_attachment";s:5:"fixed";s:21:"background_position_x";s:6:"center";}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(158, 'widget_accelerate_featured_single_page_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_accelerate_call_to_action_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(160, 'widget_accelerate_recent_work_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'widget_accelerate_image_service_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_accelerate_custom_tag_widget', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(167, 'accelerate', 'a:13:{s:24:"accelerate_primary_color";s:7:"#1e73be";s:22:"accelerate_site_layout";s:3:"box";s:28:"accelerate_header_logo_image";s:43:"/istc/wp-content/uploads/2016/04/header.jpg";s:32:"accelerate_show_header_logo_text";s:9:"logo_only";s:32:"accelerate_header_image_position";s:12:"position_one";s:25:"accelerate_default_layout";s:27:"no_sidebar_content_centered";s:18:"accelerate_favicon";s:0:"";s:24:"accelerate_slider_image1";s:0:"";s:31:"accelerate_slide_text_position1";s:4:"left";s:26:"accelerate_activate_slider";i:1;s:31:"accelerate_pages_default_layout";s:27:"no_sidebar_content_centered";s:38:"accelerate_single_posts_default_layout";s:27:"no_sidebar_content_centered";s:21:"accelerate_custom_css";s:0:"";}', 'yes'),
(168, '_site_transient_timeout_browser_9ef80c95a784883f5c155750a5f1bbaf', '1461299635', 'yes'),
(170, '_site_transient_browser_9ef80c95a784883f5c155750a5f1bbaf', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:2:"11";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(176, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(187, 'zh_cn_l10n_icp_num', '', 'yes'),
(207, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(208, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(209, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(210, 'ngg_transient_groups', 'a:8:{s:9:"__counter";i:8;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_wp_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:19:"col_in_wp_ngg_album";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}s:24:"nextgen_pro_upgrade_page";a:2:{s:2:"id";i:8;s:7:"enabled";b:1;}}', 'yes'),
(211, 'ngg_options', 'a:73:{s:11:"gallerypath";s:19:"wp-content\\gallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";s:3:"500";s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";s:1:"1";s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";s:1:"0";s:18:"galleries_in_feeds";s:1:"0";s:12:"activateTags";s:1:"0";s:10:"appendType";s:4:"tags";s:9:"maxImages";s:1:"7";s:14:"relatedHeading";s:22:"<h3>相关图像:</h3>";s:10:"thumbwidth";s:3:"640";s:11:"thumbheight";s:3:"480";s:8:"thumbfix";s:1:"1";s:12:"thumbquality";i:100;s:8:"imgWidth";s:3:"800";s:9:"imgHeight";s:3:"600";s:10:"imgQuality";s:3:"100";s:9:"imgBackup";s:1:"0";s:13:"imgAutoResize";s:1:"1";s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:17:"[显示幻灯片]";s:14:"galTextGallery";s:17:"[显示缩略图]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";s:1:"5";s:6:"wmYpos";s:1:"5";s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";s:2:"10";s:6:"wmText";s:18:"IBM技术俱乐部";s:7:"wmColor";s:7:"#000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";s:1:"1";s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1460734572;s:18:"thumbEffectScripts";a:1:{i:0;s:0:"";}s:17:"thumbEffectStyles";a:1:{i:0;s:0:"";}s:15:"thumbEffectCode";s:0:"";}', 'yes'),
(213, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(214, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(215, 'ngg_db_version', '1.8.1', 'yes'),
(218, 'pope_module_list', 'a:34:{i:0;s:17:"photocrati-fs|0.4";i:1;s:19:"photocrati-i18n|0.1";i:2;s:25:"photocrati-validation|0.1";i:3;s:21:"photocrati-router|0.7";i:4;s:32:"photocrati-wordpress_routing|0.6";i:5;s:23:"photocrati-security|0.2";i:6;s:31:"photocrati-nextgen_settings|0.9";i:7;s:18:"photocrati-mvc|0.5";i:8;s:19:"photocrati-ajax|0.8";i:9;s:25:"photocrati-datamapper|0.9";i:10;s:30:"photocrati-nextgen-legacy|0.14";i:11;s:28:"photocrati-nextgen-data|0.10";i:12;s:33:"photocrati-dynamic_thumbnails|0.6";i:13;s:28:"photocrati-nextgen_admin|0.9";i:14;s:39:"photocrati-nextgen_gallery_display|0.13";i:15;s:34:"photocrati-frame_communication|0.4";i:16;s:30:"photocrati-attach_to_post|0.11";i:17;s:38:"photocrati-nextgen_addgallery_page|0.6";i:18;s:36:"photocrati-nextgen_other_options|0.8";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:33:"photocrati-dynamic_stylesheet|0.3";i:21;s:34:"photocrati-nextgen_pro_upgrade|0.4";i:22;s:20:"photocrati-cache|0.2";i:23;s:24:"photocrati-lightbox|0.14";i:24;s:38:"photocrati-nextgen_basic_templates|0.5";i:25;s:37:"photocrati-nextgen_basic_gallery|0.13";i:26;s:42:"photocrati-nextgen_basic_imagebrowser|0.10";i:27;s:39:"photocrati-nextgen_basic_singlepic|0.11";i:28;s:38:"photocrati-nextgen_basic_tagcloud|0.11";i:29;s:35:"photocrati-nextgen_basic_album|0.10";i:30;s:21:"photocrati-widget|0.5";i:31;s:33:"photocrati-third_party_compat|0.4";i:32;s:29:"photocrati-nextgen_xmlrpc|0.4";i:33;s:20:"photocrati-wpcli|0.1";}', 'yes'),
(288, '_site_transient_timeout_browser_be79f5792f4c0def721e2796dc3a5a5d', '1461340081', 'yes'),
(289, '_site_transient_browser_be79f5792f4c0def721e2796dc3a5a5d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:2:"11";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(303, 'category_children', 'a:0:{}', 'yes'),
(312, 'ossdl_off_cdn_url', 'http://7xoj1e.com1.z0.glb.clouddn.com', 'yes'),
(313, 'ossdl_off_include_dirs', 'istc/images,images', 'yes'),
(314, 'ossdl_off_exclude', '.php', 'yes'),
(315, 'ossdl_cname', '', 'yes'),
(317, 'wpsupercache_start', '1460745025', 'yes'),
(318, 'wpsupercache_count', '0', 'yes'),
(319, 'ossdl_https', '1', 'yes'),
(320, 'supercache_stats', 'a:3:{s:9:"generated";i:1461298836;s:10:"supercache";a:5:{s:7:"expired";i:0;s:12:"expired_list";a:0:{}s:6:"cached";i:0;s:11:"cached_list";a:0:{}s:2:"ts";i:1461298836;}s:7:"wpcache";a:3:{s:6:"cached";i:0;s:7:"expired";i:0;s:5:"fsize";s:3:"0KB";}}', 'yes'),
(322, 'wpsupercache_gc_time', '1461319422', 'yes'),
(331, 'contact_coldform_options', 'a:30:{s:14:"coldform_email";s:26:"yangkeshan@stu.xjtu.edu.cn";s:13:"coldform_name";s:8:"ISTC2016";s:16:"coldform_website";s:18:"IBM技术俱乐部";s:16:"coldform_subject";s:35:"Message sent from your contact form";s:15:"coldform_prefix";s:18:"Contact Coldform: ";s:17:"coldform_question";s:7:"1 + 1 =";s:17:"coldform_response";s:1:"2";s:15:"display_captcha";i:1;s:15:"display_website";i:1;s:15:"coldform_offset";s:1:"0";s:17:"coldform_nametext";s:15:"Name (Required)";s:17:"coldform_mailtext";s:16:"Email (Required)";s:17:"coldform_sitetext";s:18:"Website (Optional)";s:17:"coldform_subjtext";s:18:"Subject (Optional)";s:17:"coldform_messtext";s:18:"Message (Required)";s:17:"coldform_copytext";s:12:"Carbon Copy?";s:16:"coldform_welcome";s:85:"<strong>你好!</strong> 请填写下面的信息，方便我们为您安排面试：";s:16:"coldform_success";s:65:"<p id=\'coldform_success\'>Success! Your message has been sent.</p>";s:15:"coldform_thanks";s:120:"<p class=\'coldform-thanks\'><span>Thanks for contacting me.</span> The following information has been sent via email:</p>";s:13:"coldform_spam";s:109:"<p id=\'coldform_spam\' class=\'coldform-error\'>Incorrect response for challenge question. Please try again.</p>";s:14:"coldform_error";s:86:"<p id=\'coldform_error\' class=\'coldform-error\'>Please complete the required fields.</p>";s:14:"coldform_style";s:34:"style=\'border: 1px solid #CC0000;\'";s:17:"coldform_coldskin";s:16:"coldskin_default";s:15:"coldform_styles";i:1;s:15:"coldform_custom";s:0:"";s:12:"coldform_url";s:0:"";s:15:"default_options";i:0;s:15:"coldform_casing";i:0;s:15:"coldform_carbon";i:0;s:14:"coldform_trust";i:0;}', 'yes'),
(362, 'aol_ad_category_children', 'a:2:{i:4;a:2:{i:0;i:5;i:1;i:6;}i:7;a:2:{i:0;i:8;i:1;i:9;}}', 'yes'),
(1284, 'ewic-settings-automatic_update', 'active', 'yes'),
(1286, 'widget_ewic-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1503, 'haet_mail_options', 'a:2:{s:8:"fromname";s:18:"IBM技术俱乐部";s:11:"fromaddress";s:22:"xjtuistc@resource0.com";}', 'yes'),
(1504, 'mail_from', 'xjtuistc@resource0.com', 'yes'),
(1505, 'mail_from_name', 'IBM Student Club', 'yes'),
(1506, 'mailer', 'smtp', 'yes'),
(1507, 'mail_set_return_path', 'true', 'yes'),
(1508, 'smtp_host', 'smtp.resource0.com', 'yes'),
(1509, 'smtp_port', '25', 'yes'),
(1510, 'smtp_ssl', 'none', 'yes'),
(1511, 'smtp_auth', 'true', 'yes'),
(1512, 'smtp_user', 'xjtuistc@resource0.com', 'yes'),
(1513, 'smtp_pass', 'XJTUistc@', 'yes'),
(1516, 'haet_mail_theme_options', 'a:41:{s:10:"background";s:7:"#F0F0F0";s:17:"contentbackground";s:7:"#FFFFFF";s:10:"headertext";s:18:"IBM技术俱乐部";s:10:"headerfont";s:28:"Helvetica, Arial, sans-serif";s:11:"headeralign";s:4:"left";s:14:"headerfontsize";i:24;s:10:"headerbold";i:1;s:12:"headeritalic";i:0;s:16:"headerbackground";s:7:"#F0F0F0";s:11:"headercolor";s:7:"#df4726";s:16:"headerpaddingtop";i:12;s:18:"headerpaddingright";i:24;s:19:"headerpaddingbottom";i:12;s:17:"headerpaddingleft";i:24;s:9:"headerimg";s:0:"";s:15:"headerimg_width";s:0:"";s:16:"headerimg_height";s:0:"";s:12:"headlinefont";s:28:"Helvetica, Arial, sans-serif";s:13:"headlinealign";s:4:"left";s:16:"headlinefontsize";i:18;s:12:"headlinebold";i:1;s:14:"headlineitalic";i:0;s:13:"headlinecolor";s:7:"#374550";s:15:"subheadlinefont";s:28:"Helvetica, Arial, sans-serif";s:16:"subheadlinealign";s:4:"left";s:19:"subheadlinefontsize";i:15;s:15:"subheadlinebold";i:1;s:17:"subheadlineitalic";i:0;s:16:"subheadlinecolor";s:7:"#374550";s:8:"textfont";s:28:"Helvetica, Arial, sans-serif";s:9:"textalign";s:4:"left";s:12:"textfontsize";i:14;s:8:"textbold";i:0;s:10:"textitalic";i:0;s:9:"textcolor";s:7:"#333333";s:9:"linkcolor";s:7:"#777777";s:8:"linkbold";i:0;s:13:"linkunderline";i:1;s:6:"footer";s:100:"<a href=\\"http://www.xjtuistc.club\\"><p>&amp;copy 版权所有; 2016 IBM Student Club.<br /></p></a>";s:10:"footerlink";s:1:"0";s:16:"footerbackground";s:0:"";}', 'yes'),
(1517, 'haet_mail_plugin_options', 'a:4:{s:11:"ninja-forms";a:2:{s:8:"template";b:1;s:6:"sender";b:1;}s:13:"wp-e-commerce";a:2:{s:8:"template";b:1;s:6:"sender";b:1;}s:13:"caldera-forms";a:2:{s:8:"template";b:1;s:6:"sender";b:1;}s:14:"contact-form-7";a:2:{s:8:"template";b:1;s:6:"sender";b:0;}}', 'yes'),
(1698, '_site_transient_timeout_browser_c5cd3950767b7723e8c89032dce95cc6', '1461812320', 'yes'),
(1699, '_site_transient_browser_c5cd3950767b7723e8c89032dce95cc6', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:3:"4.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1898, 'wptouch_menus_initialized', '1', 'yes'),
(1964, 'rewrite_rules', 'a:218:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:"ngg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?ngg_tag=$matches[1]&feed=$matches[2]";s:43:"ngg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?ngg_tag=$matches[1]&feed=$matches[2]";s:36:"ngg_tag/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?ngg_tag=$matches[1]&paged=$matches[2]";s:18:"ngg_tag/([^/]+)/?$";s:29:"index.php?ngg_tag=$matches[1]";s:41:"easyimagesldr/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"easyimagesldr/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"easyimagesldr/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"easyimagesldr/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"easyimagesldr/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"easyimagesldr/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"easyimagesldr/([^/]+)/embed/?$";s:48:"index.php?easyimageslider=$matches[1]&embed=true";s:34:"easyimagesldr/([^/]+)/trackback/?$";s:42:"index.php?easyimageslider=$matches[1]&tb=1";s:42:"easyimagesldr/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?easyimageslider=$matches[1]&paged=$matches[2]";s:49:"easyimagesldr/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?easyimageslider=$matches[1]&cpage=$matches[2]";s:38:"easyimagesldr/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?easyimageslider=$matches[1]&page=$matches[2]";s:30:"easyimagesldr/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"easyimagesldr/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"easyimagesldr/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"easyimagesldr/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"easyimagesldr/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"easyimagesldr/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"ngg_album/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"ngg_album/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"ngg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"ngg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"ngg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"ngg_album/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"ngg_album/([^/]+)/embed/?$";s:42:"index.php?ngg_album=$matches[1]&embed=true";s:30:"ngg_album/([^/]+)/trackback/?$";s:36:"index.php?ngg_album=$matches[1]&tb=1";s:38:"ngg_album/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?ngg_album=$matches[1]&paged=$matches[2]";s:45:"ngg_album/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?ngg_album=$matches[1]&cpage=$matches[2]";s:34:"ngg_album/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?ngg_album=$matches[1]&page=$matches[2]";s:26:"ngg_album/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"ngg_album/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"ngg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"ngg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"ngg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"ngg_album/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"ngg_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"ngg_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"ngg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"ngg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"ngg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"ngg_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"ngg_gallery/([^/]+)/embed/?$";s:44:"index.php?ngg_gallery=$matches[1]&embed=true";s:32:"ngg_gallery/([^/]+)/trackback/?$";s:38:"index.php?ngg_gallery=$matches[1]&tb=1";s:40:"ngg_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?ngg_gallery=$matches[1]&paged=$matches[2]";s:47:"ngg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?ngg_gallery=$matches[1]&cpage=$matches[2]";s:36:"ngg_gallery/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?ngg_gallery=$matches[1]&page=$matches[2]";s:28:"ngg_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"ngg_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"ngg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"ngg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"ngg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"ngg_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"ngg_pictures/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"ngg_pictures/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"ngg_pictures/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"ngg_pictures/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"ngg_pictures/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"ngg_pictures/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"ngg_pictures/([^/]+)/embed/?$";s:45:"index.php?ngg_pictures=$matches[1]&embed=true";s:33:"ngg_pictures/([^/]+)/trackback/?$";s:39:"index.php?ngg_pictures=$matches[1]&tb=1";s:41:"ngg_pictures/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?ngg_pictures=$matches[1]&paged=$matches[2]";s:48:"ngg_pictures/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?ngg_pictures=$matches[1]&cpage=$matches[2]";s:37:"ngg_pictures/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?ngg_pictures=$matches[1]&page=$matches[2]";s:29:"ngg_pictures/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"ngg_pictures/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"ngg_pictures/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"ngg_pictures/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"ngg_pictures/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"ngg_pictures/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"lightbox_library/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"lightbox_library/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"lightbox_library/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"lightbox_library/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"lightbox_library/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"lightbox_library/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"lightbox_library/([^/]+)/embed/?$";s:49:"index.php?lightbox_library=$matches[1]&embed=true";s:37:"lightbox_library/([^/]+)/trackback/?$";s:43:"index.php?lightbox_library=$matches[1]&tb=1";s:45:"lightbox_library/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?lightbox_library=$matches[1]&paged=$matches[2]";s:52:"lightbox_library/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?lightbox_library=$matches[1]&cpage=$matches[2]";s:41:"lightbox_library/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?lightbox_library=$matches[1]&page=$matches[2]";s:33:"lightbox_library/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"lightbox_library/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"lightbox_library/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"lightbox_library/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"lightbox_library/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"lightbox_library/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"displayed_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"displayed_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"displayed_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"displayed_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"displayed_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"displayed_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"displayed_gallery/([^/]+)/embed/?$";s:50:"index.php?displayed_gallery=$matches[1]&embed=true";s:38:"displayed_gallery/([^/]+)/trackback/?$";s:44:"index.php?displayed_gallery=$matches[1]&tb=1";s:46:"displayed_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?displayed_gallery=$matches[1]&paged=$matches[2]";s:53:"displayed_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?displayed_gallery=$matches[1]&cpage=$matches[2]";s:42:"displayed_gallery/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?displayed_gallery=$matches[1]&page=$matches[2]";s:34:"displayed_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"displayed_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"displayed_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"displayed_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"displayed_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"displayed_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"display_type/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"display_type/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"display_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"display_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"display_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"display_type/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"display_type/([^/]+)/embed/?$";s:45:"index.php?display_type=$matches[1]&embed=true";s:33:"display_type/([^/]+)/trackback/?$";s:39:"index.php?display_type=$matches[1]&tb=1";s:41:"display_type/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?display_type=$matches[1]&paged=$matches[2]";s:48:"display_type/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?display_type=$matches[1]&cpage=$matches[2]";s:37:"display_type/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?display_type=$matches[1]&page=$matches[2]";s:29:"display_type/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"display_type/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"display_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"display_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"display_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"display_type/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:46:"gal_display_source/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"gal_display_source/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"gal_display_source/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"gal_display_source/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"gal_display_source/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"gal_display_source/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"gal_display_source/([^/]+)/embed/?$";s:51:"index.php?gal_display_source=$matches[1]&embed=true";s:39:"gal_display_source/([^/]+)/trackback/?$";s:45:"index.php?gal_display_source=$matches[1]&tb=1";s:47:"gal_display_source/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?gal_display_source=$matches[1]&paged=$matches[2]";s:54:"gal_display_source/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?gal_display_source=$matches[1]&cpage=$matches[2]";s:43:"gal_display_source/([^/]+)(?:/([0-9]+))?/?$";s:57:"index.php?gal_display_source=$matches[1]&page=$matches[2]";s:35:"gal_display_source/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"gal_display_source/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"gal_display_source/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gal_display_source/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gal_display_source/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"gal_display_source/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(1986, '_site_transient_timeout_browser_587a4c65b6b1fd7f7040c531b45230f1', '1461905411', 'yes'),
(1987, '_site_transient_browser_587a4c65b6b1fd7f7040c531b45230f1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"38.0.2125.122";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2018, 'multi_device_switcher_options', 'a:12:{s:11:"pc_switcher";i:0;s:11:"default_css";i:0;s:16:"theme_smartphone";s:4:"None";s:12:"theme_tablet";s:4:"None";s:12:"theme_mobile";s:4:"None";s:10:"theme_game";s:4:"None";s:15:"userAgent_smart";s:133:"iPhone, iPod, Android.*Mobile, dream, CUPCAKE, Windows Phone, IEMobile.*Touch, webOS, BB10.*Mobile, BlackBerry.*Mobile, Mobile.*Gecko";s:16:"userAgent_tablet";s:80:"iPad, Kindle, Silk, Android(?!.*Mobile), Windows.*Touch, PlayBook, Tablet.*Gecko";s:16:"userAgent_mobile";s:143:"DoCoMo, SoftBank, J-PHONE, Vodafone, KDDI, UP.Browser, WILLCOM, emobile, DDIPOCKET, Windows CE, BlackBerry, Symbian, PalmOS, Huawei, IAC, Nokia";s:14:"userAgent_game";s:134:"PlayStation Portable, PlayStation Vita, PSP, PS2, PLAYSTATION 3, PlayStation 4, Nitro, Nintendo 3DS, Nintendo Wii, Nintendo WiiU, Xbox";s:12:"disable_path";s:0:"";s:12:"enable_regex";i:0;}', 'yes'),
(2023, 'widget_pc-switcher', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(2039, 'widget_mobilefriendlyprofilewidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2155, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1461325855', 'yes'),
(2156, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5800";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3598";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3560";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3071";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2756";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2287";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2191";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2062";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2009";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1981";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1967";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1922";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1843";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1654";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1572";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1549";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1523";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1351";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1292";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1276";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1194";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1091";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1056";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1002";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"965";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"949";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"909";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"900";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"887";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"828";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"806";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"786";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"758";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"753";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"748";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"741";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"741";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"740";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"733";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"731";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"693";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"686";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"678";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"675";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"670";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"666";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"649";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"638";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"632";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"610";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"594";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"589";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"588";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"585";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"585";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"574";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"566";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"558";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"553";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"544";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"540";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"528";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"524";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"513";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"510";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"509";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"496";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"496";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"494";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"486";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"457";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"453";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"439";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"439";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"437";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"437";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"436";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"423";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"415";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"414";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"410";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"407";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"405";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"399";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"396";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"392";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"388";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"388";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"388";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"388";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"386";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"384";}}', 'yes'),
(2159, '_site_transient_timeout_wporg_theme_feature_list', '1461325923', 'yes'),
(2160, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(2161, '_site_transient_timeout_available_translations', '1461325903', 'yes'),
(2162, '_site_transient_available_translations', 'a:79:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 13:09:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 13:17:04";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 09:40:25";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-08 07:49:01";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 16:01:40";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-10 14:21:56";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-10 14:06:54";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.4.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-29 10:47:54";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 16:11:56";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-16 07:59:10";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-14 21:14:29";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:34:17";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-25 13:07:29";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 06:14:13";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 18:08:52";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-13 12:28:49";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-02 20:27:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 15:17:36";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-18 06:44:22";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-03 10:31:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 06:49:15";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-08 17:19:17";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 16:48:03";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-16 18:59:27";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-11 05:43:28";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-04 08:39:26";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-03 14:37:42";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-09 12:17:59";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-11 02:48:55";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 08:53:31";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-24 00:12:01";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-23 18:59:13";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 16:21:37";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-24 15:31:29";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-20 19:55:09";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-03 17:32:29";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-31 14:58:13";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-03-21 18:23:26";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 11:29:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-23 10:30:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-09 12:04:20";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-12 09:17:17";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(2165, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.5-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.5";s:7:"version";s:3:"4.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.5-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.5";s:7:"version";s:3:"4.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1461315112;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(2166, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1461315112;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:12:{s:45:"disable-google-fonts/disable-google-fonts.php";O:8:"stdClass":6:{s:2:"id";s:5:"46033";s:4:"slug";s:20:"disable-google-fonts";s:6:"plugin";s:45:"disable-google-fonts/disable-google-fonts.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:51:"https://wordpress.org/plugins/disable-google-fonts/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/disable-google-fonts.1.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"image-slider-widget/easy-slider-widget-lite.php";O:8:"stdClass":7:{s:2:"id";s:5:"55511";s:4:"slug";s:19:"image-slider-widget";s:6:"plugin";s:47:"image-slider-widget/easy-slider-widget-lite.php";s:11:"new_version";s:6:"1.1.83";s:3:"url";s:50:"https://wordpress.org/plugins/image-slider-widget/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/image-slider-widget.1.1.83.zip";s:14:"upgrade_notice";s:48:"IMPORTANT! SECURITY BUGS FIX, PLEASE UPDATE NOW!";}s:47:"multi-device-switcher/multi-device-switcher.php";O:8:"stdClass":6:{s:2:"id";s:5:"28867";s:4:"slug";s:21:"multi-device-switcher";s:6:"plugin";s:47:"multi-device-switcher/multi-device-switcher.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:52:"https://wordpress.org/plugins/multi-device-switcher/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/multi-device-switcher.1.5.1.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:6:"2.1.31";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.31.zip";}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":6:{s:2:"id";s:5:"27901";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:6:"2.9.42";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/ninja-forms.2.9.42.zip";}s:27:"wordpress-popup/popover.php";O:8:"stdClass":6:{s:2:"id";s:5:"22498";s:4:"slug";s:15:"wordpress-popup";s:6:"plugin";s:27:"wordpress-popup/popover.php";s:11:"new_version";s:7:"4.7.1.1";s:3:"url";s:46:"https://wordpress.org/plugins/wordpress-popup/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wordpress-popup.zip";}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":7:{s:2:"id";s:3:"951";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"0.9.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.6.zip";s:14:"upgrade_notice";s:38:"Minor security fix, hat tip JD Grimes.";}s:29:"wp-html-mail/wp-html-mail.php";O:8:"stdClass":6:{s:2:"id";s:5:"57040";s:4:"slug";s:12:"wp-html-mail";s:6:"plugin";s:29:"wp-html-mail/wp-html-mail.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/plugins/wp-html-mail/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-html-mail.1.2.zip";}s:29:"wp-mail-bank/wp-mail-bank.php";O:8:"stdClass":6:{s:2:"id";s:5:"52447";s:4:"slug";s:12:"wp-mail-bank";s:6:"plugin";s:29:"wp-mail-bank/wp-mail-bank.php";s:11:"new_version";s:4:"1.40";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-bank/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-mail-bank.zip";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip";s:14:"upgrade_notice";s:38:"Removed malware URL in a code comment.";}s:19:"wptouch/wptouch.php";O:8:"stdClass":6:{s:2:"id";s:4:"3265";s:4:"slug";s:7:"wptouch";s:6:"plugin";s:19:"wptouch/wptouch.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/wptouch/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/wptouch.4.1.1.zip";}}}', 'yes'),
(2167, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1461315114;s:7:"checked";a:5:{s:10:"accelerate";s:5:"1.2.2";s:15:"mobile-friendly";s:3:"1.8";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:4:{s:10:"accelerate";a:4:{s:5:"theme";s:10:"accelerate";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:40:"https://wordpress.org/themes/accelerate/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/accelerate.1.2.4.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.7.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.2.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(2196, 'theme_mods_bauhaus', 'a:1:{s:18:"nav_menu_locations";a:3:{s:7:"primary";i:2;s:6:"footer";i:0;s:20:"wptouch_primary_menu";i:2;}}', 'yes'),
(2234, '_site_transient_timeout_theme_roots', '1461321208', 'yes'),
(2235, '_site_transient_theme_roots', 'a:5:{s:10:"accelerate";s:7:"/themes";s:15:"mobile-friendly";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2243, 'wpts_wptouch_pro', 'O:24:"WPtouchDefaultSettings30":52:{s:11:"show_wizard";b:1;s:16:"show_free_wizard";b:0;s:19:"show_network_wizard";b:1;s:10:"site_title";s:18:"IBM技术俱乐部";s:22:"show_wptouch_in_footer";i:0;s:16:"show_switch_link";b:1;s:18:"switch_link_method";s:9:"automatic";s:20:"force_network_locale";s:4:"auto";s:12:"force_locale";s:4:"auto";s:15:"translate_admin";i:1;s:22:"analytics_embed_method";s:8:"disabled";s:19:"analytics_google_id";s:0:"";s:17:"custom_stats_code";s:0:"";s:16:"homepage_landing";s:4:"none";s:27:"homepage_redirect_wp_target";s:2:"13";s:31:"homepage_redirect_custom_target";s:0:"";s:16:"new_display_mode";i:1;s:26:"process_desktop_shortcodes";b:0;s:17:"remove_shortcodes";s:0:"";s:20:"url_filter_behaviour";s:8:"disabled";s:13:"filtered_urls";s:0:"";s:19:"filtered_urls_exact";b:0;s:16:"enable_ios_phone";i:1;s:20:"enable_android_phone";i:1;s:23:"enable_blackberry_phone";i:1;s:20:"enable_firefox_phone";i:1;s:18:"enable_opera_phone";i:1;s:20:"enable_windows_phone";i:1;s:17:"enable_ios_tablet";b:1;s:21:"enable_android_tablet";b:1;s:21:"enable_windows_tablet";b:1;s:20:"enable_kindle_tablet";b:1;s:24:"enable_blackberry_tablet";b:1;s:19:"enable_webos_tablet";b:1;s:18:"custom_user_agents";s:0:"";s:27:"current_theme_friendly_name";s:7:"Bauhaus";s:22:"current_theme_location";s:23:"/plugins/wptouch/themes";s:18:"current_theme_name";s:7:"bauhaus";s:16:"custom_menu_name";s:2:"wp";s:18:"appended_menu_name";s:4:"none";s:19:"prepended_menu_name";s:4:"none";s:19:"enable_parent_items";i:1;s:17:"enable_menu_icons";i:0;s:14:"show_login_box";i:0;s:17:"default_menu_icon";s:61:"/wp-content/plugins/wptouch/resources/icons/elegant/Paper.png";s:19:"disabled_menu_items";a:0:{}s:24:"temp_disabled_menu_items";a:0:{}s:9:"debug_log";b:0;s:15:"debug_log_level";i:6;s:14:"debug_log_salt";s:10:"7d7479e7c6";s:13:"active_addons";a:0:{}s:23:"show_wpml_lang_switcher";b:1;}', 'yes'),
(2244, 'wpts_bncid', 'O:29:"WPtouchDefaultSettingsBNCID30":12:{s:5:"bncid";s:0:"";s:19:"wptouch_license_key";s:0:"";s:16:"license_accepted";b:0;s:21:"license_accepted_time";i:0;s:22:"next_update_check_time";i:1461362735;s:15:"license_expired";s:1:"0";s:19:"license_expiry_date";i:0;s:16:"referral_user_id";b:0;s:15:"allow_multisite";b:1;s:17:"multisite_control";b:1;s:24:"license_support_packages";a:0:{}s:15:"current_version";s:5:"4.1.1";}', 'yes'),
(2249, 'wpts_foundation', 'O:15:"WPtouchSettings":76:{s:28:"allow_nested_comment_replies";b:0;s:15:"twitter_account";b:0;s:17:"latest_posts_page";s:4:"none";s:18:"new_video_handling";b:1;s:10:"allow_zoom";i:0;s:16:"smart_app_banner";s:0:"";s:21:"custom_footer_message";s:0:"";s:23:"custom_css_declarations";s:0:"";s:10:"logo_image";s:0:"";s:14:"posts_per_page";s:1:"5";s:19:"excluded_categories";s:0:"";s:13:"excluded_tags";s:0:"";s:15:"typography_sets";s:11:"lato_roboto";s:18:"iphone_icon_retina";b:0;s:19:"android_others_icon";b:0;s:16:"ipad_icon_retina";b:0;s:25:"webapp_enable_persistence";b:0;s:18:"webapp_show_notice";b:1;s:18:"webapp_ignore_urls";s:0:"";s:25:"webapp_notice_expiry_days";i:30;s:27:"startup_screen_iphone_2g_3g";b:0;s:26:"startup_screen_iphone_4_4s";b:0;s:23:"startup_screen_iphone_5";b:0;s:23:"startup_screen_iphone_6";b:0;s:27:"startup_screen_iphone_6plus";b:0;s:30:"startup_screen_ipad_1_portrait";b:0;s:31:"startup_screen_ipad_1_landscape";b:0;s:30:"startup_screen_ipad_3_portrait";b:0;s:31:"startup_screen_ipad_3_landscape";b:0;s:23:"startup_screen_full_res";b:0;s:33:"startup_screen_ipad_full_portrait";b:0;s:34:"startup_screen_ipad_full_landscape";b:0;s:16:"advertising_type";s:4:"none";s:20:"advertising_location";s:6:"header";s:25:"advertising_blog_listings";b:1;s:18:"advertising_single";b:1;s:17:"advertising_pages";b:0;s:20:"advertising_taxonomy";b:1;s:18:"advertising_search";b:1;s:17:"google_adsense_id";s:0:"";s:14:"google_slot_id";s:0:"";s:16:"google_code_type";s:4:"sync";s:25:"custom_advertising_mobile";s:0:"";s:10:"show_share";i:1;s:14:"share_on_pages";i:0;s:14:"share_location";s:3:"top";s:19:"share_colour_scheme";s:7:"default";s:19:"social_facebook_url";s:0:"";s:18:"social_twitter_url";s:0:"";s:17:"social_google_url";s:0:"";s:20:"social_instagram_url";s:0:"";s:17:"social_tumblr_url";s:0:"";s:20:"social_pinterest_url";s:0:"";s:16:"social_vimeo_url";s:0:"";s:18:"social_youtube_url";s:0:"";s:19:"social_linkedin_url";s:0:"";s:15:"social_yelp_url";s:0:"";s:16:"social_email_url";s:0:"";s:14:"social_rss_url";s:0:"";s:16:"featured_enabled";i:1;s:14:"featured_style";s:8:"enhanced";s:18:"featured_autoslide";b:0;s:19:"featured_continuous";b:0;s:18:"featured_grayscale";b:0;s:17:"featured_comments";i:0;s:13:"featured_type";s:6:"latest";s:12:"featured_tag";s:0:"";s:17:"featured_category";s:0:"";s:18:"featured_post_type";s:0:"";s:17:"featured_post_ids";s:0:"";s:14:"featured_speed";s:6:"normal";s:28:"featured_max_number_of_posts";s:1:"5";s:21:"featured_filter_posts";i:1;s:24:"enable_custom_post_types";i:0;s:31:"custom_post_types_in_post_index";i:1;s:25:"enabled_custom_post_types";s:0:"";}', 'yes'),
(2250, 'wpts_bauhaus', 'O:15:"WPtouchSettings":16:{s:18:"bauhaus_menu_style";s:10:"off-canvas";s:21:"bauhaus_menu_position";s:9:"left-side";s:24:"bauhaus_background_color";s:7:"#f9f9f8";s:20:"bauhaus_header_color";s:7:"#2d353f";s:18:"bauhaus_link_color";s:7:"#0376a8";s:30:"bauhaus_post_page_header_color";s:7:"#4ad6a7";s:21:"bauhaus_show_taxonomy";i:0;s:17:"bauhaus_show_date";i:1;s:19:"bauhaus_show_author";i:0;s:19:"bauhaus_show_search";i:1;s:28:"bauhaus_show_comment_bubbles";i:1;s:27:"bauhaus_use_infinite_scroll";b:0;s:22:"bauhaus_use_thumbnails";s:17:"index_single_page";s:22:"bauhaus_thumbnail_type";s:8:"featured";s:30:"bauhaus_thumbnail_custom_field";s:0:"";s:12:"primary_menu";i:2;}', 'yes'),
(2263, '_site_transient_timeout__wptouch_available_cloud_themes', '1461320361', 'yes'),
(2264, '_site_transient__wptouch_available_cloud_themes', 'a:7:{s:3:"cms";a:12:{s:4:"name";s:3:"CMS";s:11:"description";s:122:"A theme made for content-heavy sites. Includes support for a featured slider, custom post types, multiple menus, and more.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.4.4";s:10:"screenshot";s:72:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/cms/screenshot.png";s:14:"preview_images";s:361:"a:5:{i:0;s:59:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/cms/1.jpg";i:1;s:59:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/cms/2.jpg";i:2;s:59:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/cms/3.jpg";i:3;s:59:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/cms/4.jpg";i:4;s:59:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/cms/5.jpg";}";s:4:"base";s:3:"cms";s:16:"long_description";s:237:"\n\nCMS is a great choice if you have lots of content— posts, pages, categories, custom taxonomies and /or post-types— CMS can handle it. Designed for easy navigation through content, CMS supports all of WPtouch Pro\'s major features.\n\n";s:9:"changelog";s:624:"\n\n<em>Version 1.4.4 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n</li><li>Fixed: Login link behaviour in Web App Mode\n\n<em>Version 1.4.3 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n</li><li>Changed: More consistent menu reference in WordPress menu area\n</li><li>Fixed: Ensure link colour is applied to related posts links when active\n\n<em>Version 1.4.2 </em><ul><li>\n</li><li>Fixed: Login links\n\n<em>Version 1.4.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.4 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:41:"http://www.wptouch.com/themes/#themes-cms";}s:4:"open";a:12:{s:4:"name";s:4:"Open";s:11:"description";s:99:"Open brings clicks to your bricks, with business-ready features to help you connect with customers.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.5.4";s:10:"screenshot";s:73:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/open/screenshot.png";s:14:"preview_images";s:366:"a:5:{i:0;s:60:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/open/1.jpg";i:1;s:60:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/open/2.jpg";i:2;s:60:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/open/3.jpg";i:3;s:60:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/open/4.jpg";i:4;s:60:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/open/5.jpg";}";s:4:"base";s:4:"open";s:16:"long_description";s:285:"\n\nOpen was designed for small business, especially brick-and-mortar stores. Open offers native support for operating hours, click-to-call and locations. Easily use its flexible content display to advertise menus, sales, offers, or whatever else your business provides your customers.\n\n";s:9:"changelog";s:489:"\n\n<em>Version 1.5.4 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n\n<em>Version 1.5.3 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n\n<em>Version 1.5.2 </em><ul><li>\n</li><li>Fixed: Minor CSS styling issues\n</li><li>Changed: Organized header settings in Customizer\n\n<em>Version 1.5.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.5 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:42:"http://www.wptouch.com/themes/#themes-open";}s:13:"classic-redux";a:12:{s:4:"name";s:13:"Classic Redux";s:11:"description";s:50:"A fresh take on the iconic original WPtouch theme.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.5.9";s:10:"screenshot";s:82:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/classic-redux/screenshot.png";s:14:"preview_images";s:531:"a:7:{i:0;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/1.jpg";i:1;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/2.jpg";i:2;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/3.jpg";i:3;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/4.jpg";i:4;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/5.jpg";i:5;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/6.jpg";i:6;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/classic/7.jpg";}";s:4:"base";s:13:"classic-redux";s:16:"long_description";s:369:"\n\nClassic has been re-designed and re-engineered for the modern mobile web. Structured content layouts and powerful header navigation make Classic one of our most popular themes. Customize Classic with your own colors and type, and personalize its iconic mobile web design. Flexible options and support for nearly all of WPtouch\'s features, Classic is truly timeless.\n\n";s:9:"changelog";s:954:"\n\n<em>Version 1.5.9 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n</li><li>Fixed: Login link behaviour in Web App Mode\n\n<em>Version 1.5.8 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n</li><li>Fixed: Error in search\n\n<em>Version 1.5.6 </em><ul><li>\n</li><li>Changed: Minor CSS tweaks and fixes\n\n<em>Version 1.5.6 </em><ul><li>\n</li><li>Added: New setting to disable the menu automatically appearing when in landscape orientation\n\n<em>Version 1.5.5 </em><ul><li>\n</li><li>Appearance improvements for Multi-Ads extension on tablets\n\n<em>Version 1.5.4 </em><ul><li>\n</li><li>Styling improvements\n\n<em>Version 1.5.3 </em><ul><li>\n</li><li>Fixed: Load more search results\n\n<em>Version 1.5.2 </em><ul><li>\n</li><li>Fixed: Login links\n\n<em>Version 1.5.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.5 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:51:"http://www.wptouch.com/themes/#themes-classic-redux";}s:6:"simple";a:12:{s:4:"name";s:6:"Simple";s:11:"description";s:117:"Designed for page-driven sites for individuals, small businesses, agencies and shops. An easily branded mobile theme.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.5.4";s:10:"screenshot";s:75:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/simple/screenshot.png";s:14:"preview_images";s:524:"a:7:{i:0;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/1.jpg";i:1;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/2.jpg";i:2;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/3.jpg";i:3;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/4.jpg";i:4;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/5.jpg";i:5;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/6.jpg";i:6;s:62:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/simple/7.jpg";}";s:4:"base";s:6:"simple";s:16:"long_description";s:230:"\n\nSimple is one of our most flexible themes, and can be used for small businesses, blogs, page-driven sites, schools, and more. Its unique drop down menu is playful— while its structure and navigation is clear and uncluttered.\n\n";s:9:"changelog";s:471:"\n\n<em>Version 1.5.4 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n</li><li>Fixed: Login link behaviour in Web App Mode\n\n<em>Version 1.5.3 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n\n<em>Version 1.5.2 </em><ul><li>\n</li><li>Fixed: Login links\n\n<em>Version 1.5.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.5 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:44:"http://www.wptouch.com/themes/#themes-simple";}s:5:"prose";a:12:{s:4:"name";s:5:"Prose";s:11:"description";s:118:"Elegantly understated, Prose stays out of the way and provides a canvas for sharing – and enjoying – your stories.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.5.4";s:10:"screenshot";s:74:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/prose/screenshot.png";s:14:"preview_images";s:371:"a:5:{i:0;s:61:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/prose/1.jpg";i:1;s:61:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/prose/2.jpg";i:2;s:61:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/prose/3.jpg";i:3;s:61:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/prose/4.jpg";i:4;s:61:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/prose/5.jpg";}";s:4:"base";s:5:"prose";s:16:"long_description";s:432:"\n\nProse was beautifully designed to showcase content— if you\'re a writer, or the focus of your website is sharing great content, Prose was designed to make it shine it on mobile. Prose features unique article time remaining functionality, and unique sharing options when readers finish your articles. A simple off-canvas menu also allows visitors to change text reading size, view collections or categories of content, and more.\n\n";s:9:"changelog";s:494:"\n\n<em>Version 1.5.4 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n\n<em>Version 1.5.3 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n\n<em>Version 1.5.2 </em><ul><li>\n</li><li>Added: Featured images to page headers\n</li><li>Changed: Minor styling enhancements and tweaks\n\n<em>Version 1.5.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.5 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:43:"http://www.wptouch.com/themes/#themes-prose";}s:11:"mobilestore";a:12:{s:4:"name";s:11:"MobileStore";s:11:"description";s:45:"A WPtouch Pro theme tailored for WooCommerce.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.3.6";s:10:"screenshot";s:80:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/mobilestore/screenshot.png";s:14:"preview_images";s:798:"a:10:{i:0;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/1.jpg";i:1;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/2.jpg";i:2;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/3.jpg";i:3;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/4.jpg";i:4;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/5.jpg";i:5;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/6.jpg";i:6;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/7.jpg";i:7;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/8.jpg";i:8;s:67:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/9.jpg";i:9;s:68:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/mobilestore/10.jpg";}";s:4:"base";s:11:"mobilestore";s:16:"long_description";s:425:"\n\nMobileStore is the most advanced mobile theme for WooCommerce, ever. Designed for mobile, with no compromises. Off-canvas menu and cart support, coupled with multi-touch product pages and one-page checkout— easily make MobileStore the best way to sell via mobile online.\n\nWith a focus on speed and conversion, MobileStore is designed for you to maximize your mobile sales and offer visitors a happy browsing experience.\n\n";s:9:"changelog";s:906:"\n\n<em>Version 1.3.6 </em><ul><li>\n</li><li>Added: Support for the new AMP extension (blog only)\n</li><li>Added: Denon PayPal Pro to Web App Mode-compatible gateway list\n</li><li>Fixed: use of .attr( \'checked\' ) instead of .prop( \'checked\' )\n</li><li>Fixed: AJAX coupon addition\n\n<em>Version 1.3.5 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n\n<em>Version 1.3.4 </em><ul><li>\n</li><li>Changed: Override responsive image handling (srcset) for product listings.\n\n<em>Version 1.3.3 </em><ul><li>\n</li><li>Fixed: Tracking of recently viewed products when the recently viewed projects widget is not active in a sidebar\n\n<em>Version 1.3.2 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.3.1 </em><ul><li>\n</li><li>Fixed: Product filter field in Customizer\n\n<em>Version 1.3 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:49:"http://www.wptouch.com/themes/#themes-mobilestore";}s:7:"bauhaus";a:12:{s:4:"name";s:7:"Bauhaus";s:11:"description";s:73:"Clean, modern, functional design. Great for all types of WordPress sites.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.6.5";s:10:"screenshot";s:76:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/bauhaus/screenshot.png";s:14:"preview_images";s:531:"a:7:{i:0;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/1.jpg";i:1;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/2.jpg";i:2;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/3.jpg";i:3;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/4.jpg";i:4;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/5.jpg";i:5;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/6.jpg";i:6;s:63:"http://wptouch-pro-4.s3.amazonaws.com/screenshots/bauhaus/7.jpg";}";s:4:"base";s:7:"bauhaus";s:16:"long_description";s:315:"\n\nBauhaus is one of our more flexible themes, and is designed to easily take on the look and feel of your branding. Setting the logo, color and type to match your desktop theme is easy. Lightweight and retina-ready, Bauhaus features flat design and a clean interface, along with intuitive navigation for visitors.\n\n";s:9:"changelog";s:880:"\n\n<em>Version 1.6.5 </em><ul><li>\n</li><li>Added: New menu position setting to control which side the menu is on (and consequently the search icon flips over as well)\n\n<em>Version 1.6.4 </em><ul><li>\n</li><li>Added: Support for the new AMP extension\n</li><li>Added: Featured slider settings to control display of # of comments\n</li><li>Added: Featured slider option for more minimal slider appearance\n</li><li>Changed: Minor styling enhancements and fixes\n</li><li>Fixed: Minor styling issues\n</li><li>Fixed: Login link behaviour in Web App Mode\n\n<em>Version 1.6.3 </em><ul><li>\n</li><li>Changed: Improvements for child theming\n\n<em>Version 1.6.2 </em><ul><li>\n</li><li>Fixed: Login links\n\n<em>Version 1.6.1 </em><ul><li>\n</li><li>Fixed: Long URLs in comments are wrapped over multiple lines\n\n<em>Version 1.6 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch Pro 4</li></ul>";s:10:"theme_type";s:11:"WITHLICENSE";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";s:8:"info_url";s:45:"http://www.wptouch.com/themes/#themes-bauhaus";}}', 'yes'),
(2265, '_site_transient_timeout__wptouch_available_cloud_addons', '1461320361', 'yes'),
(2266, '_site_transient__wptouch_available_cloud_addons', 'a:11:{s:14:"mobile-content";a:11:{s:4:"name";s:14:"Mobile Content";s:11:"description";s:92:"Allows mobile-specific content to be shown instead of your regular content on posts & pages.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.1";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:83:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/mobile-content/screenshot.png";s:4:"base";s:14:"mobile-content";s:16:"long_description";s:295:"\n\nMobile Content adds new textarea meta fields to the post and page editors that allows you to enter content you wish to display to mobile visitors instead of the regular post or page content. This provides the flexibility to tailor your content on specific posts or pages for mobile visitors.\n\n";s:9:"changelog";s:829:"\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Updated: Works with WPtouch 4\n\n<em>Version 1.0.5 </em><ul><li>\n</li><li>Changed: Setting organization in admin\n\n<em>Version 1.0.4.2 </em><ul><li>\n</li><li>Changed: Plugin compatibility\n\n<em>Version 1.0.4.1 </em><ul><li>\n</li><li>Fixed: Bugfixes\n\n<em>Version 1.0.4 </em><ul><li>\n</li><li>Changed: Improved sequencing for broader shortcode support in mobile content.\n\n<em>Version 1.0.3 </em><ul><li>\n</li><li>Changed: Added support for mobile content in custom post types selected for display in WPtouch Pro.\n\n<em>Version 1.0.2 </em><ul><li>\n</li><li>Changed: Moved settings to accommodate multi-ads add-on\n\n<em>Version 1.0.1 </em><ul><li>\n</li><li>Fixed: Mobile content is now substituted earlier for better compatibility with plugins relying on post_content (e.g., Royal Slider)</li></ul>";s:8:"info_url";s:49:"http://www.wptouch.com/extensions/#mobile-content";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:13:"advanced-type";a:11:{s:4:"name";s:13:"Advanced Type";s:11:"description";s:113:"Enables advanced web font support for the full range of Google Fonts and your own sets from Typekit and Fontdeck.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.3.7";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:82:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/advanced-type/screenshot.png";s:4:"base";s:13:"advanced-type";s:16:"long_description";s:351:"\n\nUnlock a whole new level of customization with Advanced Typography. Transform your mobile website with custom fonts, chosen by you. Select your fonts from the complete Google Font library or load your sets from Typekit or Fontdeck. Need additional character sets? Go beyond the default with selectable font subsets through the Google Font library.\n\n";s:9:"changelog";s:1067:"\n\n<em>Version 1.3.7 </em><ul><li>\n</li><li>Fixed: Removed redundant \'/\' in JavaScript URL\n\n<em>Version 1.3.6 </em><ul><li>\n</li><li>Added: Support for the new AMP extension (Google Fonts only)\n\n<em>Version 1.3.5 </em><ul><li>\n</li><li>Changed: Improved support for certain multisite installations.\n\n<em>Version 1.3.3 </em><ul><li>\n</li><li>Fixed: Better handling of cases where font lists cannot be retrieved.\n\n<em>Version 1.3.2 </em><ul><li>\n</li><li>Updated: Improved compatibility with older versions of PHP\n\n<em>Version 1.3.1 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch 4\n\n<em>Version 1.2 </em><ul><li>\n</li><li>Fixed: rare cases where font data was not being correctly saved.\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Updated: Admin js for better compatibility\n</li><li>Fixed: minor javascript issue which could prevent saving settings in some scenarios\n\n<em>Version 1.0.2 </em><ul><li>\n</li><li>Fixed: Misspelling of \'devanagari\' prevented that font subset from being loaded correctly.\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release</li></ul>";s:8:"info_url";s:48:"http://www.wptouch.com/extensions/#advanced-type";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:14:"infinity-cache";a:11:{s:4:"name";s:14:"Infinity Cache";s:11:"description";s:105:"A lightweight page caching module designed specifically for WPtouch. Includes Desktop caching (optional).";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.3.1";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:83:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/infinity-cache/screenshot.png";s:4:"base";s:14:"infinity-cache";s:16:"long_description";s:370:"\n\nInfinity Cache adds true mobile caching to your WPtouch powered mobile site. Infinity Cache loads mobile pages up to 5x faster than responsive or desktop themes. Infinity Cache can be used alongside other solutions like WP Super Cache or W3 Total Cache. Infinity Cache can also be used to provide a substantial decrease in loading time for your desktop site as well.\n\n";s:9:"changelog";s:1656:"\n\n<em>Version 1.3.1 </em><ul><li>\n</li><li>Updated: Suppress cache when new-style comment author cookies are used (using cookie hash)\n\n<em>Version 1.3 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch 4\n\n<em>Version 1.2.2 </em><ul><li>\n</li><li>Fixed: Infinity Cache now handles password protected pages\n</li><li>Changed: Automatically flush the cache when updating the WPtouch Pro plugin\n\n<em>Version 1.2.1 </em><ul><li>\n</li><li>Fixed: Issue with URLs without explicit protocol reference (i.e. // vs http://)\n\n<em>Version 1.2 </em><ul><li>\n</li><li>Changed: Fixed issue where CSS files weren’t switched to CDNs\n</li><li>Changed: Replaced CDN regex code for improved performance\n\n<em>Version 1.1.1 </em><ul><li>\n</li><li>Changed: Now removing the WP admin bar quick link to clearing the cache when Infinity Cache is disabled\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Changed: Automatically flush cache when WPtouch Pro settings are updated\n</li><li>Changed: Extension settings layout\n\n<em>Version 1.0.7 </em><ul><li>\n</li><li>Fixed: Escape add_query_arg\n\n<em>Version 1.0.6 </em><ul><li>\n</li><li>Fixed: Ignore blank lines in ignored-urls list\n\n<em>Version 1.0.5 </em><ul><li>\n</li><li>Changed: Caching a page can now be prevented via the wptouch_addon_cache_current_page filter\n\n<em>Version 1.0.4 </em><ul><li>\n</li><li>Fixed: Removed filemtime warnings\n\n<em>Version 1.0.3 </em><ul><li>\n</li><li>Changed: Moved settings to accommodate multi-ads add-on\n\n<em>Version 1.0.2 </em><ul><li>\n</li><li>Fixed: An issue with desktop caching on servers with high load\n\n<em>Version 1.0.1 </em><ul><li>\n</li><li>Fixed: Caching issue with comment forms\n</li></ul>";s:8:"info_url";s:49:"http://www.wptouch.com/extensions/#infinity-cache";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:17:"responsive-images";a:11:{s:4:"name";s:17:"Responsive Images";s:11:"description";s:127:"Provides significant performance increases for mobile sites by implementing srcset for sites using older versions of WordPress.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.4";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:86:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/responsive-images/screenshot.png";s:4:"base";s:17:"responsive-images";s:16:"long_description";s:157:"\n\nResponsive Images adds support for the srcset attribute to your images, allowing all WordPress site owners to benefit from this feature of WordPress 4.4.\n\n";s:9:"changelog";s:939:"\n\n<em>Version 1.4 </em><ul><li>\n</li><li>Updated: Rewrite to implement WordPress 4.4 srcset handling for sites running older versions of WordPress\n\n<em>Version 1.3 </em><ul><li>\n</li><li>Updated: Works with WPtouch 4\n\n<em>Version 1.2.1 </em><ul><li>\n</li><li>Changed: Admin settings organization\n\n<em>Version 1.2 </em><ul><li>\n</li><li>Changed: Improved compatibility with Nextgen Gallery\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Fixed: Problems when attempting to cache remote images\n\n<em>Version 1.0.5 </em><ul><li>\n</li><li>Fixed: Moved settings page\n\n<em>Version 1.0.4 </em><ul><li>\n</li><li>Changed: Moved settings to accommodate multi-ads add-on\n\n<em>Version 1.0.3 </em><ul><li>\n</li><li>Fixed: Changed internal markup to improve compatibility with WordPress paragraph tags\n\n<em>Version 1.0.2 </em><ul><li>\n</li><li>Fixed: Issue where responsive images would return image with URL of ‘0’ on some multisite configurations</li></ul>";s:8:"info_url";s:52:"http://www.wptouch.com/extensions/#responsive-images";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:9:"multi-ads";a:11:{s:4:"name";s:9:"Multi-Ads";s:11:"description";s:100:"Maximize revenue with multiple advertising units per page and built-in A/B advertising unit testing.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.2.3";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:78:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/multi-ads/screenshot.png";s:4:"base";s:9:"multi-ads";s:16:"long_description";s:454:"\n\nOne of our most popular extensions, Multi Ads offers increased site revenue with multiple ad-units per page and built-in A/B ad-unit testing. It adds new advertising locations within themes, A/B testing for different ads from different providers, or different ads from the same provider to determine your best revenue stream. It also is flexible in terms of using different ad sizes, helping you effectively advertise within WPtouch and your content.\n\n";s:9:"changelog";s:1512:"\n\n<em>Version 1.2.3 </em><ul><li>\n</li><li>Added: New AMP ad placement options\n</li><li>Changed: Add filters to allow extensions to prevent ad output for compatiblity reasons\n\n<em>Version 1.2.2 </em><ul><li>\n</li><li>More robust mid-content ad location to prevent multiple insertions\n\n<em>Version 1.2.1 </em><ul><li>\n</li><li>Added: Support for Google Page-Level Ads (code inserted in the page\'s <head> block)\n\n<em>Version 1.2 </em><ul><li>\n</li><li>Updated: Works with WPtouch 4\n\n<em>Version 1.0.7 (June 25, 2015) </em><ul><li>\n</li><li>Fixed: URL-based filtering for pages using non-ASCII slugs.\n\n<em>Version 1.0.6 (December 11, 2014) </em><ul><li>\n</li><li>Changed: Removed unused settings from pre/post/mid content ads\n\n<em>Version 1.0.5.1 </em><ul><li>\n</li><li>Fixed: Mid-content ad was resulting in some content duplication.\n\n<em>Version 1.0.5 </em><ul><li>\n</li><li>Added: Set a minimum number of characters required before a mid-content ad displays\n\n<em>Version 1.0.4 </em><ul><li>\n</li><li>Added: The ability to prevent ad display on specified pages/URLs\n\n<em>Version 1.0.3 </em><ul><li>\n</li><li>Fixed: In posts with few paragraphs and a before-content sharing bar, mid-content ads no longer appear above the sharing bar.\n\n<em>Version 1.0.2 </em><ul><li>\n</li><li>Added: The ability to have mid-content ads\n</li><li>Added: Support for shortcodes in advertising blocks\n\n<em>Version 1.0.1 </em><ul><li>\n</li><li>Changes and improvements\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial Release\n</li></ul>";s:8:"info_url";s:44:"http://www.wptouch.com/extensions/#multi-ads";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:15:"jquery-enhanced";a:11:{s:4:"name";s:15:"jQuery Enhanced";s:11:"description";s:125:"Adds improved settings for jQuery use on mobile, and offers the ability to load the latest version of jQuery direct from CDN.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.2.3";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:84:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/jquery-enhanced/screenshot.png";s:4:"base";s:15:"jquery-enhanced";s:16:"long_description";s:371:"\n\njQuery is the most popular javascript helper library on the planet. WordPress relies on jQuery, and many, many plugins and themes do, too. WPtouch also leverages jQuery and can optimize your website\'s loading speed by choosing a newer version (2.x), or loading jQuery (and all other scripts that depend on it) in your theme\'s footer, increasing page speed load times.\n\n";s:9:"changelog";s:598:"\n\n<em>Version 1.2.3 </em><ul><li>\n</li><li>Updated to support jQuery 2.2.3, and 1.12.3\n\n<em>Version 1.2.2 </em><ul><li>\n</li><li>Updated to support jQuery 2.2.2\n\n<em>Version 1.2.1 </em><ul><li>\n</li><li>Changed: Allow extensions to disable jQuery Enhanced for compatibility reasons\n\n<em>Version 1.2 </em><ul><li>\n</li><li>Updated to support jQuery 2.2.0\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Updated: Compatible with WPtouch 4\n\n<em>Version 1.0.1 </em><ul><li>\n</li><li>Fixed: Issue where jQuery Enhanced affected the desktop theme\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release</li></ul>";s:8:"info_url";s:50:"http://www.wptouch.com/extensions/#jquery-enhanced";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:9:"basic-ads";a:11:{s:4:"name";s:9:"Basic Ads";s:11:"description";s:112:"Basic advertising extension that allows you to easily show an ad from Google Adsense, or your own custom script.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.1";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:78:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/basic-ads/screenshot.png";s:4:"base";s:9:"basic-ads";s:16:"long_description";s:249:"\n\nBasic Ads allows you to show advertising from Google Adsense, or your own custom ad script. Easily add your code and select where you\'d like your advertising shown. For multiple ad slots, along with A/B testing, purchase the Multi-Ads extension.\n\n";s:9:"changelog";s:179:"\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Added: Support for the new AMP extension (Google Ads only)\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release for WPtouch 4</li></ul>";s:8:"info_url";s:44:"http://www.wptouch.com/extensions/#basic-ads";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:12:"web-app-mode";a:11:{s:4:"name";s:12:"Web-App Mode";s:11:"description";s:132:"Add the ability for Android and iOS visitors to save your website like an app to the device homescreen, loading without the browser.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:5:"1.1.2";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:81:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/web-app-mode/screenshot.png";s:4:"base";s:12:"web-app-mode";s:16:"long_description";s:476:"\n\nOffer an app without the App Store. Only WPtouch allows your iOS visitors to save your website like an app. Web-App Mode is a unique feature that enables your WPtouch-powered website to be saved to iOS and Android visitors\' home screens, like an app. Once they open your app, they\'ll see your mobile website without the browser chrome. They can browse through your website in an immersive, browser-free way, enhancing their mobile experience and enjoyment of your content.\n\n";s:9:"changelog";s:395:"\n\n<em>Version 1.1.2 </em><ul><li>\n</li><li>Changed: Improved support for multisite installations.\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Updated: Add To Homescreen scripts, functionality\n</li><li>Changed: Message for adding to homescreen is now device and OS adaptive, and automatically detects your chosen language for displays\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release</li></ul>";s:8:"info_url";s:47:"http://www.wptouch.com/extensions/#web-app-mode";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:13:"related-posts";a:11:{s:4:"name";s:13:"Related Posts";s:11:"description";s:135:"Show posts related by taxonomy (tags, categories, custom taxonomies) below your posts to encourage readers to stay on your mobile site.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.0";s:7:"depends";s:3:"4.0";s:10:"screenshot";s:82:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/related-posts/screenshot.png";s:4:"base";s:13:"related-posts";s:16:"long_description";s:314:"\n\nRelated posts helps you keep visitors engaged by showing them content that is related to what they\'re reading. Related Posts uses a unique algorithm to select related posts via your taxonomies and titles. Choose flexibly how many posts you\'d like shown, along with being able to show featured images, and more.\n\n";s:9:"changelog";s:66:"\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release</li></ul>";s:8:"info_url";s:48:"http://www.wptouch.com/extensions/#related-posts";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:10:"make-child";a:11:{s:4:"name";s:16:"Make Child Theme";s:11:"description";s:53:"Easily create a child theme from a WPtouch Pro theme.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.0";s:7:"depends";s:5:"4.0.9";s:10:"screenshot";s:79:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/make-child/screenshot.png";s:4:"base";s:10:"make-child";s:16:"long_description";s:213:"\n\nFast-track your custom theming in WPtouch Pro 4 with our new Make Child Theme tool. The tool allows you to select templates to include in your child theme for editing, along with choosing a custom name & icon.\n\n";s:9:"changelog";s:66:"\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release</li></ul>";s:8:"info_url";s:45:"http://www.wptouch.com/extensions/#make-child";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}s:3:"amp";a:11:{s:4:"name";s:15:"AMP for WPtouch";s:11:"description";s:113:"Add Google Accelerated Mobile Pages support to your website integrated with WPtouch, zero configuration required.";s:6:"author";s:17:"BraveNewCode Inc.";s:7:"version";s:3:"1.1";s:7:"depends";s:3:"4.1";s:10:"screenshot";s:72:"http://wptouch-pro-4.s3.amazonaws.com/extras/releases/amp/screenshot.png";s:4:"base";s:3:"amp";s:16:"long_description";s:460:"\n\nThe Accelerated Mobile Pages (AMP) extension adds support for Google\'s lightning-fast mobile post reading format and enhances the AMP for WordPress plugin if installed. Your mobile theme\'s branding settings are automatically applied.\n\nIncludes the AMP for WordPress plugin (https://github.com/Automattic/amp-wp/) if you’re not already using it.\n\nMobile themes can use the wptouch_amp_inject_css( $additional_css ) filter to inject CSS into the stylesheet\n\n";s:9:"changelog";s:664:"\n\n<em>Version 1.1 </em><ul><li>\n</li><li>Added: RTL support\n</li><li>Added: Luma-corrected site name colour for sites using a light header background\n</li><li>Fixed: Compatibility with Nextgen Gallery (prevent JavaScript from being forced into footer)\n\n<em>Version 1.0 </em><ul><li>\n</li><li>Initial release\n</li><li>Embeds Google AdSense ad as configured in the Basic Ads extension\n</li><li>Applies Google Fonts selected via basic font pairings and the Advanced Type Extension\n</li><li>Applies colors selected for active mobile theme\n</li><li>Includes support for ads from the Basic Ads and Multi-Ads extensions\n</li><li>Includes AMP for WordPress 0.3.2</li></ul>";s:8:"info_url";s:38:"http://www.wptouch.com/extensions/#amp";s:7:"buy_url";s:31:"http://www.wptouch.com/pricing/";}}', 'yes'),
(2268, '_transient_timeout_2__974818834', '1461321732', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2269, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/wptouch\\/themes\\/bauhaus\\/default":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css","photocrati-ajax#ajax.min.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/mu-plugins|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate|http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/themes\\/accelerate":"http:\\/\\/www.xjtuistc.club\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css"}', 'no'),
(2270, '_transient_timeout_2__536483053', '1461321722', 'no'),
(2271, '_transient_2__536483053', '{"photocrati-ajax#ajax.min.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css|0":"\\/home\\/kohill\\/domains\\/kohill.cn\\/public_html\\/istc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css"}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/homepage.php'),
(14, 2, '_edit_last', '1'),
(15, 2, '_edit_lock', '1461319178:1'),
(16, 2, 'accelerate_page_layout', 'no_sidebar_full_width'),
(17, 9, '_edit_last', '1'),
(18, 9, '_edit_lock', '1460730262:1'),
(19, 9, 'accelerate_page_layout', 'no_sidebar_full_width'),
(20, 9, '_wp_page_template', 'page-templates/business.php'),
(21, 11, '_edit_last', '1'),
(22, 11, '_edit_lock', '1461164413:1'),
(23, 11, 'accelerate_page_layout', 'no_sidebar_full_width'),
(24, 11, '_wp_page_template', 'page-templates/toppage.php'),
(25, 13, '_edit_last', '1'),
(26, 13, 'accelerate_page_layout', 'no_sidebar_full_width'),
(27, 13, '_wp_page_template', 'default'),
(28, 13, '_edit_lock', '1460739420:1'),
(29, 15, '_edit_last', '1'),
(30, 15, 'accelerate_page_layout', 'default_layout'),
(31, 15, '_wp_page_template', 'page-templates/business.php'),
(32, 15, '_edit_lock', '1460696592:1'),
(43, 20, '_wp_attached_file', '2016/04/cropped-icon.jpg'),
(44, 20, '_wp_attachment_context', 'site-icon'),
(45, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:24:"2016/04/cropped-icon.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-icon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"cropped-icon-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:24:"cropped-icon-512x300.jpg";s:5:"width";i:512;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:24:"cropped-icon-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:24:"cropped-icon-512x330.jpg";s:5:"width";i:512;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:24:"cropped-icon-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:24:"cropped-icon-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:24:"cropped-icon-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:24:"cropped-icon-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:22:"cropped-icon-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 21, '_wp_attached_file', '2016/04/header.jpg'),
(47, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:167;s:4:"file";s:18:"2016/04/header.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"header-300x46.jpg";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"header-768x117.jpg";s:5:"width";i:768;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"header-1024x155.jpg";s:5:"width";i:1024;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:18:"header-720x167.jpg";s:5:"width";i:720;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:18:"header-230x167.jpg";s:5:"width";i:230;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:18:"header-600x167.jpg";s:5:"width";i:600;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:18:"header-365x167.jpg";s:5:"width";i:365;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(50, 22, '_wp_attached_file', '2016/04/header-1.jpg'),
(51, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:20:"2016/04/header-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(52, 23, '_edit_last', '1'),
(53, 23, '_edit_lock', '1460866761:1'),
(54, 23, 'accelerate_page_layout', 'no_sidebar_full_width'),
(55, 23, '_wp_page_template', 'default'),
(56, 25, '_edit_last', '1'),
(57, 25, '_edit_lock', '1460825558:1'),
(58, 25, 'accelerate_page_layout', 'no_sidebar_full_width'),
(59, 25, '_wp_page_template', 'default'),
(60, 27, '_edit_last', '1'),
(61, 27, '_edit_lock', '1461164383:1'),
(62, 27, 'accelerate_page_layout', 'no_sidebar_full_width'),
(63, 27, '_wp_page_template', 'default'),
(64, 30, '_menu_item_type', 'post_type'),
(65, 30, '_menu_item_menu_item_parent', '0'),
(66, 30, '_menu_item_object_id', '27'),
(67, 30, '_menu_item_object', 'page'),
(68, 30, '_menu_item_target', ''),
(69, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 30, '_menu_item_xfn', ''),
(71, 30, '_menu_item_url', ''),
(72, 31, '_menu_item_type', 'post_type'),
(73, 31, '_menu_item_menu_item_parent', '0'),
(74, 31, '_menu_item_object_id', '25'),
(75, 31, '_menu_item_object', 'page'),
(76, 31, '_menu_item_target', ''),
(77, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 31, '_menu_item_xfn', ''),
(79, 31, '_menu_item_url', ''),
(80, 32, '_menu_item_type', 'post_type'),
(81, 32, '_menu_item_menu_item_parent', '0'),
(82, 32, '_menu_item_object_id', '23'),
(83, 32, '_menu_item_object', 'page'),
(84, 32, '_menu_item_target', ''),
(85, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 32, '_menu_item_xfn', ''),
(87, 32, '_menu_item_url', ''),
(88, 33, '_menu_item_type', 'post_type'),
(89, 33, '_menu_item_menu_item_parent', '0'),
(90, 33, '_menu_item_object_id', '15'),
(91, 33, '_menu_item_object', 'page'),
(92, 33, '_menu_item_target', ''),
(93, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 33, '_menu_item_xfn', ''),
(95, 33, '_menu_item_url', ''),
(104, 35, '_menu_item_type', 'post_type'),
(105, 35, '_menu_item_menu_item_parent', '0'),
(106, 35, '_menu_item_object_id', '11'),
(107, 35, '_menu_item_object', 'page'),
(108, 35, '_menu_item_target', ''),
(109, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 35, '_menu_item_xfn', ''),
(111, 35, '_menu_item_url', ''),
(120, 37, '_menu_item_type', 'post_type'),
(121, 37, '_menu_item_menu_item_parent', '0'),
(122, 37, '_menu_item_object_id', '2'),
(123, 37, '_menu_item_object', 'page'),
(124, 37, '_menu_item_target', ''),
(125, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 37, '_menu_item_xfn', ''),
(127, 37, '_menu_item_url', ''),
(129, 44, '_wp_attached_file', '2016/04/beijing.jpg'),
(130, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:510;s:6:"height";i:510;s:4:"file";s:19:"2016/04/beijing.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"beijing-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"beijing-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:19:"beijing-510x300.jpg";s:5:"width";i:510;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:19:"beijing-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:19:"beijing-510x330.jpg";s:5:"width";i:510;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:19:"beijing-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(131, 44, '_wp_attachment_is_custom_background', 'accelerate'),
(132, 45, '_edit_last', '1'),
(133, 45, '_edit_lock', '1460739871:1'),
(134, 45, 'accelerate_page_layout', 'no_sidebar_content_centered'),
(135, 45, '_wp_page_template', 'default'),
(248, 65, '__defaults_set', '1'),
(249, 65, 'filter', 'raw'),
(250, 65, 'id_field', 'ID'),
(257, 66, '__defaults_set', '1'),
(258, 66, 'filter', 'raw'),
(259, 66, 'id_field', 'ID'),
(260, 67, '__defaults_set', '1'),
(261, 67, 'filter', 'raw'),
(262, 67, 'id_field', 'ID'),
(263, 1, '_edit_lock', '1461298199:1'),
(264, 1, '_edit_last', '1'),
(265, 1, 'accelerate_page_layout', 'no_sidebar_content_centered'),
(268, 1, '_wp_old_slug', 'hello-world'),
(275, 70, '_menu_item_type', 'custom'),
(276, 70, '_menu_item_menu_item_parent', '0'),
(277, 70, '_menu_item_object_id', '70'),
(278, 70, '_menu_item_object', 'custom'),
(279, 70, '_menu_item_target', ''),
(280, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 70, '_menu_item_xfn', ''),
(282, 70, '_menu_item_url', 'http://121.42.208.242'),
(283, 75, '_edit_last', '1'),
(284, 75, '_edit_lock', '1460742050:1'),
(285, 75, 'accelerate_page_layout', 'default_layout'),
(288, 75, '_wp_trash_meta_status', 'publish'),
(289, 75, '_wp_trash_meta_time', '1460742075'),
(290, 79, '_edit_last', '1'),
(291, 79, 'accelerate_page_layout', 'no_sidebar_full_width'),
(292, 79, '_wp_page_template', 'page-templates/pageaddtous.php'),
(293, 80, '_menu_item_type', 'post_type'),
(294, 80, '_menu_item_menu_item_parent', '0'),
(295, 80, '_menu_item_object_id', '79'),
(296, 80, '_menu_item_object', 'page'),
(297, 80, '_menu_item_target', ''),
(298, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 80, '_menu_item_xfn', ''),
(300, 80, '_menu_item_url', ''),
(301, 79, '_edit_lock', '1461257506:1'),
(308, 91, '_edit_last', '1'),
(309, 91, '_edit_lock', '1460813935:1'),
(310, 91, '_aol_feature_a', 'c'),
(311, 91, '_aol_feature_s', 's'),
(312, 91, '_aol_app_s', 's:53:"a:2:{s:4:"type";s:8:"checkbox";s:7:"options";s:0:"";}";'),
(313, 93, '_edit_last', '1'),
(314, 93, '_edit_lock', '1460814149:1'),
(315, 93, '_aol_feature_dd', 'dd'),
(316, 93, '_aol_app_dddd', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(317, 93, '_wp_trash_meta_status', 'publish'),
(318, 93, '_wp_trash_meta_time', '1460814534'),
(319, 91, '_wp_trash_meta_status', 'publish'),
(320, 91, '_wp_trash_meta_time', '1460814546'),
(321, 94, '_edit_last', '1'),
(322, 94, '_edit_lock', '1460817266:1'),
(323, 94, '_aol_app_姓名', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(324, 94, '_aol_app_专业', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(325, 94, '_aol_app_性别', 's:57:"a:2:{s:4:"type";s:5:"radio";s:7:"options";s:7:"男,女";}";'),
(326, 94, '_aol_app_出生日期', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(327, 94, '_aol_app_邮箱', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(328, 94, '_aol_app_手机', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(329, 94, '_aol_app_书院', 's:49:"a:2:{s:4:"type";s:4:"text";s:7:"options";s:0:"";}";'),
(330, 94, '_aol_app_特长', 's:54:"a:2:{s:4:"type";s:9:"text_area";s:7:"options";s:0:"";}";'),
(331, 94, '_aol_app_部门', 's:80:"a:2:{s:4:"type";s:5:"radio";s:7:"options";s:29:"事务部,技术部,美工部";}";'),
(333, 103, '_wp_attached_file', '2016/04/IMG_20160416_170248.jpg'),
(334, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:31:"2016/04/IMG_20160416_170248.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20160416_170248-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20160416_170248-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20160416_170248-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20160416_170248-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:31:"IMG_20160416_170248-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:31:"IMG_20160416_170248-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:31:"IMG_20160416_170248-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:31:"IMG_20160416_170248-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"342";s:13:"shutter_speed";s:17:"0.058823529411765";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(335, 103, '_wp_attachment_is_custom_background', 'accelerate'),
(336, 105, '_edit_last', '1'),
(337, 105, 'accelerate_page_layout', 'no_sidebar_full_width'),
(338, 105, '_wp_page_template', 'page-templates/toppage.php'),
(339, 106, '_menu_item_type', 'post_type'),
(340, 106, '_menu_item_menu_item_parent', '0'),
(341, 106, '_menu_item_object_id', '105'),
(342, 106, '_menu_item_object', 'page'),
(343, 106, '_menu_item_target', ''),
(344, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(345, 106, '_menu_item_xfn', ''),
(346, 106, '_menu_item_url', ''),
(347, 105, '_edit_lock', '1460880328:1'),
(348, 45, '_wp_trash_meta_status', 'publish'),
(349, 45, '_wp_trash_meta_time', '1460861872'),
(350, 108, '__defaults_set', '1'),
(351, 108, 'filter', 'raw'),
(352, 108, 'id_field', 'ID'),
(353, 109, '__defaults_set', '1'),
(354, 109, 'filter', 'raw'),
(355, 109, 'id_field', 'ID'),
(365, 112, '__defaults_set', '1'),
(366, 112, 'filter', 'raw'),
(367, 112, 'id_field', 'ID'),
(374, 114, '__defaults_set', '1'),
(375, 114, 'filter', 'raw'),
(376, 114, 'id_field', 'ID'),
(383, 116, '__defaults_set', '1'),
(384, 116, 'filter', 'raw'),
(385, 116, 'id_field', 'ID'),
(392, 118, '__defaults_set', '1'),
(393, 118, 'filter', 'raw'),
(394, 118, 'id_field', 'ID'),
(401, 120, '__defaults_set', '1'),
(402, 120, 'filter', 'raw'),
(403, 120, 'id_field', 'ID'),
(410, 122, '__defaults_set', '1'),
(411, 122, 'filter', 'raw'),
(412, 122, 'id_field', 'ID'),
(419, 124, '__defaults_set', '1'),
(420, 124, 'filter', 'raw'),
(421, 124, 'id_field', 'ID'),
(428, 126, '__defaults_set', '1'),
(429, 126, 'filter', 'raw'),
(430, 126, 'id_field', 'ID'),
(437, 128, '__defaults_set', '1'),
(438, 128, 'filter', 'raw'),
(439, 128, 'id_field', 'ID'),
(446, 130, '__defaults_set', '1'),
(447, 130, 'filter', 'raw'),
(448, 130, 'id_field', 'ID'),
(494, 134, '__defaults_set', '1'),
(495, 134, 'filter', 'raw'),
(496, 134, 'id_field', 'ID'),
(530, 135, '__defaults_set', '1'),
(531, 135, 'filter', 'raw'),
(532, 135, 'id_field', 'ID'),
(551, 113, '__defaults_set', '1'),
(552, 113, 'filter', 'raw'),
(553, 113, 'id_field', 'ID'),
(554, 115, '__defaults_set', '1'),
(555, 115, 'filter', 'raw'),
(556, 115, 'id_field', 'ID'),
(557, 117, '__defaults_set', '1'),
(558, 117, 'filter', 'raw'),
(559, 117, 'id_field', 'ID'),
(560, 111, '__defaults_set', '1'),
(561, 111, 'filter', 'raw'),
(562, 111, 'id_field', 'ID'),
(563, 141, '__defaults_set', '1'),
(564, 141, 'filter', 'raw'),
(565, 141, 'id_field', 'ID'),
(566, 142, '__defaults_set', '1'),
(567, 142, 'filter', 'raw'),
(568, 142, 'id_field', 'ID'),
(578, 145, '__defaults_set', '1'),
(579, 145, 'filter', 'raw'),
(580, 145, 'id_field', 'ID'),
(587, 147, '__defaults_set', '1'),
(588, 147, 'filter', 'raw'),
(589, 147, 'id_field', 'ID'),
(596, 149, '__defaults_set', '1'),
(597, 149, 'filter', 'raw'),
(598, 149, 'id_field', 'ID'),
(605, 151, '__defaults_set', '1'),
(606, 151, 'filter', 'raw'),
(607, 151, 'id_field', 'ID'),
(614, 153, '__defaults_set', '1'),
(615, 153, 'filter', 'raw'),
(616, 153, 'id_field', 'ID'),
(623, 155, '__defaults_set', '1'),
(624, 155, 'filter', 'raw'),
(625, 155, 'id_field', 'ID'),
(632, 157, '__defaults_set', '1'),
(633, 157, 'filter', 'raw'),
(634, 157, 'id_field', 'ID'),
(641, 159, '__defaults_set', '1'),
(642, 159, 'filter', 'raw'),
(643, 159, 'id_field', 'ID'),
(650, 161, '__defaults_set', '1'),
(651, 161, 'filter', 'raw'),
(652, 161, 'id_field', 'ID'),
(659, 163, '__defaults_set', '1'),
(660, 163, 'filter', 'raw'),
(661, 163, 'id_field', 'ID'),
(683, 144, '__defaults_set', '1'),
(684, 144, 'filter', 'raw'),
(685, 144, 'id_field', 'ID'),
(689, 148, '__defaults_set', '1'),
(690, 148, 'filter', 'raw'),
(691, 148, 'id_field', 'ID'),
(692, 150, '__defaults_set', '1'),
(693, 150, 'filter', 'raw'),
(694, 150, 'id_field', 'ID'),
(695, 152, '__defaults_set', '1'),
(696, 152, 'filter', 'raw'),
(697, 152, 'id_field', 'ID'),
(819, 146, '__defaults_set', '1'),
(820, 146, 'filter', 'raw'),
(821, 146, 'id_field', 'ID'),
(822, 168, '__defaults_set', '1'),
(823, 168, 'filter', 'raw'),
(824, 168, 'id_field', 'ID'),
(825, 169, '__defaults_set', '1'),
(826, 169, 'filter', 'raw'),
(827, 169, 'id_field', 'ID'),
(834, 172, '__defaults_set', '1'),
(835, 172, 'filter', 'raw'),
(836, 172, 'id_field', 'ID'),
(840, 174, '__defaults_set', '1'),
(841, 174, 'filter', 'raw'),
(842, 174, 'id_field', 'ID'),
(846, 176, '__defaults_set', '1'),
(847, 176, 'filter', 'raw'),
(848, 176, 'id_field', 'ID'),
(852, 178, '__defaults_set', '1'),
(853, 178, 'filter', 'raw'),
(854, 178, 'id_field', 'ID'),
(858, 180, '__defaults_set', '1'),
(859, 180, 'filter', 'raw'),
(860, 180, 'id_field', 'ID'),
(864, 182, '__defaults_set', '1'),
(865, 182, 'filter', 'raw'),
(866, 182, 'id_field', 'ID'),
(870, 184, '__defaults_set', '1'),
(871, 184, 'filter', 'raw'),
(872, 184, 'id_field', 'ID'),
(876, 186, '__defaults_set', '1'),
(877, 186, 'filter', 'raw'),
(878, 186, 'id_field', 'ID'),
(882, 188, '__defaults_set', '1'),
(883, 188, 'filter', 'raw'),
(884, 188, 'id_field', 'ID'),
(888, 190, '__defaults_set', '1'),
(889, 190, 'filter', 'raw'),
(890, 190, 'id_field', 'ID'),
(912, 171, '__defaults_set', '1'),
(913, 171, 'filter', 'raw'),
(914, 171, 'id_field', 'ID'),
(915, 175, '__defaults_set', '1'),
(916, 175, 'filter', 'raw'),
(917, 175, 'id_field', 'ID'),
(918, 177, '__defaults_set', '1'),
(919, 177, 'filter', 'raw'),
(920, 177, 'id_field', 'ID'),
(921, 179, '__defaults_set', '1'),
(922, 179, 'filter', 'raw'),
(923, 179, 'id_field', 'ID'),
(924, 181, '__defaults_set', '1'),
(925, 181, 'filter', 'raw'),
(926, 181, 'id_field', 'ID'),
(927, 193, '__defaults_set', '1'),
(928, 193, 'filter', 'raw'),
(929, 193, 'id_field', 'ID'),
(930, 194, '__defaults_set', '1'),
(931, 194, 'filter', 'raw'),
(932, 194, 'id_field', 'ID'),
(936, 196, '__defaults_set', '1'),
(937, 196, 'filter', 'raw'),
(938, 196, 'id_field', 'ID'),
(939, 197, '__defaults_set', '1'),
(940, 197, 'filter', 'raw'),
(941, 197, 'id_field', 'ID'),
(942, 198, '__defaults_set', '1'),
(943, 198, 'filter', 'raw'),
(944, 198, 'id_field', 'ID'),
(945, 199, '__defaults_set', '1'),
(946, 199, 'filter', 'raw'),
(947, 199, 'id_field', 'ID'),
(948, 200, '__defaults_set', '1'),
(949, 200, 'filter', 'raw'),
(950, 200, 'id_field', 'ID'),
(951, 201, '__defaults_set', '1'),
(952, 201, 'filter', 'raw'),
(953, 201, 'id_field', 'ID'),
(954, 202, '__defaults_set', '1'),
(955, 202, 'filter', 'raw'),
(956, 202, 'id_field', 'ID'),
(957, 204, '__defaults_set', '1'),
(958, 204, 'filter', 'raw'),
(959, 204, 'id_field', 'ID'),
(960, 205, '__defaults_set', '1'),
(961, 205, 'filter', 'raw'),
(962, 205, 'id_field', 'ID'),
(963, 206, '__defaults_set', '1'),
(964, 206, 'filter', 'raw'),
(965, 206, 'id_field', 'ID'),
(966, 207, '__defaults_set', '1'),
(967, 207, 'filter', 'raw'),
(968, 207, 'id_field', 'ID'),
(969, 208, '__defaults_set', '1'),
(970, 208, 'filter', 'raw'),
(971, 208, 'id_field', 'ID'),
(972, 209, '__defaults_set', '1'),
(973, 209, 'filter', 'raw'),
(974, 209, 'id_field', 'ID'),
(975, 210, '__defaults_set', '1'),
(976, 210, 'filter', 'raw'),
(977, 210, 'id_field', 'ID'),
(978, 211, '__defaults_set', '1'),
(979, 211, 'filter', 'raw'),
(980, 211, 'id_field', 'ID'),
(981, 212, '__defaults_set', '1'),
(982, 212, 'filter', 'raw'),
(983, 212, 'id_field', 'ID'),
(984, 213, '__defaults_set', '1'),
(985, 213, 'filter', 'raw'),
(986, 213, 'id_field', 'ID'),
(987, 214, '__defaults_set', '1'),
(988, 214, 'filter', 'raw'),
(989, 214, 'id_field', 'ID'),
(990, 215, '__defaults_set', '1'),
(991, 215, 'filter', 'raw'),
(992, 215, 'id_field', 'ID'),
(993, 216, '__defaults_set', '1'),
(994, 216, 'filter', 'raw'),
(995, 216, 'id_field', 'ID'),
(996, 217, '__defaults_set', '1'),
(997, 217, 'filter', 'raw'),
(998, 217, 'id_field', 'ID'),
(999, 218, '__defaults_set', '1'),
(1000, 218, 'filter', 'raw'),
(1001, 218, 'id_field', 'ID'),
(1002, 219, '__defaults_set', '1'),
(1003, 219, 'filter', 'raw'),
(1004, 219, 'id_field', 'ID'),
(1005, 220, '__defaults_set', '1'),
(1006, 220, 'filter', 'raw'),
(1007, 220, 'id_field', 'ID'),
(1008, 221, '__defaults_set', '1'),
(1009, 221, 'filter', 'raw'),
(1010, 221, 'id_field', 'ID'),
(1011, 222, '__defaults_set', '1'),
(1012, 222, 'filter', 'raw'),
(1013, 222, 'id_field', 'ID'),
(1014, 223, '__defaults_set', '1'),
(1015, 223, 'filter', 'raw'),
(1016, 223, 'id_field', 'ID'),
(1017, 224, '__defaults_set', '1'),
(1018, 224, 'filter', 'raw'),
(1019, 224, 'id_field', 'ID'),
(1020, 225, '__defaults_set', '1'),
(1021, 225, 'filter', 'raw'),
(1022, 225, 'id_field', 'ID'),
(1023, 226, '__defaults_set', '1'),
(1024, 226, 'filter', 'raw'),
(1025, 226, 'id_field', 'ID'),
(1026, 227, '__defaults_set', '1'),
(1027, 227, 'filter', 'raw'),
(1028, 227, 'id_field', 'ID'),
(1029, 228, '__defaults_set', '1'),
(1030, 228, 'filter', 'raw'),
(1031, 228, 'id_field', 'ID'),
(1032, 229, '__defaults_set', '1'),
(1033, 229, 'filter', 'raw'),
(1034, 229, 'id_field', 'ID'),
(1035, 230, '__defaults_set', '1'),
(1036, 230, 'filter', 'raw'),
(1037, 230, 'id_field', 'ID'),
(1038, 231, '__defaults_set', '1'),
(1039, 231, 'filter', 'raw'),
(1040, 231, 'id_field', 'ID'),
(1041, 232, '__defaults_set', '1'),
(1042, 232, 'filter', 'raw'),
(1043, 232, 'id_field', 'ID'),
(1044, 233, '__defaults_set', '1'),
(1045, 233, 'filter', 'raw'),
(1046, 233, 'id_field', 'ID'),
(1047, 234, '__defaults_set', '1'),
(1048, 234, 'filter', 'raw'),
(1049, 234, 'id_field', 'ID'),
(1050, 235, '__defaults_set', '1'),
(1051, 235, 'filter', 'raw'),
(1052, 235, 'id_field', 'ID'),
(1053, 236, '__defaults_set', '1'),
(1054, 236, 'filter', 'raw'),
(1055, 236, 'id_field', 'ID'),
(1056, 237, '__defaults_set', '1'),
(1057, 237, 'filter', 'raw'),
(1058, 237, 'id_field', 'ID'),
(1059, 238, '__defaults_set', '1'),
(1060, 238, 'filter', 'raw'),
(1061, 238, 'id_field', 'ID'),
(1062, 239, '__defaults_set', '1'),
(1063, 239, 'filter', 'raw'),
(1064, 239, 'id_field', 'ID'),
(1065, 240, '__defaults_set', '1'),
(1066, 240, 'filter', 'raw'),
(1067, 240, 'id_field', 'ID'),
(1068, 241, '__defaults_set', '1'),
(1069, 241, 'filter', 'raw'),
(1070, 241, 'id_field', 'ID'),
(1071, 242, '__defaults_set', '1'),
(1072, 242, 'filter', 'raw'),
(1073, 242, 'id_field', 'ID'),
(1074, 243, '__defaults_set', '1'),
(1075, 243, 'filter', 'raw'),
(1076, 243, 'id_field', 'ID'),
(1077, 244, '__defaults_set', '1'),
(1078, 244, 'filter', 'raw'),
(1079, 244, 'id_field', 'ID'),
(1080, 245, '__defaults_set', '1'),
(1081, 245, 'filter', 'raw'),
(1082, 245, 'id_field', 'ID'),
(1083, 246, '__defaults_set', '1'),
(1084, 246, 'filter', 'raw'),
(1085, 246, 'id_field', 'ID'),
(1086, 247, '__defaults_set', '1'),
(1087, 247, 'filter', 'raw'),
(1088, 247, 'id_field', 'ID'),
(1089, 248, '__defaults_set', '1'),
(1090, 248, 'filter', 'raw'),
(1091, 248, 'id_field', 'ID'),
(1092, 249, '__defaults_set', '1'),
(1093, 249, 'filter', 'raw'),
(1094, 249, 'id_field', 'ID'),
(1095, 250, '__defaults_set', '1'),
(1096, 250, 'filter', 'raw'),
(1097, 250, 'id_field', 'ID'),
(1098, 251, '__defaults_set', '1'),
(1099, 251, 'filter', 'raw'),
(1100, 251, 'id_field', 'ID'),
(1101, 195, '__defaults_set', '1'),
(1102, 195, 'filter', 'raw'),
(1103, 195, 'id_field', 'ID'),
(1328, 258, '_edit_last', '1'),
(1329, 258, '_edit_lock', '1460866311:1'),
(1442, 58, 'filter', 'raw'),
(1443, 58, 'meta_id', '168'),
(1444, 58, 'post_id', '58'),
(1445, 58, 'meta_key', 'name'),
(1446, 58, 'meta_value', 'photocrati-nextgen_basic_thumbnails'),
(1447, 58, 'title', 'NextGEN 缩略图 基础版'),
(1448, 58, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(1449, 58, 'default_source', 'galleries'),
(1450, 58, 'view_order', '10000'),
(1451, 58, 'name', 'photocrati-nextgen_basic_thumbnails'),
(1452, 58, 'installed_at_version', '2.1.31'),
(1453, 58, 'hidden_from_ui', ''),
(1454, 58, '__defaults_set', '1'),
(1455, 58, 'entity_types', 'WyJpbWFnZSJd'),
(1456, 58, 'id_field', 'ID'),
(1457, 58, 'settings', 'eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOiIwIiwiYWpheF9wYWdpbmF0aW9uIjoiMCIsInNob3dfYWxsX2luX2xpZ2h0Ym94IjoiMCIsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjoiMSIsInNob3dfc2xpZGVzaG93X2xpbmsiOiIxIiwic2xpZGVzaG93X2xpbmtfdGV4dCI6IltcdTY2M2VcdTc5M2FcdTVlN2JcdTcwNmZcdTcyNDddIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1458, 59, 'filter', 'raw'),
(1459, 59, 'meta_id', '180'),
(1460, 59, 'post_id', '59'),
(1461, 59, 'meta_key', 'name'),
(1462, 59, 'meta_value', 'photocrati-nextgen_basic_slideshow'),
(1463, 59, 'title', 'NextGEN 幻灯片 基础版'),
(1464, 59, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(1465, 59, 'default_source', 'galleries'),
(1466, 59, 'view_order', '10010'),
(1467, 59, 'name', 'photocrati-nextgen_basic_slideshow'),
(1468, 59, 'installed_at_version', '2.1.31'),
(1469, 59, 'hidden_from_ui', ''),
(1470, 59, '__defaults_set', '1'),
(1471, 59, 'entity_types', 'WyJpbWFnZSJd'),
(1472, 59, 'id_field', 'ID'),
(1473, 59, 'settings', 'eyJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiY3ljbGVfaW50ZXJ2YWwiOiIxMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltcdTY2M2VcdTc5M2FcdTdmMjlcdTc1NjVcdTU2ZmVdIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGh1bWJuYWlsX3dpZHRoIjoiNjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjQ4MCIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1474, 60, 'filter', 'raw'),
(1475, 60, 'meta_id', '192'),
(1476, 60, 'post_id', '60'),
(1477, 60, 'meta_key', 'name'),
(1478, 60, 'meta_value', 'photocrati-nextgen_basic_imagebrowser'),
(1479, 60, 'title', 'NextGEN ImageBrowser 基础版'),
(1480, 60, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(1481, 60, 'default_source', 'galleries'),
(1482, 60, 'view_order', '10020'),
(1483, 60, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(1484, 60, 'installed_at_version', '2.1.31'),
(1485, 60, 'hidden_from_ui', ''),
(1486, 60, '__defaults_set', '1'),
(1487, 60, 'entity_types', 'WyJpbWFnZSJd'),
(1488, 60, 'id_field', 'ID'),
(1489, 60, 'settings', 'eyJhamF4X3BhZ2luYXRpb24iOiIwIiwidGVtcGxhdGUiOiJFOlxceGFtcHBcXGh0ZG9jc1xcaXN0Y1xcd3AtY29udGVudFxccGx1Z2luc1xcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZ2dsZWdhY3lcXHZpZXdcXGltYWdlYnJvd3Nlci1jYXB0aW9uLnBocCIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1490, 61, 'filter', 'raw'),
(1491, 61, 'meta_id', '205'),
(1492, 61, 'post_id', '61'),
(1493, 61, 'meta_key', 'name'),
(1494, 61, 'meta_value', 'photocrati-nextgen_basic_singlepic'),
(1495, 61, 'title', 'NextGEN Basic SinglePic'),
(1496, 61, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(1497, 61, 'default_source', 'galleries'),
(1498, 61, 'view_order', '10060'),
(1499, 61, 'hidden_from_ui', '1'),
(1500, 61, 'name', 'photocrati-nextgen_basic_singlepic'),
(1501, 61, 'installed_at_version', '2.1.31'),
(1502, 61, '__defaults_set', '1'),
(1503, 61, 'entity_types', 'WyJpbWFnZSJd'),
(1504, 61, 'id_field', 'ID'),
(1505, 61, 'settings', 'eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1506, 62, 'filter', 'raw'),
(1507, 62, 'meta_id', '216'),
(1508, 62, 'post_id', '62'),
(1509, 62, 'meta_key', 'name'),
(1510, 62, 'meta_value', 'photocrati-nextgen_basic_tagcloud'),
(1511, 62, 'title', 'NextGEN Basic TagCloud'),
(1512, 62, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(1513, 62, 'default_source', 'tags'),
(1514, 62, 'view_order', '10100'),
(1515, 62, 'name', 'photocrati-nextgen_basic_tagcloud'),
(1516, 62, 'installed_at_version', '2.1.31'),
(1517, 62, 'hidden_from_ui', ''),
(1518, 62, '__defaults_set', '1'),
(1519, 62, 'entity_types', 'WyJpbWFnZSJd'),
(1520, 62, 'id_field', 'ID'),
(1521, 62, 'settings', 'eyJudW1iZXIiOiI0NSIsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(1522, 63, 'filter', 'raw'),
(1523, 63, 'meta_id', '228'),
(1524, 63, 'post_id', '63'),
(1525, 63, 'meta_key', 'name'),
(1526, 63, 'meta_value', 'photocrati-nextgen_basic_compact_album'),
(1527, 63, 'title', 'NextGEN 紧凑视图相册 基础版'),
(1528, 63, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(1529, 63, 'default_source', 'albums'),
(1530, 63, 'view_order', '10200'),
(1531, 63, 'name', 'photocrati-nextgen_basic_compact_album'),
(1532, 63, 'installed_at_version', '2.1.31'),
(1533, 63, 'hidden_from_ui', ''),
(1534, 63, '__defaults_set', '1'),
(1535, 63, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1536, 63, 'id_field', 'ID'),
(1537, 63, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiI0ODAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMzIwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1538, 64, 'filter', 'raw'),
(1539, 64, 'meta_id', '240'),
(1540, 64, 'post_id', '64'),
(1541, 64, 'meta_key', 'name'),
(1542, 64, 'meta_value', 'photocrati-nextgen_basic_extended_album'),
(1543, 64, 'title', 'NextGEN 扩展视图相册 基础版'),
(1544, 64, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(1545, 64, 'default_source', 'albums'),
(1546, 64, 'view_order', '10210'),
(1547, 64, 'name', 'photocrati-nextgen_basic_extended_album'),
(1548, 64, 'installed_at_version', '2.1.31'),
(1549, 64, 'hidden_from_ui', ''),
(1550, 64, '__defaults_set', '1'),
(1551, 64, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1552, 64, 'id_field', 'ID'),
(1553, 64, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1554, 265, '_wp_attached_file', '2016/04/1.jpg'),
(1555, 265, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:724;s:4:"file";s:13:"2016/04/1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x543.jpg";s:5:"width";i:768;s:6:"height";i:543;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"1-1024x724.jpg";s:5:"width";i:1024;s:6:"height";i:724;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"1-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"1-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:13:"1-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"1-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1556, 266, '_wp_attached_file', '2016/04/2.jpg'),
(1557, 266, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:724;s:4:"file";s:13:"2016/04/2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"2-768x543.jpg";s:5:"width";i:768;s:6:"height";i:543;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"2-1024x724.jpg";s:5:"width";i:1024;s:6:"height";i:724;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"2-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"2-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:13:"2-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"2-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1558, 267, '_wp_attached_file', '2016/04/3.jpg'),
(1559, 267, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:646;s:6:"height";i:511;s:4:"file";s:13:"2016/04/3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"3-646x300.jpg";s:5:"width";i:646;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"3-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:13:"3-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"3-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1560, 268, '_wp_attached_file', '2016/04/4.jpg'),
(1561, 268, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:315;s:4:"file";s:13:"2016/04/4.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"4-558x300.jpg";s:5:"width";i:558;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"4-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"4-365x315.jpg";s:5:"width";i:365;s:6:"height";i:315;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1562, 269, '_wp_attached_file', '2016/04/5.jpg'),
(1563, 269, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:329;s:4:"file";s:13:"2016/04/5.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"5-580x300.jpg";s:5:"width";i:580;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"5-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"5-365x329.jpg";s:5:"width";i:365;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1564, 270, '_wp_attached_file', '2016/04/6.jpg'),
(1565, 270, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:533;s:6:"height";i:270;s:4:"file";s:13:"2016/04/6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"6-300x152.jpg";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"6-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"6-365x270.jpg";s:5:"width";i:365;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1566, 271, '_wp_attached_file', '2016/04/7.jpg'),
(1567, 271, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:419;s:4:"file";s:13:"2016/04/7.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:13:"7-558x300.jpg";s:5:"width";i:558;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:13:"7-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:13:"7-558x330.jpg";s:5:"width";i:558;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:13:"7-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1568, 272, '_wp_attached_file', '2016/04/展架A.jpg'),
(1569, 272, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2269;s:6:"height";i:5103;s:4:"file";s:19:"2016/04/展架A.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"展架A-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"展架A-133x300.jpg";s:5:"width";i:133;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"展架A-768x1727.jpg";s:5:"width";i:768;s:6:"height";i:1727;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"展架A-455x1024.jpg";s:5:"width";i:455;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:19:"展架A-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:19:"展架A-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:19:"展架A-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:19:"展架A-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:7:"展架A";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1570, 273, '_wp_attached_file', '2016/04/展架A-01.jpg'),
(1571, 273, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2269;s:6:"height";i:5103;s:4:"file";s:22:"2016/04/展架A-01.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"展架A-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"展架A-01-133x300.jpg";s:5:"width";i:133;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"展架A-01-768x1727.jpg";s:5:"width";i:768;s:6:"height";i:1727;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"展架A-01-455x1024.jpg";s:5:"width";i:455;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:22:"展架A-01-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:22:"展架A-01-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:22:"展架A-01-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:22:"展架A-01-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1572, 264, '_edit_last', '1'),
(1587, 264, '_edit_lock', '1460880313:1'),
(1616, 278, '_wp_attached_file', '2016/04/IMG_20160416_170142.jpg'),
(1617, 278, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:4096;s:4:"file";s:31:"2016/04/IMG_20160416_170142.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20160416_170142-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20160416_170142-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"IMG_20160416_170142-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20160416_170142-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:31:"IMG_20160416_170142-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:31:"IMG_20160416_170142-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:31:"IMG_20160416_170142-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:31:"IMG_20160416_170142-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"243";s:13:"shutter_speed";s:4:"0.03";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1618, 279, '_wp_attached_file', '2016/04/IMG_20160416_170227.jpg'),
(1619, 279, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:4096;s:4:"file";s:31:"2016/04/IMG_20160416_170227.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20160416_170227-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20160416_170227-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"IMG_20160416_170227-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20160416_170227-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:31:"IMG_20160416_170227-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:31:"IMG_20160416_170227-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:31:"IMG_20160416_170227-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:31:"IMG_20160416_170227-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"522";s:13:"shutter_speed";s:4:"0.06";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1620, 280, '_wp_attached_file', '2016/04/IMG_20160416_170248-1.jpg'),
(1621, 280, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:4096;s:4:"file";s:33:"2016/04/IMG_20160416_170248-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"IMG_20160416_170248-1-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"IMG_20160416_170248-1-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:33:"IMG_20160416_170248-1-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"342";s:13:"shutter_speed";s:4:"0.06";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1622, 281, '_wp_attached_file', '2016/04/IMG_20160416_170312.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1623, 281, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:4096;s:4:"file";s:31:"2016/04/IMG_20160416_170312.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20160416_170312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20160416_170312-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"IMG_20160416_170312-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20160416_170312-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:31:"IMG_20160416_170312-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:31:"IMG_20160416_170312-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:31:"IMG_20160416_170312-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:31:"IMG_20160416_170312-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"369";s:13:"shutter_speed";s:4:"0.06";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1624, 282, '_wp_attached_file', '2016/04/IMG_20160416_170336.jpg'),
(1625, 282, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:4096;s:4:"file";s:31:"2016/04/IMG_20160416_170336.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20160416_170336-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20160416_170336-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"IMG_20160416_170336-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20160416_170336-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-large";a:4:{s:4:"file";s:31:"IMG_20160416_170336-720x300.jpg";s:5:"width";i:720;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-blog-small";a:4:{s:4:"file";s:31:"IMG_20160416_170336-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured-service";a:4:{s:4:"file";s:31:"IMG_20160416_170336-600x330.jpg";s:5:"width";i:600;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-recent-work";a:4:{s:4:"file";s:31:"IMG_20160416_170336-365x365.jpg";s:5:"width";i:365;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Coolpad 8297";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"342";s:13:"shutter_speed";s:4:"0.06";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1626, 277, '_edit_last', '1'),
(1641, 277, '_edit_lock', '1460880301:1'),
(1642, 277, 'ewic_meta_select_images', 'a:5:{i:278;a:2:{s:6:"images";s:3:"278";s:3:"ttl";s:19:"IMG_20160416_170142";}i:279;a:2:{s:6:"images";s:3:"279";s:3:"ttl";s:19:"IMG_20160416_170227";}i:280;a:2:{s:6:"images";s:3:"280";s:3:"ttl";s:19:"IMG_20160416_170248";}i:281;a:2:{s:6:"images";s:3:"281";s:3:"ttl";s:19:"IMG_20160416_170312";}i:282;a:2:{s:6:"images";s:3:"282";s:3:"ttl";s:19:"IMG_20160416_170336";}}'),
(1643, 277, 'ewic_meta_list_mode', ''),
(1644, 277, 'ewic_meta_thumbsizelt', 'a:2:{s:5:"width";s:4:"1100";s:6:"height";s:3:"800";}'),
(1645, 277, 'ewic_meta_slide_timthumb', 'on'),
(1646, 277, 'ewic_meta_slide_auto', 'on'),
(1647, 277, 'ewic_meta_slide_delay', '1'),
(1648, 277, 'ewic_meta_settings_effect', 'easeOutCubic'),
(1649, 277, 'ewic_meta_slide_style', 'horizontal'),
(1650, 277, 'ewic_meta_slide_nav', 'always'),
(1651, 277, 'ewic_meta_slide_title', 'on'),
(1652, 277, 'ewic_meta_settings_smartttl', 'on'),
(1653, 277, 'ewic_meta_slide_lightbox', 'off'),
(1654, 277, 'ewic_meta_slide_lightbox_autoslide', 'on'),
(1655, 277, 'ewic_meta_slide_lightbox_delay', '1'),
(1656, 264, 'ewic_meta_select_images', 'a:7:{i:265;a:2:{s:6:"images";s:3:"265";s:3:"ttl";s:1:"1";}i:266;a:2:{s:6:"images";s:3:"266";s:3:"ttl";s:1:"2";}i:267;a:2:{s:6:"images";s:3:"267";s:3:"ttl";s:1:"3";}i:268;a:2:{s:6:"images";s:3:"268";s:3:"ttl";s:1:"4";}i:269;a:2:{s:6:"images";s:3:"269";s:3:"ttl";s:1:"5";}i:270;a:2:{s:6:"images";s:3:"270";s:3:"ttl";s:1:"6";}i:271;a:2:{s:6:"images";s:3:"271";s:3:"ttl";s:1:"7";}}'),
(1657, 264, 'ewic_meta_list_mode', ''),
(1658, 264, 'ewic_meta_thumbsizelt', 'a:2:{s:5:"width";s:4:"auto";s:6:"height";s:4:"auto";}'),
(1659, 264, 'ewic_meta_slide_timthumb', 'on'),
(1660, 264, 'ewic_meta_slide_auto', 'on'),
(1661, 264, 'ewic_meta_slide_delay', '1'),
(1662, 264, 'ewic_meta_settings_effect', 'easeInQuad'),
(1663, 264, 'ewic_meta_slide_style', 'horizontal'),
(1664, 264, 'ewic_meta_slide_nav', 'always'),
(1665, 264, 'ewic_meta_slide_title', 'on'),
(1666, 264, 'ewic_meta_settings_smartttl', 'on'),
(1667, 264, 'ewic_meta_slide_lightbox', 'off'),
(1668, 264, 'ewic_meta_slide_lightbox_autoslide', 'on'),
(1669, 264, 'ewic_meta_slide_lightbox_delay', '1'),
(1670, 289, '_menu_item_type', 'custom'),
(1671, 289, '_menu_item_menu_item_parent', '0'),
(1672, 289, '_menu_item_object_id', '289'),
(1673, 289, '_menu_item_object', 'custom'),
(1674, 289, '_menu_item_target', ''),
(1675, 289, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1676, 289, '_menu_item_xfn', ''),
(1677, 289, '_menu_item_url', 'http://121.42.208.242/jiaodatong'),
(1678, 289, '_menu_item_orphaned', '1461319190'),
(1679, 290, '_menu_item_type', 'custom'),
(1680, 290, '_menu_item_menu_item_parent', '0'),
(1681, 290, '_menu_item_object_id', '290'),
(1682, 290, '_menu_item_object', 'custom'),
(1683, 290, '_menu_item_target', ''),
(1684, 290, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1685, 290, '_menu_item_xfn', ''),
(1686, 290, '_menu_item_url', 'http://121.42.208.242/jiaodatong');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-15 12:17:15', '2016-04-15 04:17:15', '网站建设需要大量素材，希望各部门能配合提供自己部门的照片，介绍等', '关于网站建设素材收集的通知', '', 'publish', 'open', 'open', '', '%e5%85%b3%e4%ba%8e%e7%bd%91%e7%ab%99%e5%bb%ba%e8%ae%be%e7%b4%a0%e6%9d%90%e6%94%b6%e9%9b%86%e7%9a%84%e9%80%9a%e7%9f%a5', '', '', '2016-04-16 00:46:23', '2016-04-15 16:46:23', '', 0, '/istc/?p=1', 0, 'post', '', 5),
(2, 1, '2016-04-15 12:17:15', '2016-04-15 04:17:15', '<strong>        西安交通大学IBM学生技术俱乐部（ISTC ,IBM Students Technology Club），是由IBM公司(中国)和西安交通大学研究生会、西安交通大学IBM技术中心联合发起的、非盈利性、面向全校学生的技术组织。</strong>\r\n\r\n<strong>       IBM学生技术俱乐部（ISTC）成立至今连续多年获得优秀社团、甲级社团等光荣称号。</strong>\r\n对外关系部简介\r\n\r\n作为社团对外交流的窗口，对外关系部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\r\n\r\n\r\n下面我先简单介绍一下对外关系部和社团发展部\r\n\r\n社团发展部简介\r\n\r\n社团发展部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，社团发展部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\r\n\r\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，社团发展部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，社团发展部的成员也都有机会学习技术，接受技术培训，参加竞赛。\r\n\r\n作为一个科技类社团，技术部当然属于我们社团的核心部分。经过不断地尝试和摸索，我们逐渐确立了一套比较有特色的工作体系，同时也明确了技术部的定位和方向。\r\n\r\n\r\n技术部目前的核心思想是营造一个以技术为交流媒介的环境。\r\n\r\n\r\n技术部的工作主要有两方面：\r\n\r\n\r\n一、培养新部员，通过老部员的亲身教授，为许多热衷于技术但却苦于无法上手的同学提供一个快速通道。事实上由于编程等技术天生的门槛高等特点，如何把这些知识传授给新人是一件非常不容易的事情，这需要部长们和老部员们的无私奉献，还需要一些特别的形式和方法，同时也需要部员自己有足够多的兴趣来支撑自己走完初学这一段过程。而能够教授编程知识的社团事实上在整个交大也屈指可数，这也算我们社团的独特优势之一。\r\n二、集结有技术基础的部员共同做项目或者参加比赛。当部员有了一定的技术基础后，我们会组织这些部员一起共同做一些项目或者参加比赛。事实上交大每年都会有许多技术类型的比赛开展，同时IBM公司每年也会有一些比赛在各高校举行，这些比赛往往都有丰厚的奖励，如果在大赛中获奖，对今后参加工作或者出国都是有极大的加成。这些技术类型的比赛都会有一定的技术门槛，同时多以小组的形式参加，而我们技术部则可以为有这方面意向的部员提供组队帮助，还有各种高年级大神给你支招帮忙。\r\n至于ISTC美工部，曾经我们社团将美工部定位于为社团服务，主要是负责海报制作等宣传工作，但是这样的定位会导致美工部的地位比较尴尬，也就是说“水分”比较大。由于我个人不太喜欢存在意义不明显的东西，所以我们这届主席团决定把美工部变得更加独立，而非为社团服务的一个存在。\r\n\r\n\r\n重新定位以后，美工部的工作主要有以下几个方面：\r\n\r\n\r\n第一，依然同技术部一样有培训机制，美工部有两个部长，各有所长，会对部员进行全方位的“美术”培训，我们认为美工部不仅仅代表教会部员PS技术，更重要的是建立起每位部员的审美能力，美术素养，包括色彩学知识，构图学知识等等。当然，部长们肯定也不是专业人士，只是经验稍微丰富一点，所以最好的情况就是大家一起来学习。而2013-2014上半年的培训计划，两位部长也提交于我，大致包含PPT制作，PS技术和AE技术的学习。\r\n\r\n\r\n第二，当然还是要为社团宣传帮忙的，包括海报的制作，宣传视频的制作，还包括办公室的布置。\r\n\r\n\r\n第三，为技术部编写的一些软件进行美化工作。\r\n', '主页', '', 'publish', 'closed', 'closed', '', 'main-page', '', '', '2016-04-22 18:01:49', '2016-04-22 10:01:49', '', 0, '/istc/?page_id=2', 0, 'page', '', 0),
(8, 1, '2016-04-15 12:34:14', '2016-04-15 04:34:14', '这是一个范例页面。它和博客文章不同，因为它的页面位置是固定的，同时会显示于您的博客导航栏（大多数主题中）。大多数人会新增一个“关于”页面向访客介绍自己。它可能类似下面这样：\n\n<blockquote>我是一个很有趣的人，我创建了工厂和庄园。并且，顺便提一下，我的妻子也很好。</blockquote>\n\n……或下面这样：\n\n<blockquote>XYZ装置公司成立于1971年，公司成立以来，我们一直向市民提供高品质的装置。我们位于北京市，有超过2,000名员工，对北京市有着相当大的贡献。</blockquote>\n\n作为一个新的WordPress用户，您可以前往<a href="http://www.kohill.cn/istc/wp-admin/">您的仪表盘</a>删除这个页面，并建立属于您的全新内容。祝您使用愉快！', '主页', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-15 12:34:14', '2016-04-15 04:34:14', '', 2, '/istc/2016/04/15/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-04-15 12:37:38', '2016-04-15 04:37:38', '', '部门设置', '', 'publish', 'closed', 'closed', '', 'bumen', '', '', '2016-04-15 21:40:46', '2016-04-15 13:40:46', '', 0, '/istc/?page_id=9', 1, 'page', '', 0),
(10, 1, '2016-04-15 12:37:38', '2016-04-15 04:37:38', '', '部门设置', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-04-15 12:37:38', '2016-04-15 04:37:38', '', 9, '/istc/2016/04/15/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-04-15 12:38:29', '2016-04-15 04:38:29', '[espro-slider id=264]', '历届活动', '', 'publish', 'closed', 'closed', '', 'activities', '', '', '2016-04-20 23:00:12', '2016-04-20 15:00:12', '', 0, '/istc/?page_id=11', 3, 'page', '', 0),
(12, 1, '2016-04-15 12:38:29', '2016-04-15 04:38:29', '', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-15 12:38:29', '2016-04-15 04:38:29', '', 11, '/istc/2016/04/15/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-04-15 12:39:07', '2016-04-15 04:39:07', '', 'ISTC资源网', '', 'publish', 'closed', 'closed', '', 'istc%e8%b5%84%e6%ba%90%e7%bd%91', '', '', '2016-04-16 00:57:00', '2016-04-15 16:57:00', '', 0, '/istc/?page_id=13', 2, 'page', '', 0),
(14, 1, '2016-04-15 12:39:07', '2016-04-15 04:39:07', '', 'ISTC资源网', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-04-15 12:39:07', '2016-04-15 04:39:07', '', 13, '/istc/2016/04/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-04-15 12:39:18', '2016-04-15 04:39:18', '', '合作社团', '', 'publish', 'closed', 'closed', '', '%e5%90%88%e4%bd%9c%e7%a4%be%e5%9b%a2', '', '', '2016-04-15 13:03:12', '2016-04-15 05:03:12', '', 0, '/istc/?page_id=15', 4, 'page', '', 0),
(16, 1, '2016-04-15 12:39:18', '2016-04-15 04:39:18', '', '合作社团', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-04-15 12:39:18', '2016-04-15 04:39:18', '', 15, '/istc/2016/04/15/15-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-04-15 12:53:08', '2016-04-15 04:53:08', 'http://www.kohill.cn/istc/wp-content/uploads/2016/04/cropped-icon.jpg', 'cropped-icon.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-icon-jpg', '', '', '2016-04-15 12:53:08', '2016-04-15 04:53:08', '', 0, '/istc/wp-content/uploads/2016/04/cropped-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-04-15 12:57:16', '2016-04-15 04:57:16', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2016-04-15 12:57:16', '2016-04-15 04:57:16', '', 0, '/istc/wp-content/uploads/2016/04/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2016-04-15 12:59:47', '2016-04-15 04:59:47', '', 'header', '', 'inherit', 'open', 'closed', '', 'header-2', '', '', '2016-04-15 12:59:47', '2016-04-15 04:59:47', '', 0, '/istc/wp-content/uploads/2016/04/header-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2016-04-15 13:03:37', '2016-04-15 05:03:37', '事务部由对外关系部和社团发展部合并而来，作为社团对外交流的窗口，事务部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\r\n\r\n\r\n事务部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，事务部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\r\n\r\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，事务部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，事务部的成员也都有机会学习技术，接受技术培训，参加竞赛。\r\n', '事务部', '', 'publish', 'closed', 'closed', '', 'shiwu', '', '', '2016-04-17 12:21:42', '2016-04-17 04:21:42', '', 9, '/istc/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-04-15 13:03:37', '2016-04-15 05:03:37', '', '事务部', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-04-15 13:03:37', '2016-04-15 05:03:37', '', 23, '/istc/2016/04/15/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-04-15 13:04:04', '2016-04-15 05:04:04', '至于ISTC美工部，曾经我们社团将美工部定位于为社团服务，主要是负责海报制作等宣传工作，但是这样的定位会导致美工部的地位比较尴尬，也就是说“水分”比较大。由于我个人不太喜欢存在意义不明显的东西，所以我们这届主席团决定把美工部变得更加独立，而非为社团服务的一个存在。\r\n\r\n\r\n重新定位以后，美工部的工作主要有以下几个方面：\r\n\r\n\r\n第一，依然同技术部一样有培训机制，美工部有两个部长，各有所长，会对部员进行全方位的“美术”培训，我们认为美工部不仅仅代表教会部员PS技术，更重要的是建立起每位部员的审美能力，美术素养，包括色彩学知识，构图学知识等等。当然，部长们肯定也不是专业人士，只是经验稍微丰富一点，所以最好的情况就是大家一起来学习。而2013-2014上半年的培训计划，两位部长也提交于我，大致包含PPT制作，PS技术和AE技术的学习。\r\n\r\n\r\n第二，当然还是要为社团宣传帮忙的，包括海报的制作，宣传视频的制作，还包括办公室的布置。\r\n\r\n\r\n第三，为技术部编写的一些软件进行美化工作。\r\n\r\n\r\n美工部不同于技术部的地方在于美工部不需要你对编程感兴趣，也不需要你有任何技术方面的知识，你可以单纯为了喜爱用电脑软件完成各种艺术作品而加入美工部，同时，如果你想修炼计算机技术的话，加入美工部也是可以旁听技术部的培训的哟。而且还没有定期完成任务的压力。\r\n\r\n\r\n作为一个科技类社团美工部的最重要的意义就是用科技的手段表现人文，艺术与技术相结合，用现代的方法表现美。\r\n\r\n\r\n美工部存在的价值不仅仅限于为社团服务，我们将会通过每周授课的方式将一只只小白培养成大牛，我们将讲授一些Ps的基本知识，一些制作PPT的技巧，内涵固然重要但是我们更需要用我们的智慧将我们的内涵表达出来，我们将会与各位部员一起用最绚丽的方式展现我们社团，展现我们自己。\r\n', '美工部', '', 'publish', 'closed', 'closed', '', 'meigong', '', '', '2016-04-17 00:54:59', '2016-04-16 16:54:59', '', 9, '/istc/?page_id=25', 0, 'page', '', 0),
(26, 1, '2016-04-15 13:04:04', '2016-04-15 05:04:04', '', '美工部', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-04-15 13:04:04', '2016-04-15 05:04:04', '', 25, '/istc/2016/04/15/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-04-15 13:04:20', '2016-04-15 05:04:20', '作为一个科技类社团，技术部当然属于我们社团的核心部分。经过不断地尝试和摸索，我们逐渐确立了一套比较有特色的工作体系，同时也明确了技术部的定位和方向。\r\n\r\n\r\n技术部目前的核心思想是营造一个以技术为交流媒介的环境。\r\n\r\n\r\n技术部的工作主要有两方面：\r\n\r\n\r\n一、培养新部员，通过老部员的亲身教授，为许多热衷于技术但却苦于无法上手的同学提供一个快速通道。事实上由于编程等技术天生的门槛高等特点，如何把这些知识传授给新人是一件非常不容易的事情，这需要部长们和老部员们的无私奉献，还需要一些特别的形式和方法，同时也需要部员自己有足够多的兴趣来支撑自己走完初学这一段过程。而能够教授编程知识的社团事实上在整个交大也屈指可数，这也算我们社团的独特优势之一。\r\n\r\n\r\n二、集结有技术基础的部员共同做项目或者参加比赛。当部员有了一定的技术基础后，我们会组织这些部员一起共同做一些项目或者参加比赛。事实上交大每年都会有许多技术类型的比赛开展，同时IBM公司每年也会有一些比赛在各高校举行，这些比赛往往都有丰厚的奖励，如果在大赛中获奖，对今后参加工作或者出国都是有极大的加成。这些技术类型的比赛都会有一定的技术门槛，同时多以小组的形式参加，而我们技术部则可以为有这方面意向的部员提供组队帮助，还有各种高年级大神给你支招帮忙。\r\n\r\n\r\n\r\n\r\n\r\n以上便是技术部的两个主要工作方向，考虑到部长们技术知识各有所长，以及不同部员对技术的爱好不一样，我们将技术部现分为三个组，对应三个不同的技术类别，由三个部长分别负责。\r\n\r\n\r\n第一组是Qt组，负责人：张泽龙，该组主要进行软件Ui开发设计\r\n\r\n\r\n第二组是单片机组：该组主要进行以单片机为主题的硬件编程学习和项目时间，目前社团内配有6-7块左右的430单片机可供大家自主实践。有兴趣学习单片机或者硬件编程语言的同学可以考虑一下\r\n\r\n\r\n第三组是网络组：该组主要进行LINUX开源环境下的网络相关技术的学习和项目实践。对网络技术（主要是对网络数据的处理），开源技术感兴趣的同学可以考虑一下。', '技术部', '', 'publish', 'closed', 'closed', '', 'jishu', '', '', '2016-04-20 22:55:27', '2016-04-20 14:55:27', '', 9, '/istc/?page_id=27', 0, 'page', '', 0),
(28, 1, '2016-04-15 13:04:20', '2016-04-15 05:04:20', '', '技术', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-04-15 13:04:20', '2016-04-15 05:04:20', '', 27, '/istc/2016/04/15/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-04-15 13:04:53', '2016-04-15 05:04:53', '', '技术部', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-04-15 13:04:53', '2016-04-15 05:04:53', '', 27, '/istc/2016/04/15/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-04-15 13:06:54', '2016-04-15 05:06:54', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 9, '/istc/2016/04/15/30/', 2, 'nav_menu_item', '', 0),
(31, 1, '2016-04-15 13:07:14', '2016-04-15 05:07:14', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 9, '/istc/2016/04/15/31/', 3, 'nav_menu_item', '', 0),
(32, 1, '2016-04-15 13:07:14', '2016-04-15 05:07:14', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 9, '/istc/2016/04/15/32/', 5, 'nav_menu_item', '', 0),
(33, 1, '2016-04-15 13:07:14', '2016-04-15 05:07:14', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, 'http://localhost/istc/2016/04/15/33/', 4, 'nav_menu_item', '', 0),
(35, 1, '2016-04-15 13:07:14', '2016-04-15 05:07:14', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, 'http://localhost/istc/2016/04/15/35/', 6, 'nav_menu_item', '', 0),
(37, 1, '2016-04-15 13:07:14', '2016-04-15 05:07:14', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, 'http://localhost/istc/2016/04/15/37/', 1, 'nav_menu_item', '', 0),
(38, 1, '2016-04-15 16:11:07', '2016-04-15 08:11:07', '<strong>西安交通大学IBM学生技术俱乐部（ISTC ,IBM Students Technology Club），是由IBM公司(中国)和西安交通大学研究生会、西安交通大学IBM技术中心联合发起的、非盈利性、面向全校学生的技术组织。</strong>', '主页', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-15 16:11:07', '2016-04-15 08:11:07', '', 2, 'http://localhost/istc/2016/04/15/2-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-04-15 16:12:46', '2016-04-15 08:12:46', '<strong>        西安交通大学IBM学生技术俱乐部（ISTC ,IBM Students Technology Club），是由IBM公司(中国)和西安交通大学研究生会、西安交通大学IBM技术中心联合发起的、非盈利性、面向全校学生的技术组织。</strong>', '主页', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-15 16:12:46', '2016-04-15 08:12:46', '', 2, 'http://localhost/istc/2016/04/15/2-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-04-15 16:13:12', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-15 16:13:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?p=40', 0, 'post', '', 0),
(41, 1, '2016-04-15 16:13:19', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-15 16:13:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?page_id=41', 0, 'page', '', 0),
(43, 1, '2016-04-15 16:14:45', '2016-04-15 08:14:45', '<strong>        西安交通大学IBM学生技术俱乐部（ISTC ,IBM Students Technology Club），是由IBM公司(中国)和西安交通大学研究生会、西安交通大学IBM技术中心联合发起的、非盈利性、面向全校学生的技术组织。</strong>\r\n\r\n<strong>       IBM学生技术俱乐部（ISTC）成立至今连续多年获得优秀社团、甲级社团等光荣称号。</strong>', '主页', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-15 16:14:45', '2016-04-15 08:14:45', '', 2, 'http://localhost/istc/2016/04/15/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-04-15 16:44:07', '2016-04-15 08:44:07', '', 'beijing', '', 'inherit', 'open', 'closed', '', 'beijing', '', '', '2016-04-15 16:44:07', '2016-04-15 08:44:07', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/beijing.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-04-15 16:47:12', '2016-04-15 08:47:12', '', '交大ISTC校友', '', 'trash', 'closed', 'closed', '', '%e4%ba%a4%e5%a4%a7istc%e6%a0%a1%e5%8f%8b', '', '', '2016-04-17 10:57:52', '2016-04-17 02:57:52', '', 0, 'http://localhost/istc/?page_id=45', 4, 'page', '', 0),
(47, 1, '2016-04-15 16:47:12', '2016-04-15 08:47:12', '', '交大ISTC校友', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-04-15 16:47:12', '2016-04-15 08:47:12', '', 45, 'http://localhost/istc/2016/04/15/45-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-04-15 21:45:04', '2016-04-15 13:45:04', '<img src="/istc/wp-content/uploads/2016/04/zhaoxin.jpg" alt="zhaoxin" width="720" height="540" class="alignnone size-full wp-image-49" />', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2016-04-15 21:45:04', '2016-04-15 13:45:04', '', 11, '/istc/2016/04/15/11-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2016-04-15 21:46:51', '2016-04-15 13:46:51', '<img src="/istc/wp-content/uploads/2016/04/zhaoxin.jpg" alt="zhaoxin" width="720" height="540" class="alignnone size-full wp-image-49" />', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-15 21:46:51', '2016-04-15 13:46:51', '', 11, '/istc/2016/04/15/11-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-04-15 22:52:49', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-15 22:52:49', '0000-00-00 00:00:00', '', 0, '/istc/?p=56', 0, 'post', '', 0),
(58, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTY4IiwicG9zdF9pZCI6IjU4IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidGl0bGUiOiJOZXh0R0VOIFx1N2YyOVx1NzU2NVx1NTZmZSBcdTU3ZmFcdTc4NDBcdTcyNDgiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfZ2FsbGVyeVxcc3RhdGljXFx0aHVtYl9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIxIiwic2hvd19zbGlkZXNob3dfbGluayI6IjEiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1x1NjYzZVx1NzkzYVx1NWU3Ylx1NzA2Zlx1NzI0N10iLCJ0ZW1wbGF0ZSI6IiIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN 缩略图 基础版', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTY4IiwicG9zdF9pZCI6IjU4IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidGl0bGUiOiJOZXh0R0VOIFx1N2YyOVx1NzU2NVx1NTZmZSBcdTU3ZmFcdTc4NDBcdTcyNDgiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfZ2FsbGVyeVxcc3RhdGljXFx0aHVtYl9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIxIiwic2hvd19zbGlkZXNob3dfbGluayI6IjEiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1x1NjYzZVx1NzkzYVx1NWU3Ylx1NzA2Zlx1NzI0N10iLCJ0ZW1wbGF0ZSI6IiIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, '/istc/?post_type=display_type&#038;p=58', 0, 'display_type', '', 0),
(59, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTgwIiwicG9zdF9pZCI6IjU5IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJ0aXRsZSI6Ik5leHRHRU4gXHU1ZTdiXHU3MDZmXHU3MjQ3IFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHNsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMzEiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6IjYwMCIsImdhbGxlcnlfaGVpZ2h0IjoiNDAwIiwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImN5Y2xlX2ludGVydmFsIjoiMTAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMSIsInRodW1ibmFpbF9saW5rX3RleHQiOiJbXHU2NjNlXHU3OTNhXHU3ZjI5XHU3NTY1XHU1NmZlXSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsInRodW1ibmFpbF93aWR0aCI6IjY0MCIsInRodW1ibmFpbF9oZWlnaHQiOiI0ODAiLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN 幻灯片 基础版', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTgwIiwicG9zdF9pZCI6IjU5IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJ0aXRsZSI6Ik5leHRHRU4gXHU1ZTdiXHU3MDZmXHU3MjQ3IFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHNsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMzEiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6IjYwMCIsImdhbGxlcnlfaGVpZ2h0IjoiNDAwIiwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImN5Y2xlX2ludGVydmFsIjoiMTAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMSIsInRodW1ibmFpbF9saW5rX3RleHQiOiJbXHU2NjNlXHU3OTNhXHU3ZjI5XHU3NTY1XHU1NmZlXSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsInRodW1ibmFpbF93aWR0aCI6IjY0MCIsInRodW1ibmFpbF9oZWlnaHQiOiI0ODAiLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, '/istc/?post_type=display_type&#038;p=59', 0, 'display_type', '', 0),
(60, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTkyIiwicG9zdF9pZCI6IjYwIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJ0aXRsZSI6Ik5leHRHRU4gSW1hZ2VCcm93c2VyIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcXHN0YXRpY1xccHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImFqYXhfcGFnaW5hdGlvbiI6IjAiLCJ0ZW1wbGF0ZSI6IkU6XFx4YW1wcFxcaHRkb2NzXFxpc3RjXFx3cC1jb250ZW50XFxwbHVnaW5zXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5nZ2xlZ2FjeVxcdmlld1xcaW1hZ2Vicm93c2VyLWNhcHRpb24ucGhwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN ImageBrowser 基础版', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTkyIiwicG9zdF9pZCI6IjYwIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJ0aXRsZSI6Ik5leHRHRU4gSW1hZ2VCcm93c2VyIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcXHN0YXRpY1xccHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImFqYXhfcGFnaW5hdGlvbiI6IjAiLCJ0ZW1wbGF0ZSI6IkU6XFx4YW1wcFxcaHRkb2NzXFxpc3RjXFx3cC1jb250ZW50XFxwbHVnaW5zXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5nZ2xlZ2FjeVxcdmlld1xcaW1hZ2Vicm93c2VyLWNhcHRpb24ucGhwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, '/istc/?post_type=display_type&#038;p=60', 0, 'display_type', '', 0),
(61, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjA1IiwicG9zdF9pZCI6IjYxIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7IndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwiZmxvYXQiOiIiLCJxdWFsaXR5IjoiMTAwIiwiY3JvcCI6IjAiLCJkaXNwbGF5X3dhdGVybWFyayI6IjAiLCJkaXNwbGF5X3JlZmxlY3Rpb24iOiIwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJtb2RlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjA1IiwicG9zdF9pZCI6IjYxIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjMxIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7IndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwiZmxvYXQiOiIiLCJxdWFsaXR5IjoiMTAwIiwiY3JvcCI6IjAiLCJkaXNwbGF5X3dhdGVybWFyayI6IjAiLCJkaXNwbGF5X3JlZmxlY3Rpb24iOiIwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJtb2RlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, '/istc/?post_type=display_type&#038;p=61', 0, 'display_type', '', 0),
(62, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjE2IiwicG9zdF9pZCI6IjYyIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUYWdDbG91ZCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY190YWdjbG91ZFxcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoidGFncyIsInZpZXdfb3JkZXIiOjEwMTAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMzEiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsibnVtYmVyIjoiNDUiLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjE2IiwicG9zdF9pZCI6IjYyIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUYWdDbG91ZCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY190YWdjbG91ZFxcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoidGFncyIsInZpZXdfb3JkZXIiOjEwMTAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMzEiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsibnVtYmVyIjoiNDUiLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, '/istc/?post_type=display_type&#038;p=62', 0, 'display_type', '', 0),
(63, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjI4IiwicG9zdF9pZCI6IjYzIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIFx1N2QyN1x1NTFkMVx1ODljNlx1NTZmZVx1NzZmOFx1NTE4YyBcdTU3ZmFcdTc4NDBcdTcyNDgiLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGNvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4zMSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiI0ODAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMzIwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN 紧凑视图相册 基础版', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjI4IiwicG9zdF9pZCI6IjYzIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIFx1N2QyN1x1NTFkMVx1ODljNlx1NTZmZVx1NzZmOFx1NTE4YyBcdTU3ZmFcdTc4NDBcdTcyNDgiLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGNvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4zMSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiI0ODAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMzIwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, '/istc/?post_type=display_type&#038;p=63', 0, 'display_type', '', 0),
(64, 1, '2016-04-15 23:32:50', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjQwIiwicG9zdF9pZCI6IjY0IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsInRpdGxlIjoiTmV4dEdFTiBcdTYyNjlcdTVjNTVcdTg5YzZcdTU2ZmVcdTc2ZjhcdTUxOGMgXHU1N2ZhXHU3ODQwXHU3MjQ4IiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19hbGJ1bVxcc3RhdGljXFxleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4zMSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN 扩展视图相册 基础版', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-17 12:15:34', '2016-04-17 04:15:34', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjQwIiwicG9zdF9pZCI6IjY0IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsInRpdGxlIjoiTmV4dEdFTiBcdTYyNjlcdTVjNTVcdTg5YzZcdTU2ZmVcdTc2ZjhcdTUxOGMgXHU1N2ZhXHU3ODQwXHU3MjQ4IiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19hbGJ1bVxcc3RhdGljXFxleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4zMSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, '/istc/?post_type=display_type&#038;p=64', 0, 'display_type', '', 0),
(65, 1, '2016-04-15 23:36:31', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-15 23:36:31', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, '/istc/?post_type=ngg_album&p=65', 0, 'ngg_album', '', 0),
(66, 1, '2016-04-15 23:44:21', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-15 23:44:21', '2016-04-15 15:44:21', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, '/istc/?post_type=ngg_gallery&#038;p=66', 0, 'ngg_gallery', '', 0),
(67, 1, '2016-04-15 23:46:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-15 23:46:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, '/istc/?post_type=ngg_album&p=67', 0, 'ngg_album', '', 0),
(68, 1, '2016-04-16 00:36:42', '2016-04-15 16:36:42', '欢迎使用WordPress。这是您的第一篇文章。编辑或删除它，然后开始写作吧！', '关于网站建设素材收集的通知', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-04-16 00:36:42', '2016-04-15 16:36:42', '', 1, '/istc/2016/04/16/1-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-04-16 00:37:30', '2016-04-15 16:37:30', '网站建设需要大量素材，希望各部门能配合提供自己部门的照片，介绍等', '关于网站建设素材收集的通知', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-04-16 00:37:30', '2016-04-15 16:37:30', '', 1, '/istc/2016/04/16/1-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2016-04-16 01:03:39', '2016-04-15 17:03:39', '', '资源网', '', 'publish', 'closed', 'closed', '', '%e8%b5%84%e6%ba%90%e7%bd%91', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, '/istc/2016/04/16/%e8%b5%84%e6%ba%90%e7%bd%91/', 7, 'nav_menu_item', '', 0),
(72, 1, '2016-04-16 01:29:40', '2016-04-15 17:29:40', '<strong>        西安交通大学IBM学生技术俱乐部（ISTC ,IBM Students Technology Club），是由IBM公司(中国)和西安交通大学研究生会、西安交通大学IBM技术中心联合发起的、非盈利性、面向全校学生的技术组织。</strong>\r\n\r\n<strong>       IBM学生技术俱乐部（ISTC）成立至今连续多年获得优秀社团、甲级社团等光荣称号。</strong>\r\n对外关系部简介\r\n\r\n作为社团对外交流的窗口，对外关系部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\r\n\r\n\r\n下面我先简单介绍一下对外关系部和社团发展部\r\n\r\n社团发展部简介\r\n\r\n社团发展部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，社团发展部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\r\n\r\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，社团发展部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，社团发展部的成员也都有机会学习技术，接受技术培训，参加竞赛。\r\n\r\n作为一个科技类社团，技术部当然属于我们社团的核心部分。经过不断地尝试和摸索，我们逐渐确立了一套比较有特色的工作体系，同时也明确了技术部的定位和方向。\r\n\r\n\r\n技术部目前的核心思想是营造一个以技术为交流媒介的环境。\r\n\r\n\r\n技术部的工作主要有两方面：\r\n\r\n\r\n一、培养新部员，通过老部员的亲身教授，为许多热衷于技术但却苦于无法上手的同学提供一个快速通道。事实上由于编程等技术天生的门槛高等特点，如何把这些知识传授给新人是一件非常不容易的事情，这需要部长们和老部员们的无私奉献，还需要一些特别的形式和方法，同时也需要部员自己有足够多的兴趣来支撑自己走完初学这一段过程。而能够教授编程知识的社团事实上在整个交大也屈指可数，这也算我们社团的独特优势之一。\r\n二、集结有技术基础的部员共同做项目或者参加比赛。当部员有了一定的技术基础后，我们会组织这些部员一起共同做一些项目或者参加比赛。事实上交大每年都会有许多技术类型的比赛开展，同时IBM公司每年也会有一些比赛在各高校举行，这些比赛往往都有丰厚的奖励，如果在大赛中获奖，对今后参加工作或者出国都是有极大的加成。这些技术类型的比赛都会有一定的技术门槛，同时多以小组的形式参加，而我们技术部则可以为有这方面意向的部员提供组队帮助，还有各种高年级大神给你支招帮忙。\r\n至于ISTC美工部，曾经我们社团将美工部定位于为社团服务，主要是负责海报制作等宣传工作，但是这样的定位会导致美工部的地位比较尴尬，也就是说“水分”比较大。由于我个人不太喜欢存在意义不明显的东西，所以我们这届主席团决定把美工部变得更加独立，而非为社团服务的一个存在。\r\n\r\n\r\n重新定位以后，美工部的工作主要有以下几个方面：\r\n\r\n\r\n第一，依然同技术部一样有培训机制，美工部有两个部长，各有所长，会对部员进行全方位的“美术”培训，我们认为美工部不仅仅代表教会部员PS技术，更重要的是建立起每位部员的审美能力，美术素养，包括色彩学知识，构图学知识等等。当然，部长们肯定也不是专业人士，只是经验稍微丰富一点，所以最好的情况就是大家一起来学习。而2013-2014上半年的培训计划，两位部长也提交于我，大致包含PPT制作，PS技术和AE技术的学习。\r\n\r\n\r\n第二，当然还是要为社团宣传帮忙的，包括海报的制作，宣传视频的制作，还包括办公室的布置。\r\n\r\n\r\n第三，为技术部编写的一些软件进行美化工作。\r\n', '主页', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-16 01:29:40', '2016-04-15 17:29:40', '', 2, '/istc/2016/04/16/2-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-04-16 01:37:44', '2016-04-15 17:37:44', '作为一个科技类社团，技术部当然属于我们社团的核心部分。经过不断地尝试和摸索，我们逐渐确立了一套比较有特色的工作体系，同时也明确了技术部的定位和方向。\r\n\r\n\r\n技术部目前的核心思想是营造一个以技术为交流媒介的环境。\r\n\r\n\r\n技术部的工作主要有两方面：\r\n\r\n\r\n一、培养新部员，通过老部员的亲身教授，为许多热衷于技术但却苦于无法上手的同学提供一个快速通道。事实上由于编程等技术天生的门槛高等特点，如何把这些知识传授给新人是一件非常不容易的事情，这需要部长们和老部员们的无私奉献，还需要一些特别的形式和方法，同时也需要部员自己有足够多的兴趣来支撑自己走完初学这一段过程。而能够教授编程知识的社团事实上在整个交大也屈指可数，这也算我们社团的独特优势之一。\r\n\r\n\r\n二、集结有技术基础的部员共同做项目或者参加比赛。当部员有了一定的技术基础后，我们会组织这些部员一起共同做一些项目或者参加比赛。事实上交大每年都会有许多技术类型的比赛开展，同时IBM公司每年也会有一些比赛在各高校举行，这些比赛往往都有丰厚的奖励，如果在大赛中获奖，对今后参加工作或者出国都是有极大的加成。这些技术类型的比赛都会有一定的技术门槛，同时多以小组的形式参加，而我们技术部则可以为有这方面意向的部员提供组队帮助，还有各种高年级大神给你支招帮忙。\r\n\r\n\r\n\r\n\r\n\r\n以上便是技术部的两个主要工作方向，考虑到部长们技术知识各有所长，以及不同部员对技术的爱好不一样，我们将技术部现分为三个组，对应三个不同的技术类别，由三个部长分别负责。\r\n\r\n\r\n第一组是C语言编程组：该组主要进行C语言（包括C++,C#,MFC等多种基于C的编程语言）的相关技术学习和项目实践，有兴趣编写软件的同学可以考虑一下。\r\n\r\n\r\n第二组是单片机组：该组主要进行以单片机为主题的硬件编程学习和项目时间，目前社团内配有6-7块左右的430单片机可供大家自主实践。有兴趣学习单片机或者硬件编程语言的同学可以考虑一下\r\n\r\n\r\n第三组是网络组：该组主要进行LINUX开源环境下的网络相关技术的学习和项目实践。对网络技术（主要是对网络数据的处理），开源技术感兴趣的同学可以考虑一下。', '技术部', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-04-16 01:37:44', '2016-04-15 17:37:44', '', 27, '/istc/2016/04/16/27-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2016-04-16 01:39:15', '2016-04-15 17:39:15', '至于ISTC美工部，曾经我们社团将美工部定位于为社团服务，主要是负责海报制作等宣传工作，但是这样的定位会导致美工部的地位比较尴尬，也就是说“水分”比较大。由于我个人不太喜欢存在意义不明显的东西，所以我们这届主席团决定把美工部变得更加独立，而非为社团服务的一个存在。\r\n\r\n\r\n重新定位以后，美工部的工作主要有以下几个方面：\r\n\r\n\r\n第一，依然同技术部一样有培训机制，美工部有两个部长，各有所长，会对部员进行全方位的“美术”培训，我们认为美工部不仅仅代表教会部员PS技术，更重要的是建立起每位部员的审美能力，美术素养，包括色彩学知识，构图学知识等等。当然，部长们肯定也不是专业人士，只是经验稍微丰富一点，所以最好的情况就是大家一起来学习。而2013-2014上半年的培训计划，两位部长也提交于我，大致包含PPT制作，PS技术和AE技术的学习。\r\n\r\n\r\n第二，当然还是要为社团宣传帮忙的，包括海报的制作，宣传视频的制作，还包括办公室的布置。\r\n\r\n\r\n第三，为技术部编写的一些软件进行美化工作。\r\n\r\n\r\n美工部不同于技术部的地方在于美工部不需要你对编程感兴趣，也不需要你有任何技术方面的知识，你可以单纯为了喜爱用电脑软件完成各种艺术作品而加入美工部，同时，如果你想修炼计算机技术的话，加入美工部也是可以旁听技术部的培训的哟。而且还没有定期完成任务的压力。\r\n\r\n\r\n作为一个科技类社团美工部的最重要的意义就是用科技的手段表现人文，艺术与技术相结合，用现代的方法表现美。\r\n\r\n\r\n美工部存在的价值不仅仅限于为社团服务，我们将会通过每周授课的方式将一只只小白培养成大牛，我们将讲授一些Ps的基本知识，一些制作PPT的技巧，内涵固然重要但是我们更需要用我们的智慧将我们的内涵表达出来，我们将会与各位部员一起用最绚丽的方式展现我们社团，展现我们自己。\r\n', '美工部', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-04-16 01:39:15', '2016-04-15 17:39:15', '', 25, '/istc/2016/04/16/25-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-04-16 01:40:50', '2016-04-15 17:40:50', '', '加入我们', '', 'trash', 'open', 'open', '', 'addtous', '', '', '2016-04-16 01:41:15', '2016-04-15 17:41:15', '', 0, '/istc/?p=75', 0, 'post', '', 0),
(76, 1, '2016-04-16 01:40:50', '2016-04-15 17:40:50', '', '加入我们', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-04-16 01:40:50', '2016-04-15 17:40:50', '', 75, '/istc/2016/04/16/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-04-16 01:41:01', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-16 01:41:01', '0000-00-00 00:00:00', '', 0, '/istc/?p=77', 0, 'post', '', 0),
(78, 1, '2016-04-16 01:41:07', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-16 01:41:07', '0000-00-00 00:00:00', '', 0, '/istc/?page_id=78', 0, 'page', '', 0),
(79, 1, '2016-04-16 01:41:27', '2016-04-15 17:41:27', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', '加入我们', '', 'publish', 'closed', 'closed', '', 'addtous', '', '', '2016-04-22 00:51:45', '2016-04-21 16:51:45', '', 0, '/istc/?page_id=79', 0, 'page', '', 0),
(80, 1, '2016-04-16 01:41:27', '2016-04-15 17:41:27', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, '/istc/2016/04/16/80/', 9, 'nav_menu_item', '', 0),
(81, 1, '2016-04-16 01:41:27', '2016-04-15 17:41:27', '', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 01:41:27', '2016-04-15 17:41:27', '', 79, '/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-04-16 01:43:39', '2016-04-15 17:43:39', '如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 01:43:39', '2016-04-15 17:43:39', '', 79, '/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-04-16 01:44:53', '2016-04-15 17:44:53', '如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 01:44:53', '2016-04-15 17:44:53', '', 79, '/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2016-04-16 01:45:42', '2016-04-15 17:45:42', '对外关系部简介\r\n\r\n作为社团对外交流的窗口，对外关系部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\r\n\r\n\r\n\r\n\r\n社团发展部简介\r\n\r\n社团发展部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，社团发展部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\r\n\r\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，社团发展部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，社团发展部的成员也都有机会学习技术，接受技术培训，参加竞赛。\r\n', '事务部', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-04-16 01:45:42', '2016-04-15 17:45:42', '', 23, '/istc/2016/04/16/23-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-04-16 02:21:41', '2016-04-15 18:21:41', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 02:21:41', '2016-04-15 18:21:41', '', 79, '/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-04-16 21:37:33', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-16 21:37:33', '0000-00-00 00:00:00', '', 0, '/istc/?post_type=aol_ad&p=89', 0, 'aol_ad', '', 0),
(90, 1, '2016-04-16 21:39:07', '2016-04-16 13:39:07', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n[aol]\r\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 21:39:07', '2016-04-16 13:39:07', '', 79, '/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-04-16 21:40:42', '2016-04-16 13:40:42', 'hahahahahaa', 'Test', '', 'trash', 'closed', 'closed', '', 'test', '', '', '2016-04-16 21:49:06', '2016-04-16 13:49:06', '', 0, '/istc/?post_type=aol_ad&#038;p=91', 0, 'aol_ad', '', 0),
(92, 1, '2016-04-16 21:43:55', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-16 21:43:55', '0000-00-00 00:00:00', '', 0, '/istc/?post_type=aol_ad&p=92', 0, 'aol_ad', '', 0),
(93, 1, '2016-04-16 21:44:48', '2016-04-16 13:44:48', 'ddddddddddddddddddddddddddddddddddddddddd', 'dddddddddddddddddddddddddddd', 'ddddddddddddddddddd', 'trash', 'closed', 'closed', '', 'dddddddddddddddddddddddddddd', '', '', '2016-04-16 21:48:54', '2016-04-16 13:48:54', '', 0, '/istc/?post_type=aol_ad&#038;p=93', 0, 'aol_ad', '', 0),
(94, 1, '2016-04-16 21:52:23', '2016-04-16 13:52:23', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', 'resume', '', 'publish', 'closed', 'closed', '', 'resume', '', '', '2016-04-16 22:26:47', '2016-04-16 14:26:47', '', 0, '/istc/?post_type=aol_ad&#038;p=94', 0, 'aol_ad', '', 0),
(95, 1, '2016-04-16 22:19:14', '2016-04-16 14:19:14', '请在下方填写个人信息', 'resume', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2016-04-16 22:19:14', '2016-04-16 14:19:14', '', 94, 'http://localhost/istc/2016/04/16/94-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2016-04-16 22:30:30', '2016-04-16 14:30:30', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n[aol]\r\n[aol ads="1"].', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 22:30:30', '2016-04-16 14:30:30', '', 79, 'http://localhost/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-04-16 22:33:29', '2016-04-16 14:33:29', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n\r\n[aol ads="1"].', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 22:33:29', '2016-04-16 14:33:29', '', 79, 'http://localhost/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-04-16 22:35:33', '2016-04-16 14:35:33', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n\r\n[aol ads="94"].', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 22:35:33', '2016-04-16 14:35:33', '', 79, 'http://localhost/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-04-16 22:37:53', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-16 22:37:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?post_type=aol_ad&p=99', 0, 'aol_ad', '', 0),
(100, 1, '2016-04-16 22:38:16', '2016-04-16 14:38:16', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n\r\n[aol ads="94" excerpt="no"].', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 22:38:16', '2016-04-16 14:38:16', '', 79, 'http://localhost/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-04-16 23:05:30', '2016-04-16 15:05:30', '我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-16 23:05:30', '2016-04-16 15:05:30', '', 79, 'http://localhost/istc/2016/04/16/79-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2016-04-17 01:57:04', '2016-04-16 17:57:04', '', 'IMG_20160416_170248', '', 'inherit', 'open', 'closed', '', 'img_20160416_170248', '', '', '2016-04-17 01:57:04', '2016-04-16 17:57:04', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170248.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2016-04-17 10:52:41', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-17 10:52:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?p=104', 0, 'post', '', 0),
(105, 1, '2016-04-17 10:53:05', '2016-04-17 02:53:05', '[espro-slider id=277]', '所获奖项', '', 'publish', 'closed', 'closed', '', '%e6%89%80%e8%8e%b7%e5%a5%96%e9%a1%b9', '', '', '2016-04-17 16:06:51', '2016-04-17 08:06:51', '', 0, 'http://localhost/istc/?page_id=105', 0, 'page', '', 0),
(106, 1, '2016-04-17 10:53:05', '2016-04-17 02:53:05', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, 'http://localhost/istc/2016/04/17/106/', 8, 'nav_menu_item', '', 0),
(107, 1, '2016-04-17 10:53:05', '2016-04-17 02:53:05', '', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 10:53:05', '2016-04-17 02:53:05', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=108', 0, 'ngg_gallery', '', 0),
(109, 1, '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=109', 0, 'ngg_pictures', '', 0),
(111, 1, '2016-04-17 11:38:55', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:38:55', '2016-04-17 03:38:55', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=111', 0, 'ngg_gallery', '', 0),
(112, 1, '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=112', 0, 'ngg_pictures', '', 0),
(113, 1, '2016-04-17 11:38:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:38:13', '2016-04-17 03:38:13', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=113', 0, 'ngg_pictures', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=114', 0, 'ngg_pictures', '', 0),
(115, 1, '2016-04-17 11:38:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:38:13', '2016-04-17 03:38:13', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=115', 0, 'ngg_pictures', '', 0),
(116, 1, '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=116', 0, 'ngg_pictures', '', 0),
(117, 1, '2016-04-17 11:38:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:38:13', '2016-04-17 03:38:13', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=117', 0, 'ngg_pictures', '', 0),
(118, 1, '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=118', 0, 'ngg_pictures', '', 0),
(120, 1, '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=120', 0, 'ngg_pictures', '', 0),
(122, 1, '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=122', 0, 'ngg_pictures', '', 0),
(124, 1, '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=124', 0, 'ngg_pictures', '', 0),
(126, 1, '2016-04-17 11:07:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=126', 0, 'ngg_pictures', '', 0),
(128, 1, '2016-04-17 11:07:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=128', 0, 'ngg_pictures', '', 0),
(130, 1, '2016-04-17 11:07:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:07:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=130', 0, 'ngg_pictures', '', 0),
(132, 1, '2016-04-17 11:13:44', '2016-04-17 03:13:44', '[ album=2,extend ]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:13:44', '2016-04-17 03:13:44', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-04-17 11:14:17', '2016-04-17 03:14:17', '[album=2,extend]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:14:17', '2016-04-17 03:14:17', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2016-04-17 11:15:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:15:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?post_type=ngg_album&p=134', 0, 'ngg_album', '', 0),
(135, 1, '2016-04-17 11:23:30', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:23:30', '2016-04-17 03:23:30', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?post_type=ngg_album&#038;p=135', 0, 'ngg_album', '', 0),
(136, 1, '2016-04-17 11:29:38', '2016-04-17 03:29:38', '[imagebrowser id=2]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:29:38', '2016-04-17 03:29:38', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2016-04-17 11:29:40', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-17 11:29:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?page_id=137', 0, 'page', '', 0),
(138, 1, '2016-04-17 11:32:14', '2016-04-17 03:32:14', '[slideshow id=2]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:32:14', '2016-04-17 03:32:14', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2016-04-17 11:34:02', '2016-04-17 03:34:02', '[monoslideshow id=2]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:34:02', '2016-04-17 03:34:02', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2016-04-17 11:34:59', '2016-04-17 03:34:59', '[nggallery id=2]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:34:59', '2016-04-17 03:34:59', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=141', 0, 'ngg_gallery', '', 0),
(142, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=142', 0, 'ngg_pictures', '', 0),
(144, 1, '2016-04-17 11:40:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:40:26', '2016-04-17 03:40:26', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=144', 0, 'ngg_gallery', '', 0),
(145, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=145', 0, 'ngg_pictures', '', 0),
(146, 1, '2016-04-17 11:49:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:49:11', '2016-04-17 03:49:11', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=146', 0, 'ngg_pictures', '', 0),
(147, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=147', 0, 'ngg_pictures', '', 0),
(148, 1, '2016-04-17 11:40:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:40:26', '2016-04-17 03:40:26', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=148', 0, 'ngg_pictures', '', 0),
(149, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=149', 0, 'ngg_pictures', '', 0),
(150, 1, '2016-04-17 11:40:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:40:26', '2016-04-17 03:40:26', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=150', 0, 'ngg_pictures', '', 0),
(151, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=151', 0, 'ngg_pictures', '', 0),
(152, 1, '2016-04-17 11:40:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:40:26', '2016-04-17 03:40:26', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=152', 0, 'ngg_pictures', '', 0),
(153, 1, '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=153', 0, 'ngg_pictures', '', 0),
(155, 1, '2016-04-17 11:39:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=155', 0, 'ngg_pictures', '', 0),
(157, 1, '2016-04-17 11:39:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=157', 0, 'ngg_pictures', '', 0),
(159, 1, '2016-04-17 11:39:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=159', 0, 'ngg_pictures', '', 0),
(161, 1, '2016-04-17 11:39:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=161', 0, 'ngg_pictures', '', 0),
(163, 1, '2016-04-17 11:39:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:39:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=163', 0, 'ngg_pictures', '', 0),
(165, 1, '2016-04-17 11:40:54', '2016-04-17 03:40:54', '[nggallery id=3]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:40:54', '2016-04-17 03:40:54', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2016-04-17 11:41:53', '2016-04-17 03:41:53', '[nggallery id=3 w=480]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:41:53', '2016-04-17 03:41:53', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2016-04-17 11:48:50', '2016-04-17 03:48:50', '[nggallery id=3]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:48:50', '2016-04-17 03:48:50', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=168', 0, 'ngg_gallery', '', 0),
(169, 1, '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=169', 0, 'ngg_pictures', '', 0),
(171, 1, '2016-04-17 11:55:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:55:09', '2016-04-17 03:55:09', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=171', 0, 'ngg_gallery', '', 0),
(172, 1, '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=172', 0, 'ngg_pictures', '', 0),
(174, 1, '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=174', 0, 'ngg_pictures', '', 0),
(175, 1, '2016-04-17 11:55:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:55:09', '2016-04-17 03:55:09', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=175', 0, 'ngg_pictures', '', 0),
(176, 1, '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=176', 0, 'ngg_pictures', '', 0),
(177, 1, '2016-04-17 11:55:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:55:09', '2016-04-17 03:55:09', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=177', 0, 'ngg_pictures', '', 0),
(178, 1, '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=178', 0, 'ngg_pictures', '', 0),
(179, 1, '2016-04-17 11:55:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:55:09', '2016-04-17 03:55:09', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=179', 0, 'ngg_pictures', '', 0),
(180, 1, '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=180', 0, 'ngg_pictures', '', 0),
(181, 1, '2016-04-17 11:55:09', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:55:09', '2016-04-17 03:55:09', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=181', 0, 'ngg_pictures', '', 0),
(182, 1, '2016-04-17 11:54:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=182', 0, 'ngg_pictures', '', 0),
(184, 1, '2016-04-17 11:54:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=184', 0, 'ngg_pictures', '', 0),
(186, 1, '2016-04-17 11:54:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=186', 0, 'ngg_pictures', '', 0),
(188, 1, '2016-04-17 11:54:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=188', 0, 'ngg_pictures', '', 0),
(190, 1, '2016-04-17 11:54:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:54:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=190', 0, 'ngg_pictures', '', 0),
(192, 1, '2016-04-17 11:55:28', '2016-04-17 03:55:28', '[nggallery id=4]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:55:28', '2016-04-17 03:55:28', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=193', 0, 'ngg_gallery', '', 0),
(194, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=194', 0, 'ngg_pictures', '', 0),
(195, 1, '2016-04-17 12:13:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:13:23', '2016-04-17 04:13:23', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=195', 0, 'ngg_pictures', '', 0),
(196, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=196', 0, 'ngg_gallery', '', 0),
(197, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=197', 0, 'ngg_pictures', '', 0),
(198, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=198', 0, 'ngg_pictures', '', 0),
(199, 1, '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=199', 0, 'ngg_pictures', '', 0),
(200, 1, '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=200', 0, 'ngg_pictures', '', 0),
(201, 1, '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=201', 0, 'ngg_pictures', '', 0),
(202, 1, '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=202', 0, 'ngg_pictures', '', 0),
(203, 1, '2016-04-17 11:57:46', '2016-04-17 03:57:46', '[nggallery id=5]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 11:57:46', '2016-04-17 03:57:46', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2016-04-17 11:59:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=204', 0, 'ngg_gallery', '', 0),
(205, 1, '2016-04-17 11:59:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=205', 0, 'ngg_pictures', '', 0),
(206, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=206', 0, 'ngg_pictures', '', 0),
(207, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=207', 0, 'ngg_gallery', '', 0),
(208, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=208', 0, 'ngg_pictures', '', 0),
(209, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=209', 0, 'ngg_pictures', '', 0),
(210, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=210', 0, 'ngg_pictures', '', 0),
(211, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=211', 0, 'ngg_pictures', '', 0),
(212, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=212', 0, 'ngg_pictures', '', 0),
(213, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=213', 0, 'ngg_pictures', '', 0),
(214, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=214', 0, 'ngg_pictures', '', 0),
(215, 1, '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=215', 0, 'ngg_pictures', '', 0),
(216, 1, '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=216', 0, 'ngg_pictures', '', 0),
(217, 1, '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=217', 0, 'ngg_pictures', '', 0),
(218, 1, '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=218', 0, 'ngg_pictures', '', 0),
(219, 1, '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:24', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=219', 0, 'ngg_pictures', '', 0),
(220, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=220', 0, 'ngg_gallery', '', 0),
(221, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=221', 0, 'ngg_pictures', '', 0),
(222, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=222', 0, 'ngg_pictures', '', 0),
(223, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=223', 0, 'ngg_gallery', '', 0),
(224, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=224', 0, 'ngg_pictures', '', 0),
(225, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=225', 0, 'ngg_pictures', '', 0),
(226, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=226', 0, 'ngg_pictures', '', 0),
(227, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=227', 0, 'ngg_pictures', '', 0),
(228, 1, '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=228', 0, 'ngg_pictures', '', 0),
(229, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=229', 0, 'ngg_pictures', '', 0),
(230, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=230', 0, 'ngg_pictures', '', 0),
(231, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=231', 0, 'ngg_pictures', '', 0),
(232, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=232', 0, 'ngg_pictures', '', 0),
(233, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=233', 0, 'ngg_pictures', '', 0),
(234, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=234', 0, 'ngg_pictures', '', 0),
(235, 1, '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 11:59:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=235', 0, 'ngg_pictures', '', 0),
(236, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=236', 0, 'ngg_gallery', '', 0),
(237, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=237', 0, 'ngg_pictures', '', 0),
(238, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=238', 0, 'ngg_pictures', '', 0),
(239, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=239', 0, 'ngg_gallery', '', 0),
(240, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=240', 0, 'ngg_pictures', '', 0),
(241, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=241', 0, 'ngg_pictures', '', 0),
(242, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=242', 0, 'ngg_pictures', '', 0),
(243, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=243', 0, 'ngg_pictures', '', 0),
(244, 1, '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:07', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=244', 0, 'ngg_pictures', '', 0),
(245, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=245', 0, 'ngg_pictures', '', 0),
(246, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=246', 0, 'ngg_pictures', '', 0),
(247, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=247', 0, 'ngg_pictures', '', 0),
(248, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=248', 0, 'ngg_pictures', '', 0),
(249, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=249', 0, 'ngg_pictures', '', 0),
(250, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=250', 0, 'ngg_pictures', '', 0),
(251, 1, '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-04-17 12:00:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/istc/?p=251', 0, 'ngg_pictures', '', 0),
(252, 1, '2016-04-17 12:01:48', '2016-04-17 04:01:48', '<img src="/istc/wp-content/uploads/2016/04/zhaoxin.jpg" alt="zhaoxin" width="720" height="540" class="alignnone size-full wp-image-49" />\r\n[nggallery id=5]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:01:48', '2016-04-17 04:01:48', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2016-04-17 12:03:28', '2016-04-17 04:03:28', '\r\n[nggallery id=5]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:03:28', '2016-04-17 04:03:28', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2016-04-17 12:09:03', '2016-04-17 04:09:03', '[nggallery id=6]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:09:03', '2016-04-17 04:09:03', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2016-04-17 12:09:24', '2016-04-17 04:09:24', '[nggallery id=5]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:09:24', '2016-04-17 04:09:24', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2016-04-17 12:09:37', '2016-04-17 04:09:37', '[nggallery id=6]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:09:37', '2016-04-17 04:09:37', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2016-04-17 12:12:48', '2016-04-17 04:12:48', '[imagebrowser id=6]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:12:48', '2016-04-17 04:12:48', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(258, 1, '2016-04-17 12:13:55', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-17 12:13:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?p=258', 0, 'post', '', 0),
(259, 1, '2016-04-17 12:14:15', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-17 12:14:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?p=259', 0, 'post', '', 0),
(260, 1, '2016-04-17 12:16:45', '2016-04-17 04:16:45', '[imagebrowser id=5]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 12:16:45', '2016-04-17 04:16:45', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2016-04-17 12:21:00', '2016-04-17 04:21:00', '事务部由对外关系部和社团发展部合并而来，作为社团对外交流的窗口，对外关系部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\n\n\n\n\n社团发展部简介\n\n社团发展部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，社团发展部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\n\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，社团发展部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，社团发展部的成员也都有机会学习技术，接受技术培训，参加竞赛。\n', '事务部', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2016-04-17 12:21:00', '2016-04-17 04:21:00', '', 23, 'http://localhost/istc/2016/04/17/23-autosave-v1/', 0, 'revision', '', 0),
(262, 1, '2016-04-17 12:21:42', '2016-04-17 04:21:42', '事务部由对外关系部和社团发展部合并而来，作为社团对外交流的窗口，事务部的工作是宣传社团以及对外联谊组织活动。在这里我们会一起完成活动的宣传策划、与其他社团的交流联谊、与公司的交流合作。同时大家还可以有机会学习到技术大牛的培训，在社会交际能力提高的同时学习到专业知识！\r\n\r\n\r\n事务部是一个朝气蓬勃，力求创新而又不失稳重的部门。正如其名，事务部在ISTC内的地位可谓举足轻重。它把握和决定着整个社团的发展方向和改革路线。\r\n\r\n其核心工作是建立建全俱乐部里的考核激励机制，组织招新。简而言之，事务部的任务就是想尽办法让社团发展得更好。和社团每一个部门一样，事务部的成员也都有机会学习技术，接受技术培训，参加竞赛。\r\n', '事务部', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-04-17 12:21:42', '2016-04-17 04:21:42', '', 23, 'http://localhost/istc/2016/04/17/23-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2016-04-17 12:25:12', '2016-04-17 04:25:12', '作为一个科技类社团，技术部当然属于我们社团的核心部分。经过不断地尝试和摸索，我们逐渐确立了一套比较有特色的工作体系，同时也明确了技术部的定位和方向。\r\n\r\n\r\n技术部目前的核心思想是营造一个以技术为交流媒介的环境。\r\n\r\n\r\n技术部的工作主要有两方面：\r\n\r\n\r\n一、培养新部员，通过老部员的亲身教授，为许多热衷于技术但却苦于无法上手的同学提供一个快速通道。事实上由于编程等技术天生的门槛高等特点，如何把这些知识传授给新人是一件非常不容易的事情，这需要部长们和老部员们的无私奉献，还需要一些特别的形式和方法，同时也需要部员自己有足够多的兴趣来支撑自己走完初学这一段过程。而能够教授编程知识的社团事实上在整个交大也屈指可数，这也算我们社团的独特优势之一。\r\n\r\n\r\n二、集结有技术基础的部员共同做项目或者参加比赛。当部员有了一定的技术基础后，我们会组织这些部员一起共同做一些项目或者参加比赛。事实上交大每年都会有许多技术类型的比赛开展，同时IBM公司每年也会有一些比赛在各高校举行，这些比赛往往都有丰厚的奖励，如果在大赛中获奖，对今后参加工作或者出国都是有极大的加成。这些技术类型的比赛都会有一定的技术门槛，同时多以小组的形式参加，而我们技术部则可以为有这方面意向的部员提供组队帮助，还有各种高年级大神给你支招帮忙。\r\n\r\n\r\n\r\n\r\n\r\n以上便是技术部的两个主要工作方向，考虑到部长们技术知识各有所长，以及不同部员对技术的爱好不一样，我们将技术部现分为三个组，对应三个不同的技术类别，由三个部长分别负责。\r\n\r\n\r\n第一组是Qt组，负责人：张泽龙，该组主要进行软件Ui开发设计\r\n\r\n\r\n第二组是单片机组：该组主要进行以单片机为主题的硬件编程学习和项目时间，目前社团内配有6-7块左右的430单片机可供大家自主实践。有兴趣学习单片机或者硬件编程语言的同学可以考虑一下\r\n\r\n\r\n第三组是网络组：该组主要进行LINUX开源环境下的网络相关技术的学习和项目实践。对网络技术（主要是对网络数据的处理），开源技术感兴趣的同学可以考虑一下。', '技术部', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-04-17 12:25:12', '2016-04-17 04:25:12', '', 27, 'http://localhost/istc/2016/04/17/27-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2016-04-17 12:58:45', '2016-04-17 04:58:45', '', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2016-04-17 16:07:34', '2016-04-17 08:07:34', '', 0, 'http://localhost/istc/?post_type=easyimageslider&#038;p=264', 0, 'easyimageslider', '', 0),
(265, 1, '2016-04-17 12:58:11', '2016-04-17 04:58:11', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-04-17 12:58:11', '2016-04-17 04:58:11', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2016-04-17 12:58:12', '2016-04-17 04:58:12', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2016-04-17 12:58:12', '2016-04-17 04:58:12', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2016-04-17 12:58:13', '2016-04-17 04:58:13', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2016-04-17 12:58:13', '2016-04-17 04:58:13', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(268, 1, '2016-04-17 12:58:14', '2016-04-17 04:58:14', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2016-04-17 12:58:14', '2016-04-17 04:58:14', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(269, 1, '2016-04-17 12:58:14', '2016-04-17 04:58:14', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2016-04-17 12:58:14', '2016-04-17 04:58:14', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(270, 1, '2016-04-17 12:58:15', '2016-04-17 04:58:15', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2016-04-17 12:58:15', '2016-04-17 04:58:15', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(271, 1, '2016-04-17 12:58:16', '2016-04-17 04:58:16', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2016-04-17 12:58:16', '2016-04-17 04:58:16', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/7.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(272, 1, '2016-04-17 12:58:16', '2016-04-17 04:58:16', '', '展架A', '', 'inherit', 'open', 'closed', '', '%e5%b1%95%e6%9e%b6a', '', '', '2016-04-17 12:58:16', '2016-04-17 04:58:16', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/展架A.jpg', 0, 'attachment', 'image/jpeg', 0),
(273, 1, '2016-04-17 12:58:20', '2016-04-17 04:58:20', '', '展架A-01', '', 'inherit', 'open', 'closed', '', '%e5%b1%95%e6%9e%b6a-01', '', '', '2016-04-17 12:58:20', '2016-04-17 04:58:20', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/展架A-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(274, 1, '2016-04-17 12:59:43', '2016-04-17 04:59:43', '[imagebrowser id=6]\r\n[espro-slider id=264]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 12:59:43', '2016-04-17 04:59:43', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2016-04-17 13:00:25', '2016-04-17 05:00:25', '[espro-slider id=264]', '历届活动', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-17 13:00:25', '2016-04-17 05:00:25', '', 11, 'http://localhost/istc/2016/04/17/11-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2016-04-17 16:01:18', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-17 16:01:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/istc/?post_type=easyimageslider&p=276', 0, 'easyimageslider', '', 0),
(277, 1, '2016-04-17 16:05:01', '2016-04-17 08:05:01', '', '', '', 'publish', 'closed', 'closed', '', '277', '', '', '2016-04-17 16:07:16', '2016-04-17 08:07:16', '', 0, 'http://localhost/istc/?post_type=easyimageslider&#038;p=277', 0, 'easyimageslider', '', 0),
(278, 1, '2016-04-17 16:03:46', '2016-04-17 08:03:46', '', 'IMG_20160416_170142', '', 'inherit', 'open', 'closed', '', 'img_20160416_170142', '', '', '2016-04-17 16:03:46', '2016-04-17 08:03:46', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170142.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 1, '2016-04-17 16:03:49', '2016-04-17 08:03:49', '', 'IMG_20160416_170227', '', 'inherit', 'open', 'closed', '', 'img_20160416_170227', '', '', '2016-04-17 16:03:49', '2016-04-17 08:03:49', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170227.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2016-04-17 16:03:52', '2016-04-17 08:03:52', '', 'IMG_20160416_170248', '', 'inherit', 'open', 'closed', '', 'img_20160416_170248-2', '', '', '2016-04-17 16:03:52', '2016-04-17 08:03:52', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170248-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2016-04-17 16:03:55', '2016-04-17 08:03:55', '', 'IMG_20160416_170312', '', 'inherit', 'open', 'closed', '', 'img_20160416_170312', '', '', '2016-04-17 16:03:55', '2016-04-17 08:03:55', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170312.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2016-04-17 16:03:58', '2016-04-17 08:03:58', '', 'IMG_20160416_170336', '', 'inherit', 'open', 'closed', '', 'img_20160416_170336', '', '', '2016-04-17 16:03:58', '2016-04-17 08:03:58', '', 0, 'http://localhost/istc/wp-content/uploads/2016/04/IMG_20160416_170336.jpg', 0, 'attachment', 'image/jpeg', 0),
(283, 1, '2016-04-17 16:05:26', '2016-04-17 08:05:26', '[espro-slider id=264]\r\n我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-17 16:05:26', '2016-04-17 08:05:26', '', 79, 'http://localhost/istc/2016/04/17/79-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2016-04-17 16:05:50', '2016-04-17 08:05:50', '[espro-slider id=277]\r\n我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-17 16:05:50', '2016-04-17 08:05:50', '', 79, 'http://localhost/istc/2016/04/17/79-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2016-04-17 16:06:33', '2016-04-17 08:06:33', '\n我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\n\n加入我们，让我们一起打造一个更美好的明天！\n\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-autosave-v1', '', '', '2016-04-17 16:06:33', '2016-04-17 08:06:33', '', 79, 'http://localhost/istc/2016/04/17/79-autosave-v1/', 0, 'revision', '', 0),
(286, 1, '2016-04-17 16:06:38', '2016-04-17 08:06:38', '\r\n我们欢迎每一个对计算机技术有兴趣，有热情的同学加入，不拘泥于任何专业，只要有兴趣和热情。可能您的基础很好，那让我们共同切磋。可能您是0基础，我们会定期技术培训。每一个人加入俱乐部都可以通过自己的努力，提升自己的能力，享受IBM举办的比赛活动，通过自己的努力为大学生涯增辉！\r\n\r\n加入我们，让我们一起打造一个更美好的明天！\r\n\r\n如果您对我们社团感兴趣，可以填写下方的简历，三个工作日内我们将以短信或者电话形式通知你面试！你也可以直接发短信至18392889092预约面试时间，感谢您对IBM学生技术俱乐部的支持！\r\n', '加入我们', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-17 16:06:38', '2016-04-17 08:06:38', '', 79, 'http://localhost/istc/2016/04/17/79-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2016-04-17 16:06:51', '2016-04-17 08:06:51', '[espro-slider id=277]', '所获奖项', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-04-17 16:06:51', '2016-04-17 08:06:51', '', 105, 'http://localhost/istc/2016/04/17/105-revision-v1/', 0, 'revision', '', 0),
(288, 1, '2016-04-22 12:50:11', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-22 12:50:11', '0000-00-00 00:00:00', '', 0, 'http://www.xjtuistc.club/istc/?p=288', 0, 'post', '', 0),
(289, 1, '2016-04-22 17:59:50', '0000-00-00 00:00:00', '', '一键评教', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-22 17:59:50', '0000-00-00 00:00:00', '', 0, 'http://www.xjtuistc.club/istc/?p=289', 1, 'nav_menu_item', '', 0),
(290, 1, '2016-04-22 18:00:54', '2016-04-22 10:00:54', '', '一键评教', '', 'publish', 'closed', 'closed', '', '%e4%b8%80%e9%94%ae%e8%af%84%e6%95%99', '', '', '2016-04-22 18:08:07', '2016-04-22 10:08:07', '', 0, 'http://www.xjtuistc.club/istc/2016/04/22/%e4%b8%80%e9%94%ae%e8%af%84%e6%95%99/', 10, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(35, 2, 0),
(37, 2, 0),
(70, 2, 0),
(75, 1, 0),
(80, 2, 0),
(93, 4, 0),
(93, 5, 0),
(106, 2, 0),
(290, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'category', '', 0, 0),
(4, 4, 'aol_ad_category', 'Ads for admission in the school', 0, 0),
(5, 5, 'aol_ad_category', 'Online admissions of Business school', 4, 0),
(6, 6, 'aol_ad_category', 'Online admissions of Computer Sciences department', 4, 0),
(7, 7, 'aol_ad_category', 'Use this category as a job board', 0, 0),
(8, 8, 'aol_ad_category', 'All job ads of Finance department', 7, 0),
(9, 9, 'aol_ad_category', 'All job ads of Marketing department', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, 'footer_menu', 'footer_menu', 0),
(3, '通知公告', '%e9%80%9a%e7%9f%a5%e5%85%ac%e5%91%8a', 0),
(4, 'Admission', 'admission', 0),
(5, 'Business School', 'business', 0),
(6, 'Computer Scinces', 'computer-science', 0),
(7, 'Career', 'career', 0),
(8, 'Finance Department', 'finance-department', 0),
(9, 'Marketing Department', 'marketing-department', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ISTC2016'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:13:{s:64:"cd42361fb45d2ac443edc5c5c2f6e4b85d2dee543ffeeb9ee8dc965ca813fbe3";a:4:{s:10:"expiration";i:1461903447;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1460693847;}s:64:"b4fd5fb630d1412ffb05af257de3d170b6c2979f5583b1d1fed2db01b573e82b";a:4:{s:10:"expiration";i:1461903489;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1460693889;}s:64:"88d104b23b4c31cc944976d8df82f94548b8abe806a738e2092919d9a0bc3a93";a:4:{s:10:"expiration";i:1461921657;s:2:"ip";s:3:"::1";s:2:"ua";s:87:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0; SE 2.X MetaSr 1.0) like Gecko";s:5:"login";i:1460712057;}s:64:"6b3074cca032fa25a857fc7b316584bc10b07d10f548a5cef0e3f93f562abc33";a:4:{s:10:"expiration";i:1461921665;s:2:"ip";s:3:"::1";s:2:"ua";s:87:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0; SE 2.X MetaSr 1.0) like Gecko";s:5:"login";i:1460712065;}s:64:"a31cbc7b7d278eb3c6192f42196d759ef76a4a4f1c1b0acd20616e2db626e5e3";a:4:{s:10:"expiration";i:1461937229;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1460727629;}s:64:"1906492cdf8513468b845570d0e54a764f0b167e8bd0025d38cc7323c22b1390";a:4:{s:10:"expiration";i:1461937769;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1460728169;}s:64:"5f3d026c51e16b48a94f84e20efd6da8e4d4e6dcd0eca8f6ee06f0bf1a96d5f2";a:4:{s:10:"expiration";i:1461944746;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1460735146;}s:64:"80102dd5976bc7ecbe9eb97e9d57acfa01898ec3793497694765d8c1a4c38f01";a:4:{s:10:"expiration";i:1461944880;s:2:"ip";s:3:"::1";s:2:"ua";s:68:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1460735280;}s:64:"de758f6756d0d20afd3b336bf1bc1cc6ba657f89cbd9f61c972b33a69c042a6b";a:4:{s:10:"expiration";i:1462024086;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1460814486;}s:64:"d80bd8d87ad785ee37b5cb28b07315ca16ddf20af9a7951e29d55445075cf4e7";a:4:{s:10:"expiration";i:1462026387;s:2:"ip";s:3:"::1";s:2:"ua";s:87:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0; SE 2.X MetaSr 1.0) like Gecko";s:5:"login";i:1460816787;}s:64:"6b494cf9f10b038bf33cd70c3ca39d8bc6a56ab7f06873ffd9c9cef579548977";a:4:{s:10:"expiration";i:1462353323;s:2:"ip";s:14:"115.154.31.111";s:2:"ua";s:87:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0; SE 2.X MetaSr 1.0) like Gecko";s:5:"login";i:1461143723;}s:64:"c06754a09a2da24e75f3a23d7bfafcb1eb0a4eb9f9a6e9ccd64ca1e1bf6a6abe";a:4:{s:10:"expiration";i:1461380315;s:2:"ip";s:14:"223.104.11.111";s:2:"ua";s:142:"Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297 Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30";s:5:"login";i:1461207515;}s:64:"d895e0b4af24d71f9983ebd726c517be015a3b2e69971f43cbaa664c00003e1f";a:4:{s:10:"expiration";i:1462507544;s:2:"ip";s:13:"115.154.31.74";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1461297944;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '288'),
(16, 1, 'wporg_favorites', ''),
(17, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=full&editor=html&mfold=o'),
(18, 1, 'wp_user-settings-time', '1460880297'),
(19, 1, 'closedpostboxes_aol_ad', 'a:0:{}'),
(20, 1, 'metaboxhidden_aol_ad', 'a:1:{i:0;s:7:"slugdiv";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ISTC2016', '$P$BCYP99XSJCdIDLt0nGvbmaOrzvOOf50', 'istc2016', 'yangkeshan@stu.xjtu.edu.cn', '', '2016-04-15 04:17:15', '', 0, 'ISTC2016');

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
-- Indexes for table `wp_mail_bank`
--
ALTER TABLE `wp_mail_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

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
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mail_bank`
--
ALTER TABLE `wp_mail_bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2272;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1687;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
