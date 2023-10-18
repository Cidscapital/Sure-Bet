-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2023 at 05:19 AM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypense3_sureBetDjangoDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_admingame`
--

CREATE TABLE `api_admingame` (
  `id` bigint(20) NOT NULL,
  `winning_game_odd` double DEFAULT NULL,
  `home_team` varchar(255) NOT NULL,
  `away_team` varchar(255) NOT NULL,
  `home_odd` double DEFAULT NULL,
  `draw_odd` double DEFAULT NULL,
  `away_odd` double DEFAULT NULL,
  `prediction` varchar(255) NOT NULL,
  `game_year` int(11) DEFAULT NULL,
  `game_month` int(11) DEFAULT NULL,
  `game_date` int(11) DEFAULT NULL,
  `game_hour` int(11) DEFAULT NULL,
  `game_minute` int(11) DEFAULT NULL,
  `game_first_half_result` varchar(255) NOT NULL,
  `game_second_half_result` varchar(255) NOT NULL,
  `result` varchar(200) NOT NULL,
  `game_paid` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_admingame`
--

INSERT INTO `api_admingame` (`id`, `winning_game_odd`, `home_team`, `away_team`, `home_odd`, `draw_odd`, `away_odd`, `prediction`, `game_year`, `game_month`, `game_date`, `game_hour`, `game_minute`, `game_first_half_result`, `game_second_half_result`, `result`, `game_paid`, `comments`, `game_competition_id`) VALUES
(1, 1.5, 'Arsenal', 'Liverpool', 1.5, 1.8, 1.9, '1-4', 2023, 10, 26, 22, 18, '-', '-', 'waiting', 0, 'Liverpool stunned leaders Arsenal with four goals in the opening 20 minutes on the way to a resounding 5-1 victory in Saturday\'s lunchtime kickoff at Anfield.', 1),
(2, 1.5, 'MAN CITY', 'LIVERPOOL', 1.7, 1.5, 1.3, '1-3', 2023, 10, 15, 22, 18, '-', '-', 'waiting', 0, 'Manchester City are the favourites to win this match against Liverpool. \nErling Haaland faces a race against time to be fit and add to his goal tallyat Man City. \nMohamed Salah has scored in all three meetings with Man City so far this season', 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_betikajackpotgame`
--

CREATE TABLE `api_betikajackpotgame` (
  `id` bigint(20) NOT NULL,
  `winning_game_odd` double DEFAULT NULL,
  `home_team` varchar(255) NOT NULL,
  `away_team` varchar(255) NOT NULL,
  `home_odd` double DEFAULT NULL,
  `draw_odd` double DEFAULT NULL,
  `away_odd` double DEFAULT NULL,
  `prediction` varchar(255) NOT NULL,
  `game_year` int(11) DEFAULT NULL,
  `game_month` int(11) DEFAULT NULL,
  `game_date` int(11) DEFAULT NULL,
  `game_hour` int(11) DEFAULT NULL,
  `game_minute` int(11) DEFAULT NULL,
  `game_first_half_result` varchar(255) NOT NULL,
  `game_second_half_result` varchar(255) NOT NULL,
  `result` varchar(200) NOT NULL,
  `game_paid` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_betikajackpotgame`
--

INSERT INTO `api_betikajackpotgame` (`id`, `winning_game_odd`, `home_team`, `away_team`, `home_odd`, `draw_odd`, `away_odd`, `prediction`, `game_year`, `game_month`, `game_date`, `game_hour`, `game_minute`, `game_first_half_result`, `game_second_half_result`, `result`, `game_paid`, `comments`, `game_competition_id`) VALUES
(1, 2, 'Arsenal', 'Chelsea', 2.3, 2.4, 2.5, 'Home', 2023, 10, 26, 22, 18, '1-1', '2.1', 'waiting', 0, 'Arsenal to win out right', 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_competition`
--

CREATE TABLE `api_competition` (
  `id` bigint(20) NOT NULL,
  `competition_name` varchar(255) NOT NULL,
  `competition_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_competition`
--

INSERT INTO `api_competition` (`id`, `competition_name`, `competition_image`) VALUES
(1, 'Premier League', 'tournamentLogo/premier_league.png'),
(2, 'Champions League', 'tournamentLogo/UEFAChampionsLeague.webp');

-- --------------------------------------------------------

--
-- Table structure for table `api_fixedmatchgame`
--

CREATE TABLE `api_fixedmatchgame` (
  `id` bigint(20) NOT NULL,
  `winning_game_odd` double DEFAULT NULL,
  `home_team` varchar(255) NOT NULL,
  `away_team` varchar(255) NOT NULL,
  `home_odd` double DEFAULT NULL,
  `draw_odd` double DEFAULT NULL,
  `away_odd` double DEFAULT NULL,
  `prediction` varchar(255) NOT NULL,
  `game_year` int(11) DEFAULT NULL,
  `game_month` int(11) DEFAULT NULL,
  `game_date` int(11) DEFAULT NULL,
  `game_hour` int(11) DEFAULT NULL,
  `game_minute` int(11) DEFAULT NULL,
  `game_first_half_result` varchar(255) NOT NULL,
  `game_second_half_result` varchar(255) NOT NULL,
  `result` varchar(200) NOT NULL,
  `game_paid` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_game`
--

CREATE TABLE `api_game` (
  `id` bigint(20) NOT NULL,
  `home_team_name` varchar(255) NOT NULL,
  `away_team_name` varchar(255) NOT NULL,
  `home_odd` decimal(5,2) NOT NULL,
  `draw_odd` decimal(5,2) NOT NULL,
  `away_odd` decimal(5,2) NOT NULL,
  `game_date` int(11) NOT NULL,
  `game_month` int(11) NOT NULL,
  `game_year` int(11) NOT NULL,
  `game_url` varchar(2000) DEFAULT NULL,
  `game_complete` tinyint(1) NOT NULL,
  `game_winner` varchar(255) DEFAULT NULL,
  `admin_winner_choice` varchar(255) DEFAULT NULL,
  `game_paid` tinyint(1) NOT NULL,
  `game_vip` tinyint(1) NOT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_gameoverunder15`
--

CREATE TABLE `api_gameoverunder15` (
  `id` bigint(20) NOT NULL,
  `value` int(11) NOT NULL,
  `game_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_gamewinner`
--

CREATE TABLE `api_gamewinner` (
  `id` bigint(20) NOT NULL,
  `winning_team` varchar(255) NOT NULL,
  `game_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_sportpesajackpotgame`
--

CREATE TABLE `api_sportpesajackpotgame` (
  `id` bigint(20) NOT NULL,
  `winning_game_odd` double DEFAULT NULL,
  `home_team` varchar(255) NOT NULL,
  `away_team` varchar(255) NOT NULL,
  `home_odd` double DEFAULT NULL,
  `draw_odd` double DEFAULT NULL,
  `away_odd` double DEFAULT NULL,
  `prediction` varchar(255) NOT NULL,
  `game_year` int(11) DEFAULT NULL,
  `game_month` int(11) DEFAULT NULL,
  `game_date` int(11) DEFAULT NULL,
  `game_hour` int(11) DEFAULT NULL,
  `game_minute` int(11) DEFAULT NULL,
  `game_first_half_result` varchar(255) NOT NULL,
  `game_second_half_result` varchar(255) NOT NULL,
  `result` varchar(200) NOT NULL,
  `game_paid` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_sportpesajackpotgame`
--

INSERT INTO `api_sportpesajackpotgame` (`id`, `winning_game_odd`, `home_team`, `away_team`, `home_odd`, `draw_odd`, `away_odd`, `prediction`, `game_year`, `game_month`, `game_date`, `game_hour`, `game_minute`, `game_first_half_result`, `game_second_half_result`, `result`, `game_paid`, `comments`, `game_competition_id`) VALUES
(1, 2.3, 'Liverpool', 'Man-city', 1.8, 3.2, 2.1, 'Away', 2023, 10, 26, 22, 18, '-', '-', 'waiting', 1, 'Draw possible', 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_subscriptiongame`
--

CREATE TABLE `api_subscriptiongame` (
  `id` bigint(20) NOT NULL,
  `winning_game_odd` double DEFAULT NULL,
  `home_team` varchar(255) NOT NULL,
  `away_team` varchar(255) NOT NULL,
  `home_odd` double DEFAULT NULL,
  `draw_odd` double DEFAULT NULL,
  `away_odd` double DEFAULT NULL,
  `prediction` varchar(255) NOT NULL,
  `game_year` int(11) DEFAULT NULL,
  `game_month` int(11) DEFAULT NULL,
  `game_date` int(11) DEFAULT NULL,
  `game_hour` int(11) DEFAULT NULL,
  `game_minute` int(11) DEFAULT NULL,
  `game_first_half_result` varchar(255) NOT NULL,
  `game_second_half_result` varchar(255) NOT NULL,
  `result` varchar(200) NOT NULL,
  `game_paid` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `game_competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

CREATE TABLE `api_user` (
  `id` bigint(20) NOT NULL,
  `user_paid` tinyint(1) NOT NULL,
  `user_paid_vip` tinyint(1) NOT NULL,
  `user_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add competition', 7, 'add_competition'),
(26, 'Can change competition', 7, 'change_competition'),
(27, 'Can delete competition', 7, 'delete_competition'),
(28, 'Can view competition', 7, 'view_competition'),
(29, 'Can add game', 8, 'add_game'),
(30, 'Can change game', 8, 'change_game'),
(31, 'Can delete game', 8, 'delete_game'),
(32, 'Can view game', 8, 'view_game'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add subscription game', 10, 'add_subscriptiongame'),
(38, 'Can change subscription game', 10, 'change_subscriptiongame'),
(39, 'Can delete subscription game', 10, 'delete_subscriptiongame'),
(40, 'Can view subscription game', 10, 'view_subscriptiongame'),
(41, 'Can add sport pesa jackpot game', 11, 'add_sportpesajackpotgame'),
(42, 'Can change sport pesa jackpot game', 11, 'change_sportpesajackpotgame'),
(43, 'Can delete sport pesa jackpot game', 11, 'delete_sportpesajackpotgame'),
(44, 'Can view sport pesa jackpot game', 11, 'view_sportpesajackpotgame'),
(45, 'Can add game winner', 12, 'add_gamewinner'),
(46, 'Can change game winner', 12, 'change_gamewinner'),
(47, 'Can delete game winner', 12, 'delete_gamewinner'),
(48, 'Can view game winner', 12, 'view_gamewinner'),
(49, 'Can add game over under15', 13, 'add_gameoverunder15'),
(50, 'Can change game over under15', 13, 'change_gameoverunder15'),
(51, 'Can delete game over under15', 13, 'delete_gameoverunder15'),
(52, 'Can view game over under15', 13, 'view_gameoverunder15'),
(53, 'Can add fixed match game', 14, 'add_fixedmatchgame'),
(54, 'Can change fixed match game', 14, 'change_fixedmatchgame'),
(55, 'Can delete fixed match game', 14, 'delete_fixedmatchgame'),
(56, 'Can view fixed match game', 14, 'view_fixedmatchgame'),
(57, 'Can add betika jackpot game', 15, 'add_betikajackpotgame'),
(58, 'Can change betika jackpot game', 15, 'change_betikajackpotgame'),
(59, 'Can delete betika jackpot game', 15, 'delete_betikajackpotgame'),
(60, 'Can view betika jackpot game', 15, 'view_betikajackpotgame'),
(61, 'Can add admin game', 16, 'add_admingame'),
(62, 'Can change admin game', 16, 'change_admingame'),
(63, 'Can delete admin game', 16, 'delete_admingame'),
(64, 'Can view admin game', 16, 'view_admingame');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$osmiR59eOEwQlkW8wEyl0c$/6yvjAPdDG+JjIVnSy94SohzwNEZIMZTn+QcPrOW2ww=', '2023-10-06 23:18:08.813724', 1, 'bossman', '', '', '', 1, 1, '2023-07-22 05:36:34.070860');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-28 00:03:55.634430', '1', 'Premier League', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-07-28 00:05:04.364877', '2', 'Champions League', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-07-28 00:06:28.390056', '1', '1.5 vs 1.2 and the prediction being 1-4', 1, '[{\"added\": {}}]', 16, 1),
(4, '2023-07-28 00:08:09.438991', '1', 'Arsenal vs Liverpool and the prediction being 1-4', 2, '[{\"changed\": {\"fields\": [\"Winning game odd\", \"Home team\", \"Away team\"]}}]', 16, 1),
(5, '2023-07-28 00:11:03.589914', '2', 'MAN CITY vs LIVERPOOL and the prediction being 1-3', 1, '[{\"added\": {}}]', 16, 1),
(6, '2023-08-10 21:54:41.543406', '2', 'MAN CITY vs LIVERPOOL and the prediction being 1-3', 2, '[{\"changed\": {\"fields\": [\"Result\"]}}]', 16, 1),
(7, '2023-09-22 11:29:55.492667', '1', 'Arsenal vs Chelsea and the prediction being Home', 1, '[{\"added\": {}}]', 15, 1),
(8, '2023-09-22 11:32:53.170726', '1', 'Liverpool vs Man-city and the prediction being Away', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(16, 'api', 'admingame'),
(15, 'api', 'betikajackpotgame'),
(7, 'api', 'competition'),
(14, 'api', 'fixedmatchgame'),
(8, 'api', 'game'),
(13, 'api', 'gameoverunder15'),
(12, 'api', 'gamewinner'),
(11, 'api', 'sportpesajackpotgame'),
(10, 'api', 'subscriptiongame'),
(9, 'api', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-22 05:34:41.639927'),
(2, 'auth', '0001_initial', '2023-07-22 05:34:42.149161'),
(3, 'admin', '0001_initial', '2023-07-22 05:34:42.270329'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-22 05:34:42.278259'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-22 05:34:42.286107'),
(6, 'api', '0001_initial', '2023-07-22 05:34:43.862837'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-07-22 05:34:43.913979'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-07-22 05:34:43.938352'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-07-22 05:34:43.949775'),
(10, 'auth', '0004_alter_user_username_opts', '2023-07-22 05:34:43.958872'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-07-22 05:34:44.000476'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-07-22 05:34:44.011289'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-07-22 05:34:44.029053'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-07-22 05:34:44.054563'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-07-22 05:34:44.148310'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-07-22 05:34:44.160861'),
(17, 'auth', '0011_update_proxy_permissions', '2023-07-22 05:34:44.176963'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-07-22 05:34:44.246732'),
(19, 'sessions', '0001_initial', '2023-07-22 05:34:44.293695');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02yjvxnws63syhldyn5fissxb1q4d89k', '.eJxVjMsOwiAQRf-FtSEwvAaX7v0GMgxEqoYmpV0Z_12bdKHbe865L5FoW1vaRl3SVMRZaHH63TLxo_YdlDv12yx57usyZbkr8qBDXudSn5fD_TtoNNq3Vpg9anSaIgcbkIkBc_DWGacdIEEtChBZeVMLkHEYjY1OERjtI4n3B7HANlc:1qotwH:V4oQxMk_QiQzjhJhpl7CxyECnRBk1u24IUnL1OMUXFk', '2024-09-30 23:08:57.589765'),
('5vt01q5htbpupgrn7s4ngmmmdn2xsvm7', '.eJxVjMsOwiAQRf-FtSEwvAaX7v0GMgxEqoYmpV0Z_12bdKHbe865L5FoW1vaRl3SVMRZaHH63TLxo_YdlDv12yx57usyZbkr8qBDXudSn5fD_TtoNNq3Vpg9anSaIgcbkIkBc_DWGacdIEEtChBZeVMLkHEYjY1OERjtI4n3B7HANlc:1qUDbt:t8XbdNP6GuIeFiO94vgvE1GvA50P0y1Z0p4mfqlmgAM', '2024-08-04 21:54:25.510805'),
('cxooyhbk615x2goudozmvdqy6nbx9cqs', '.eJxVjMsOwiAQRf-FtSEwvAaX7v0GMgxEqoYmpV0Z_12bdKHbe865L5FoW1vaRl3SVMRZaHH63TLxo_YdlDv12yx57usyZbkr8qBDXudSn5fD_TtoNNq3Vpg9anSaIgcbkIkBc_DWGacdIEEtChBZeVMLkHEYjY1OERjtI4n3B7HANlc:1qjeKl:A1X6cO1BrwIFO2FxDqfVPLxAORy43tH90TtPIBIWAy0', '2024-09-16 11:28:31.711294'),
('fp6g6kflruq8n1o1n7s8nka3vrvgij38', '.eJxVjMsOwiAQRf-FtSEwvAaX7v0GMgxEqoYmpV0Z_12bdKHbe865L5FoW1vaRl3SVMRZaHH63TLxo_YdlDv12yx57usyZbkr8qBDXudSn5fD_TtoNNq3Vpg9anSaIgcbkIkBc_DWGacdIEEtChBZeVMLkHEYjY1OERjtI4n3B7HANlc:1qou5A:q_zfX3UQFkhbOBjfE_cMowx3jjh5jPcAEJqwcikEet8', '2024-09-30 23:18:08.820074');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_admingame`
--
ALTER TABLE `api_admingame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_admingame_game_competition_id_2a114b2f_fk_api_competition_id` (`game_competition_id`);

--
-- Indexes for table `api_betikajackpotgame`
--
ALTER TABLE `api_betikajackpotgame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_betikajackpotgam_game_competition_id_e5552941_fk_api_compe` (`game_competition_id`);

--
-- Indexes for table `api_competition`
--
ALTER TABLE `api_competition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_fixedmatchgame`
--
ALTER TABLE `api_fixedmatchgame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_fixedmatchgame_game_competition_id_cbb3a943_fk_api_compe` (`game_competition_id`);

--
-- Indexes for table `api_game`
--
ALTER TABLE `api_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_game_game_competition_id_e5961bf7_fk_api_competition_id` (`game_competition_id`);

--
-- Indexes for table `api_gameoverunder15`
--
ALTER TABLE `api_gameoverunder15`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_gameoverunder15_game_id_id_33e109b6_fk_api_game_id` (`game_id_id`);

--
-- Indexes for table `api_gamewinner`
--
ALTER TABLE `api_gamewinner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_gamewinner_game_id_id_54ce1aa3_fk_api_game_id` (`game_id_id`);

--
-- Indexes for table `api_sportpesajackpotgame`
--
ALTER TABLE `api_sportpesajackpotgame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_sportpesajackpot_game_competition_id_1f727937_fk_api_compe` (`game_competition_id`);

--
-- Indexes for table `api_subscriptiongame`
--
ALTER TABLE `api_subscriptiongame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_subscriptiongame_game_competition_id_964c036c_fk_api_compe` (`game_competition_id`);

--
-- Indexes for table `api_user`
--
ALTER TABLE `api_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_user_user_data_id_5118f8f3_fk_auth_user_id` (`user_data_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_admingame`
--
ALTER TABLE `api_admingame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_betikajackpotgame`
--
ALTER TABLE `api_betikajackpotgame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_competition`
--
ALTER TABLE `api_competition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_fixedmatchgame`
--
ALTER TABLE `api_fixedmatchgame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_game`
--
ALTER TABLE `api_game`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_gameoverunder15`
--
ALTER TABLE `api_gameoverunder15`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_gamewinner`
--
ALTER TABLE `api_gamewinner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_sportpesajackpotgame`
--
ALTER TABLE `api_sportpesajackpotgame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_subscriptiongame`
--
ALTER TABLE `api_subscriptiongame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_user`
--
ALTER TABLE `api_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_admingame`
--
ALTER TABLE `api_admingame`
  ADD CONSTRAINT `api_admingame_game_competition_id_2a114b2f_fk_api_competition_id` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_betikajackpotgame`
--
ALTER TABLE `api_betikajackpotgame`
  ADD CONSTRAINT `api_betikajackpotgam_game_competition_id_e5552941_fk_api_compe` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_fixedmatchgame`
--
ALTER TABLE `api_fixedmatchgame`
  ADD CONSTRAINT `api_fixedmatchgame_game_competition_id_cbb3a943_fk_api_compe` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_game`
--
ALTER TABLE `api_game`
  ADD CONSTRAINT `api_game_game_competition_id_e5961bf7_fk_api_competition_id` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_gameoverunder15`
--
ALTER TABLE `api_gameoverunder15`
  ADD CONSTRAINT `api_gameoverunder15_game_id_id_33e109b6_fk_api_game_id` FOREIGN KEY (`game_id_id`) REFERENCES `api_game` (`id`);

--
-- Constraints for table `api_gamewinner`
--
ALTER TABLE `api_gamewinner`
  ADD CONSTRAINT `api_gamewinner_game_id_id_54ce1aa3_fk_api_game_id` FOREIGN KEY (`game_id_id`) REFERENCES `api_game` (`id`);

--
-- Constraints for table `api_sportpesajackpotgame`
--
ALTER TABLE `api_sportpesajackpotgame`
  ADD CONSTRAINT `api_sportpesajackpot_game_competition_id_1f727937_fk_api_compe` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_subscriptiongame`
--
ALTER TABLE `api_subscriptiongame`
  ADD CONSTRAINT `api_subscriptiongame_game_competition_id_964c036c_fk_api_compe` FOREIGN KEY (`game_competition_id`) REFERENCES `api_competition` (`id`);

--
-- Constraints for table `api_user`
--
ALTER TABLE `api_user`
  ADD CONSTRAINT `api_user_user_data_id_5118f8f3_fk_auth_user_id` FOREIGN KEY (`user_data_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
