-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 09:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neurogen`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `circle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `overview`, `circle`, `image`, `image_medium`, `image_small`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'আমাদের সম্পর্কে', 'নিউরোজেনকে বলা হয়ে থাকে বাংলাদেশে জেনেটিক সায়েন্সের উন্নয়ন যাত্রায় অগ্রদূত। বহুমুখী আমাদের কার্যক্রম। আমরা অটিজমে আক্রান্ত শিশুদের মানসিক স্বাস্থ্যের উন্নয়নে বিভিন্ন ধরণের অ্যাসেসমেন্ট, থেরাপি ও জেনেটিক কাউন্সেলিং করে থাকি। সেই সাথে ব্রেস্ট ও ওভারিয়ান ক্যান্সার হওয়ার সম্ভাবনা এবং লাংস ক্যান্সার কোন জীনের ত্রুটির কারণে হয়ে থাকে তা নির্ধারণ ও নিরাময়ের কাজও করে থাকি। এছাড়াও বিভিন্ন সংক্রামক এবং দুর্লভ অসুখ হবার সম্ভাবনা নির্ণয় এবং তা থেকে প্রতিকারের উপায় নিয়ে গবেষণা করার জন্য বাংলাদেশের সর্বপ্রথম ও একমাত্র জেনেটিক টেস্টিং ল্যাবোরেটরি স্থাপন করেছে নিউরোজেন।', 'Genetic Test, Deep Clinical Assessment, Behavior Modification, Speech and Language, Occupational Therapy, Physiotherapy', 'images/pages/about/gDUOgy9GzJi9jDpyddmGYbgmZQWofGJix6vQTUOE.png', NULL, NULL, 1, 1, '2021-05-18 04:46:54', '2021-05-18 05:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `appoitments`
--

CREATE TABLE `appoitments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `position` smallint(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `privacy`, `position`, `title`, `url`, `article`, `tags`, `category_id`, `sub_category_id`, `meta_title`, `meta_description`, `meta_keywords`, `image`, `image_medium`, `image_small`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Novel mutations in actionable breast', 'novel-mutations-in-actionable-breast', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Test', 1, 1, 'Novel mutations in actionable breast', NULL, 'Test', 'images/blog/L7L62HQQC4PWyu4ZsAYLu2Bm5ZRQ9aS0zx59HNvm.jpg', NULL, NULL, 1, 1, '2021-05-17 07:53:46', '2021-05-17 16:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `privacy`, `title`, `url`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test', 'test', NULL, 'Test', NULL, NULL, 1, 1, '2021-05-17 05:41:48', '2021-05-17 08:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `blog_sub_categories`
--

CREATE TABLE `blog_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_sub_categories`
--

INSERT INTO `blog_sub_categories` (`id`, `privacy`, `category_id`, `title`, `url`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Test', 'test', NULL, 'Test', NULL, NULL, 1, 1, '2021-05-17 07:04:45', '2021-05-17 08:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `position` smallint(6) DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `privacy`, `position`, `question`, `answer`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'জেনেটিক টেস্ট কি?', 'মানব শরীরের প্রতিটি কোষেই রয়েছে ক্রোমোজম। এই ক্রোমোজমে থাকে অসংখ্য জিন। প্রতিটি কোষে অন্তত ২৫ হাজার জিন থাকে যা শরীরের প্রত্যেকটি কাজের বৈশিষ্টকে বহন করে। এইসকল জিনের গঠনে কোনো ত্রূটি/পরিবর্তন বা কোনো জিনের অনুপস্থিতিকেই জিনগত ত্রূটি বলা হয়। এইসকল ত্রুটি নির্ণয় করতে যেই টেস্ট করা হয় তাকেই জেনেটিক টেস্ট বলে। ', 1, NULL, '2021-05-15 10:34:25', '2021-05-15 10:34:25'),
(2, 1, NULL, 'জেনেটিক টেস্টটি কিভাবে করা হয়?', 'জেনেটিক টেস্টের জন্য রোগীর রক্ত নমুনা হিসেবে নেয়া হয়ে থাকে।', 1, NULL, '2021-05-15 10:35:42', '2021-05-15 10:35:42'),
(3, 1, NULL, 'জেনেটিক টেস্টের রিপোর্ট কি দেশের বাইরে নিয়ে যেতে পারবো?', 'নিউরোজেনের Genetics and Genomic Medicine Centre (GGMC) থেকে জেনেটিক টেস্টের প্রতিটি রিপোর্ট ACMG (American College Of Medical Genetics and Genomics) গাইডলাইনকে অনুসরণ করে করা হয়। এইসকল রিপোর্ট পৃথিবীর যেকোনপ্রান্তে চিকিৎসার কাজে গ্রহণযোগ্য।', 1, NULL, '2021-05-15 10:36:55', '2021-05-15 10:36:55'),
(4, 1, NULL, 'স্পিচ থেরাপি ও অকুপেশনাল থেরাপি কতদিন দিতে হয়?', 'রোগীর প্রথম এসেসমেন্ট এর পরে থেরাপিস্ট নিজেই একটি ধারণা দিতে পারবেনা যে রোগীর কিরকম উন্নতি হতে পারে এবং কতদিন সময় লাগতে পারে। কারণ একেক রোগীর ক্ষেত্রে উন্নয়ন একেক রকম দেখা যায়।', 1, NULL, '2021-05-15 10:39:14', '2021-05-15 10:39:14'),
(5, 1, NULL, 'জেনেটিক কাউন্সেলিং কি?', 'অটিজম, খিঁচুনি এবং অন্যান্য মানসিক ও বিকাশজনিত সমস্যা ও বিভিন্ন বিরল রোগের জিনগত যে কারণগুলো থাকে এবং এর চিকিৎসা গ্রহণের আগে ও পরে কি করণীয়, তা অভিজ্ঞ জেনেটিসিস্ট এর দ্বারা গ্রহণ করাকে জেনেটিক কাউন্সেলিং বলে।', 1, NULL, '2021-05-15 10:39:58', '2021-05-15 10:39:58'),
(6, 1, NULL, 'জেনেটিক কাউন্সেলিং কি শিশুদের জন্য করা হয়?', 'আমাদের ক্লিনিকে যেই কাউন্সেলিংটি করা হয় , সেটি মূলত জেনেটিক কাউন্সেলিং , এখানে জেনেটিক টেস্ট এবং এর গুরুত্ব সম্পর্কে বিস্তারিত রোগীর অবিভাবকদের সাথে আলোচনা করা হয় ।', 1, NULL, '2021-05-15 10:40:24', '2021-05-15 10:40:24'),
(7, 1, NULL, 'জেনেটিক টেস্ট কত বছর বয়সে করা যায়?', 'একজন মানুষের জন্মের পরে যেকোনো বয়সেই এই টেস্ট করা সম্ভব।', 1, NULL, '2021-05-15 10:40:45', '2021-05-15 10:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `type` smallint(6) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `privacy`, `type`, `title`, `source`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'images/gallery/RkE645nzGwR7pwGH9pKwcbrZpcB5ZKMk4jDPcZTC.jpg', 1, 1, '2021-05-16 12:17:14', '2021-05-16 12:49:41'),
(2, 1, 1, 'Image', 'images/gallery/dIGCa9YHPKyPwB7SyoAKkZjjLK9YPzfHJtgXTsiO.jpg', 1, NULL, '2021-05-16 12:29:28', '2021-05-16 12:29:28'),
(3, 1, 2, 'First Video', 'NCi38OQgPUY', 1, NULL, '2021-05-16 12:31:20', '2021-05-16 12:31:20'),
(4, 1, 1, NULL, 'images/gallery/fw1uN597RFBrZgGLBEVdKiCL4zu5OViQCLSb59cN.jpg', 1, NULL, '2021-05-17 09:50:50', '2021-05-17 09:50:50'),
(5, 1, 1, NULL, 'images/gallery/9FN09sBymXBkPdaAu6Ws2S8Wbg9jefkA9Hco6aPI.jpg', 1, NULL, '2021-05-17 10:01:35', '2021-05-17 10:01:35'),
(6, 1, 1, NULL, 'images/gallery/rSH7MjNbjxjIwZ1q6HNU56veMDMPPpWX5IbTIFro.jpg', 1, NULL, '2021-05-17 10:01:35', '2021-05-17 10:01:35'),
(7, 1, 1, NULL, 'images/gallery/91io7lYIYiI3FEX82Fzg1TUzzIjlFXRv2vOCaKFS.jpg', 1, NULL, '2021-05-17 10:01:35', '2021-05-17 10:01:35'),
(8, 1, 1, NULL, 'images/gallery/tNyxkNxxpCErr2amKLaonlj1xKLM4Y4fw3YWGYcU.jpg', 1, NULL, '2021-05-17 10:01:35', '2021-05-17 10:01:35'),
(9, 1, 1, NULL, 'images/gallery/WH2glVG3u7Z08XVDIrPo18pbicetrtbZnkVN9PrD.jpg', 1, NULL, '2021-05-17 10:01:35', '2021-05-17 10:01:35'),
(10, 1, 1, NULL, 'images/gallery/LgFIdLJf61P03ADSqrU73ILqoqlTgPxoZGjhYQ3k.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(11, 1, 1, NULL, 'images/gallery/sfu1t7ySWHTORmhxXs1KuVSVtJF5w5GUL4WrBKJz.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(12, 1, 1, NULL, 'images/gallery/D3hKM09Ct3q9OZ49e1CXI8btt2yRN2Za5OQ2COur.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(13, 1, 1, NULL, 'images/gallery/a0wca5lvKPrsvEaAGAnn2zqyjehcZcajFJOE0GeF.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(14, 1, 1, NULL, 'images/gallery/mMFjeuqcJXssz6nrgG8cNylLBTs68Fj5fvfT8Cfv.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(15, 1, 1, NULL, 'images/gallery/JuipsnsV1Ce4rpzf6G5QHEdj92WKSy6XFzxp2Hjo.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(16, 1, 1, NULL, 'images/gallery/vjNgUc9LXHwAzza9wXIdKKefgRm3UZSzlaPWGPmf.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(17, 1, 1, NULL, 'images/gallery/Xz5HFqx3Qnfsxa4x4lHXloezZg4wN9WlFaB3on90.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(18, 1, 1, NULL, 'images/gallery/wjJarCITXQ3ri6GcZVFoyaK8QNKgotSi6q4cB9q3.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(19, 1, 1, NULL, 'images/gallery/rP6VLpxvamz39JHqezvr1xAVutFyC14aDpNLN6hP.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(20, 1, 1, NULL, 'images/gallery/l1U90aeM3GkVMbTiPlW5z9IL1HgysJlpEnyFJuHg.jpg', 1, NULL, '2021-05-17 10:07:05', '2021-05-17 10:07:05'),
(21, 1, 1, NULL, 'images/gallery/X3HchhAsvg3o4GlPTHYwlTzGuadwpSf6UZCLr704.jpg', 1, NULL, '2021-05-17 10:09:03', '2021-05-17 10:09:03'),
(22, 1, 1, NULL, 'images/gallery/bT3o1E77dEyyurXduNQUQgqsBrubOiOiM3ZpTj67.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(23, 1, 1, NULL, 'images/gallery/07TblrsXfBTmrb5qIk4oWHSDknrvadgG9dr6x1jl.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(24, 1, 1, NULL, 'images/gallery/2snGVfjROMmzNsIomBPRLSEgBAYh2FuKPS2MXpe8.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(25, 1, 1, NULL, 'images/gallery/wTgKBoRt8iI2iYbsXU69vjgzn5QCYUqH38DD9uJw.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(26, 1, 1, NULL, 'images/gallery/P2sMpxjsgKcbbp1aKe3MIkJO1oRA0fwllYvWVV5O.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(27, 1, 1, NULL, 'images/gallery/jVYvfbuLawmeRXCrMwrIjZGQc8NAXFvKExBBACdZ.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(28, 1, 1, NULL, 'images/gallery/K3N4AlyrdcEGgCdGIMS8mj8f0gVfNXFqtgOKMV4z.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(29, 1, 1, NULL, 'images/gallery/5tlIbzofDxrlRNq1EZ0HUzYVOqU0OxdVZ7o3IG58.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(30, 1, 1, NULL, 'images/gallery/oj90kIhfL98nqMW6BRj0cP8SZ2aqw1xSmVPt3UkP.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(31, 1, 1, NULL, 'images/gallery/yWnd7wu5XZU1z3zXfV6p9TElwuyZjvBRBd9IcxdT.jpg', 1, NULL, '2021-05-17 10:09:04', '2021-05-17 10:09:04'),
(32, 1, 1, NULL, 'images/gallery/P8UZIj9l8Qr99kgk1eBwSIoQDnyGgJcktoosGgk4.jpg', 1, NULL, '2021-05-17 10:12:56', '2021-05-17 10:12:56'),
(33, 1, 1, NULL, 'images/gallery/8AZnvZUXTkEAtkkNDjhIllaaVIxUSNVSdXJRjwGV.jpg', 1, NULL, '2021-05-17 10:12:56', '2021-05-17 10:12:56'),
(34, 1, 1, NULL, 'images/gallery/0fuMRRC9Wm68v4YmFyJuCQGBgMWFhNUeH32ncbEj.jpg', 1, NULL, '2021-05-17 10:12:56', '2021-05-17 10:12:56'),
(35, 1, 1, NULL, 'images/gallery/nkYen4MfFTRrYfgU6LFp3dIHe5Qxhm7UNAwrO8Rn.jpg', 1, NULL, '2021-05-17 10:12:56', '2021-05-17 10:12:56'),
(36, 1, 1, NULL, 'images/gallery/YEaynbl4o9Df8WjNWcoDMp5MDhPAHyjImbARWGEB.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(37, 1, 1, NULL, 'images/gallery/KCmHNiJtx90dtxdWsdqKmDzaJqhCipHQ4NCQz1AF.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(38, 1, 1, NULL, 'images/gallery/QxCcL1ajFu8c5t3GnyPng7lLXxFs8mnenFyezfyI.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(39, 1, 1, NULL, 'images/gallery/nKhL6yttCALytkUvWMmLllCWlqgJo9xvNxzODxWw.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(40, 1, 1, NULL, 'images/gallery/dwInCI9QzXY1pkUtt1qUyQANzcdtH17UHiYq7isz.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(41, 1, 1, NULL, 'images/gallery/mCwi6TClBlrlea8bInr7Q0dVWcI5zfyo5WtTiD3c.jpg', 1, NULL, '2021-05-17 10:12:57', '2021-05-17 10:12:57'),
(42, 1, 1, NULL, 'images/gallery/MgzTadVBZCdFh8sASqa2wS4Acf5DZ2hbohyvAKAT.jpg', 1, NULL, '2021-05-17 10:16:52', '2021-05-17 10:16:52'),
(43, 1, 1, NULL, 'images/gallery/SkkOyGz1FLEZxycqpXgA9QO0ns1lKdb4LIbU0jU6.jpg', 1, NULL, '2021-05-17 10:16:52', '2021-05-17 10:16:52'),
(44, 1, 1, NULL, 'images/gallery/jDR0AoDX4FrRlxixSkuRsRpdNT2UAUEDEBixUcbK.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(45, 1, 1, NULL, 'images/gallery/B9BKCoePlViii2CKtfAZX9NGZrVbchthi8gmNXWC.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(46, 1, 1, NULL, 'images/gallery/NPs0fgmPEfmkzdVpY6C1h8DTqEDnpXTp3KEIxfoO.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(47, 1, 1, NULL, 'images/gallery/m6KZpjgwvLcsXms2IXZ7bho6lzJ7aZiD2VxsWCMb.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(48, 1, 1, NULL, 'images/gallery/pGxHRYxGEoWfQjoKCCushW5uRHjXpowK1J6W0QVm.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(49, 1, 1, NULL, 'images/gallery/AKfxKI3yJIokGPkbtZy5bejyMLu1e2AEeDYuv3El.jpg', 1, NULL, '2021-05-17 10:16:53', '2021-05-17 10:16:53'),
(50, 1, 2, NULL, 'ULyFllHlJGk', 1, NULL, '2021-05-17 10:23:11', '2021-05-17 10:23:11'),
(51, 1, 2, NULL, 'FI2Wkt0nhuQ', 1, NULL, '2021-05-17 10:23:22', '2021-05-17 10:23:22'),
(52, 1, 2, NULL, 'CRgK57gXTC8', 1, NULL, '2021-05-17 10:25:46', '2021-05-17 10:25:46'),
(53, 1, 2, NULL, 'OhSloTqzASE', 1, NULL, '2021-05-17 10:26:00', '2021-05-17 10:26:00'),
(54, 1, 2, NULL, 'IsWO1fVuuZc', 1, NULL, '2021-05-17 10:26:13', '2021-05-17 10:26:13'),
(55, 1, 2, NULL, '0122REiSSLQ', 1, NULL, '2021-05-17 10:26:23', '2021-05-17 10:26:23'),
(56, 1, 2, NULL, 'yP1qRodHOjs', 1, NULL, '2021-05-17 10:26:39', '2021-05-17 10:26:39'),
(57, 1, 2, NULL, 'X9yOBbOJRmo', 1, NULL, '2021-05-17 10:26:49', '2021-05-17 10:26:49'),
(58, 1, 2, NULL, '9tb6-jV-yuY', 1, NULL, '2021-05-17 10:26:58', '2021-05-17 10:26:58'),
(59, 1, 2, NULL, 'uEML8ePJYn8', 1, NULL, '2021-05-17 10:27:08', '2021-05-17 10:27:08'),
(60, 1, 2, NULL, '0I00EWl44O0', 1, NULL, '2021-05-17 10:27:16', '2021-05-17 10:27:16'),
(61, 1, 2, NULL, 'BUQXsqUrM9I', 1, NULL, '2021-05-17 10:27:26', '2021-05-17 10:27:26'),
(62, 1, 2, NULL, 'WGUp4116BCI', 1, NULL, '2021-05-17 10:27:34', '2021-05-17 10:27:34'),
(63, 1, 2, NULL, 'fFpTlHspuUo', 1, NULL, '2021-05-17 10:27:44', '2021-05-17 10:27:44'),
(64, 1, 2, NULL, 'Ukd3lsPyT1M', 1, NULL, '2021-05-17 10:27:53', '2021-05-17 10:27:53'),
(65, 1, 2, NULL, 'diBgZWMPK_4', 1, NULL, '2021-05-17 10:28:02', '2021-05-17 10:28:02'),
(66, 1, 2, NULL, 'cFEG3hRul6g', 1, NULL, '2021-05-17 10:28:15', '2021-05-17 10:28:15'),
(67, 1, 2, NULL, 'MmcYtHwqo2c', 1, NULL, '2021-05-17 10:28:39', '2021-05-17 10:28:39'),
(68, 1, 2, NULL, 'fO9eVZZIJsE', 1, NULL, '2021-05-17 10:28:47', '2021-05-17 10:28:47'),
(69, 1, 2, NULL, 'aQoqjiPnHq4', 1, NULL, '2021-05-17 10:28:56', '2021-05-17 10:28:56'),
(70, 1, 2, NULL, '7YVNQQ1b5Is', 1, NULL, '2021-05-17 10:29:04', '2021-05-17 10:29:04'),
(71, 1, 2, NULL, 'jLYSFO3hcKc', 1, NULL, '2021-05-17 10:29:13', '2021-05-17 10:29:13'),
(72, 1, 2, NULL, 'agdVACMeEXk', 1, NULL, '2021-05-17 10:29:21', '2021-05-17 10:29:21'),
(73, 1, 2, NULL, 'OviI6pv0SBk', 1, NULL, '2021-05-17 10:29:29', '2021-05-17 10:29:29'),
(74, 1, 2, NULL, 'ZyWUcGaHkZ4', 1, NULL, '2021-05-17 10:29:40', '2021-05-17 10:29:40'),
(75, 1, 2, NULL, 'jDw_e0dn768', 1, NULL, '2021-05-17 10:29:52', '2021-05-17 10:29:52'),
(76, 1, 2, NULL, '6D6YuHw2UmU', 1, NULL, '2021-05-17 10:30:04', '2021-05-17 10:30:04'),
(77, 1, 2, NULL, 'N_mNmrp4g5I', 1, NULL, '2021-05-17 10:30:18', '2021-05-17 10:30:18'),
(78, 1, 2, NULL, 'nCOUhui91CE', 1, NULL, '2021-05-17 10:30:28', '2021-05-17 10:30:28'),
(79, 1, 2, NULL, 'LNDu9x8hJxQ', 1, NULL, '2021-05-17 10:30:44', '2021-05-17 10:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_05_06_232044_create_site_infos_table', 1),
(6, '2021_05_06_232435_create_opening_hours_table', 1),
(7, '2021_05_06_232510_create_appoitments_table', 1),
(8, '2021_05_06_232527_create_teams_table', 1),
(9, '2021_05_06_232612_create_faqs_table', 1),
(10, '2021_05_06_232632_create_blogs_table', 1),
(14, '2021_05_06_232814_create_careers_table', 1),
(15, '2021_05_06_232830_create_research_table', 1),
(16, '2021_05_06_232008_create_sliders_table', 1),
(17, '2021_05_06_232720_create_galleries_table', 1),
(18, '2021_05_06_232646_create_blog_categories_table', 2),
(19, '2021_05_06_232703_create_blog_sub_categories_table', 2),
(21, '2021_05_18_100412_create_services_table', 3),
(22, '2021_05_18_101532_create_abouts_table', 3),
(23, '2021_05_18_102419_create_texts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `privacy`, `day`, `from`, `to`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Saturday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:23:18', '2021-05-15 11:23:18'),
(2, 1, 'Sunday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:27:51', '2021-05-15 11:27:51'),
(3, 1, 'Monday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:28:03', '2021-05-15 11:28:03'),
(4, 1, 'Tuesday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:28:16', '2021-05-15 11:28:16'),
(5, 1, 'Wednesday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:28:28', '2021-05-15 11:28:28'),
(6, 1, 'Thursday', '10:00 AM', '09:00 PM', 1, NULL, '2021-05-15 11:28:42', '2021-05-15 11:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `privacy`, `title`, `date`, `overview`, `source`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Whole exome sequencing uncovered', '16 February 2021 ', 'Epidermodysplasia verruciformis (EV) is a rare disease of the skin, characterized by abnormal susceptibility', 'files/research/fGPm3qgdiZjndv5LzxlIX0dPBBgtLOgFWGxDMXnu.pdf', 1, 1, '2021-05-16 13:54:28', '2021-05-17 08:42:00'),
(2, 1, 'Long-Read Sequencing Improves', '19 February 2021', 'The advent of long-read sequencing offers a new assessment method of detecting genomic', 'files/research/1UIBqqMUuAqJUis3TRaKenuDdHOp0VJFMDs7Q1Kt.pdf', 1, NULL, '2021-05-17 08:43:34', '2021-05-17 08:43:35'),
(3, 1, 'An Exploration of Physical and Phenotypic', '25 September 2020', 'This study explored the physical and clinical phenotype of Bangladeshi children with autism spectrum', 'files/research/SVJ4xJ0BFK7t2TcH8Zi4ny1ysKM45urWLjXi1w5v.pdf', 1, NULL, '2021-05-17 08:45:22', '2021-05-17 08:45:22'),
(4, 1, 'HER2+ Breast cancer', '28 April 2019', 'A newly developed drug trastuzumab emtansine (T-DM1) has improved the survival of breast', 'files/research/OrEsKsoorRtSRXUhCB5N7U7KRNS7Igy2877bNCgK.pdf', 1, NULL, '2021-05-17 08:46:04', '2021-05-17 08:46:04'),
(5, 1, 'Tree Man Syndrome', '2017', 'Epidermodysplasia verruciformis (EV) is a rare disease of the skin, characterized by abnormal susceptibility', 'files/research/kt9TxjQz4rgP974bmhSxTFawnPwFkQ5QRaUEgsLQ.pdf', 1, NULL, '2021-05-17 08:46:50', '2021-05-17 08:46:50'),
(6, 1, 'DETECTION OF CLINICALLY RELEVANT COPY', '2018', 'Autism Spectrum Disorder (ASD) is a neurodevelopmental disorder. Due to long term', 'files/research/5NTowHxfUwZgS3xCNEwhLm9jRCB42Oz9F5rEz1I9.pdf', 1, NULL, '2021-05-17 08:48:29', '2021-05-17 08:48:29'),
(7, 1, 'Novel mutations in actionable breast', '2019', 'Genetic testing is becoming an essential tool for breast cancer (BC) diagnosis and treatment pathway', 'files/research/0nPcGV0sBxydAAjjtfhHNLGgzo7CNPBuucHFDKDC.pdf', 1, NULL, '2021-05-17 08:49:10', '2021-05-17 08:49:11'),
(8, 1, 'Gonadal mosaicism', 'August 2019', 'Intellectual disability (ID) is a complex condition that can impact multiple domains of development', 'files/research/UaeuHC7jsM68xRmScDLuKMveWya8GhpvEsSmE9KT.pdf', 1, 1, '2021-05-17 08:49:58', '2021-05-17 09:45:52'),
(9, 1, 'ADVANCES IN MOLECULAR PATHOLOGY', '2020', 'Neurodevelopmental disorders (NDD) refer to a collection of rare disorders that manifest during', 'files/research/6OnQz4hTvrDX7h3VDudzmsAlRGsnWlb2CPtana2H.pdf', 1, NULL, '2021-05-17 09:46:49', '2021-05-17 09:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `position` smallint(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `privacy`, `position`, `title`, `url`, `overview`, `article`, `meta_title`, `meta_description`, `meta_keywords`, `image`, `image_medium`, `image_small`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Genetic Test', 'genetic-test', 'খিঁচুনি, বিরল রোগ, মানসিক ও বিকাশজনিত সমস্যার পুরনাঙ্গ “বিজ্ঞানভিত্তিক ডায়াগনোসিসের” জন্য Genetic Test অপরিহার্য। জিনগত ত্রুটির কারণে ঘটিত রোগ শুধু মাত্র জেনেটিক টেস্টের মাধ্যমেই সুনির্দিষ্টভাবে চিহ্নিত করা সম্ভব এবং সঠিক গাইডলাইন ও চিকিৎসা দেয়া সম্ভব। ', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Genetic Test', 'খিঁচুনি, বিরল রোগ, মানসিক ও বিকাশজনিত সমস্যার পুরনাঙ্গ “বিজ্ঞানভিত্তিক ডায়াগনোসিসের” জন্য Genetic Test অপরিহার্য। জিনগত ত্রুটির কারণে ঘটিত রোগ শুধু মাত্র জেনেটিক টেস্টের মাধ্যমেই সুনির্দিষ্টভাবে চিহ্নিত করা সম্ভব এবং সঠিক গাইডলাইন ও চিকিৎসা দেয়া সম্ভব। ', NULL, 'images/service/fHbjpNfHL6dHAxDRQnr7JPGv5Zni2cITshAysvcf.jpg', NULL, NULL, 1, 1, '2021-05-18 05:31:17', '2021-05-18 05:38:47'),
(2, 1, NULL, 'Deep Clinical Assessment', 'deep-clinical-assessment', 'শিশুদের অতিরিক্ত চঞ্চলতা, অমনোযোগ, সমবয়সীদের সাথে মিশতে না পারা বা যেকোনো মানসিক বিকাশজনিত সমস্যাগুলি চিহ্নিত করার প্রাথমিক ধাপ হচ্ছে Deep Clinical Assessment. ', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Deep Clinical Assessment', 'শিশুদের অতিরিক্ত চঞ্চলতা, অমনোযোগ, সমবয়সীদের সাথে মিশতে না পারা বা যেকোনো মানসিক বিকাশজনিত সমস্যাগুলি চিহ্নিত করার প্রাথমিক ধাপ হচ্ছে Deep Clinical Assessment. ', NULL, 'images/service/BSpUUjy9ru9UyuQZGikm95gspr6MXQB7aplTRakF.jpg', NULL, NULL, 1, NULL, '2021-05-18 06:41:35', '2021-05-18 06:41:35'),
(3, 1, NULL, 'Behavior Modification Therapy', 'behavior-modification-therapy', 'যে সকল শিশুদের আচার-আচরণে সমস্যা দেখা যায়, চোখের দিকে তাকিয়ে কথা বলতে পারে না, নির্দেশনা অনুসরণ করতে পারে না, তাদের জন্য কার্যকরী প্রক্রিয়া হচ্ছে Behaviour Modification.', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Behavior Modification Therapy', 'যে সকল শিশুদের আচার-আচরণে সমস্যা দেখা যায়, চোখের দিকে তাকিয়ে কথা বলতে পারে না, নির্দেশনা অনুসরণ করতে পারে না, তাদের জন্য কার্যকরী প্রক্রিয়া হচ্ছে Behaviour Modification.', NULL, 'images/service/EOnEVb19MDROBfgpCdquC0TMdO2A1Z8vqrXCxCEr.jpg', NULL, NULL, 1, NULL, '2021-05-18 06:42:37', '2021-05-18 06:42:37'),
(4, 1, NULL, 'Speech and Language Therapy', 'speech-and-language-therapy', 'Speech and Language Therapy হলো কথা ও ভাষার বিকাশের চিকিৎসা ব্যবস্থা। অটিজম ও অন্যান্য ভাষাগত সমস্যার সমাধান হচ্ছে Speech and Language Therapy.', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Speech and Language Therapy', 'Speech and Language Therapy হলো কথা ও ভাষার বিকাশের চিকিৎসা ব্যবস্থা। অটিজম ও অন্যান্য ভাষাগত সমস্যার সমাধান হচ্ছে Speech and Language Therapy.', NULL, 'images/service/64cVhiYkYc9zfAk6e6UUnbF5N4OMw0flUnEm8NXI.jpg', NULL, NULL, 1, NULL, '2021-05-18 06:43:11', '2021-05-18 06:43:11'),
(5, 1, NULL, 'Occupational Therapy', 'occupational-therapy', 'Occupational Therapy একটি বিজ্ঞান সম্মত চিকিৎসা যা একজন ব্যক্তির শারীরিক, মানসিক, সামাজিক এবং পরিবেশগত সমস্যা দূর করার মাধ্যমে তাকে দৈনন্দিন কাজে যথাসম্ভব স্বনির্ভর করার লক্ষে অটিজম ও অন্যান্য নিউরো-ডেভেলপমেন্টাল ডিজিজের চিকিৎসা সেবা প্রদান করে থাকে। ', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Occupational Therapy', 'Occupational Therapy একটি বিজ্ঞান সম্মত চিকিৎসা যা একজন ব্যক্তির শারীরিক, মানসিক, সামাজিক এবং পরিবেশগত সমস্যা দূর করার মাধ্যমে তাকে দৈনন্দিন কাজে যথাসম্ভব স্বনির্ভর করার লক্ষে অটিজম ও অন্যান্য নিউরো-ডেভেলপমেন্টাল ডিজিজের চিকিৎসা সেবা প্রদান করে থাকে। ', NULL, 'images/service/JHcEspHbzZd7XYIPbNu1z9OR5tc0gpkHlUUBlZ3v.jpg', NULL, NULL, 1, NULL, '2021-05-18 06:48:34', '2021-05-18 06:48:34'),
(6, 1, NULL, 'Physiotherapy', 'physiotherapy', 'যেকোনো ধরনের আঘাত ও স্নায়বিক সমস্যার কারণে শিশুদের মাংস পেশির দুর্বলতা,ভারসাম্যহীনতা. হাটতে বসতে ও চলতে দেরি করা. খিচুনির জন্য হাটতে বা বসতে দেরি করা এবং ঘাড় শক্ত বা নরম হওয়া; চলাচলের অক্ষমতাজনিত যাবতীয় সমস্যা ও গতিশীলতা বৃদ্ধির জন্য যে স্বাস্থ্য ও পুনর্বাসন সেবা প্রদান করা হয় তার নাম হলো Physiotherapy.', '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo, dui quis pulvinar blandit, tellus dolor efficitur dui, rutrum tempus quam massa quis odio. Vivamus ullamcorper ultrices pretium. Sed luctus placerat justo, in aliquam nunc blandit ut. Suspendisse potenti. Nam at tellus id ante semper vulputate vel at nisi. Sed mattis tellus sit amet lectus facilisis, a molestie ex consequat. Morbi vel mi efficitur, eleifend nisl et, maximus elit. Nam lacinia lobortis elit vitae sodales. In vel laoreet ipsum. Donec ornare nisl sed nisl facilisis accumsan.</p>\n<p>Nullam mattis sed arcu ac luctus. Ut euismod erat sem, vitae mattis nisl elementum eget. Vivamus non urna eget ligula ultrices faucibus. Morbi ante nisl, fermentum vel turpis id, gravida dapibus nulla. Praesent bibendum tortor at mi pharetra commodo. Quisque semper a tellus quis maximus. Nullam tincidunt auctor mauris. Suspendisse aliquam massa lacus, a congue metus dictum quis. Mauris vel interdum eros, vitae sodales massa. Aliquam vel ipsum metus. Ut placerat, turpis et congue euismod, velit quam venenatis odio, sit amet fermentum lorem purus eget lectus.</p>\n<p>Vestibulum mollis eu neque nec dapibus. Nulla sollicitudin nisl ipsum, non luctus tellus interdum quis. Quisque viverra aliquam quam, dapibus luctus mi porttitor eu. Morbi eros augue, dignissim in cursus et, dapibus a eros. Praesent pharetra erat rutrum, maximus nibh lobortis, consequat dolor. Cras et auctor nisi. Pellentesque aliquam vehicula mauris, a tempor purus commodo et. Sed id turpis eu leo tempor molestie. Integer dui magna, venenatis dapibus bibendum vitae, vestibulum ac tellus. Vivamus ultrices nibh vel tellus consequat faucibus. Sed laoreet diam bibendum egestas efficitur. Aliquam erat volutpat. Etiam mollis luctus placerat. Suspendisse commodo erat a lacus dapibus iaculis non in turpis.</p>\n<p>Mauris accumsan tincidunt diam. Duis molestie eleifend venenatis. Aliquam quis nunc non velit placerat egestas in vitae enim. Mauris eget congue lorem. Nam non aliquet dolor. Morbi eu dolor tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed mi congue, cursus lorem eget, dignissim elit. Phasellus molestie, justo ac posuere aliquet, nibh sapien consectetur dui, vel viverra diam eros ut mi. Vestibulum nec augue ante. Praesent ac nisl nec orci porta faucibus. Integer placerat suscipit libero in scelerisque. Ut lectus neque, bibendum mollis velit a, euismod lobortis arcu. Nulla posuere metus turpis, sed lacinia massa pulvinar at.</p>\n<p>Proin sed erat sodales, feugiat ante sit amet, porta orci. Maecenas ut vehicula ligula, sit amet ultrices odio. Aenean ullamcorper sit amet enim et aliquet. Vestibulum vitae arcu non sem commodo mollis nec ut nibh. Aenean tempus ante tortor, ac accumsan metus egestas vel. Maecenas ac nibh velit. Integer condimentum ipsum arcu, sit amet imperdiet turpis cursus sed. Curabitur posuere sapien id purus lacinia, vitae lacinia leo semper. Vivamus accumsan laoreet tortor, vitae consequat diam aliquet vitae. Curabitur pretium aliquam magna, semper dapibus enim bibendum non. Donec et eros vitae mi vestibulum finibus eget sit amet ex. Proin eget varius ligula. Nunc pharetra consectetur eros vel aliquam. Mauris efficitur dapibus pharetra. Donec ut mauris id risus consectetur porta. Aliquam erat volutpat.</p>\n</div>', 'Physiotherapy', 'যেকোনো ধরনের আঘাত ও স্নায়বিক সমস্যার কারণে শিশুদের মাংস পেশির দুর্বলতা,ভারসাম্যহীনতা. হাটতে বসতে ও চলতে দেরি করা. খিচুনির জন্য হাটতে বা বসতে দেরি করা এবং ঘাড় শক্ত বা নরম হওয়া; চলাচলের অক্ষমতাজনিত যাবতীয় সমস্যা ও গতিশীলতা বৃদ্ধির জন্য যে স্বাস্থ্য ও পুনর্বাসন সেবা প্রদান করা হয় তার নাম হলো Physiotherapy.', NULL, 'images/service/LMpCclTD4nJYRYXEQrPco7xoYk0vUEbZHRhzl5Ga.jpg', NULL, NULL, 1, NULL, '2021-05-18 06:49:17', '2021-05-18 06:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_bg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `name`, `domain`, `mobile`, `email`, `google_map`, `address`, `overview`, `logo`, `favicon`, `header_bg`, `facebook_page`, `facebook_group`, `twitter`, `linkedin`, `youtube`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'NeuroGen', 'neurogenbd.com', '01787662575', 'info@neurogenbd.com', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3651.886654498555!2d90.38596600000001!3d23.751421!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8aff35de1b491672!2sHealth%20and%20Hope%20Hospital!5e0!3m2!1sen!2sbd!4v1621076397481!5m2!1sen!2sbd', 'Solid Point Karim Tower, 44/7-A, 44/7-B (5th Floor) West Panthapath North Dhanmondi, Kolabagan, Dhaka, Bangladesh', 'নিউরোজেনকে বলা হয়ে থাকে বাংলাদেশে জেনেটিক সায়েন্সের উন্নয়ন যাত্রায় অগ্রদূত। বহুমুখী আমাদের কার্যক্রম। আমরা অটিজমে আক্রান্ত শিশুদের মানসিক স্বাস্থ্যের উন্নয়নে বিভিন্ন ধরণের অ্যাসেসমেন্ট, থেরাপি ও জেনেটিক কাউন্সেলিং করে থাকি। সেই সাথে ব্রেস্ট ও ওভারিয়ান ক্যান্সার হওয়ার সম্ভাবনা এবং লাংস ক্যান্সার কোন জীনের ত্রুটির কারণে হয়ে থাকে তা নির্ধারণ ও নিরাময়ের কাজও করে থাকি। এছাড়াও বিভিন্ন সংক্রামক এবং দুর্লভ অসুখ হবার সম্ভাবনা নির্ণয় এবং তা থেকে প্রতিকারের উপায় নিয়ে গবেষণা করার জন্য বাংলাদেশের সর্বপ্রথম ও একমাত্র জেনেটিক টেস্টিং ল্যাবোরেটরি স্থাপন করেছে নিউরোজেন।', 'images/resources/03czMHvDUbTwdMWSM4Ma8ZbayT6BP8jc4ZMSFiQu.png', 'images/resources/TAcDifi1Jh1eREpYQlqm33Hr8dHVLiKO73gVZGP4.png', 'images/backgrpund/FA3L4jO76nnOVvGgTSBD4gBcJyuW7H90Onp3FiJX.png', 'NeuroGen.childrens', '2848103372181493', 'NeuroGenChild', 'neurogen-children-s-healthcare-215a0b142', 'UC2xpeMcq3dIFmAyPxFxRQEg', 1, 1, '2021-05-15 10:57:58', '2021-05-17 05:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `position` smallint(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `privacy`, `position`, `title`, `overview`, `link`, `link_title`, `image`, `image_medium`, `image_small`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'আমাদের সম্পর্কে', 'নিউরোজেনকে বলা হয়ে থাকে বাংলাদেশে জেনেটিক সায়েন্সের উন্নয়ন যাত্রায় অগ্রদূত। আমরা অটিজমে আক্রান্ত শিশুদের মানসিক স্বাস্থ্যের উন্নয়নে বিভিন্ন ধরণের অ্যাসেসমেন্ট, থেরাপি ও জেনেটিক কাউন্সেলিং করে থাকি। সেই সাথে  ব্রেস্ট ও ওভারিয়ান ক্যান্সার হওয়ার সম্ভাবনা এবং লাংস ক্যান্সার কোন জীনের ত্রুটির কারণে হয়ে থাকে তা নির্ধারণ ও নিরাময়ের কাজও করে থাকি।', 'about', 'About Us', 'images/slider/SuVJxVGXeCisnc6HONBPHaLWvFTHx7OSt4KC2HEn.jpg', NULL, NULL, 1, NULL, '2021-05-16 10:06:08', '2021-05-16 10:06:08'),
(2, 1, NULL, 'আমাদের সম্পর্কে', 'নিউরোজেনকে বলা হয়ে থাকে বাংলাদেশে জেনেটিক সায়েন্সের উন্নয়ন যাত্রায় অগ্রদূত। আমরা অটিজমে আক্রান্ত শিশুদের মানসিক স্বাস্থ্যের উন্নয়নে বিভিন্ন ধরণের অ্যাসেসমেন্ট, থেরাপি ও জেনেটিক কাউন্সেলিং করে থাকি। সেই সাথে  ব্রেস্ট ও ওভারিয়ান ক্যান্সার হওয়ার সম্ভাবনা এবং লাংস ক্যান্সার কোন জীনের ত্রুটির কারণে হয়ে থাকে তা নির্ধারণ ও নিরাময়ের কাজও করে থাকি।', 'about', 'About Us', 'images/slider/3kRmJml9HQgVHvk6CNK2ClrCaCU5tuHJ6LsNE9h2.jpg', NULL, NULL, 1, 1, '2021-05-16 10:07:00', '2021-05-16 10:19:33'),
(3, 1, NULL, 'আমাদের সম্পর্কে', 'নিউরোজেনকে বলা হয়ে থাকে বাংলাদেশে জেনেটিক সায়েন্সের উন্নয়ন যাত্রায় অগ্রদূত। আমরা অটিজমে আক্রান্ত শিশুদের মানসিক স্বাস্থ্যের উন্নয়নে বিভিন্ন ধরণের অ্যাসেসমেন্ট, থেরাপি ও জেনেটিক কাউন্সেলিং করে থাকি। সেই সাথে  ব্রেস্ট ও ওভারিয়ান ক্যান্সার হওয়ার সম্ভাবনা এবং লাংস ক্যান্সার কোন জীনের ত্রুটির কারণে হয়ে থাকে তা নির্ধারণ ও নিরাময়ের কাজও করে থাকি।', 'about', 'About Us', 'images/slider/ikqPlPNIlaO8WIp12twp5JagtAH4XRLnBsjlQAJN.jpg', NULL, NULL, 1, NULL, '2021-05-16 10:07:23', '2021-05-16 10:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 1,
  `position` smallint(6) DEFAULT NULL,
  `member_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degrees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_small` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `privacy`, `position`, `member_type`, `name`, `url`, `designation`, `degrees`, `email`, `summary`, `image`, `image_medium`, `image_small`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '1', 'Kanij Fatema', 'kanij-fatema', 'Child Neurologist', 'MBBS, FCPS', 'kanijfatema@neurogenbd.com', 'Child Neurologist, Associate Professor, BSMMU, Clinical Consultant, NeuroGen Children\'s Healthcare.', 'images/team/XXcaV4KEg0HzEold8sQDSSuvBi3706V7meANuajB.jpg', NULL, NULL, 1, NULL, '2021-05-15 14:13:57', '2021-05-15 14:13:57'),
(2, 1, NULL, '1', 'Shaoli Sarker', 'shaoli-sarker', 'Child Specialist', 'MBBS, FCPS', 'shaolisarker@neurogenbd.com', 'Child Specialist, Assistant Professor, Dhaka Shishu Hospital, Clinical Consultant, NeuroGen Children\'s Healthcare.', 'images/team/aUxwqAPYKE17cWVMLKl8YzFqAeld9j5mpo82vQWL.jpg', NULL, NULL, 1, 1, '2021-05-15 14:16:15', '2021-05-16 04:55:44'),
(3, 1, NULL, '1', 'Mohammad Basiruzzaman', 'mohammad-basiruzzaman', 'Neurology and Genetics ', 'MBBS, MD', 'basiruzzaman@neurogenbd.com', 'Neurology and Genetics, Dhaka Medical, NeuroGen Children\'s Healthcare.', 'images/team/CSmXUKDDQRPr8abDWdWlZlxWPoyKTJf1eMT7XDcQ.jpg', NULL, NULL, 1, NULL, '2021-05-15 14:17:47', '2021-05-15 14:17:47'),
(4, 1, NULL, '2', 'Mohammed Uddin', 'mohammed-uddin', 'Associate Scientist', 'MBBS, FCPS', 'dafil.mohammed@neurogenbd.com', 'Associate Scientist, Cellular Intelligence Lab, GenomeArc Inc., Toronto, ON, Canada, Associate Professor, Mohammed Bin Rashid University of Medicine and Health Sciences, Dubai & Head of Scientific Advisory Board, NeuroGen Children\'s Healthcare. ', 'images/team/6YEZjcDXiqDlP0tHR0P1aeLmFXzw4RK579ZNxhrp.png', NULL, NULL, 1, 1, '2021-05-15 14:25:04', '2021-05-16 05:53:04'),
(5, 1, NULL, '2', 'K.M. Furkan Uddin', 'km-furkan-uddin', 'Clinical Geneticist', 'MBBS, FCPS', 'furkan@neurogenbd.com', 'MBBS, MPhil, Clinical Geneticist (Consultant), NeuroGen Children\'s Healthcare.', 'images/team/lpFRkuOiIxAjAURSKscmHiigl8FnVcZnZPmA1l9H.jpg', NULL, NULL, 1, NULL, '2021-05-15 14:27:30', '2021-05-15 14:27:30'),
(6, 1, NULL, '2', 'Hosneara Akter', 'hosneara-akter', 'Research Fellow', 'MS, PhD (cont\'d)', 'hosneara@neurogenbd.com', 'MS, Ph.D. (Cont.), Biochemistry and Molecular Biology, Dhaka University, Research fellow, NeuroGen Children\'s Healthcare.', 'images/team/fiDkRK8BQwdJF7UDHehPzXtlq8DTes0WbqoeLlUA.jpg', NULL, NULL, 1, 1, '2021-05-15 14:30:19', '2021-05-16 07:08:18'),
(7, 1, NULL, '2', 'Md. Atikur Rahaman', 'md-atikur-rahaman', 'Genetic Engineer', 'MSc.', 'atikur@neurogenbd.com', 'MSc. Genetic Engineering and Biotechnology, Rajshahi University, Scientific Officer, NeuroGen Children\'s Healthcare.', 'images/team/jT0ZXEksEfJ0n6GZ4P1NCRBi5ntrdGE87t5b3HOO.jpg', NULL, NULL, 1, 1, '2021-05-15 14:32:56', '2021-05-16 05:45:49'),
(8, 1, NULL, '2', 'Tamannyat Binte Eshaque', 'tamannyat-binte-eshaque', 'Genetic Counselor', 'BSc., MSc. (Cont\'d)', 'tamannyatbinte@neurogenbd.com', ' BSc., MSc. (Cont\'d), Biotechnology, BRAC University, Genetic Counselor, NeuroGen Children\'s Healthcare.', 'images/team/FNk3Zvno0Plye7jTDwgmjc1OpdXITOCepgyxs1Xe.jpg', NULL, NULL, 1, 1, '2021-05-15 14:35:18', '2021-05-16 05:46:29'),
(9, 1, NULL, '2', 'Mosammat Radiatun Noori', 'mosammat-radiatun-noori', 'Medical Technologist', 'Diploma: Laboratory Medicine', 'nuri@neurogenbd.com', 'Medical Technologist, Diploma in Laboratory Medicine, NeuroGen Children\'s Healthcare.', 'images/team/nwQOEtblA2WUn5zDxhDqgh3ocqwP0gSvrTZPiKfp.jpg', NULL, NULL, 1, 1, '2021-05-15 14:37:13', '2021-05-16 05:47:07'),
(10, 1, NULL, '2', 'Arif Md Foyzullah', 'arif-md-foyzullah', 'Medical Technologist', 'Diploma, BSc. (cont\'d)', 'ariffoyzullah@neurogenbd.com', 'Medical Technologist, Diploma in Medical Technology, B.Sc in Biochemistry (on going), NeuroGen Children\'s Healthcare.', 'images/team/ILvj9GcWJzAK2xUPdKLI3es2zvyHmNt6tflwQ66R.jpg', NULL, NULL, 1, 1, '2021-05-15 14:38:53', '2021-05-16 05:48:03'),
(11, 1, NULL, '3', 'Selina Parvin Keya', 'selina-parvin-keya', 'Clinical Psychologists', 'MS, MPhil', 'ariffoyzullah@neurogenbd.com', 'Medical Technologist, Diploma in Medical Technology, B.Sc in Biochemistry (on going), NeuroGen Children\'s Healthcare. ', 'images/team/QnbU4t7u5GlAhTX0i2Fg6To30iGZHB1u09oMRh1u.jpg', NULL, NULL, 1, 1, '2021-05-15 14:41:14', '2021-05-16 05:49:45'),
(12, 1, NULL, '3', 'Md. Ashadujjaman Mondol', 'md-ashadujjaman-mondol', 'Clinical Psychologists', 'BSc., MSc., MPhil', 'asadujjaman@neurogenbd.com', 'B. Sc. Psychology, M.Sc. Clinical Psychology, Mphill Researcher (Part-II), DU, Clinical Psychologist, NeuroGen Children’s Healthcare.', 'images/team/GteFfMk9SuNLs0wJeLSZRFrDPa1qbg9s2VITRCpn.jpg', NULL, NULL, 1, 1, '2021-05-15 14:43:00', '2021-05-16 05:50:21'),
(13, 1, NULL, '3', 'Maksuda Begum', 'maksuda-begum', 'Clinical Psychologists', 'BSc., MSc.', 'maksuda@neurogenbd.com', 'BSc. in Psychology, Dhaka University, MSc. in Clinical Psychology, Dhaka University, Assistant Clinical psychologist, NeuroGen Children\'s Healthcare. ', 'images/team/IZGHnLDtCLraEQFfWM04mJFhUvBvrvEWy0G6g7oc.jpg', NULL, NULL, 1, 1, '2021-05-15 14:44:30', '2021-05-16 05:50:48'),
(14, 1, NULL, '4', 'Nargis Jahan', 'nargis-jahan', 'Therapists', 'BSc. in SLT', 'njahanlia@gmail.com', '(B.Sc in SLT, MPH, MSS in GGW), Head SLT, CLEFT/SHNIBPS, Consultant & Head of Therapy Unit, NeuroGen Children’s Healthcare, General Member of Society of Speech and Language Therapists (SSLT).', 'images/team/TWnSf675akvHMtge6PhACMWOuuk4XjpZ1xYPoVm6.jpg', NULL, NULL, 1, 1, '2021-05-15 14:46:39', '2021-05-16 05:18:43'),
(15, 1, NULL, '4', 'Satia Muntaha', 'satia-muntaha', 'Therapists', 'BSc. in SLT', 'satiamuntahamira@gmail.com', 'Clinical Speech & Language Therapist ,B.Sc in SLT, (BHPI, CRP), ( Faculty of Medicine, DU) EMHE, University of Dhaka, Dipto Simanto Special Educational Institution BGB, General Member of Society of Speech and Language Therapists (SSLT) & NeuroGen Children\'s Healthcare.', 'images/team/rjKy33WmMW2XLr6xRnlFTOKRKigSJXRSJS3VqlwP.jpg', NULL, NULL, 1, 1, '2021-05-15 14:48:40', '2021-05-16 05:19:25'),
(16, 1, NULL, '4', 'Farzana Ahmed Efa', 'farzana-ahmed-efa', 'Therapists', 'BSc. in SLT', 'farjanaslt@gmail.com', 'Clinical Speech & Language Therapist, B.Sc in SLT, (BHPI, CRP) (Faculty of Medicine, DU) MS in MDMR, BOU & NeuroGen Children\'s Healthcare.', 'images/team/mNNjb1MMDQRDUPJ4L6KP2Fa7e7oqrfhNZfC4vduD.jpg', NULL, NULL, 1, 1, '2021-05-15 14:50:16', '2021-05-16 05:30:49'),
(17, 1, NULL, '4', 'Md. Arif Hossain', 'md-arif-hossain', 'Therapists', 'BSc. in OT', 'arif.1500@yahoo.com', 'Clinical Occupational Therapist, B.Sc in OT, (BHPI, CRP) ( Faculty of Medicine, DU) EMHE, University of Dhaka & NeuroGen Children\'s Healthcare.', 'images/team/yb1G9UadTNmhycFuAzZ2vZLNSX7BGLEmTXKbmEiz.jpg', NULL, NULL, 1, 1, '2021-05-15 14:51:20', '2021-05-16 05:33:49'),
(18, 1, NULL, '4', 'Afrida Zaman', 'afrida-zaman', 'Therapists', 'BSc. in OT', 'prome@neurogenbd.com', 'Clinical Occupational Therapist, B.Sc in OT, (BHPI, CRP) (Faculty of Medicine, DU) MSS in CSW, University of Dhaka & NeuroGen Children\'s Healthcare.', 'images/team/jT78JN73vT6oPjD7i9WxEOjvt1iMDsqnLJNaKFdU.jpg', NULL, NULL, 1, 1, '2021-05-15 14:52:37', '2021-05-16 05:39:32'),
(19, 1, NULL, '4', 'Sanjana Parvin Bonna', 'sanjana-parvin-bonna', 'Therapists', 'BSc. NITOR', 'sanjanabonna@neurogenbd.com', 'B.Sc. NITOR, Faculty of Medicine (DU), PGD (BKSP), Clinical Physiotherapist, NeuroGen Children’s Healthcare.', 'images/team/CNKlxBMEVvJwWDuXoYVFbZB2TiDkaHWMnxswDjRr.jpg', NULL, NULL, 1, 1, '2021-05-15 14:53:41', '2021-05-16 05:41:36'),
(20, 1, NULL, '5', 'Syedzadi Sanjida Khanam', 'syedzadi-sanjida-khanam', 'Nutritionist', 'MSc. in Home Economics', 'sanzidacare@gmail.com', 'M.Sc. in Food and Nutrition (Home Economics) Nutritionist, NeuroGen Children\'s Healthcare.', 'images/team/7nwTXGjpiNQaOcuKR4aDBGtlMZlbIXnykT9dpW91.jpg', NULL, NULL, 1, 1, '2021-05-15 15:00:21', '2021-05-16 05:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jayed Hasan', 'jayedhasan232@gmail.com', NULL, '$2y$10$7AqvRsieUlPlIc3fj7ijXuGelq1dkxnmypL9Ef3eFt4Fh8sGKFToK', 'zvYNsnJGJwKd5UtMQOEDUO59Y5M7pDhKw6SBE7hL0rdQzFMKH6WqWsONrXRC', '2021-05-15 10:12:18', '2021-05-15 10:12:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appoitments`
--
ALTER TABLE `appoitments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_sub_categories`
--
ALTER TABLE `blog_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoitments`
--
ALTER TABLE `appoitments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_sub_categories`
--
ALTER TABLE `blog_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
