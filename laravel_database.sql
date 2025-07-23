-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2025 at 10:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`title`, `sub_title`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
('Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<ul>\r\n	<li>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n	<li>Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n	<li>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n</ul>\r\n\r\n<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', '/storage/uploads/about/2023_04_09_about.jpg', '/storage/uploads/about/thumb_2023_04_09_about.jpg', 1033, 768, 1, '2023-04-09 17:13:47', '2023-04-09 17:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) DEFAULT NULL,
  `price` float NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `sub_title`, `price`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(1, 'Birthday Parties', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 189, 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '/storage/uploads/event/2023_04_09_event-birthday.jpg', '/storage/uploads/event/thumb_2023_04_09_event-birthday.jpg', 1024, 683, 1, '2024-09-28 08:40:05', '2024-09-28 08:40:05'),
(2, 'Private Parties', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 290, 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '/storage/uploads/event/2023_04_09_event-private.jpg', '/storage/uploads/event/thumb_2023_04_09_event-private.jpg', 1024, 683, 1, '2023-04-09 17:43:01', '2023-04-09 17:43:01'),
(3, 'Custom Parties', 'Ullamco laboris nisi ut aliquip ex ea commodo consequat.', 99, 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '/storage/uploads/event/2023_04_09_event-custom.jpg', '/storage/uploads/event/thumb_2023_04_09_event-custom.jpg', 1024, 683, 1, '2024-09-28 08:40:09', '2024-09-28 08:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(1, 'gallery-1', NULL, '/storage/uploads/gallery/2023_04_09_gallery-1.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-1.jpg', 800, 600, 1, '2024-09-28 08:40:57', '2024-09-28 08:40:57'),
(2, 'gallery-2', NULL, '/storage/uploads/gallery/2023_04_09_gallery-2.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-2.jpg', 800, 600, 1, '2023-04-09 17:58:46', '2023-04-09 17:58:46'),
(3, 'gallery-3', NULL, '/storage/uploads/gallery/2023_04_09_gallery-3.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-3.jpg', 800, 600, 1, '2023-04-09 17:58:54', '2023-04-09 17:58:54'),
(4, 'gallery-4', NULL, '/storage/uploads/gallery/2023_04_09_gallery-4.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-4.jpg', 800, 600, 1, '2023-04-09 17:59:09', '2023-04-09 17:59:09'),
(5, 'gallery-5', NULL, '/storage/uploads/gallery/2023_04_09_gallery-5.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-5.jpg', 800, 600, 1, '2023-04-09 17:59:02', '2023-04-09 17:59:02'),
(6, 'gallery-6', NULL, '/storage/uploads/gallery/2023_04_09_gallery-6.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-6.jpg', 800, 600, 1, '2023-04-09 17:59:17', '2023-04-09 17:59:17'),
(7, 'gallery-7', NULL, '/storage/uploads/gallery/2023_04_09_gallery-7.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-7.jpg', 800, 600, 1, '2023-04-09 17:59:37', '2023-04-09 17:59:37'),
(8, 'gallery-8', NULL, '/storage/uploads/gallery/2023_04_09_gallery-8.jpg', '/storage/uploads/gallery/thumb_2023_04_09_gallery-8.jpg', 800, 600, 1, '2023-04-09 17:58:37', '2023-04-09 17:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `sub_title`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(1, 'Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '/storage/uploads/news/2023_04_09_event-birthday.jpg', '/storage/uploads/news/thumb_2023_04_09_event-birthday.jpg', 1024, 683, 1, '2024-09-28 08:42:12', '2024-09-28 08:42:12'),
(2, 'Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '/storage/uploads/news/2023_04_09_event-private.jpg', '/storage/uploads/news/thumb_2023_04_09_event-private.jpg', 1024, 683, 1, '2024-09-28 08:42:17', '2024-09-28 08:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `price` float NOT NULL,
  `sale` float NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_group_id`, `name`, `code`, `price`, `sale`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(1, 2, 'Lobster Bisque', 'Lobster Bisque', 5.95, 5.95, 'Lorem, deren, trataro, filede, nerada', '/storage/uploads/product/2023_04_09_lobster-bisque.jpg', '/storage/uploads/product/thumb_2023_04_09_lobster-bisque.jpg', 400, 400, 1, '2023-04-09 17:29:07', '2023-04-09 17:29:07'),
(2, 2, 'Mozzarella Stick', 'Mozzarella Stick', 4.95, 4.95, 'Lorem, deren, trataro, filede, nerada', '/storage/uploads/product/2023_04_09_mozzarella.jpg', '/storage/uploads/product/thumb_2023_04_09_mozzarella.jpg', 400, 400, 1, '2023-04-09 17:30:12', '2023-04-09 17:30:12'),
(3, 2, 'Crab Cake', 'Crab Cake', 7.95, 7.95, 'A delicate crab cake served on a toasted roll with lettuce and tartar sauce', '/storage/uploads/product/2023_04_09_cake.jpg', '/storage/uploads/product/thumb_2023_04_09_cake.jpg', 400, 400, 1, '2023-04-09 17:30:52', '2023-04-09 17:30:52'),
(4, 3, 'Caesar Selections', 'Caesar Selections', 8.95, 8.95, 'Lorem, deren, trataro, filede, nerada', '/storage/uploads/product/2023_04_09_caesar.jpg', '/storage/uploads/product/thumb_2023_04_09_caesar.jpg', 400, 400, 1, '2023-04-11 02:20:00', '2023-04-11 02:20:00'),
(5, 3, 'Spinach Salad', 'Spinach Salad', 9.95, 9.95, 'Fresh spinach with mushrooms, hard boiled egg, and warm bacon vinaigrette', '/storage/uploads/product/2023_04_09_spinach-salad.jpg', '/storage/uploads/product/thumb_2023_04_09_spinach-salad.jpg', 400, 400, 1, '2023-04-09 17:32:22', '2023-04-09 17:32:22'),
(6, 3, 'Greek Salad', 'Greek Salad', 9.95, 9.95, 'Fresh spinach, crisp romaine, tomatoes, and Greek olives', '/storage/uploads/product/2023_04_09_greek-salad.jpg', '/storage/uploads/product/thumb_2023_04_09_greek-salad.jpg', 400, 400, 1, '2024-09-28 08:37:32', '2024-09-28 08:37:32'),
(7, 4, 'Bread Barrel', 'Bread Barrel', 6.95, 6.95, 'Lorem, deren, trataro, filede, nerada', '/storage/uploads/product/2023_04_09_bread-barrel.jpg', '/storage/uploads/product/thumb_2023_04_09_bread-barrel.jpg', 400, 400, 1, '2023-04-09 17:33:57', '2023-04-09 17:33:57'),
(8, 4, 'Lobster Roll', 'Lobster Roll', 12.95, 12.95, 'Plump lobster meat, mayo and crisp lettuce on a toasted bulky roll', '/storage/uploads/product/2023_04_09_lobster-roll.jpg', '/storage/uploads/product/thumb_2023_04_09_lobster-roll.jpg', 400, 400, 1, '2023-04-09 17:34:34', '2023-04-09 17:34:34'),
(9, 4, 'Tuscan Grilled', 'Tuscan Grilled', 9.95, 9.95, 'Grilled chicken with provolone, artichoke hearts, and roasted red pesto', '/storage/uploads/product/2023_04_09_tuscan-grilled.jpg', '/storage/uploads/product/thumb_2023_04_09_tuscan-grilled.jpg', 400, 400, 1, '2023-04-09 17:35:14', '2023-04-09 17:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_group`
--

CREATE TABLE `product_group` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_group`
--

INSERT INTO `product_group` (`id`, `name`, `description`, `thumb`, `image`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(2, 'Starters', 'Starters', '/storage/uploads/product_group/thumb_2023_04_09_cake.jpg', '/storage/uploads/product_group/2023_04_09_cake.jpg', 400, 400, 1, '2023-04-09 19:29:03', '2023-04-09 19:29:03'),
(3, 'Salads', 'Salads', '/storage/uploads/product_group/thumb_2023_04_09_caesar.jpg', '/storage/uploads/product_group/2023_04_09_caesar.jpg', 400, 400, 1, '2024-09-28 08:37:26', '2024-09-28 08:37:26'),
(4, 'Specialty', 'Specialty', '/storage/uploads/product_group/thumb_2023_04_09_tuscan-grilled.jpg', '/storage/uploads/product_group/2023_04_09_tuscan-grilled.jpg', 400, 400, 1, '2023-04-09 19:30:21', '2023-04-09 19:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `section_about`
--

CREATE TABLE `section_about` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `section_about`
--

INSERT INTO `section_about` (`id`, `title`, `description`, `thumb`, `image`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(5, 'sdcfdsf', 'dsfdsfds', '/storage/uploads/section_about/thumb_2024_09_28_Screenshot 2023-11-14 at 9.43.02 PM.png', '/public/uploads/section_about/2024_09_28_Screenshot 2023-11-14 at 9.43.02 PM.png', 3024, 1534, 1, '2024-09-28 07:41:12', '2024-09-28 07:41:12'),
(6, 'sdfredg', 'dfgdrfgrdeg', '/storage/uploads/section_about/thumb_2025_05_26_Screenshot 2025-05-12 at 11.34.32 PM.png', '/storage/uploads/section_about/2025_05_26_Screenshot 2025-05-12 at 11.34.32 PM.png', 2954, 1770, 1, '2025-05-26 03:54:09', '2025-05-26 03:54:09'),
(7, 'jnjbjbnjb', 'jbjbjb', '/storage/uploads/section_about/thumb_2025_05_26_Screenshot 2025-05-12 at 11.39.16 PM.png', '/storage/uploads/section_about/2025_05_26_Screenshot 2025-05-12 at 11.39.16 PM.png', 2722, 1820, 1, '2025-05-26 03:57:49', '2025-05-26 03:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6qmVuEJOEWm9VqVGrji0qkfQK2lCZtse9yELeUkG', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3U5NUV1ZVN5emJZRDZKVWkwQVZvemRSamZxNHQ0M3pRSEpSRXY4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0L2xpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748231881);

-- --------------------------------------------------------

--
-- Table structure for table `special`
--

CREATE TABLE `special` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `special`
--

INSERT INTO `special` (`id`, `item`, `title`, `sub_title`, `description`, `image`, `thumb`, `width`, `height`, `active`, `create_at`, `update_at`) VALUES
(1, 'Modi sit est', 'Architecto ut aperiam autem id', 'Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka', 'Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero', '/storage/uploads/special/2023_04_09_specials-1.png', '/storage/uploads/special/thumb_2023_04_09_specials-1.png', 800, 822, 1, '2023-04-09 00:00:00', '2023-04-09 00:00:00'),
(3, 'Unde praesentium sed', 'Et blanditiis nemo veritatis excepturi', 'Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka', 'Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal', '/storage/uploads/special/2023_04_09_specials-2 (1).png', '/storage/uploads/special/thumb_2023_04_09_specials-2 (1).png', 800, 822, 1, '2023-04-09 00:00:00', '2023-04-09 00:00:00'),
(4, 'Pariatur explicabo vel', 'Impedit facilis occaecati odio neque aperiam sit', 'Eos voluptatibus quo. Odio similique illum id quidem non enim fuga. Qui natus non sunt dicta dolor et. In asperiores velit quaerat perferendis aut', 'Iure officiis odit rerum. Harum sequi eum illum corrupti culpa veritatis quisquam. Neque necessitatibus illo rerum eum ut. Commodi ipsam minima molestiae sed laboriosam a iste odio. Earum odit nesciunt fugiat sit ullam. Soluta et harum voluptatem optio quae', '/storage/uploads/special/2023_04_09_specials-3.png', '/storage/uploads/special/thumb_2023_04_09_specials-3.png', 800, 822, 1, '2023-04-09 00:00:00', '2023-04-09 00:00:00'),
(5, 'Nostrum qui quasi', 'Fuga dolores inventore laboriosam ut est accusamus laboriosam dolore', 'Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus', 'Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore', '/storage/uploads/special/2023_04_09_specials-4.png', '/storage/uploads/special/thumb_2023_04_09_specials-4.png', 800, 822, 1, '2023-04-09 00:00:00', '2023-04-09 00:00:00'),
(6, 'Iusto ut expedita aut', 'Est eveniet ipsam sindera pad rone matrelat sando reda', 'Omnis blanditiis saepe eos autem qui sunt debitis porro quia.', 'Exercitationem nostrum omnis. Ut reiciendis repudiandae minus. Omnis recusandae ut non quam ut quod eius qui. Ipsum quia odit vero atque qui quibusdam amet. Occaecati sed est sint aut vitae molestiae voluptate vel', '/storage/uploads/special/2023_04_09_specials-5.png', '/storage/uploads/special/thumb_2023_04_09_specials-5.png', 800, 822, 1, '2024-09-28 08:39:21', '2024-09-28 08:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_group_id`, `first_name`, `last_name`, `middle_name`, `mobile_phone`, `description`, `email`, `password`, `avatar`, `thumb`, `width`, `height`, `active`, `status`, `create_at`, `update_at`) VALUES
(1, 1, 'Thanos', NULL, NULL, '99999999', 'Thanos', 'thanos@gmail.com', 'earth', '/storage/uploads/user/2023_04_09_89818-infinity-armour-character-hulk-war-fictional-thanos.png', '/storage/uploads/user/thumb_2023_04_09_89818-infinity-armour-character-hulk-war-fictional-thanos.png', 411, 846, 1, 1, '2023-04-09 19:26:03', '2023-04-09 19:26:03'),
(2, 2, 'Tony', NULL, NULL, NULL, 'Tony', 'tony@gmail.com', 'tony12345', '/storage/uploads/user/2023_04_09_Marvel-Transparent.png', '/storage/uploads/user/thumb_2023_04_09_Marvel-Transparent.png', 920, 1481, 1, 1, '2023-04-09 19:07:31', '2023-04-09 19:07:31'),
(3, 3, 'Captain America', NULL, NULL, '99999999', NULL, 'captain_america@gmail.com', 'captain_america', '/storage/uploads/user/2023_04_09_marvel-captain-america-png-image-purepng-transparent-30.png', '/storage/uploads/user/thumb_2023_04_09_marvel-captain-america-png-image-purepng-transparent-30.png', 1214, 1893, 1, 1, '2023-04-09 19:14:41', '2023-04-09 19:14:41'),
(4, 6, 'Thor', NULL, NULL, '99999999', NULL, 'thor@gmail.com', 'thor12345', '/storage/uploads/user/2023_04_09_ffd06d826c0571dac0aa8c4fa076b89b.png', '/storage/uploads/user/thumb_2023_04_09_ffd06d826c0571dac0aa8c4fa076b89b.png', 776, 1029, 1, 1, '2023-04-09 19:17:52', '2023-04-09 19:17:52'),
(5, 5, 'Hulk', NULL, NULL, '99999999', NULL, 'hulk@gmail.com', 'hulk12345', '/storage/uploads/user/2023_04_09_b73f1261023402a207b3b56b9270d4a5.png', '/storage/uploads/user/thumb_2023_04_09_b73f1261023402a207b3b56b9270d4a5.png', 480, 899, 1, 1, '2023-04-09 19:16:00', '2023-04-09 19:16:00'),
(6, 4, 'X men', NULL, NULL, '99999999', NULL, 'x_men@gmail.com', 'x_men12345', '/storage/uploads/user/2023_04_09_dfpksbi-55086ff7-ee20-4459-83a5-23fbde7a0aec.png', '/storage/uploads/user/thumb_2023_04_09_dfpksbi-55086ff7-ee20-4459-83a5-23fbde7a0aec.png', 1280, 1921, 1, 1, '2023-04-09 19:22:17', '2023-04-09 19:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `name`, `description`, `active`, `create_at`, `update_at`) VALUES
(1, 'Administrator', 'Administrator', 1, '2024-09-20 08:37:02', '2024-09-20 08:37:02'),
(2, 'Director', 'Director', 1, '2023-04-09 18:40:19', '2023-04-09 18:40:19'),
(3, 'Human resource', 'Human resource', 1, '2023-04-09 18:40:56', '2023-04-09 18:40:56'),
(4, 'Accounting', 'Accounting', 1, '2024-09-20 08:36:57', '2024-09-20 08:36:57'),
(6, 'IT', 'IT', 1, '2024-09-27 08:33:05', '2024-09-27 08:33:05'),
(9, 'Marketing', 'Marketing', 1, '2024-09-27 08:36:43', '2024-09-27 08:36:43'),
(11, 'ewfewfrewf', 'wefref', 1, '2024-09-27 08:36:56', '2024-09-27 08:36:56'),
(12, 'frefrewferw', 'frefewf', 1, '2024-09-27 08:37:00', '2024-09-27 08:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `title`, `sub_title`, `description`, `active`, `create_at`, `update_at`) VALUES
(1, '01', 'Lorem Ipsum 1', 'Ulamco laboris nisi ut aliquip ex ea commodo consequat. Et consectetur ducimus vero placeat', 1, '2024-09-28 08:38:03', '2024-09-28 08:38:03'),
(2, '02', 'Repellat Nihil 2', 'Dolorem est fugiat occaecati voluptate velit esse. Dicta veritatis dolor quod et vel dire leno para dest', 0, '2024-09-28 08:36:49', '2024-09-28 08:36:49'),
(3, '03', 'Ad ad velit qui 3', 'Molestiae officiis omnis illo asperiores. Aut doloribus vitae sunt debitis quo vel nam quis', 1, '2023-04-09 14:37:56', '2023-04-09 14:37:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_group`
--
ALTER TABLE `product_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_about`
--
ALTER TABLE `section_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_group`
--
ALTER TABLE `product_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `section_about`
--
ALTER TABLE `section_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
