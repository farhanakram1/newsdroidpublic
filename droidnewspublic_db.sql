-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2020 at 08:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `droidnewspublic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://dummyimage.com/600x400/000/fff',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Crime', 'crime', 'crime-2020-05-15-5ebe64410f60d.png', '2020-05-15 04:43:29', '2020-05-16 04:58:12'),
(3, 'Entertainment', 'entertainment', 'entertainment-2020-05-15-5ebe6465b35a7.jpg', '2020-05-15 04:44:06', '2020-05-16 04:58:02'),
(4, 'Sports', 'sports', 'sports-2020-05-15-5ebe661552b3a.jpg', '2020-05-15 04:51:17', '2020-05-16 04:58:26'),
(6, 'Health', 'health', 'health-2020-05-16-5ebfbaa840115.png', '2020-05-16 05:04:24', '2020-05-16 05:04:24'),
(7, 'Technology', 'technology', 'technology-2020-05-16-5ebfbac287ad5.jpg', '2020-05-16 05:04:50', '2020-05-16 05:04:50'),
(8, 'Incident', 'incident', 'accidentcausality-2020-05-16-5ebfbb046c9f7.jpg', '2020-05-16 05:05:56', '2020-05-16 05:09:32'),
(9, 'Business', 'business', 'business-2020-05-18-5ec256f308816.jpeg', '2020-05-16 05:08:24', '2020-05-18 04:35:47'),
(10, 'Food', 'food', 'food-2020-05-16-5ebfbc5a33396.jpg', '2020-05-16 05:11:38', '2020-05-16 05:11:38'),
(11, 'Local', 'local', 'local-2020-05-16-5ebfbcc50287e.jpg', '2020-05-16 05:13:25', '2020-05-16 05:13:25'),
(12, 'Hotel', 'hotel', 'hotel-2020-05-16-5ebfcc018ff7e.jpg', '2020-05-16 06:18:26', '2020-05-16 06:18:26'),
(13, 'Shopping', 'shopping', 'shopping-mall-2020-05-16-5ebfcce3c42c0.jpg', '2020-05-16 06:22:12', '2020-05-16 07:05:01'),
(15, 'Gadgets', 'gadgets', 'gadgets-2020-05-18-5ec256d0b6ee7.jpeg', '2020-05-18 04:35:13', '2020-05-18 04:35:13'),
(16, 'Transport', 'transport', 'transport-2020-05-18-5ec25809425ac.jpg', '2020-05-18 04:40:26', '2020-05-18 04:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-14 11:03:57', '2020-05-14 11:03:57'),
(2, 2, 1, '2020-05-15 04:03:26', '2020-05-15 04:03:26'),
(3, 3, 4, '2020-05-15 04:55:26', '2020-05-15 04:55:26'),
(4, 4, 11, '2020-05-16 05:25:46', '2020-05-16 05:25:46'),
(5, 5, 8, '2020-05-16 05:37:22', '2020-05-16 05:37:22'),
(6, 5, 11, '2020-05-16 05:37:22', '2020-05-16 05:37:22'),
(7, 6, 11, '2020-05-16 06:09:55', '2020-05-16 06:09:55'),
(8, 7, 13, '2020-05-16 06:38:28', '2020-05-16 06:38:28'),
(10, 9, 11, '2020-05-16 06:52:54', '2020-05-16 06:52:54'),
(11, 10, 11, '2020-05-16 07:00:02', '2020-05-16 07:00:02'),
(12, 11, 3, '2020-05-16 07:03:07', '2020-05-16 07:03:07'),
(13, 12, 7, '2020-05-18 04:43:49', '2020-05-18 04:43:49'),
(14, 12, 15, '2020-05-18 04:43:49', '2020-05-18 04:43:49'),
(15, 13, 6, '2020-05-18 04:53:05', '2020-05-18 04:53:05'),
(16, 14, 6, '2020-05-18 04:55:32', '2020-05-18 04:55:32'),
(17, 15, 9, '2020-05-18 04:59:35', '2020-05-18 04:59:35'),
(18, 15, 16, '2020-05-18 04:59:35', '2020-05-18 04:59:35'),
(19, 16, 10, '2020-05-18 05:03:21', '2020-05-18 05:03:21'),
(20, 17, 6, '2020-05-18 05:15:42', '2020-05-18 05:15:42'),
(21, 17, 11, '2020-05-18 05:15:42', '2020-05-18 05:15:42'),
(27, 23, 6, '2020-06-10 11:26:54', '2020-06-10 11:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(8, 17, 13, 'hi nice post', '2020-06-02 09:35:15', '2020-06-02 09:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_21_145313_create_roles_table', 1),
(4, '2018_04_24_134132_create_tags_table', 1),
(5, '2018_04_26_144755_create_categories_table', 1),
(6, '2018_04_30_163457_create_posts_table', 1),
(7, '2018_04_30_163658_create_category_post_table', 1),
(8, '2018_04_30_163710_create_post_tag_table', 1),
(9, '2018_06_07_054134_create_subscribers_table', 1),
(10, '2018_06_13_082204_create_jobs_table', 1),
(11, '2018_07_12_154144_create_post_user_table', 1),
(12, '2018_07_18_142248_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('usman@gmail.com', '$2y$10$M8wT9yJcfVyo1y88WF4.6ul52W8wHcpvJOk1Oq8rSUoPuSu4SvAs.', '2020-05-15 12:53:53'),
('muhammadusman559933@gmail.com', '$2y$10$qjnOrcff2NzMxJqasICAVO7.gp3Rl.6IxpKYWDfBMuIy7AmkqYU.S', '2020-05-15 13:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://dummyimage.com/600x400/000/fff',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 3, 'corona case in gr', 'corona-case-in-gr', 'corona-case-in-gr-2020-05-15-5ebe5adc9a006.jpg', '<p>klich nb likhj raha&nbsp;</p>', 1, 1, 1, '2020-05-15 04:03:25', '2020-05-19 11:29:27'),
(7, 8, 'Eid shoppers ignoring corona virus completely.', 'eid-shoppers-ignoring-corona-virus-completely', 'eid-shoppers-ignoring-corona-virus-completely-2020-05-16-5ebfd0b3e95e3.jpeg', '<p>World Health Organization(WHO) had been advising to keep social distancing, but Lahoris paying zero attention and went out in a mass crowd to shop for new clothes in Township Market Lahore.</p>', 0, 1, 1, '2020-05-16 06:38:28', '2020-05-16 07:03:51'),
(9, 9, 'Rahim store Iqbal Town  charged fine', 'rahim-store-iqbal-town-charged-fine', 'rahim-store-iqbal-town-charged-fine-2020-05-16-5ebfd4153906d.jpeg', '<p>Since Punjab government has strict orders for departmental stores to follow timing in Ramadan as well, but Rahim store was charged as amount of 25000 for not closing the store even ar 5:15pm.</p>', 0, 1, 1, '2020-05-16 06:52:54', '2020-05-18 05:17:31'),
(11, 3, 'Coke Fest Turned the tables', 'coke-fest-turned-the-tables', 'coke-fest-turned-the-tables-2020-05-16-5ebfd67ab7d80.jpeg', '<p>The coke festival organized by Coka Cola Pakistan has been proved to be the best socio-cultural event so far.</p>', 0, 1, 1, '2020-05-16 07:03:07', '2020-05-19 14:29:18'),
(13, 9, 'Lahore was said to be Paris once', 'lahore-was-said-to-be-paris-once', 'lahore-was-said-to-be-paris-once-2020-05-18-5ec25b0156042.jpeg', '<p>Shahdra Lahore which is a Major entry point of Lahore is turning out to br a Garbage storage, Residents here are in a habit of throwing waste daily without knowing how hazardous it could be. Municipal corporation has been requested hundreds of times but still no one appeared to cater for it.</p>', 2, 1, 1, '2020-05-18 04:53:05', '2020-06-03 09:26:33'),
(14, 11, 'No fear of Corona', 'no-fear-of-corona', 'no-fear-of-corona-2020-05-18-5ec25b93f10d7.jpeg', '<p>As Govt Announced to give relief in lockdown, women came out fr shopping neglecting every single fear of corona. Certain females were being seen without masks and precautionary measures. Zero social distancing is seen. I fear that this nation who was starving a week ago because of lockdown and unemployment is now shopping&nbsp; like nothing had happened ever</p>', 3, 1, 1, '2020-05-18 04:55:32', '2020-06-03 09:27:17'),
(15, 18, 'Punjab province opened public transport today', 'punjab-province-opened-public-transport-today', 'punjab-province-opened-public-transport-today-2020-05-18-5ec25c8690a05.jpeg', '<p>Mass amount of public was willing to move in their cities as they were stuck in due to COVID19. Today Punjab and KP Govt decided to raise ban on public transport and to operate under strict SOP\'s however, 50% of transport community is unwilling to operate as they will be in loss. Govt made a rule only 50% of seats will be occupied in the bus which transporters are not agreeing upon.</p>', 4, 1, 1, '2020-05-18 04:59:35', '2020-06-02 09:43:01'),
(16, 3, 'Tutti fruity frozen yogurt new opening', 'tutti-fruity-frozen-yogurt-new-opening', 'tutti-fruity-frozen-yogurt-new-opening-2020-05-18-5ec25d691faee.jpeg', '<p>Tutti fruity chain is always serving its customers the best of the best.Well I was just out for eid shopping and was delighted to see the outlet of tutti fruity at packages mall Lahiore.</p>', 9, 1, 1, '2020-05-18 05:03:21', '2020-06-09 14:06:15'),
(17, 13, 'Young doctors want pay rise at any cost', 'young-doctors-want-pay-rise-at-any-cost', 'young-doctors-want-pay-rise-at-any-cost-2020-05-18-5ec2604dab0ba.jpeg', '<p>Lahore doctors association has discontinued services at ganga ram hospital lahore as their demands are not yet met, assured by the cheif minister, they were supposed to be given an increment of 10 %</p>', 10, 1, 1, '2020-05-18 05:15:42', '2020-08-05 13:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-14 11:03:57', '2020-05-14 11:03:57'),
(2, 2, 1, '2020-05-15 04:03:26', '2020-05-15 04:03:26'),
(3, 3, 2, '2020-05-15 04:55:26', '2020-05-15 04:55:26'),
(4, 4, 8, '2020-05-16 05:25:47', '2020-05-16 05:25:47'),
(5, 4, 11, '2020-05-16 05:25:47', '2020-05-16 05:25:47'),
(6, 5, 15, '2020-05-16 05:37:22', '2020-05-16 05:37:22'),
(7, 5, 16, '2020-05-16 05:37:22', '2020-05-16 05:37:22'),
(8, 6, 8, '2020-05-16 06:09:55', '2020-05-16 06:09:55'),
(9, 6, 17, '2020-05-16 06:09:55', '2020-05-16 06:09:55'),
(10, 7, 10, '2020-05-16 06:38:28', '2020-05-16 06:38:28'),
(11, 7, 14, '2020-05-16 06:38:28', '2020-05-16 06:38:28'),
(12, 7, 19, '2020-05-16 06:38:28', '2020-05-16 06:38:28'),
(15, 9, 10, '2020-05-16 06:52:54', '2020-05-16 06:52:54'),
(16, 9, 19, '2020-05-16 06:52:54', '2020-05-16 06:52:54'),
(17, 10, 8, '2020-05-16 07:00:03', '2020-05-16 07:00:03'),
(18, 10, 9, '2020-05-16 07:00:03', '2020-05-16 07:00:03'),
(19, 10, 10, '2020-05-16 07:00:03', '2020-05-16 07:00:03'),
(20, 10, 11, '2020-05-16 07:00:03', '2020-05-16 07:00:03'),
(21, 11, 5, '2020-05-16 07:03:07', '2020-05-16 07:03:07'),
(22, 11, 6, '2020-05-16 07:03:07', '2020-05-16 07:03:07'),
(23, 11, 7, '2020-05-16 07:03:07', '2020-05-16 07:03:07'),
(24, 12, 20, '2020-05-18 04:43:50', '2020-05-18 04:43:50'),
(25, 12, 21, '2020-05-18 04:43:50', '2020-05-18 04:43:50'),
(26, 13, 22, '2020-05-18 04:53:05', '2020-05-18 04:53:05'),
(27, 14, 11, '2020-05-18 04:55:32', '2020-05-18 04:55:32'),
(28, 14, 14, '2020-05-18 04:55:32', '2020-05-18 04:55:32'),
(29, 14, 19, '2020-05-18 04:55:32', '2020-05-18 04:55:32'),
(30, 15, 23, '2020-05-18 04:59:35', '2020-05-18 04:59:35'),
(31, 16, 12, '2020-05-18 05:03:21', '2020-05-18 05:03:21'),
(32, 17, 8, '2020-05-18 05:15:42', '2020-05-18 05:15:42'),
(33, 17, 24, '2020-05-18 05:15:42', '2020-05-18 05:15:42'),
(37, 23, 8, '2020-06-10 11:26:54', '2020-06-10 11:26:54'),
(38, 23, 19, '2020-06-10 11:26:54', '2020-06-10 11:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 2, 1, '2020-05-15 04:58:15', '2020-05-15 04:58:15'),
(17, 2, 5, '2020-05-15 11:37:56', '2020-05-15 11:37:56'),
(24, 17, 1, '2020-05-18 05:50:05', '2020-05-18 05:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'SportsLover', 'sportslover', '2020-05-15 04:54:14', '2020-05-15 04:54:14'),
(4, 'theft', 'theft', '2020-05-15 04:54:23', '2020-05-15 04:54:23'),
(5, '#music', 'music', '2020-05-15 04:54:33', '2020-05-15 04:54:33'),
(7, 'dance', 'dance', '2020-05-16 05:00:02', '2020-05-16 05:00:02'),
(8, 'relief', 'relief', '2020-05-16 05:00:29', '2020-05-16 05:00:29'),
(9, 'checking', 'checking', '2020-05-16 05:00:41', '2020-05-16 05:00:41'),
(10, 'violation', 'violation', '2020-05-16 05:00:51', '2020-05-16 05:00:51'),
(11, 'corona', 'corona', '2020-05-16 05:01:03', '2020-05-16 05:01:03'),
(12, 'foodie', 'foodie', '2020-05-16 05:01:54', '2020-05-16 05:01:54'),
(13, 'hunger', 'hunger', '2020-05-16 05:02:04', '2020-05-16 05:02:04'),
(14, 'shopping', 'shopping', '2020-05-16 05:02:27', '2020-05-16 05:02:27'),
(15, 'blast', 'blast', '2020-05-16 05:02:45', '2020-05-16 05:02:45'),
(16, 'casualities', 'casualities', '2020-05-16 05:02:55', '2020-05-16 05:02:55'),
(17, 'socialhelp', 'socialhelp', '2020-05-16 05:03:27', '2020-05-16 05:03:27'),
(18, 'accident', 'accident', '2020-05-16 05:09:50', '2020-05-16 05:09:50'),
(19, 'lockdown', 'lockdown', '2020-05-16 06:12:53', '2020-05-16 06:12:53'),
(20, 'tech', 'tech', '2020-05-18 04:36:57', '2020-05-18 04:36:57'),
(21, 'gadgets', 'gadgets', '2020-05-18 04:37:07', '2020-05-18 04:37:07'),
(22, 'poor sanitation', 'poor-sanitation', '2020-05-18 04:37:44', '2020-05-18 04:37:44'),
(23, 'transport', 'transport', '2020-05-18 04:39:29', '2020-05-18 04:39:29'),
(24, 'Health', 'health', '2020-05-18 05:13:28', '2020-05-19 14:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://i.picsum.photos/id/870/200/300.jpg',
  `about` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `nic`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 2, 'Usman', 'usman', 'usman@gmail.com', '$2y$10$CoZNt7p/anQ9...hxPiEFezYyWJiVcalY2MXGtqjUuM1JFxAftjTe', 'usman-2020-05-14-5ebd688adde55.jpg', 'Usman', '1234567891235', '12345678915', 'Ar6MFF0mabZHodHH3vOLE8A2fCWl75E8iEcsS5wvtKI5rmYyVpmS80C8GKWj', '2020-05-14 10:38:59', '2020-06-02 07:40:11'),
(8, 2, 'Haris', 'harissaeed', 'haris@gmail.com', '$2y$10$C8VZ9/2RD8RNvs776ePYHei0cBIVycQ5lJfNfwaynfqdHQ9AodNSS', 'haris-2020-05-16-5ec028622db74.jpeg', 'I\'m Haris.', '3525257739631', '03206421453', 'GgpCJCNFvOVcM1Z0nhJbVG0RKVxrkLxGeyObVU4tPIlaOL9GGXbcviZSUKlP', '2020-05-16 04:18:48', '2020-05-16 12:52:34'),
(9, 2, 'Ali', 'aliahmad', 'ali@gmail.com', '$2y$10$lf2RVbFkRQYxJtp2IyAfMur8BguExNRk28e0GxUIeaHyV/hVDmRpa', 'ali-2020-05-16-5ebfb7eb9d8c5.jpeg', 'I\'m Ali.', '3520257740632', '03022146521', 'CXIcFMregvx3WoCssJ6b93UxhCZkGicRs3BhNPZuxAw3QZJN7MvUhUOiR3au', '2020-05-16 04:20:12', '2020-05-16 04:52:44'),
(10, 2, 'Mubeen', 'mubeentariq', 'mubeen@gmail.com', '$2y$10$JQ.OSIiNazrG4d.ijU/YweGW2il5CymTBa/erFQ.E0oTWCNs0WsJi', 'mubeen-2020-05-16-5ebfb747ccaad.jpeg', 'I\'m Mubeen.', '3520257740633', '03316555321', '07p0cMuLVNlvgMSGHtkc01NFqN30GculGhgk6zoWJB5acBrLwJevA3DitQcq', '2020-05-16 04:21:09', '2020-05-16 04:50:00'),
(11, 2, 'Osama', 'osmanahmed', 'osama@gmail.com', '$2y$10$zZUIgxsEjouR1gPLb9uvFuzz.LvdqujdYKVtNvGlwSbtfqJL2ujSW', 'osama-2020-05-16-5ebfb77f1f3a5.jpeg', 'I\'m Osama Ahmed.', '3520257742634', '03003004040', 'D1ofAY9eBV9QNdFP5m95UtE7sUZxYIkGRUEFFGZTcRKreZhxX6ZP1c1GIgHX', '2020-05-16 04:22:14', '2020-05-16 04:50:55'),
(12, 2, 'Murtaza', 'murtazamir', 'murtaza@gmail.com', '$2y$10$Ih3Q1QN01Apqk1YXS3G64ewpnzS3JSUWToxWt8dO21p/FzjSoUFCC', 'murtaza-2020-05-16-5ebfb866d4303.jpeg', 'I\'m Murtaza.', '3520257743635', '03210100221', 'fjjAu9VRW5zep6o9e2njSrx5zkv4ogJTng1fp0NNgE2kueDYAPkeqg7GUktY', '2020-05-16 04:23:18', '2020-05-16 04:54:47'),
(13, 2, 'Qadous', 'abdulqadous', 'qadous@gmail.com', '$2y$10$DFucb7D8F9zu1pnoiLZDROQ0VMdOB.3CUOu8c9XBEqxjSF8.5tj2K', 'qadous-2020-05-16-5ebfb82a67240.jpeg', 'I\'m Abdul Qadous.', '3520257744636', '03004000401', 'yvx8BiQHfnVkMmm8y1UEtM9SUwCOTy2QQhoQlSqFa4UdPLIJSEisamLHIh7X', '2020-05-16 04:24:24', '2020-05-16 04:53:46'),
(14, 2, 'Armaghan', 'armaghankhan', 'armaghan@gmail.com', '$2y$10$YTzX2FmO0oGzR2z4LnmStuPPOsH5GE38KW0UolO/NTPObQAE9Zqxe', 'armaghan-2020-05-16-5ebfb7bdc47ff.jpeg', 'I\'m Armaghan Khan.', '3520257745637', '03014859312', 'EyBi6Li0c3pdIlAyUrRPOxZKR4AvMZV5DBSOCNp4DCYvVe0Fl4mj7cFMhQsC', '2020-05-16 04:25:30', '2020-05-16 04:51:58'),
(16, 2, 'Khalid', 'ranakhalid', 'khalid@gmail.com', '$2y$10$ZZ461k.lyEd5DaRoXTiZ6uF76JU.ESbH0fP0Svd7o2TTta40HKaBa', 'khalid-2020-05-16-5ebfb71af2048.jpeg', 'I\'m Khalid.', '3520257747639', '03211432169', 'Ee1uj07Hp7fM8vr9wJWL7jD32SE3dtjzSnbinO33wa3Opz0ek8zoJxGwdi3p', '2020-05-16 04:27:32', '2020-05-16 04:49:15'),
(17, 2, 'Hassan', 'hassanbutt', 'hassan@gmail.com', '$2y$10$k01VyDBe/WNxuHqiCq5R3uF8qo9w36aNGhGzPw8142uugM6IbFIIe', 'hassan-2020-05-16-5ebfb62e03007.jpeg', NULL, '3520257748640', '03035412398', 'ptpnwihrhO4YpOaEwguAAM2dAXIVR7vCMa0JnGeNwIjqwypj17dGOBVStFot', '2020-05-16 04:28:25', '2020-05-16 04:45:20'),
(18, 2, 'Ahsan', 'ahsanbutt', 'ahsan@gmail.com', '$2y$10$RXQj.XfSKho0cgewGYQqmOVpBJoATkDxA3J4hllaJBRXI30KbAI6u', 'ahsan-2020-05-16-5ebfb69159a25.jpeg', 'I\'m Ahsan.', '3520257749641', '03023216984', 'Zr17k7a9vhMGQNMcS9lHkKiQI2UlqyydmA54tjf0cuUM5zQ8Ad8zgyARW1Td', '2020-05-16 04:29:17', '2020-05-16 04:46:57'),
(20, 2, 'Abdullah', 'abdullahsattar', 'abdullah@gmail.com', '$2y$10$tiFHO.V6y5rWUq.iIiTtlusJQWM32Ert4Zqla4lQ9.HWDDEa5jKEi', 'https://i.picsum.photos/id/870/200/300.jpg', NULL, '3520258887944', '03024546489', '9zyUJOuJdUIb9EgFLzCfg9kWlrTygvPK71GRs0ZxT0L20O0KDEAfZHzzUCiH', '2020-05-19 14:42:35', '2020-05-19 14:42:35'),
(21, 2, 'ahmed', 'ahmedsattar', 'Ahmed@gmail.com', '$2y$10$RQgUPRmuV17dEjhtn2/vzeERN1PnHm7T5m.GGF5RhYhMbPQaZHBUO', 'https://i.picsum.photos/id/870/200/300.jpg', NULL, '3520258878984', '03001234567', NULL, '2020-05-21 13:53:24', '2020-05-21 13:53:24'),
(23, 1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$E6J7jEJxxujtwbKdSzvnHeXZbKGK.HrkRAAc/MttKqiVZ6BRK4osm', 'https://i.picsum.photos/id/870/200/300.jpg', NULL, '352025773862', '03219423231', 'CUDE6IkPKT7uTwb9KtK3HlRgB6KH3UA98sdDEPSLX8FQ4jNaPWjrj0Xx4nW3', '2020-07-31 08:57:24', '2020-07-31 08:57:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nic_unique` (`nic`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
