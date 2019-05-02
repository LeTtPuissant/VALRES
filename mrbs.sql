-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 02 mai 2019 à 13:26
-- Version du serveur :  5.7.19-log
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mrbs`
--

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_area`
--

DROP TABLE IF EXISTS `mrbs_area`;
CREATE TABLE IF NOT EXISTS `mrbs_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `default_duration_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_create_ahead_secs` int(11) DEFAULT NULL,
  `max_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_create_ahead_secs` int(11) DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_day` int(11) NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_week` int(11) NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_month` int(11) NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_year` int(11) NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_future` int(11) NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_duration_secs` int(11) NOT NULL DEFAULT '0',
  `max_duration_periods` int(11) NOT NULL DEFAULT '0',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_area_name` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`) VALUES
(1, 0, 'Paris', 'Paris', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(2, 0, 'Versailles', 'Versailles', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(3, 0, 'Massy', 'Massy', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(4, 0, 'Cergy', 'Cergy', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(5, 0, 'Chartres', 'Chartres', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(6, 0, 'Nîmes', 'Nîmes', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1),
(7, 0, 'Lyon', 'Lyon', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_entry`
--

DROP TABLE IF EXISTS `mrbs_entry`;
CREATE TABLE IF NOT EXISTS `mrbs_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `entry_type` int(11) NOT NULL DEFAULT '0',
  `repeat_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  KEY `repeat_id` (`repeat_id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mrbs_entry`
--

INSERT INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`) VALUES
(1, 1554274800, 1554298200, 0, NULL, 1, '2019-04-03 08:17:59', 'kimbembe', '', 'Jeu fléché', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5ca46c376dfae-57e20500@localhost', 0, NULL),
(2, 1555655400, 1555689600, 0, NULL, 1, '2019-04-19 09:30:32', 'adjibi farid', '', 'Anniv surprise', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5cb9953842223-819d2178@localhost', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_repeat`
--

DROP TABLE IF EXISTS `mrbs_repeat`;
CREATE TABLE IF NOT EXISTS `mrbs_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `rep_type` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rep_num_weeks` smallint(6) DEFAULT NULL,
  `month_absolute` smallint(6) DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_room`
--

DROP TABLE IF EXISTS `mrbs_room`;
CREATE TABLE IF NOT EXISTS `mrbs_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  KEY `idxSortKey` (`sort_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `custom_html`) VALUES
(1, 0, 1, 'Paris', 'Paris', 'Fêtes', 100, 'kjrboss@gmail.com', NULL),
(2, 0, 7, 'Hillsong théâtres', 'Hillsong théâtres', 'Event', 100, 'kjrboss@gmail.com', NULL),
(3, 0, 7, 'Sauce\'', 'Sauce\'', 'Event', 300, 'jourdaink68@gmail.com', NULL),
(4, 0, 4, 'Ponti_night', 'Ponti_night', 'Event', 150, 'perl.kimbembe@outlook.fr', NULL),
(5, 0, 4, 'centre mas', 'centre mas', 'Réunions', 100, 'kjrboss@gmail.com', NULL),
(6, 0, 2, 'pépinieres', 'pépinieres', 'Concert', 600, 'jourdaink68@gmail.com', NULL),
(7, 0, 2, 'wcs', 'wcs', 'Réunions', 30, 'lionel.pineau@gmail.com', NULL),
(8, 0, 6, 'Costières', 'Costières', 'Concert', 1000, 'nimes@event.fr', NULL),
(9, 0, 6, 'carré blanc', 'carré blanc', 'Fêtes', 200, 'nimes@event.fr', NULL),
(10, 0, 3, 'opera de massy', 'opera de massy', '400', 400, 'jourdain.kimbembe@volontaire.hillsong.fr', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_sessions`
--

DROP TABLE IF EXISTS `mrbs_sessions`;
CREATE TABLE IF NOT EXISTS `mrbs_sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idxAccess` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_sessions`
--

INSERT INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
('cv6pj7jtfkv5pnpujgqugdm3qd', 1555719937, 'csrf_token|s:64:\"4e3ec96113ac06ffe4ed0412a58ec9508099c165aa80015a0585caa626b81fb2\";UserName|s:12:\"adjibi farid\";'),
('ghsi0peedvhhibop93dj9700o9', 1554279479, 'csrf_token|s:64:\"e6a06e064d2594b20987e3124721b83f65f292e47b2a3e67eaebf5fd97b260fe\";UserName|s:8:\"kimbembe\";');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_users`
--

DROP TABLE IF EXISTS `mrbs_users`;
CREATE TABLE IF NOT EXISTS `mrbs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `password_hash`, `email`, `timestamp`, `last_login`) VALUES
(1, 2, 'kimbembe', '$2y$10$nyeIJMVgG0TE6pO1ByZ1vOEuTSedYCVK4mjfAY/AbrCIzMmsKSO9.', 'perl.kimbembe@outlook.fr', '2019-03-31 21:06:41', 0),
(2, 1, 'fergé', '$2y$10$3Tn3ZoRGGeZDSV/QPov1XOR151grLvgI4sTKAh3pmCHtp99U001Mu', 'jourdainkimbembe530@yahoo.fr', '2019-03-31 21:08:25', 0),
(3, 1, 'colombe', '$2y$10$W0Die5t2/ncnuid/lxsALOaEqRe.5PWS2GoE7MUamDPRsWCyduKhu', 'colombe.kimbembe@gmail.com', '2019-04-12 12:28:33', 0),
(4, 1, 'nzoumba', '$2y$10$0Ifv1BWypEXQ9tkA3KGl.Ojryj4L/VZgLV1aX5gdVGagivIG.Z34u', 'nzoumbatherese@gmail.com', '2019-04-12 12:39:40', 0),
(5, 1, 'mahema', '$2y$10$jyV1MDafnZZvJ0giYp0oxO9nECvqWa8NbkvFK3tZ9OzNTN5O1FxpS', 'dody_kdmg@yahoo.fr', '2019-04-12 12:46:14', 0),
(6, 1, 'kitombo benite', '$2y$10$JkOA/2brQXeu7D7mvJbb0.dobFSNJmK1KlAKiIvheJkzwKLBCFt2K', 'kitombo@gmail.com', '2019-04-12 12:47:20', 0),
(7, 1, 'makoumbou christ', '$2y$10$YwMauwfm0Rgg2JlIegAGNemm3oTIpWnBQBjskHIEsWiGNBeiijzU2', 'christ.kimbembe@gmail.com', '2019-04-12 12:48:27', 0),
(8, 1, 'mikembi dominique', '$2y$10$SRB.N7SqeJRbDOxnsJoDwuxCKmMBZ30qZTvZbgw./X3xzkEIcxFCO', 'grace.kimbembe@gmail.com', '2019-04-12 12:49:30', 0),
(9, 1, 'kimbembe pety', '$2y$10$/zx19Makgqob7Kvk2DRI8OOU3pswtQIgVjT20DZAvMf6/0Ay2FiRK', 'pety.bernard@gmail.com', '2019-04-12 12:51:40', 0),
(10, 1, 'okoï', '$2y$10$FUHYEIakNsbceYQBH3wZoO5PUUK55ePREVVFLP49RsQAOF9a/pelq', 'anne.esperance@gmail.com', '2019-04-12 12:58:38', 0),
(11, 1, 'mizingou', '$2y$10$/D1wjs3.rpWgRC5ZGqAJzOJGpbMnKUXgkXgkiLZ/H4CAkya..3VMG', 'cecile@gmail.com', '2019-04-12 12:59:14', 0),
(12, 1, 'kibawa julia', '$2y$10$zVK9IfyxhO5j33sMPyDz..HROU.Ay46BVE0USswS77vDxbR9iNjYO', 'juliakibs@gmail.com', '2019-04-12 12:59:55', 0),
(13, 1, 'mboungou jordy', '$2y$10$8mTJSkHkvzXqQoyBdgQaSe1Ih8x5TJb1VHFMPpCTTh1CvT.m2pRAG', 'jordyditomenee@gmail.com', '2019-04-12 13:00:43', 0),
(14, 1, 'adjibi farid', '$2y$10$bVbrPbt9xuyQx9aLkz9pHejJXrdjAP3sQ9f9IZcyU15d8bQ3XHp8i', 'eliasottari@gmail.com', '2019-04-12 13:30:49', 0),
(15, 1, 'zue jessica', '$2y$10$Q9BNb2gNIsExiGzgeqUvqe2Vrprj.UhgdtDwJ69ndr9FZR1f6IkIO', 'jessicazue@gmail.com', '2019-04-12 13:31:27', 0),
(16, 1, 'obami itou sara', '$2y$10$LjU/KOvbDeywtiVXChrs..s8SGCm6m13HgOxYbYyp5tKCYI02uZc6', 'sara.emmanuelle@gmail.com', '2019-04-12 13:39:06', 0),
(17, 1, 'nsiemo reine', '$2y$10$MI47AvSZf0XO219HqpLUe.CHsLfp0ePu/t29QnRDo8juvJc/zA9yO', 'reine.helene@gmail.com', '2019-04-12 13:40:02', 0),
(18, 1, 'akonzo dan', '$2y$10$JVihiRbcUFYobQTJUGeK.OV3I2HSGdBW8WV.Cp.hKUN8F7AaP.G8u', 'danakonzo@gmail.com', '2019-04-12 13:40:38', 0),
(19, 1, 'tchimbakala noe', '$2y$10$JBR4B8n9npLO40AoHz.m8uSPMws7G3KIzLKUnvjxv3SIBlIVXaO7m', 'noetchim@gmail.com', '2019-04-12 13:41:28', 0),
(20, 1, 'anani olivier', '$2y$10$SaxI5eP/O3oPUrz8Hu8KR.lupjV1xFWix4yY4ZYKa..KPLFRyDY1u', 'olivieranani@outlook.fr', '2019-04-12 13:42:23', 0),
(21, 1, 'delabre corentin', NULL, 'corentin.delabre@volontaire.hillsong.fr', '2019-04-12 13:42:57', 0),
(22, 1, 'chan thibaud', NULL, 'thibaud.chan@volontaire.hillsong.fr', '2019-04-12 13:43:52', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_variables`
--

DROP TABLE IF EXISTS `mrbs_variables`;
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_variable_name` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '59'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_zoneinfo`
--

DROP TABLE IF EXISTS `mrbs_zoneinfo`;
CREATE TABLE IF NOT EXISTS `mrbs_zoneinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `vtimezone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `last_updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_zoneinfo`
--

INSERT INTO `mrbs_zoneinfo` (`id`, `timezone`, `outlook_compatible`, `vtimezone`, `last_updated`) VALUES
(1, 'Europe/Paris', 1, 'BEGIN:VTIMEZONE\r\nTZID:Europe/Paris\r\nTZURL:http://tzurl.org/zoneinfo-outlook/Europe/Paris\r\nX-LIC-LOCATION:Europe/Paris\r\nBEGIN:DAYLIGHT\r\nTZOFFSETFROM:+0100\r\nTZOFFSETTO:+0200\r\nTZNAME:CEST\r\nDTSTART:19700329T020000\r\nRRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU\r\nEND:DAYLIGHT\r\nBEGIN:STANDARD\r\nTZOFFSETFROM:+0200\r\nTZOFFSETTO:+0100\r\nTZNAME:CET\r\nDTSTART:19701025T030000\r\nRRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU\r\nEND:STANDARD\r\nEND:VTIMEZONE', 1555686502);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
