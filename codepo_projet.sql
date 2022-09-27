-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 27 sep. 2022 à 10:54
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `codepo_projet`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_list` ()  SELECT id as listId,marque as marque,model as model,fabricant as fabricant,solaire_groupe.designation as groupe,description as detail,etatDevice as etat,normal_voltage as normal,cycle_voltage as cycle,deviceCategory as categorie FROM solaire_groupe INNER JOIN solaire_device ON solaire_groupe.groupeId = solaire_device.groupe INNER JOIN solaire_categorydevice ON solaire_device.deviceCategory = solaire_categorydevice.categoryId WHERE solaire_categorydevice.categoryId = 1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category device', 6, 'add_categorydevice'),
(22, 'Can change category device', 6, 'change_categorydevice'),
(23, 'Can delete category device', 6, 'delete_categorydevice'),
(24, 'Can view category device', 6, 'view_categorydevice'),
(25, 'Can add device', 7, 'add_device'),
(26, 'Can change device', 7, 'change_device'),
(27, 'Can delete device', 7, 'delete_device'),
(28, 'Can view device', 7, 'view_device'),
(29, 'Can add groupe', 8, 'add_groupe'),
(30, 'Can change groupe', 8, 'change_groupe'),
(31, 'Can delete groupe', 8, 'delete_groupe'),
(32, 'Can view groupe', 8, 'view_groupe'),
(33, 'Can add listbatteries', 9, 'add_listbatteries'),
(34, 'Can change listbatteries', 9, 'change_listbatteries'),
(35, 'Can delete listbatteries', 9, 'delete_listbatteries'),
(36, 'Can view listbatteries', 9, 'view_listbatteries'),
(37, 'Can add commande', 10, 'add_commande'),
(38, 'Can change commande', 10, 'change_commande'),
(39, 'Can delete commande', 10, 'delete_commande'),
(40, 'Can view commande', 10, 'view_commande'),
(41, 'Can add new user', 11, 'add_newuser'),
(42, 'Can change new user', 11, 'change_newuser'),
(43, 'Can delete new user', 11, 'delete_newuser'),
(44, 'Can view new user', 11, 'view_newuser'),
(45, 'Can add groupe device', 12, 'add_groupedevice'),
(46, 'Can change groupe device', 12, 'change_groupedevice'),
(47, 'Can delete groupe device', 12, 'delete_groupedevice'),
(48, 'Can view groupe device', 12, 'view_groupedevice'),
(49, 'Can add all device', 13, 'add_alldevice'),
(50, 'Can change all device', 13, 'change_alldevice'),
(51, 'Can delete all device', 13, 'delete_alldevice'),
(52, 'Can view all device', 13, 'view_alldevice'),
(53, 'Can add save', 14, 'add_save'),
(54, 'Can change save', 14, 'change_save'),
(55, 'Can delete save', 14, 'delete_save'),
(56, 'Can view save', 14, 'view_save'),
(57, 'Can add task result', 15, 'add_taskresult'),
(58, 'Can change task result', 15, 'change_taskresult'),
(59, 'Can delete task result', 15, 'delete_taskresult'),
(60, 'Can view task result', 15, 'view_taskresult'),
(61, 'Can add chord counter', 16, 'add_chordcounter'),
(62, 'Can change chord counter', 16, 'change_chordcounter'),
(63, 'Can delete chord counter', 16, 'delete_chordcounter'),
(64, 'Can view chord counter', 16, 'view_chordcounter'),
(65, 'Can add group result', 17, 'add_groupresult'),
(66, 'Can change group result', 17, 'change_groupresult'),
(67, 'Can delete group result', 17, 'delete_groupresult'),
(68, 'Can view group result', 17, 'view_groupresult'),
(69, 'Can add crontab', 18, 'add_crontabschedule'),
(70, 'Can change crontab', 18, 'change_crontabschedule'),
(71, 'Can delete crontab', 18, 'delete_crontabschedule'),
(72, 'Can view crontab', 18, 'view_crontabschedule'),
(73, 'Can add interval', 19, 'add_intervalschedule'),
(74, 'Can change interval', 19, 'change_intervalschedule'),
(75, 'Can delete interval', 19, 'delete_intervalschedule'),
(76, 'Can view interval', 19, 'view_intervalschedule'),
(77, 'Can add periodic task', 20, 'add_periodictask'),
(78, 'Can change periodic task', 20, 'change_periodictask'),
(79, 'Can delete periodic task', 20, 'delete_periodictask'),
(80, 'Can view periodic task', 20, 'view_periodictask'),
(81, 'Can add periodic tasks', 21, 'add_periodictasks'),
(82, 'Can change periodic tasks', 21, 'change_periodictasks'),
(83, 'Can delete periodic tasks', 21, 'delete_periodictasks'),
(84, 'Can view periodic tasks', 21, 'view_periodictasks'),
(85, 'Can add solar event', 22, 'add_solarschedule'),
(86, 'Can change solar event', 22, 'change_solarschedule'),
(87, 'Can delete solar event', 22, 'delete_solarschedule'),
(88, 'Can view solar event', 22, 'view_solarschedule'),
(89, 'Can add clocked', 23, 'add_clockedschedule'),
(90, 'Can change clocked', 23, 'change_clockedschedule'),
(91, 'Can delete clocked', 23, 'delete_clockedschedule'),
(92, 'Can view clocked', 23, 'view_clockedschedule');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_clockedschedule`
--

CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL,
  `clocked_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_crontabschedule`
--

CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_intervalschedule`
--

CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_periodictask`
--

CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL CHECK (`total_run_count` >= 0),
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) UNSIGNED DEFAULT NULL CHECK (`priority` >= 0),
  `headers` longtext NOT NULL,
  `clocked_id` int(11) DEFAULT NULL,
  `expire_seconds` int(10) UNSIGNED DEFAULT NULL CHECK (`expire_seconds` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_periodictasks`
--

CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_beat_solarschedule`
--

CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_results_chordcounter`
--

CREATE TABLE `django_celery_results_chordcounter` (
  `id` int(11) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `sub_tasks` longtext NOT NULL,
  `count` int(10) UNSIGNED NOT NULL CHECK (`count` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_results_groupresult`
--

CREATE TABLE `django_celery_results_groupresult` (
  `id` int(11) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_celery_results_taskresult`
--

CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext DEFAULT NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `task_args` longtext DEFAULT NULL,
  `task_kwargs` longtext DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(23, 'django_celery_beat', 'clockedschedule'),
(18, 'django_celery_beat', 'crontabschedule'),
(19, 'django_celery_beat', 'intervalschedule'),
(20, 'django_celery_beat', 'periodictask'),
(21, 'django_celery_beat', 'periodictasks'),
(22, 'django_celery_beat', 'solarschedule'),
(16, 'django_celery_results', 'chordcounter'),
(17, 'django_celery_results', 'groupresult'),
(15, 'django_celery_results', 'taskresult'),
(5, 'sessions', 'session'),
(13, 'solaire', 'alldevice'),
(6, 'solaire', 'categorydevice'),
(10, 'solaire', 'commande'),
(7, 'solaire', 'device'),
(8, 'solaire', 'groupe'),
(12, 'solaire', 'groupedevice'),
(9, 'solaire', 'listbatteries'),
(14, 'solaire', 'save'),
(11, 'users', 'newuser');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-15 20:01:17.384742'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-06-15 20:01:18.510807'),
(3, 'auth', '0001_initial', '2022-06-15 20:01:22.597037'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-06-15 20:01:23.188408'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-06-15 20:01:23.224503'),
(6, 'auth', '0004_alter_user_username_opts', '2022-06-15 20:01:23.275472'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-06-15 20:01:23.332437'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-06-15 20:01:23.364417'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-06-15 20:01:23.406390'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-06-15 20:01:23.447368'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-06-15 20:01:23.484319'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-06-15 20:01:23.621260'),
(13, 'auth', '0011_update_proxy_permissions', '2022-06-15 20:01:23.697214'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-06-15 20:01:23.734190'),
(15, 'users', '0001_initial', '2022-06-15 20:01:28.950897'),
(16, 'admin', '0001_initial', '2022-06-15 20:01:30.798741'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-06-15 20:01:30.856060'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-15 20:01:30.901032'),
(19, 'sessions', '0001_initial', '2022-06-15 20:01:31.370164'),
(20, 'solaire', '0001_initial', '2022-06-15 20:01:33.707355'),
(21, 'users', '0002_alter_newuser_groups_alter_newuser_user_permissions', '2022-06-15 20:01:33.760006'),
(22, 'solaire', '0002_remove_listbatteries_image_and_more', '2022-06-16 09:52:19.402121'),
(23, 'users', '0003_remove_newuser_about_newuser_phone', '2022-06-17 09:38:44.463345'),
(24, 'solaire', '0003_groupedevice', '2022-07-25 13:15:27.561137'),
(25, 'solaire', '0004_alldevice', '2022-07-25 13:15:27.973898'),
(26, 'solaire', '0005_save', '2022-07-25 13:15:28.199303'),
(27, 'django_celery_beat', '0001_initial', '2022-08-13 07:49:54.569742'),
(28, 'django_celery_beat', '0002_auto_20161118_0346', '2022-08-13 07:49:55.620100'),
(29, 'django_celery_beat', '0003_auto_20161209_0049', '2022-08-13 07:49:55.859196'),
(30, 'django_celery_beat', '0004_auto_20170221_0000', '2022-08-13 07:49:55.901086'),
(31, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2022-08-13 07:49:55.952140'),
(32, 'django_celery_beat', '0006_auto_20180322_0932', '2022-08-13 07:49:56.319936'),
(33, 'django_celery_beat', '0007_auto_20180521_0826', '2022-08-13 07:49:56.649006'),
(34, 'django_celery_beat', '0008_auto_20180914_1922', '2022-08-13 07:49:56.747522'),
(35, 'django_celery_beat', '0006_auto_20180210_1226', '2022-08-13 07:49:56.806389'),
(36, 'django_celery_beat', '0006_periodictask_priority', '2022-08-13 07:49:57.190485'),
(37, 'django_celery_beat', '0009_periodictask_headers', '2022-08-13 07:49:57.332565'),
(38, 'django_celery_beat', '0010_auto_20190429_0326', '2022-08-13 07:49:57.512037'),
(39, 'django_celery_beat', '0011_auto_20190508_0153', '2022-08-13 07:49:58.594893'),
(40, 'django_celery_beat', '0012_periodictask_expire_seconds', '2022-08-13 07:49:58.693204'),
(41, 'django_celery_beat', '0013_auto_20200609_0727', '2022-08-13 07:49:58.729727'),
(42, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2022-08-13 07:49:58.931221'),
(43, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2022-08-13 07:49:58.982840'),
(44, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2022-08-13 07:49:59.018518'),
(45, 'django_celery_results', '0001_initial', '2022-08-13 07:49:59.672995'),
(46, 'django_celery_results', '0002_add_task_name_args_kwargs', '2022-08-13 07:49:59.939247'),
(47, 'django_celery_results', '0003_auto_20181106_1101', '2022-08-13 07:49:59.989976'),
(48, 'django_celery_results', '0004_auto_20190516_0412', '2022-08-13 07:50:00.582035'),
(49, 'django_celery_results', '0005_taskresult_worker', '2022-08-13 07:50:01.251059'),
(50, 'django_celery_results', '0006_taskresult_date_created', '2022-08-13 07:50:01.665732'),
(51, 'django_celery_results', '0007_remove_taskresult_hidden', '2022-08-13 07:50:01.922081'),
(52, 'django_celery_results', '0008_chordcounter', '2022-08-13 07:50:02.687982'),
(53, 'django_celery_results', '0009_groupresult', '2022-08-13 07:50:15.499831'),
(54, 'django_celery_results', '0010_remove_duplicate_indices', '2022-08-13 07:50:15.636416'),
(55, 'django_celery_results', '0011_taskresult_periodic_task_name', '2022-08-13 07:50:15.753342');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `solaire_alldevice`
--

CREATE TABLE `solaire_alldevice` (
  `id` int(11) NOT NULL,
  `etiquette` longtext NOT NULL,
  `description` longtext NOT NULL,
  `marque` longtext DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `fabricant` longtext DEFAULT NULL,
  `etatDevice` varchar(50) DEFAULT NULL,
  `normal_voltage` varchar(50) DEFAULT NULL,
  `cycle_voltage` varchar(50) DEFAULT NULL,
  `loat_volatge` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `temperature_coefficient` varchar(50) DEFAULT NULL,
  `groupe` int(11) DEFAULT NULL,
  `deviceCategory` int(11) NOT NULL,
  `day_add` datetime(6) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `delete_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `groupeId` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `designationDevice` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `solaire_categorydevice`
--

CREATE TABLE `solaire_categorydevice` (
  `categoryId` int(11) NOT NULL,
  `designationDevice` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `solaire_categorydevice`
--

INSERT INTO `solaire_categorydevice` (`categoryId`, `designationDevice`) VALUES
(1, 'batterie'),
(2, 'panneau');

-- --------------------------------------------------------

--
-- Structure de la table `solaire_commande`
--

CREATE TABLE `solaire_commande` (
  `commandId` int(11) NOT NULL,
  `commande` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `deviceCommand_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `solaire_device`
--

CREATE TABLE `solaire_device` (
  `id` bigint(20) NOT NULL,
  `etiquette` longtext NOT NULL,
  `description` longtext NOT NULL,
  `marque` longtext DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `fabricant` longtext DEFAULT NULL,
  `etatDevice` varchar(50) DEFAULT NULL,
  `maximum_power` varchar(50) DEFAULT NULL,
  `power_voltage` varchar(50) DEFAULT NULL,
  `power_current` varchar(50) DEFAULT NULL,
  `circuit_voltage` varchar(50) DEFAULT NULL,
  `short_voltage` varchar(50) DEFAULT NULL,
  `max_voltage` varchar(50) DEFAULT NULL,
  `condition_test` varchar(500) NOT NULL,
  `temperature` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `normal_voltage` varchar(50) DEFAULT NULL,
  `cycle_voltage` varchar(50) DEFAULT NULL,
  `loat_volatge` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `temperature_coefficient` varchar(50) DEFAULT NULL,
  `bactery_voltage` varchar(50) DEFAULT NULL,
  `max_solar` varchar(50) DEFAULT NULL,
  `solar_vmp` varchar(50) DEFAULT NULL,
  `max_input` varchar(50) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `groupe` int(11) DEFAULT NULL,
  `deviceCategory` int(11) NOT NULL,
  `day_add` datetime(6) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `delete_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `solaire_device`
--

INSERT INTO `solaire_device` (`id`, `etiquette`, `description`, `marque`, `model`, `fabricant`, `etatDevice`, `maximum_power`, `power_voltage`, `power_current`, `circuit_voltage`, `short_voltage`, `max_voltage`, `condition_test`, `temperature`, `size`, `normal_voltage`, `cycle_voltage`, `loat_volatge`, `capacity`, `temperature_coefficient`, `bactery_voltage`, `max_solar`, `solar_vmp`, `max_input`, `serial`, `groupe`, `deviceCategory`, `day_add`, `create_by`, `delete_by`, `update_by`) VALUES
(9, 'P12', 'Une partie de ces panneaux sont orientes vers ouest', 'LTD', 'SY-PVSY027', 'Thunder Solar Tech CO, LTD', 'formData.etatDevice', '100W', '17.5V', '5.71V', '21.37A', '6.14A', '1000V', '1000V', '25c', '1480mm x 510mm x 30mm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-06-22 08:56:24.122369', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `solaire_groupedevice`
--

CREATE TABLE `solaire_groupedevice` (
  `id` int(11) NOT NULL,
  `etiquette` longtext NOT NULL,
  `description` longtext NOT NULL,
  `marque` longtext DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `fabricant` longtext DEFAULT NULL,
  `etatDevice` varchar(50) DEFAULT NULL,
  `normal_voltage` varchar(50) DEFAULT NULL,
  `cycle_voltage` varchar(50) DEFAULT NULL,
  `loat_volatge` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `temperature_coefficient` varchar(50) DEFAULT NULL,
  `groupe` int(11) DEFAULT NULL,
  `deviceCategory` int(11) NOT NULL,
  `day_add` datetime(6) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `delete_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `groupeId` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `solaire_save`
--

CREATE TABLE `solaire_save` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_newuser`
--

CREATE TABLE `users_newuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_newuser`
--

INSERT INTO `users_newuser` (`id`, `password`, `last_login`, `is_superuser`, `email`, `user_name`, `first_name`, `start_date`, `is_staff`, `is_active`, `phone`) VALUES
(1, 'pbkdf2_sha256$320000$GQ0qZMLjc8VV1cp8YLv0kB$WIOkRxUTXZjYkSREThmY/iHYo648JD3apsgo3adhXXM=', '2022-06-14 11:07:18.107411', 1, 'admin@gmail.com', 'Admin', 'Codepo_Projet', '2022-06-14 08:37:07.095014', 1, 1, '243');

-- --------------------------------------------------------

--
-- Structure de la table `users_newuser_groups`
--

CREATE TABLE `users_newuser_groups` (
  `id` bigint(20) NOT NULL,
  `newuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_newuser_user_permissions`
--

CREATE TABLE `users_newuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `newuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_newuser_id` (`user_id`);

--
-- Index pour la table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  ADD KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  ADD KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  ADD KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`);

--
-- Index pour la table `django_celery_beat_periodictasks`
--
ALTER TABLE `django_celery_beat_periodictasks`
  ADD PRIMARY KEY (`ident`);

--
-- Index pour la table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`);

--
-- Index pour la table `django_celery_results_chordcounter`
--
ALTER TABLE `django_celery_results_chordcounter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`);

--
-- Index pour la table `django_celery_results_groupresult`
--
ALTER TABLE `django_celery_results_groupresult`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`),
  ADD KEY `django_cele_date_cr_bd6c1d_idx` (`date_created`),
  ADD KEY `django_cele_date_do_caae0e_idx` (`date_done`);

--
-- Index pour la table `django_celery_results_taskresult`
--
ALTER TABLE `django_celery_results_taskresult`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  ADD KEY `django_cele_status_9b6201_idx` (`status`),
  ADD KEY `django_cele_worker_d54dd8_idx` (`worker`),
  ADD KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  ADD KEY `django_cele_date_do_f59aad_idx` (`date_done`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `solaire_alldevice`
--
ALTER TABLE `solaire_alldevice`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `solaire_categorydevice`
--
ALTER TABLE `solaire_categorydevice`
  ADD PRIMARY KEY (`categoryId`);

--
-- Index pour la table `solaire_commande`
--
ALTER TABLE `solaire_commande`
  ADD PRIMARY KEY (`commandId`),
  ADD KEY `solaire_commande_deviceCommand_id_66c98664_fk_solaire_device_id` (`deviceCommand_id`);

--
-- Index pour la table `solaire_device`
--
ALTER TABLE `solaire_device`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `solaire_groupedevice`
--
ALTER TABLE `solaire_groupedevice`
  ADD PRIMARY KEY (`groupeId`);

--
-- Index pour la table `solaire_save`
--
ALTER TABLE `solaire_save`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_newuser`
--
ALTER TABLE `users_newuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Index pour la table `users_newuser_groups`
--
ALTER TABLE `users_newuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_newuser_groups_newuser_id_group_id_df6b4b64_uniq` (`newuser_id`,`group_id`),
  ADD KEY `users_newuser_groups_group_id_525a4e68_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `users_newuser_user_permissions`
--
ALTER TABLE `users_newuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_newuser_user_permi_newuser_id_permission_id_5e320e13_uniq` (`newuser_id`,`permission_id`),
  ADD KEY `users_newuser_user_p_permission_id_72696cfa_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_results_chordcounter`
--
ALTER TABLE `django_celery_results_chordcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_results_groupresult`
--
ALTER TABLE `django_celery_results_groupresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_celery_results_taskresult`
--
ALTER TABLE `django_celery_results_taskresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `solaire_alldevice`
--
ALTER TABLE `solaire_alldevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `solaire_categorydevice`
--
ALTER TABLE `solaire_categorydevice`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `solaire_commande`
--
ALTER TABLE `solaire_commande`
  MODIFY `commandId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `solaire_device`
--
ALTER TABLE `solaire_device`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `solaire_groupedevice`
--
ALTER TABLE `solaire_groupedevice`
  MODIFY `groupeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `solaire_save`
--
ALTER TABLE `solaire_save`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users_newuser`
--
ALTER TABLE `users_newuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users_newuser_groups`
--
ALTER TABLE `users_newuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users_newuser_user_permissions`
--
ALTER TABLE `users_newuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_newuser` (`id`);

--
-- Contraintes pour la table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`);

--
-- Contraintes pour la table `solaire_commande`
--
ALTER TABLE `solaire_commande`
  ADD CONSTRAINT `solaire_commande_deviceCommand_id_66c98664_fk_solaire_device_id` FOREIGN KEY (`deviceCommand_id`) REFERENCES `solaire_device` (`id`);

--
-- Contraintes pour la table `users_newuser_groups`
--
ALTER TABLE `users_newuser_groups`
  ADD CONSTRAINT `users_newuser_groups_group_id_525a4e68_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_newuser_groups_newuser_id_7f6f4c4c_fk_users_newuser_id` FOREIGN KEY (`newuser_id`) REFERENCES `users_newuser` (`id`);

--
-- Contraintes pour la table `users_newuser_user_permissions`
--
ALTER TABLE `users_newuser_user_permissions`
  ADD CONSTRAINT `users_newuser_user_p_newuser_id_bb22b5b4_fk_users_new` FOREIGN KEY (`newuser_id`) REFERENCES `users_newuser` (`id`),
  ADD CONSTRAINT `users_newuser_user_p_permission_id_72696cfa_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
