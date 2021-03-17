-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 17. Mrz 2021 um 10:02
-- Server-Version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP-Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `stgw`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `account_observe`
--

CREATE TABLE `account_observe` (
  `id` int(11) NOT NULL,
  `user_1` int(11) NOT NULL DEFAULT '0',
  `user_2` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `last_online_1` int(11) NOT NULL DEFAULT '0',
  `last_online_2` int(11) NOT NULL DEFAULT '0',
  `last_ip_1` varchar(16) NOT NULL DEFAULT '',
  `last_ip_2` varchar(16) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance`
--

CREATE TABLE `alliance` (
  `alliance_id` smallint(5) UNSIGNED NOT NULL,
  `alliance_name` varchar(32) NOT NULL DEFAULT '',
  `alliance_tag` varchar(6) NOT NULL DEFAULT '',
  `alliance_owner` int(11) NOT NULL DEFAULT '0',
  `alliance_password` varchar(32) NOT NULL DEFAULT '',
  `alliance_text` text NOT NULL,
  `alliance_logo` varchar(100) NOT NULL DEFAULT '',
  `alliance_homepage` varchar(100) NOT NULL DEFAULT '',
  `alliance_points` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_member` int(11) NOT NULL DEFAULT '0',
  `alliance_planets` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_honor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_rank_points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_rank_planets` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_rank_honor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_rank_points_avg` smallint(6) NOT NULL DEFAULT '0',
  `alliance_application` int(11) NOT NULL DEFAULT '0',
  `alliance_application_new` int(11) NOT NULL DEFAULT '0',
  `alliance_application_text` text NOT NULL,
  `alliance_irc` varchar(100) NOT NULL DEFAULT '',
  `alliance_wing` int(11) NOT NULL DEFAULT '0',
  `taxes` int(11) NOT NULL DEFAULT '0',
  `taxes_1` int(11) NOT NULL DEFAULT '0',
  `taxes_2` int(11) NOT NULL DEFAULT '0',
  `taxes_3` int(11) NOT NULL DEFAULT '0',
  `borg_invade` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_application`
--

CREATE TABLE `alliance_application` (
  `application_id` int(11) NOT NULL,
  `application_user` int(11) NOT NULL DEFAULT '0',
  `application_username` text NOT NULL,
  `application_alliance` int(11) NOT NULL DEFAULT '0',
  `application_text` text NOT NULL,
  `application_read` int(11) NOT NULL DEFAULT '0',
  `application_timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_bposts`
--

CREATE TABLE `alliance_bposts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `alliance_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_title` varchar(30) NOT NULL DEFAULT '',
  `post_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_bthreads`
--

CREATE TABLE `alliance_bthreads` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `alliance_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_replies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thread_title` varchar(30) NOT NULL DEFAULT '',
  `thread_priority` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `thread_tactical` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `thread_diplomacy` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `thread_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_last_post_date` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_diplomacy`
--

CREATE TABLE `alliance_diplomacy` (
  `ad_id` mediumint(8) UNSIGNED NOT NULL,
  `alliance1_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `alliance2_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_logs`
--

CREATE TABLE `alliance_logs` (
  `id` int(11) NOT NULL,
  `alliance` int(11) NOT NULL DEFAULT '0',
  `message` char(255) NOT NULL DEFAULT '',
  `permission` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_shoutbox`
--

CREATE TABLE `alliance_shoutbox` (
  `alliance_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `message` varchar(250) NOT NULL DEFAULT '',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `irc_print` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Shoutbox di Alleanza';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alliance_taxes`
--

CREATE TABLE `alliance_taxes` (
  `id` int(11) NOT NULL,
  `alliance_id` int(11) NOT NULL DEFAULT '0',
  `resource_1` int(11) NOT NULL DEFAULT '0',
  `resource_2` int(11) NOT NULL DEFAULT '0',
  `resource_3` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) NOT NULL DEFAULT '0',
  `sender` int(11) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `reason` char(128) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bidding`
--

CREATE TABLE `bidding` (
  `id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `max_bid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bidding_owed`
--

CREATE TABLE `bidding_owed` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) NOT NULL DEFAULT '0',
  `resource_1` int(11) NOT NULL DEFAULT '0',
  `resource_2` int(11) NOT NULL DEFAULT '0',
  `resource_3` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `ship_id` int(11) NOT NULL DEFAULT '0',
  `num_complaints` int(11) NOT NULL DEFAULT '0',
  `last_complaint_timestamp` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `borg_bot`
--

CREATE TABLE `borg_bot` (
  `id` int(2) NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unimatrixzero_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unimatrixzero_tp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ship_template1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ship_template2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ship_template3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_tick` int(10) NOT NULL DEFAULT '0',
  `attack_quadrant` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `attacked_user1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attacked_user2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attacked_user3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attacked_user4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_attacked` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `wrath_size` mediumint(8) UNSIGNED NOT NULL DEFAULT '30' COMMENT 'Wrath fleet size',
  `wrath_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `borg_npc_target`
--

CREATE TABLE `borg_npc_target` (
  `planet_id` smallint(5) UNSIGNED NOT NULL,
  `tries` smallint(5) UNSIGNED NOT NULL,
  `live_attack` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `priority` smallint(5) NOT NULL,
  `primary_planet` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `borg_target`
--

CREATE TABLE `borg_target` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `planets_taken` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of Borg planets occupied by the player',
  `planets_back` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of Borg planets reconquered from the player',
  `battle_win` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `battle_lost` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `under_attack` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag player under attack YES / NO',
  `threat_level` float NOT NULL DEFAULT '0',
  `ship_template1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ship_template2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ship_template3` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `click_ids`
--

CREATE TABLE `click_ids` (
  `click_id` char(32) NOT NULL DEFAULT '',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `config`
--

CREATE TABLE `config` (
  `config_set_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tick_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tick_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tick_securehash` char(32) NOT NULL DEFAULT '',
  `stardate` char(32) NOT NULL DEFAULT '0',
  `tick_stopped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `game_stopped` tinyint(1) NOT NULL DEFAULT '0',
  `stop_message` char(255) NOT NULL DEFAULT '',
  `max_player` int(11) NOT NULL DEFAULT '0',
  `register_blocked` int(11) NOT NULL DEFAULT '0',
  `fake_delay` int(11) NOT NULL DEFAULT '0',
  `ferengitax_1` int(11) NOT NULL DEFAULT '0',
  `ferengitax_2` int(11) NOT NULL DEFAULT '0',
  `ferengitax_3` int(11) NOT NULL DEFAULT '0',
  `last_paytime` int(11) NOT NULL DEFAULT '0',
  `bannerviews` int(11) NOT NULL DEFAULT '0',
  `bannerviewstotal` int(11) NOT NULL DEFAULT '0',
  `shipwreck_id` int(11) NOT NULL DEFAULT '0',
  `new_register` int(11) NOT NULL DEFAULT '0',
  `future_ship` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template id of Prometheus ship',
  `settler_tmp_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `settler_tmp_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `settler_tmp_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `settler_tmp_4` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `config`
--

INSERT INTO `config` (`config_set_id`, `tick_id`, `tick_time`, `tick_securehash`, `stardate`, `tick_stopped`, `game_stopped`, `stop_message`, `max_player`, `register_blocked`, `fake_delay`, `ferengitax_1`, `ferengitax_2`, `ferengitax_3`, `last_paytime`, `bannerviews`, `bannerviewstotal`, `shipwreck_id`, `new_register`, `future_ship`, `settler_tmp_1`, `settler_tmp_2`, `settler_tmp_3`, `settler_tmp_4`) VALUES
(0, 1, 1615971220, '4f4adcbf8c6f66dcfc8a3282ac2bf10a', '21000.0', 1, 1, '', 20, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_bid_meldung`
--

CREATE TABLE `FHB_bid_meldung` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `bieter` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `tick` int(11) NOT NULL DEFAULT '0',
  `trade_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_Bot`
--

CREATE TABLE `FHB_Bot` (
  `id` int(2) NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(32) NOT NULL DEFAULT '',
  `user_tick` int(10) NOT NULL DEFAULT '0',
  `user_race` tinyint(3) NOT NULL DEFAULT '0',
  `user_loginname` varchar(32) NOT NULL DEFAULT '',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ship_t_1` int(10) NOT NULL DEFAULT '0',
  `ship_t_2` int(10) NOT NULL DEFAULT '0',
  `bot_tick` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_cache_trupp_trade`
--

CREATE TABLE `FHB_cache_trupp_trade` (
  `id` int(10) NOT NULL,
  `unit_1` int(10) NOT NULL DEFAULT '0',
  `unit_2` int(10) NOT NULL DEFAULT '0',
  `unit_3` int(10) NOT NULL DEFAULT '0',
  `unit_4` int(10) NOT NULL DEFAULT '0',
  `unit_5` int(10) NOT NULL DEFAULT '0',
  `unit_6` int(10) NOT NULL DEFAULT '0',
  `tick` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_debug`
--

CREATE TABLE `FHB_debug` (
  `debug` int(1) NOT NULL DEFAULT '0',
  `sql` int(1) NOT NULL DEFAULT '0',
  `array` int(1) NOT NULL DEFAULT '0',
  `style` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_Handels_Lager`
--

CREATE TABLE `FHB_Handels_Lager` (
  `id` int(11) NOT NULL,
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `ress_1` int(11) NOT NULL DEFAULT '0',
  `ress_2` int(11) NOT NULL DEFAULT '0',
  `ress_3` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_handel_log`
--

CREATE TABLE `FHB_handel_log` (
  `id` int(10) NOT NULL,
  `rasse` int(2) NOT NULL DEFAULT '0',
  `art` char(1) NOT NULL DEFAULT '',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `tick` int(11) NOT NULL DEFAULT '0',
  `bezahlung` int(2) NOT NULL DEFAULT '0',
  `steuer` int(2) NOT NULL DEFAULT '0',
  `ress_1` int(10) NOT NULL DEFAULT '0',
  `ress_2` int(10) NOT NULL DEFAULT '0',
  `ress_3` int(10) NOT NULL DEFAULT '0',
  `unit_1` int(10) NOT NULL DEFAULT '0',
  `unit_2` int(10) NOT NULL DEFAULT '0',
  `unit_3` int(10) NOT NULL DEFAULT '0',
  `unit_4` int(10) NOT NULL DEFAULT '0',
  `unit_5` int(10) NOT NULL DEFAULT '0',
  `unit_6` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_logging_ship`
--

CREATE TABLE `FHB_logging_ship` (
  `id` int(11) NOT NULL,
  `tick` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ship_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_news`
--

CREATE TABLE `FHB_news` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_ship_Lager`
--

CREATE TABLE `FHB_ship_Lager` (
  `id` int(10) NOT NULL,
  `ship_id` int(10) NOT NULL DEFAULT '0',
  `bot_temp` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_ship_templates`
--

CREATE TABLE `FHB_ship_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(16) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ship_torso` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ship_class` int(4) NOT NULL DEFAULT '0',
  `component_1` smallint(5) NOT NULL DEFAULT '0',
  `component_2` smallint(5) NOT NULL DEFAULT '0',
  `component_3` smallint(5) NOT NULL DEFAULT '0',
  `component_4` smallint(5) NOT NULL DEFAULT '0',
  `component_5` smallint(5) NOT NULL DEFAULT '0',
  `component_6` smallint(5) NOT NULL DEFAULT '0',
  `component_7` smallint(5) NOT NULL DEFAULT '0',
  `component_8` smallint(5) NOT NULL DEFAULT '0',
  `component_9` smallint(5) NOT NULL DEFAULT '0',
  `component_10` smallint(5) NOT NULL DEFAULT '0',
  `value_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_5` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_6` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_7` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_8` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_9` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_10` float UNSIGNED NOT NULL DEFAULT '0',
  `value_11` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_12` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_13` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_14` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_15` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unit_5` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_6` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `buildtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `removed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_sperr_list`
--

CREATE TABLE `FHB_sperr_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tick` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_stats`
--

CREATE TABLE `FHB_stats` (
  `id` int(11) NOT NULL,
  `tick` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `ress_1` int(11) NOT NULL DEFAULT '0',
  `ress_2` int(11) NOT NULL DEFAULT '0',
  `ress_3` int(11) NOT NULL DEFAULT '0',
  `schiffe` int(11) NOT NULL DEFAULT '0',
  `umode` int(11) NOT NULL DEFAULT '0',
  `pBND` int(11) NOT NULL DEFAULT '0',
  `BND` int(11) NOT NULL DEFAULT '0',
  `Krieg` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_temp_Grundpreis`
--

CREATE TABLE `FHB_temp_Grundpreis` (
  `temp_id` int(10) NOT NULL DEFAULT '0',
  `unit_1` smallint(6) NOT NULL DEFAULT '0',
  `unit_2` smallint(6) NOT NULL DEFAULT '0',
  `unit_3` smallint(6) NOT NULL DEFAULT '0',
  `unit_4` smallint(6) NOT NULL DEFAULT '0',
  `unit_5` smallint(6) NOT NULL DEFAULT '0',
  `unit_6` smallint(6) NOT NULL DEFAULT '0',
  `ress_1` mediumint(9) NOT NULL DEFAULT '0',
  `ress_2` mediumint(9) NOT NULL DEFAULT '0',
  `ress_3` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_truppen_lib`
--

CREATE TABLE `FHB_truppen_lib` (
  `id` int(5) NOT NULL,
  `rasse` int(2) NOT NULL DEFAULT '0',
  `Truppennummer` int(2) NOT NULL DEFAULT '0',
  `ress_1` int(5) NOT NULL DEFAULT '0',
  `ress_2` int(5) NOT NULL DEFAULT '0',
  `ress_3` int(5) NOT NULL DEFAULT '0',
  `ress_4` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FHB_warteschlange`
--

CREATE TABLE `FHB_warteschlange` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ship_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `future_human_reward`
--

CREATE TABLE `future_human_reward` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rescued_planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target_planet_id` smallint(5) NOT NULL DEFAULT '0',
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ip_link`
--

CREATE TABLE `ip_link` (
  `id` int(11) NOT NULL,
  `user_1` mediumint(9) NOT NULL DEFAULT '0',
  `user_2` mediumint(9) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logbook`
--

CREATE TABLE `logbook` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `log_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `log_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `log_title` varchar(255) NOT NULL DEFAULT '',
  `log_data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rread` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `message_archiv`
--

CREATE TABLE `message_archiv` (
  `id` int(10) NOT NULL,
  `sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `message_removed`
--

CREATE TABLE `message_removed` (
  `id` int(10) NOT NULL,
  `sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `planets`
--

CREATE TABLE `planets` (
  `planet_id` smallint(5) UNSIGNED NOT NULL,
  `planet_name` varchar(16) NOT NULL DEFAULT '',
  `system_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sector_id` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `planet_type` char(1) NOT NULL DEFAULT 'm',
  `planet_owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `planet_owned_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `planet_owner_enum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `planet_distance_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `planet_distance_px` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `planet_covered_distance` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `planet_tick_cdistance` tinyint(3) NOT NULL DEFAULT '0',
  `planet_max_cdistance` smallint(5) NOT NULL DEFAULT '0',
  `planet_current_x` float UNSIGNED NOT NULL DEFAULT '0',
  `planet_current_y` float UNSIGNED NOT NULL DEFAULT '0',
  `planet_points` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `planet_available_points` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `planet_thumb` varchar(32) NOT NULL DEFAULT '',
  `planet_next_attack` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `planet_attack_ships` int(11) NOT NULL DEFAULT '0',
  `planet_attack_type` int(11) NOT NULL DEFAULT '0',
  `research_1` tinyint(1) NOT NULL DEFAULT '0',
  `research_2` tinyint(1) NOT NULL DEFAULT '0',
  `research_3` tinyint(1) NOT NULL DEFAULT '0',
  `research_4` tinyint(1) NOT NULL DEFAULT '0',
  `research_5` tinyint(1) NOT NULL DEFAULT '0',
  `resource_1` float UNSIGNED NOT NULL DEFAULT '0',
  `resource_2` float UNSIGNED NOT NULL DEFAULT '0',
  `resource_3` float UNSIGNED NOT NULL DEFAULT '0',
  `resource_4` float UNSIGNED NOT NULL DEFAULT '0',
  `add_1` float UNSIGNED NOT NULL DEFAULT '0',
  `add_2` float UNSIGNED NOT NULL DEFAULT '0',
  `add_3` float UNSIGNED NOT NULL DEFAULT '0',
  `add_4` float UNSIGNED NOT NULL DEFAULT '0',
  `rateo_1` float UNSIGNED NOT NULL DEFAULT '0',
  `rateo_2` float UNSIGNED NOT NULL DEFAULT '0',
  `rateo_3` float UNSIGNED NOT NULL DEFAULT '0',
  `rateo_4` float UNSIGNED NOT NULL DEFAULT '0',
  `recompute_static` tinyint(1) NOT NULL DEFAULT '1',
  `max_resources` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_worker` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_units` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_security_troops` int(11) NOT NULL DEFAULT '0',
  `planet_insurrection_time` int(11) NOT NULL DEFAULT '0',
  `building_1` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_2` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_3` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_4` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_5` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_6` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_7` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_8` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_9` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_10` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_11` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_12` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_13` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_5` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_6` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `workermine_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `workermine_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `workermine_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_7` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_8` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_9` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catresearch_10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_7` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_8` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_9` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_6` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_7` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_8` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_9` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumber_10` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_6` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_7` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_8` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_9` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainnumberleft_10` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_7` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_8` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_9` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainendless_10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrain_actual` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unittrainid_nexttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unittrain_error` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance_fleet` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `planet_altname` varchar(25) NOT NULL DEFAULT '',
  `planet_surrender` int(10) DEFAULT '0',
  `npc_last_action` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tick of last BOT action performed',
  `best_mood` smallint(5) NOT NULL DEFAULT '0',
  `best_mood_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `best_mood_planet` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `planets`
--

INSERT INTO `planets` (`planet_id`, `planet_name`, `system_id`, `sector_id`, `planet_type`, `planet_owner`, `planet_owned_date`, `planet_owner_enum`, `planet_distance_id`, `planet_distance_px`, `planet_covered_distance`, `planet_tick_cdistance`, `planet_max_cdistance`, `planet_current_x`, `planet_current_y`, `planet_points`, `planet_available_points`, `planet_thumb`, `planet_next_attack`, `planet_attack_ships`, `planet_attack_type`, `research_1`, `research_2`, `research_3`, `research_4`, `research_5`, `resource_1`, `resource_2`, `resource_3`, `resource_4`, `add_1`, `add_2`, `add_3`, `add_4`, `rateo_1`, `rateo_2`, `rateo_3`, `rateo_4`, `recompute_static`, `max_resources`, `max_worker`, `max_units`, `min_security_troops`, `planet_insurrection_time`, `building_1`, `building_2`, `building_3`, `building_4`, `building_5`, `building_6`, `building_7`, `building_8`, `building_9`, `building_10`, `building_11`, `building_12`, `building_13`, `unit_1`, `unit_2`, `unit_3`, `unit_4`, `unit_5`, `unit_6`, `workermine_1`, `workermine_2`, `workermine_3`, `catresearch_1`, `catresearch_2`, `catresearch_3`, `catresearch_4`, `catresearch_5`, `catresearch_6`, `catresearch_7`, `catresearch_8`, `catresearch_9`, `catresearch_10`, `unittrainid_1`, `unittrainid_2`, `unittrainid_3`, `unittrainid_4`, `unittrainid_5`, `unittrainid_6`, `unittrainid_7`, `unittrainid_8`, `unittrainid_9`, `unittrainid_10`, `unittrainnumber_1`, `unittrainnumber_2`, `unittrainnumber_3`, `unittrainnumber_4`, `unittrainnumber_5`, `unittrainnumber_6`, `unittrainnumber_7`, `unittrainnumber_8`, `unittrainnumber_9`, `unittrainnumber_10`, `unittrainnumberleft_1`, `unittrainnumberleft_2`, `unittrainnumberleft_3`, `unittrainnumberleft_4`, `unittrainnumberleft_5`, `unittrainnumberleft_6`, `unittrainnumberleft_7`, `unittrainnumberleft_8`, `unittrainnumberleft_9`, `unittrainnumberleft_10`, `unittrainendless_1`, `unittrainendless_2`, `unittrainendless_3`, `unittrainendless_4`, `unittrainendless_5`, `unittrainendless_6`, `unittrainendless_7`, `unittrainendless_8`, `unittrainendless_9`, `unittrainendless_10`, `unittrain_actual`, `unittrainid_nexttime`, `unittrain_error`, `maintenance_fleet`, `planet_altname`, `planet_surrender`, `npc_last_action`, `best_mood`, `best_mood_user`, `best_mood_planet`) VALUES
(1, 'Admin Home', 1, 122, 'm', 10, 1615894945, 0, 4, 146, 492, 19, 917, 0, 0, 12, 1173, '', 0, 0, 0, 0, 0, 0, 0, 0, 2099.61, 3363.81, 2663.99, 504, 4.9, 8.3, 6.7, 1, 1, 1, 1, 1, 0, 300000, 30000, 30000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `planet_details`
--

CREATE TABLE `planet_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `planet_id` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `planet_type` char(1) DEFAULT NULL,
  `system_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `source_uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `source_aid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_code` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ship_name` varchar(50) NOT NULL DEFAULT '',
  `survey_1` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `survey_2` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `survey_3` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `defeat_uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `defeat_aid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Historical chronology of the planet';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `portal_news`
--

CREATE TABLE `portal_news` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `header` varchar(32) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `portal_poll`
--

CREATE TABLE `portal_poll` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(256) NOT NULL DEFAULT '',
  `choice_1` varchar(100) NOT NULL DEFAULT '',
  `choice_2` varchar(100) NOT NULL DEFAULT '',
  `choice_3` varchar(100) NOT NULL DEFAULT '',
  `choice_4` varchar(100) NOT NULL DEFAULT '',
  `choice_5` varchar(100) NOT NULL DEFAULT '',
  `choice_6` varchar(100) NOT NULL DEFAULT '',
  `choice_7` varchar(100) NOT NULL DEFAULT '',
  `choice_8` varchar(100) NOT NULL DEFAULT '',
  `choice_9` varchar(100) NOT NULL DEFAULT '',
  `choice_10` varchar(100) NOT NULL DEFAULT '',
  `count_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_5` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_6` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_7` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_8` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_9` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_10` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `portal_poll_voted`
--

CREATE TABLE `portal_poll_voted` (
  `player_id` mediumint(8) NOT NULL DEFAULT '0',
  `poll_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `resource_trade`
--

CREATE TABLE `resource_trade` (
  `id` int(10) UNSIGNED NOT NULL,
  `player` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `planet` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `oresource_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `oresource_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `oresource_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `oresource_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ounit_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ounit_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ounit_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ounit_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ounit_5` int(8) NOT NULL DEFAULT '0',
  `ounit_6` int(8) NOT NULL DEFAULT '0',
  `rresource_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rresource_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rresource_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rresource_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `runit_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `runit_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `runit_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `runit_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `runit_5` mediumint(8) NOT NULL DEFAULT '0',
  `runit_6` mediumint(8) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scheduler_instbuild`
--

CREATE TABLE `scheduler_instbuild` (
  `installation_type` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `build_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `build_finish` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scheduler_research`
--

CREATE TABLE `scheduler_research` (
  `research_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `research_finish` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `research_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `player_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scheduler_resourcetrade`
--

CREATE TABLE `scheduler_resourcetrade` (
  `id` int(11) NOT NULL,
  `planet` int(11) NOT NULL DEFAULT '0',
  `resource_1` int(11) NOT NULL DEFAULT '0',
  `resource_2` int(11) NOT NULL DEFAULT '0',
  `resource_3` int(11) NOT NULL DEFAULT '0',
  `resource_4` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `arrival_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scheduler_shipbuild`
--

CREATE TABLE `scheduler_shipbuild` (
  `ship_type` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `line_id` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `start_build` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `finish_build` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_1` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` int(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scheduler_shipmovement`
--

CREATE TABLE `scheduler_shipmovement` (
  `move_id` int(10) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `move_status` tinyint(3) NOT NULL DEFAULT '0',
  `move_exec_started` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `start` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `dest` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `total_distance` float UNSIGNED NOT NULL DEFAULT '0',
  `remaining_distance` float UNSIGNED NOT NULL DEFAULT '0',
  `tick_speed` float UNSIGNED NOT NULL DEFAULT '0',
  `move_begin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `move_finish` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `n_ships` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `action_code` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `action_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schulden_table`
--

CREATE TABLE `schulden_table` (
  `id` int(11) NOT NULL,
  `user_ver` int(11) NOT NULL DEFAULT '0',
  `user_kauf` int(11) NOT NULL DEFAULT '0',
  `ship_id` int(10) NOT NULL DEFAULT '0',
  `timestep` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `ress_1` int(11) NOT NULL DEFAULT '0',
  `ress_2` int(11) NOT NULL DEFAULT '0',
  `ress_3` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `mahnung` int(1) NOT NULL DEFAULT '0',
  `auktions_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settlers_events`
--

CREATE TABLE `settlers_events` (
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `event_code` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `awayteamship_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `awayteam_startlevel` float UNSIGNED NOT NULL DEFAULT '0',
  `unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `awayteam_alive` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `event_status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `event_result` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `count_ok` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `count_crit_ok` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `count_ko` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `count_crit_ko` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settlers_relations`
--

CREATE TABLE `settlers_relations` (
  `planet_id` smallint(5) UNSIGNED NOT NULL,
  `race_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `alliance_id` smallint(5) UNSIGNED DEFAULT NULL,
  `user_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_code` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `mood_modifier` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ships`
--

CREATE TABLE `ships` (
  `ship_id` int(10) UNSIGNED NOT NULL,
  `fleet_id` int(10) NOT NULL DEFAULT '0',
  `ship_untouchable` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `experience` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `awayteam` float UNSIGNED NOT NULL DEFAULT '1',
  `awayteamplanet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hitpoints` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `construction_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `torp` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rof` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ship_repair` int(11) NOT NULL DEFAULT '0',
  `ship_scrap` int(11) NOT NULL DEFAULT '0',
  `ship_name` varchar(50) NOT NULL DEFAULT '',
  `ship_ncc` varchar(20) NOT NULL DEFAULT '',
  `last_refit_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `next_refit` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ship_ccategory`
--

CREATE TABLE `ship_ccategory` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(32) NOT NULL DEFAULT '',
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ship_components`
--

CREATE TABLE `ship_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `buildtime` int(10) NOT NULL DEFAULT '0',
  `unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_5` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_6` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `value_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_5` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_6` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_7` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_8` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_9` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_10` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_11` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_12` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_13` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_14` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_15` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `torso_1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_7` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_8` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_9` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `torso_10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `dev_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ship_fleets`
--

CREATE TABLE `ship_fleets` (
  `fleet_id` int(10) NOT NULL,
  `fleet_name` char(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `planet_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alert_phase` tinyint(3) NOT NULL DEFAULT '0',
  `n_ships` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `resource_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `resource_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `resource_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `resource_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_6` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `homebase` int(11) NOT NULL DEFAULT '0',
  `npc_last_action` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tick of last BOT action performed'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ship_templates`
--

CREATE TABLE `ship_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(16) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ship_torso` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ship_class` int(4) NOT NULL DEFAULT '0',
  `component_1` smallint(5) NOT NULL DEFAULT '0',
  `component_2` smallint(5) NOT NULL DEFAULT '0',
  `component_3` smallint(5) NOT NULL DEFAULT '0',
  `component_4` smallint(5) NOT NULL DEFAULT '0',
  `component_5` smallint(5) NOT NULL DEFAULT '0',
  `component_6` smallint(5) NOT NULL DEFAULT '0',
  `component_7` smallint(5) NOT NULL DEFAULT '0',
  `component_8` smallint(5) NOT NULL DEFAULT '0',
  `component_9` smallint(5) NOT NULL DEFAULT '0',
  `component_10` smallint(5) NOT NULL DEFAULT '0',
  `value_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_5` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_6` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_7` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_8` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_9` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_10` float UNSIGNED NOT NULL DEFAULT '0',
  `value_11` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_12` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_13` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_14` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `value_15` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rof` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `rof2` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `max_torp` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `resource_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `resource_4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unit_5` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unit_6` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `min_unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `max_unit_4` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `buildtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `removed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ship_trade`
--

CREATE TABLE `ship_trade` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `planet` int(11) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `ship_id` int(11) NOT NULL DEFAULT '0',
  `resource_1` int(11) NOT NULL DEFAULT '0',
  `resource_2` int(11) NOT NULL DEFAULT '0',
  `resource_3` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `add_resource_1` int(11) NOT NULL DEFAULT '0',
  `add_resource_2` int(11) NOT NULL DEFAULT '0',
  `add_resource_3` int(11) NOT NULL DEFAULT '0',
  `add_unit_1` int(11) NOT NULL DEFAULT '0',
  `add_unit_2` int(11) NOT NULL DEFAULT '0',
  `add_unit_3` int(11) NOT NULL DEFAULT '0',
  `add_unit_4` int(11) NOT NULL DEFAULT '0',
  `add_unit_5` int(11) NOT NULL DEFAULT '0',
  `add_unit_6` int(11) NOT NULL DEFAULT '0',
  `header` varchar(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `show_data` tinyint(2) NOT NULL DEFAULT '0',
  `font_bold` tinyint(2) NOT NULL DEFAULT '0',
  `font_colored` tinyint(2) NOT NULL DEFAULT '0',
  `unowed_only` tinyint(2) NOT NULL DEFAULT '0',
  `scheduler_processed` tinyint(4) NOT NULL DEFAULT '0',
  `trade_check` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shoutbox`
--

CREATE TABLE `shoutbox` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `irc_print` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `skins`
--

CREATE TABLE `skins` (
  `skin_id` tinyint(3) UNSIGNED NOT NULL,
  `skin_name` varchar(50) NOT NULL DEFAULT '',
  `skin_author` varchar(50) NOT NULL DEFAULT '',
  `gfxpack_link` varchar(100) NOT NULL DEFAULT '',
  `skinpreview_link` varchar(100) NOT NULL DEFAULT '',
  `skin_desc` text NOT NULL,
  `skin_portal_desc` text NOT NULL,
  `skin_html` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `skins`
--

INSERT INTO `skins` (`skin_id`, `skin_name`, `skin_author`, `gfxpack_link`, `skinpreview_link`, `skin_desc`, `skin_portal_desc`, `skin_html`) VALUES
(1, 'Default', 'stfc.it', '/stfc_gfx/skin1/', '/stfc_gfx/skin_mod.jpg', 'Default Skin für STFC2', 'Default Skin für STFC2', '<!-- Skin STFC2 Modified -->\r\n<!-- @Version 1.8 -->\r\n<!-- Changelog: -->\r\n<!-- 1.1 ||Allyforum hinzugefïügt|| -->\r\n<!-- 1.2 ||Link Bilder enfernt und überschussscript hinzugefügt|| -->\r\n<!-- 1.3 Fully localized -->\r\n<!-- 1.4 Added link to module ships -->\r\n<!-- 1.5 Added Planets DB position to selected class -->\r\n<!-- 1.6 Added Stardate visualization -->\r\n<!-- 1.6.1 Changed link to external forum -->\r\n<!-- 1.7 Added styles \"highlight\" and \"highlight_link\" -->\r\n<!-- 1.8 Changed style table.style_msgxx into td.style_msgxx -->\r\n<!--     Added styles hr and field set -->\r\n<!-- @Ansprechpartner: secius -->\r\n<style type=\"text/css\">\r\n<!-- A:link {FONT-SIZE: 11px; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:visited {FONT-SIZE: 11px; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:hover {FONT-SIZE: 11px; COLOR: #ffd700; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:active {FONT-SIZE: 11px; COLOR: #ffd700; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA.nav:link {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:visited {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:hover {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:active {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nTD {FONT-SIZE: 11px; FONT-FAMILY: Arial, Luxi Sans; COLOR: #c0c0c0;  bgcolor=#cccccc}\r\ninput[type=checkbox] { border-style: none;}\r\nINPUT[type=submit], INPUT[type=text], INPUT[type=password] {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nTEXTAREA {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nSELECT {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nSPAN.caption {FONT-WEIGHT: bold; FONT-SIZE: 19pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.sub_caption {FONT-WEIGHT: bold; FONT-SIZE: 15pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.sub_caption2 {FONT-WEIGHT: bold; FONT-SIZE: 11pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.text_large {FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.text_medium {FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.highlight { color: #FFFF00; font-weight: bold; text-decoration: none; }\r\nSPAN.highlight_link { color: #FFFF00; font-weight: bold; text-decoration: underline; }\r\nBODY {MARGIN: 0px; SCROLLBAR-ARROW-COLOR: #ccccff; SCROLLBAR-BASE-COLOR: #131c46; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; }\r\nTEXTAREA {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; SCROLLBAR-ARROW-COLOR: #ccccff; PADDING-TOP: 0px; SCROLLBAR-BASE-COLOR: #131c46;}\r\n\r\ninput.button, input.button_nosize, input.field, input.field_nosize, textarea, select\r\n                          { color: #959595; font-family: Arial, Luxi Sans, Helvetica, sans-serif; font-size: 11px; background-color: #000000; border: 1px solid #959595; }\r\nbody, textarea {\r\n      scrollbar-base-color:#000000;\r\n      scrollbar-3dlight-color:#000000;\r\n      scrollbar-arrow-color:#D8D8D8;\r\n      scrollbar-darkshadow-color:#000000;\r\n      scrollbar-face-color:#000000;\r\n      scrollbar-highlight-color:#000000;\r\n      scrollbar-shadow-color:#000000;\r\n      scrollbar-track-color:#2C2C2C;\r\n  }\r\n\r\ntable.border_grey         { border: 1px solid #000000; }\r\ntable.border_grey2        { border-top: 1px solid 000000; border-right: 1px solid 000000; border-bottom: 1px solid #000000; }\r\ntable.border_blue         { border: 1px solid #000000; }\r\ntable.style_inner         { border: 1px solid #000000; background-color:#131c47;}\r\ntable.style_outer         { border: 1px solid #000000; background-color:{skin_farbe};}\r\n\r\ntd.style_msgunread         { border: 0px; background-color:#ff3359;}\r\ntd.style_msgread            { border: 0px; background-color:#131c47;}\r\n\r\nfieldset { border: 1px solid #c0c0c0; }\r\nhr { border: 1px solid #c0c0c0; }\r\n\r\n-->\r\n\r\n</style>\r\n\r\n\r\n\r\n<body text=\"#c0c0c0\" background=\"{GFX_PATH}bg_stars1.gif\" onload=\"start();\" >\r\n\r\n<div id=\"overDiv\" style=\"Z-INDEX: 1000; VISIBILITY: hidden; POSITION: absolute\"></div>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tbody>\r\n    <tr>\r\n\r\n<td width=\"750\" height=\"5\" bgcolor=\"black\">\r\n        </td>\r\n    </tr>\r\n\r\n    <tr>\r\n<td width=\"750\" height=\"10\">\r\n        </td>\r\n    </tr>\r\n\r\n<tr>\r\n<td width=\"750\"><!-- Banner -->\r\n<img alt=\"Star Trek: Frontline Combat\" src=\"{GFX_PATH}template_banner.jpg\" border=\"0\">\r\n</td></tr>\r\n\r\n\r\n    <tr>\r\n<td width=\"750\" height=\"10\">\r\n        </td>\r\n    </tr>\r\n\r\n<tr>\r\n<td width=\"750\" height=\"1\" bgcolor=\"black\">\r\n\r\n        </td>\r\n    </tr>\r\n<tr>\r\n<td height=\"20\" bgcolor=\"{skin_farbe}\"><center>\r\n<a class=\"nav\" href=\"../index.php?a=home\"><span class=\"sub_caption2\">Home |</span></a>\r\n<a class=\"nav\" href=\"{U_LOGOUT}\"><span class=\"sub_caption2\">Logout | </span></a>\r\n<a class=\"nav\" href=\"../index.php?a=stats\"><span class=\"sub_caption2\">{B_STATS} | </span></a>\r\n<a class=\"nav\" href=\"index.php?a=help\"><span class=\"sub_caption2\">{B_FAQ} | </span></a>\r\n<a class=\"nav\" href=\"http://forum.stfc2.ch/\" target=_blank><span class=\"sub_caption2\">Forum | </span></a>\r\n<a class=\"nav\" href=\"../index.php?a=imprint\"><span class=\"sub_caption2\">{B_IMPRINT} | </span></a>\r\n<a class=\"nav\" href=\"../index.php?a=spende\"><span class=\"sub_caption2\">{B_DONATIONS}</span></a>\r\n</center>\r\n</td>\r\n    </tr>\r\n\r\n\r\n<tr><td width=\"750\" height=\"1\" bgcolor=\"black\">\r\n\r\n        </td>\r\n    </tr></table>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1000\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tr>\r\n<td valign=\"top\" align=\"left\" width=\"125\">\r\n<center><span class=\"sub_caption2\">{B_COMMAND}</span><br><br>\r\n<span class=\"sub_caption2\">{T_STARDATE}</span><br>\r\n<span class=\"text_medium\">{STARDATE}</span><br><br>\r\n<form name=\"planet_switch_form\" method=\"post\" action=\"{U_PLANETSWITCH}\">\r\n<input accesskey=y class=button onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit()\" type=button value=\" <- \">\r\n<!--<input onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit();\" class=\"button\" value=\"<<\" type=\"button\"><input onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit();\" class=\"button\" value=\">>\" type=\"button\">-->\r\n<input accesskey=x class=button onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit()\" type=button value=\" -> \">\r\n<select name=switch_active_planet onchange=\"document.planet_switch_form.submit()\" size=1 style=\"max-width:120; min-width:120; width:120\">{PLANET_SWITCH_HTML}</select>\r\n<!--<input accesskey=y onclick=javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit() style=\"height:0; width:0\" type=button>\r\n\r\n<input accesskey=x onclick=javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit() style=\"height:0; width:0\" type=button>-->\r\n</form></center>\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_COLONY}</legend></span>\r\n           <a href={U_HEADQUARTER}>{L_HEADQUARTER}</a><br>\r\n<a href={U_BUILDINGS}>{L_BUILDINGS}</a><br>\r\n<a href={U_RESEARCH}>{L_RESEARCH}</a><br>\r\n<a href={U_SPACEDOCK}>{L_SPACEDOCK}</a><br>\r\n<a href={U_SHIPYARD}>{L_SHIPYARD}</a><br>\r\n<a href={U_SHIPTEMPLATE}>{L_SHIPTEMPLATE}</a><br>\r\n<a href={U_ACADEMY}>{L_ACADEMY}</a><br>\r\n<a href={U_MINES}>{L_MINES}</a><br>\r\n<a href={U_TRADE}>{L_TRADE}</a><br></fieldset>\r\n\r\n           <br>\r\n\r\n<fieldset><legend>          <span class=\"text_medium\">{T_COMMAND}</span></legend>\r\n             <a href={U_PLANETLIST}>{L_PLANETLIST}</a><br>\r\n<a href={U_FLEETS}>{L_FLEETS}</a><br>\r\n<a href={U_SHIPS}>{L_SHIPS}</a><br>\r\n<a href={U_TACTICAL}>{L_TACTICAL}</a><br>\r\n<a href={U_SENSORS}>{L_SENSORS}</a><br>\r\n<a href={U_SHIPMOVES}>{L_SHIPMOVES}</a><br>\r\n<a href={U_BUYTROOPS}>{L_BUYTROOPS}</a><br>\r\n<a href={U_DIPLOMACY}>{L_DIPLOMACY}</a><br>\r\n<a href={U_ALLIANCE}>{L_ALLIANCE}</a><br>\r\n<a href={U_ALLYTACTIC}>{L_ALLYTACTIC}</a><br>\r\n<a href={U_ALLYTAXES}>{L_ALLYTAXES}</a><br>\r\n{HP_Alliance_z}\r\n           </fieldset>\r\n                <br>\r\n\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_DATABASE}</span></legend>\r\n            <a href={U_DATABASE}>{L_DATABASE}</a><br>\r\n<a href={U_LOGBOOK}>{L_LOGBOOK}</a><br>\r\n<a href={U_MESSAGES}>{L_MESSAGES}</a><br>\r\n</fieldset>\r\n           <br>\r\n\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_GENERAL}</span></legend>\r\n             <a href={U_PORTAL}>{L_PORTAL}</a><br>\r\n<a href={U_STATS}>{L_STATS}</a><br>\r\n<a href={U_SETTINGS}>{L_SETTINGS}</a><br>\r\n<a href={U_HELP}>{L_HELP}</a><br>\r\n<!-- <a href={U_SUPPORT}><b>{L_SUPPORT}</b></a><br>\r\n<a href={U_SUPPORTCENTER}><b>{L_SUPPORTCENTER}</b></a><br>\r\n<a href={U_ADMINPANEL}><b>{L_ADMINPANEL}</b></a><br> --> </fieldset>\r\n<br>\r\n<fieldset><legend><span class=\"text_medium\">{T_NEXTTICK}</span></legend><br>\r\n<center><span style=\"color: #ffff00;\">{NEXT_TICK_HTML}</span></center><br></fieldset>\r\n<br><br>\r\n\r\n<center><span class=\"text_large\"><b>{T_SITTING}</b><br><br>\r\n{USER_SITTING}\r\n</center>\r\n\r\n\r\n</td>\r\n<td valign=\"top\" align=\"left\" width=\"1\" bgcolor=\"black\"> </td>\r\n<td valign=\"top\" align=\"center\" width=\"750\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" width=\"750\">\r\n<!-- Middle -->\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"650\" align=\"center\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"650\"><br>\r\n<center>{ACTIVE_PLANET_ATTACKED}</center>\r\n<br>\r\n\r\n<center>{GAME_HTML}<br>\r\n<br>{NOTEPAD_HTML}</center>\r\n<br>\r\n<br>\r\n</td>\r\n</tr>\r\n</table>\r\n<!-- Middle End -->\r\n\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n<td valign=\"top\" align=\"left\" width=\"1\" bgcolor=\"black\"> </td>\r\n<td valign=\"top\" align=\"left\" width=\"125\" >\r\n<center><span class=\"sub_caption2\">{B_OVERVIEW}</span></center>\r\n\r\n<table border=0><tr><td><center>\r\n\r\n<br>\r\n\r\n<fieldset><legend>\r\n<span class=\"sub_caption2\">{T_HELLO} <b>{USER_NAME},</b></span></legend>\r\n<span class=\"text_medium\"><u>{T_ALLIANCE}</u> {ALLIANCE_NAME}<br></span>\r\n<span class=\"text_medium\"><u>{T_POINTS}</u> {USER_POINTS}<br></span>\r\n<span class=\"text_medium\"><u>{T_RANK}</u> {USER_RANKPOS}<br></span></fieldset>\r\n\r\n<br>\r\n\r\n\r\n<fieldset><legend><span class=\"text_medium\">{ACTIVE_PLANET_NAME}:</span></legend>\r\n<a href=\"index.php?a=headquarter\"><img src=\"{ACTIVE_PLANET_GFX}\" width=\"100\" height=\"100\" border=0></a><br>\r\n<span class=\"text_medium\"><u>Klasse:</u> <a href=\"index.php?a=database&planet_type={ACTIVE_PLANET_TYPE}\">{ACTIVE_PLANET_TYPE}</a></span><br>\r\n<span class=\"text_medium\"><u>Position:</u> <a href=\"index.php?a=tactical_cartography&planet_id={ACTIVE_PLANET_ID}\">{ACTIVE_PLANET_POSITION}</a></span><br>\r\n<span class=\"text_medium\"><u>Punkte:</u> {ACTIVE_PLANET_POINTS} / {ACTIVE_PLANET_MAXPOINTS}</span><br><br>\r\n<img src=\"{GFX_PATH}menu_metal_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_METAL} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_mineral_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_MINERALS} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_latinum_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_LATINUM} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_worker_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_WORKER} <!-- / {ACTIVE_PLANET_MAXWORKER} --> </span><br>\r\n</fieldset>\r\n\r\n<br>\r\n\r\n\r\n<fieldset><legend><span class=\"text_medium\">{T_TROOPS}</span></legend>\r\n                                                                                                <img border=0 src={GFX_PATH}menu_unit1_small.gif> <span class=\"text_medium\"><b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT1}</font></b> / <img border=0 src={GFX_PATH}menu_unit1_small.gif> <b>\r\n\r\n                                                               <!-- ÜBERSCHUSS LV1 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv1 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/2\r\n\r\n                                                                              if             (lv1>=1 && lv1<{ACTIVE_PLANET_UNIT1})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv1)+\'</font>\')}\r\n                                                                              else if (lv1>=1 && lv1>={ACTIVE_PLANET_UNIT1} && {ACTIVE_PLANET_UNIT1}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT1}+\'</font>\')}\r\n                                                                              else if (lv1>=1 && {ACTIVE_PLANET_UNIT1}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv1<1 && lv1>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv1<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>Seite</font>\')}\r\n                                                                              else       {lv1=lv1*-1;\r\n                                                                                       document.write(\'<font color=#ff0000>\'+Math.ceil(lv1)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n                                               <img border=0 src={GFX_PATH}menu_unit2_small.gif><span class=\"text_medium\"> <b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT2}</font></b> / <img border=0 src={GFX_PATH}menu_unit2_small.gif> <b>\r\n\r\n                                                               <!-- ÜBERSCHUSS LV2 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv2 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/3\r\n\r\n                                                                              if             (lv2>=1 && lv2<{ACTIVE_PLANET_UNIT2})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv2)+\'</font>\')}\r\n                                                                              else if (lv2>=1 && lv2>={ACTIVE_PLANET_UNIT2} && {ACTIVE_PLANET_UNIT2}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT2}+\'</font>\')}\r\n                                                                              else if (lv2>=1 && {ACTIVE_PLANET_UNIT2}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv2<1 && lv2>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv2<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>neu</font>\')}\r\n                                                                              else       {lv2=lv2*-1;\r\n                                                                                document.write(\'<font color=#ff0000>\'+Math.ceil(lv2)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n<img border=0 src={GFX_PATH}menu_unit3_small.gif><span class=\"text_medium\"> <b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT3}</font></b> /\r\n                                                               <img border=0 src={GFX_PATH}menu_unit3_small.gif> <b>\r\n\r\n                                                               <!-- ÜBERSCHUSS LV3 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv3 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/4\r\n\r\n                                                                              if             (lv3>=1 && lv3<{ACTIVE_PLANET_UNIT3})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv3)+\'</font>\')}\r\n                                                                              else if (lv3>=1 && lv3>={ACTIVE_PLANET_UNIT3} && {ACTIVE_PLANET_UNIT3}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT3}+\'</font>\')}\r\n                                                                              else if (lv3>=1 && {ACTIVE_PLANET_UNIT3}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv3<1 && lv3>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv3<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>laden</font>\')}\r\n                                                                              else       {lv3=lv3*-1;\r\n                                                                                document.write(\'<font color=#ff0000>\'+Math.ceil(lv3)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n<img src=\"{GFX_PATH}menu_unit4_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT4}<br>\r\n<img src=\"{GFX_PATH}menu_unit5_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT5}<br>\r\n<img src=\"{GFX_PATH}menu_unit6_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT6}<br>\r\n<br><img src=\"{GFX_PATH}menu_fight_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_TROOPS} / {ACTIVE_PLANET_STRENGTH_REQUIRED}</span><br>\r\n<img src={GFX_PATH}menu_fight_small.gif><span class=\"text_medium\"> {T_AVOIDREBEL}<FONT color=#FF0000><b>{ACTIVE_PLANET_STRENGTH_REQUIRED}<b></font><br>\r\n<br><span class=\"text_medium\"><img src={GFX_PATH}menu_fight_small.gif>{T_TROOPS}<br>  <FONT color=#FCFF00><b>{ACTIVE_PLANET_TROOPS}</b></font>/<b><FONT color=#FFFFFF>{ACTIVE_PLANET_MAXTROOPS}</font></b>\r\n<br></fieldset>\r\n\r\n<br>\r\n\r\n<fieldset><legend>{T_TROOPSXSEC}<br></legend>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit1_small.gif\"> {Lv1_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit2_small.gif\"> {Lv2_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit3_small.gif\"> {Lv3_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit4_small.gif\"> {Lv4_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit5_small.gif\"> {Lv5_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit6_small.gif\"> {Lv6_Handel}</a><br></fieldset><br>\r\n\r\n\r\n\r\n<center>\r\n<span class=\"text_large\"><b>{T_FLEETS}</b><br>\r\n{ACTIVE_PLANET_FLEETS}\r\n</center>\r\n</td></tr></table>\r\n\r\n</td>\r\n\r\n</tr>\r\n\r\n</table>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tbody>\r\n    <tr>\r\n<td align=\"center\" width=\"750\" height=\"2\" bgcolor=\"black\"></td>\r\n    </tr>\r\n    <tr>\r\n<td align=\"center\" width=\"750\" valign=\"middle\" height=\"15\"><img src=\"{GFX_PATH}copyright.jpg\" alt=\"copyright\" border=0>\r\n<br />\r\n</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n<br />\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spenden`
--

CREATE TABLE `spenden` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `betrag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `starsystems`
--

CREATE TABLE `starsystems` (
  `system_id` smallint(5) UNSIGNED NOT NULL,
  `system_name` varchar(50) NOT NULL DEFAULT '0',
  `sector_id` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_y` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_map_x` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `system_map_y` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `system_global_x` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `system_global_y` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `system_starcolor_red` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_starcolor_green` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_starcolor_blue` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_starsize` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `system_n_planets` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_max_planets` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `system_owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `starsystems`
--

INSERT INTO `starsystems` (`system_id`, `system_name`, `sector_id`, `system_x`, `system_y`, `system_map_x`, `system_map_y`, `system_global_x`, `system_global_y`, `system_starcolor_red`, `system_starcolor_green`, `system_starcolor_blue`, `system_starsize`, `system_n_planets`, `system_max_planets`, `system_closed`, `system_owner`) VALUES
(1, 'System E14:F2', 122, 2, 6, 52, 229, 119, 42, 18, 21, 165, 12, 1, 6, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `starsystems_details`
--

CREATE TABLE `starsystems_details` (
  `system_id` smallint(5) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `alliance_id` smallint(5) UNSIGNED DEFAULT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `starsystems_slots`
--

CREATE TABLE `starsystems_slots` (
  `quadrant_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sector_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `system_x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system_y` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tc_coords_memo`
--

CREATE TABLE `tc_coords_memo` (
  `tcm_id` int(10) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `memo_name` char(15) NOT NULL DEFAULT '',
  `memo_view` tinyint(3) NOT NULL DEFAULT '0',
  `memo_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trade_settings`
--

CREATE TABLE `trade_settings` (
  `user_id` int(10) NOT NULL DEFAULT '0',
  `handel_notepad` text,
  `auktion_seiten` int(3) NOT NULL DEFAULT '20',
  `skin` int(2) NOT NULL DEFAULT '0',
  `igm` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `transport_logs`
--

CREATE TABLE `transport_logs` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `planet` int(11) NOT NULL DEFAULT '0',
  `resource_1` int(11) NOT NULL DEFAULT '0',
  `resource_2` int(11) NOT NULL DEFAULT '0',
  `resource_3` int(11) NOT NULL DEFAULT '0',
  `resource_4` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0',
  `tick_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `treuhandkonto`
--

CREATE TABLE `treuhandkonto` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `timestep` int(11) NOT NULL DEFAULT '0',
  `ress_1` int(11) NOT NULL DEFAULT '0',
  `ress_2` int(11) NOT NULL DEFAULT '0',
  `ress_3` int(11) NOT NULL DEFAULT '0',
  `unit_1` int(11) NOT NULL DEFAULT '0',
  `unit_2` int(11) NOT NULL DEFAULT '0',
  `unit_3` int(11) NOT NULL DEFAULT '0',
  `unit_4` int(11) NOT NULL DEFAULT '0',
  `unit_5` int(11) NOT NULL DEFAULT '0',
  `unit_6` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(32) NOT NULL DEFAULT '',
  `user_loginname` varchar(32) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `user_auth_level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` varchar(50) NOT NULL DEFAULT '',
  `user_override_uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_race` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_gfxpath` varchar(100) NOT NULL DEFAULT '',
  `user_skinpath` varchar(50) NOT NULL DEFAULT '',
  `user_jspath` varchar(100) NOT NULL DEFAULT '',
  `user_skin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_notepad` text NOT NULL,
  `user_registration_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_registration_ip` varchar(15) NOT NULL DEFAULT '',
  `user_attack_protection` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_max_colo` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Nessun limite',
  `user_alliance` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_alliance_rights1` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights2` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights3` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights4` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights5` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights6` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights7` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_rights8` tinyint(4) NOT NULL DEFAULT '0',
  `user_alliance_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_active` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `user_points` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_planets` smallint(5) NOT NULL DEFAULT '0',
  `user_honor` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_capital` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pending_capital_choice` tinyint(3) NOT NULL DEFAULT '0',
  `active_planet` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_hidenotepad` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `globalresearch_1` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `globalresearch_2` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `globalresearch_3` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `globalresearch_4` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `globalresearch_5` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `user_last_emergency_call` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_vacation_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_vacation_end` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_last_vacation` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ultimo periodo di vacanza',
  `user_last_vacation_duration` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Durata ultimo periodo di vacanza',
  `user_sitting_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_sitting_password` varchar(32) NOT NULL DEFAULT '',
  `user_sitting_o1` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o2` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o3` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o4` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o5` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o6` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o7` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o8` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o9` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_o10` tinyint(1) NOT NULL DEFAULT '0',
  `user_sitting_id1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_sitting_id2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_sitting_id3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_sitting_id4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_sitting_id5` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_tcartography_view` tinyint(3) NOT NULL DEFAULT '0',
  `last_tcartography_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `last_stationatedf_dmode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `last_movef_dmode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unread_log_entries` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unread_support_tickets` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `shoutbox_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_shoutbox_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shoutbox_flood_error` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar` varchar(100) NOT NULL DEFAULT '',
  `user_signature` text NOT NULL,
  `user_icq` varchar(20) NOT NULL DEFAULT '',
  `user_birthday` varchar(10) NOT NULL DEFAULT '',
  `user_gender` char(1) NOT NULL DEFAULT '-',
  `user_enable_sig` tinyint(4) NOT NULL DEFAULT '0',
  `user_rank_points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank_planets` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank_honor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_gallery_name_1` varchar(16) NOT NULL DEFAULT 'Free slot',
  `user_gallery_name_2` varchar(16) NOT NULL DEFAULT 'Free slot',
  `user_gallery_name_3` varchar(16) NOT NULL DEFAULT 'Free slot',
  `user_gallery_name_4` varchar(16) NOT NULL DEFAULT 'Free slot',
  `user_gallery_name_5` varchar(16) NOT NULL DEFAULT 'Free slot',
  `user_gallery_description_1` varchar(128) NOT NULL DEFAULT '',
  `user_gallery_description_2` varchar(128) NOT NULL DEFAULT '',
  `user_gallery_description_3` varchar(128) NOT NULL DEFAULT '',
  `user_gallery_description_4` varchar(128) NOT NULL DEFAULT '',
  `user_gallery_description_5` varchar(128) NOT NULL DEFAULT '',
  `last_secimage` int(11) NOT NULL DEFAULT '0',
  `timeout_secimage` int(11) NOT NULL DEFAULT '0',
  `content_secimage` varchar(12) NOT NULL DEFAULT '',
  `link_secimage` varchar(64) NOT NULL DEFAULT '',
  `error_secimage` int(11) NOT NULL DEFAULT '0',
  `num_auctions` int(8) NOT NULL DEFAULT '0',
  `user_message_sig` text NOT NULL,
  `user_options` text NOT NULL,
  `plz` varchar(10) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  `num_hits` int(11) NOT NULL DEFAULT '0',
  `num_sitting` int(11) NOT NULL DEFAULT '0',
  `language` varchar(30) NOT NULL DEFAULT '',
  `tutorial` int(11) NOT NULL DEFAULT '0',
  `last_alliance_kick` int(11) NOT NULL DEFAULT '0',
  `user_trade` int(11) NOT NULL DEFAULT '0',
  `message_basement` text NOT NULL,
  `trade_tick` int(11) NOT NULL DEFAULT '0',
  `notepad_width` int(11) DEFAULT '0',
  `notepad_cols` int(11) DEFAULT '0',
  `skin_farbe` varchar(7) DEFAULT NULL,
  `user_charted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_first_contact` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_settler_made` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_settler_best` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_tform_planets` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `user_active`, `user_name`, `user_loginname`, `user_password`, `user_email`, `user_auth_level`, `user_rank`, `user_override_uid`, `user_race`, `user_gfxpath`, `user_skinpath`, `user_jspath`, `user_skin`, `user_notepad`, `user_registration_time`, `user_registration_ip`, `user_attack_protection`, `user_max_colo`, `user_alliance`, `user_alliance_rights1`, `user_alliance_rights2`, `user_alliance_rights3`, `user_alliance_rights4`, `user_alliance_rights5`, `user_alliance_rights6`, `user_alliance_rights7`, `user_alliance_rights8`, `user_alliance_status`, `last_active`, `last_ip`, `user_points`, `user_planets`, `user_honor`, `user_capital`, `pending_capital_choice`, `active_planet`, `user_hidenotepad`, `globalresearch_1`, `globalresearch_2`, `globalresearch_3`, `globalresearch_4`, `globalresearch_5`, `user_last_emergency_call`, `user_vacation_start`, `user_vacation_end`, `user_last_vacation`, `user_last_vacation_duration`, `user_sitting_active`, `user_sitting_password`, `user_sitting_o1`, `user_sitting_o2`, `user_sitting_o3`, `user_sitting_o4`, `user_sitting_o5`, `user_sitting_o6`, `user_sitting_o7`, `user_sitting_o8`, `user_sitting_o9`, `user_sitting_o10`, `user_sitting_id1`, `user_sitting_id2`, `user_sitting_id3`, `user_sitting_id4`, `user_sitting_id5`, `last_tcartography_view`, `last_tcartography_id`, `last_stationatedf_dmode`, `last_movef_dmode`, `unread_messages`, `unread_log_entries`, `unread_support_tickets`, `shoutbox_posts`, `last_shoutbox_post`, `shoutbox_flood_error`, `user_avatar`, `user_signature`, `user_icq`, `user_birthday`, `user_gender`, `user_enable_sig`, `user_rank_points`, `user_rank_planets`, `user_rank_honor`, `user_gallery_name_1`, `user_gallery_name_2`, `user_gallery_name_3`, `user_gallery_name_4`, `user_gallery_name_5`, `user_gallery_description_1`, `user_gallery_description_2`, `user_gallery_description_3`, `user_gallery_description_4`, `user_gallery_description_5`, `last_secimage`, `timeout_secimage`, `content_secimage`, `link_secimage`, `error_secimage`, `num_auctions`, `user_message_sig`, `user_options`, `plz`, `country`, `num_hits`, `num_sitting`, `language`, `tutorial`, `last_alliance_kick`, `user_trade`, `message_basement`, `trade_tick`, `notepad_width`, `notepad_cols`, `skin_farbe`, `user_charted`, `user_first_contact`, `user_settler_made`, `user_settler_best`, `user_tform_planets`) VALUES
(10, 1, 'STFC-Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'saboti@protonmail.com', 3, 'Developer', 0, 0, '/stfc_gfx/', 'skin1/', '', 1, '', 0, '', 3557, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1615903242, '141.101.77.249', 9, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1489, 0, 0, 0, 0, 0, 273, 1335786338, 9, '', '', '', '', '-', 0, 2, 2, 1, 'Spazio libero', 'Spazio libero', 'Spazio libero', 'Spazio libero', 'Spazio libero', '', '', '', '', '', 1615901329, 1276633833, '', 'tmpsec/sec0558eba1efd5812e49a30c7f75acb37e.gif', 0, 1, '', 'a:9:{s:15:\"planetlist_show\";i:0;s:16:\"planetlist_order\";i:0;s:22:\"alliance_status_member\";i:2;s:16:\"redalert_options\";i:0;s:10:\"show_trade\";i:1;s:6:\"type_2\";i:1;s:6:\"type_0\";i:1;s:6:\"type_3\";i:1;s:6:\"type_1\";i:1;}', '74586', 'DE', 0, 0, 'GER', 0, 8566, 3, '', 0, 200, 13, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userally_history`
--

CREATE TABLE `userally_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `alliance_id` int(11) NOT NULL DEFAULT '0',
  `join_date` int(10) NOT NULL DEFAULT '0',
  `leave_date` int(10) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_diplomacy`
--

CREATE TABLE `user_diplomacy` (
  `ud_id` int(10) UNSIGNED NOT NULL,
  `user1_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user2_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accepted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_iplog`
--

CREATE TABLE `user_iplog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_logs`
--

CREATE TABLE `user_logs` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `request` char(32) NOT NULL DEFAULT '',
  `sitting_mode` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_sitter_iplog`
--

CREATE TABLE `user_sitter_iplog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sitter_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Tabella IP sitter';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_templates`
--

CREATE TABLE `user_templates` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_template` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_templates`
--

INSERT INTO `user_templates` (`user_id`, `user_template`) VALUES
(10, '<!-- Skin STFC2 Modified -->\r\n<!-- @Version 1.8 -->\r\n<!-- Changelog: -->\r\n<!-- 1.1 ||Allyforum hinzugef??gt|| -->\r\n<!-- 1.2 ||Link Bilder enfernt und ?berschussscript hinzugef?gt|| -->\r\n<!-- 1.3 Fully localized -->\r\n<!-- 1.4 Added link to module ships -->\r\n<!-- 1.5 Added Planets DB position to selected class -->\r\n<!-- 1.6 Added Stardate visualization -->\r\n<!-- 1.6.1 Changed link to external forum -->\r\n<!-- 1.7 Added styles \"highlight\" and \"highlight_link\" -->\r\n<!-- 1.8 Changed style table.style_msgxx into td.style_msgxx -->\r\n<!--     Added styles hr and field set -->\r\n<!-- @Ansprechpartner: secius -->\r\n<style type=\"text/css\">\r\n<!-- A:link {FONT-SIZE: 11px; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:visited {FONT-SIZE: 11px; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:hover {FONT-SIZE: 11px; COLOR: #ffd700; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA:active {FONT-SIZE: 11px; COLOR: #ffd700; FONT-FAMILY: Arial, Luxi Sans; TEXT-DECORATION: none}\r\nA.nav:link {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:visited {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:hover {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nA.nav:active {FONT-WEIGHT: bold; FONT-SIZE: 10px}\r\nTD {FONT-SIZE: 11px; FONT-FAMILY: Arial, Luxi Sans; COLOR: #c0c0c0;  bgcolor=#cccccc}\r\ninput[type=checkbox] { border-style: none;}\r\nINPUT[type=submit], INPUT[type=text], INPUT[type=password] {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nTEXTAREA {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nSELECT {BORDER-RIGHT: #959595 1px solid; BORDER-TOP: #959595 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #959595 1px solid; COLOR: #959595; BORDER-BOTTOM: #959595 1px solid; FONT-FAMILY: Verdana; BACKGROUND-COLOR: #000000}\r\nSPAN.caption {FONT-WEIGHT: bold; FONT-SIZE: 19pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.sub_caption {FONT-WEIGHT: bold; FONT-SIZE: 15pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.sub_caption2 {FONT-WEIGHT: bold; FONT-SIZE: 11pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.text_large {FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.text_medium {FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: #c0c0c0; FONT-FAMILY: Arial, Luxi Sans}\r\nSPAN.highlight { color: #FFFF00; font-weight: bold; text-decoration: none; }\r\nSPAN.highlight_link { color: #FFFF00; font-weight: bold; text-decoration: underline; }\r\nBODY {MARGIN: 0px; SCROLLBAR-ARROW-COLOR: #ccccff; SCROLLBAR-BASE-COLOR: #131c46; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; }\r\nTEXTAREA {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; SCROLLBAR-ARROW-COLOR: #ccccff; PADDING-TOP: 0px; SCROLLBAR-BASE-COLOR: #131c46;}\r\n\r\ninput.button, input.button_nosize, input.field, input.field_nosize, textarea, select\r\n                          { color: #959595; font-family: Arial, Luxi Sans, Helvetica, sans-serif; font-size: 11px; background-color: #000000; border: 1px solid #959595; }\r\nbody, textarea {\r\n      scrollbar-base-color:#000000;\r\n      scrollbar-3dlight-color:#000000;\r\n      scrollbar-arrow-color:#D8D8D8;\r\n      scrollbar-darkshadow-color:#000000;\r\n      scrollbar-face-color:#000000;\r\n      scrollbar-highlight-color:#000000;\r\n      scrollbar-shadow-color:#000000;\r\n      scrollbar-track-color:#2C2C2C;\r\n  }\r\n\r\ntable.border_grey         { border: 1px solid #000000; }\r\ntable.border_grey2        { border-top: 1px solid 000000; border-right: 1px solid 000000; border-bottom: 1px solid #000000; }\r\ntable.border_blue         { border: 1px solid #000000; }\r\ntable.style_inner         { border: 1px solid #000000; background-color:#131c47;}\r\ntable.style_outer         { border: 1px solid #000000; background-color:{skin_farbe};}\r\n\r\ntd.style_msgunread         { border: 0px; background-color:#ff3359;}\r\ntd.style_msgread            { border: 0px; background-color:#131c47;}\r\n\r\nfieldset { border: 1px solid #c0c0c0; }\r\nhr { border: 1px solid #c0c0c0; }\r\n\r\n-->\r\n\r\n</style>\r\n\r\n\r\n\r\n<body text=\"#c0c0c0\" background=\"{GFX_PATH}bg_stars1.gif\" onload=\"start();\" >\r\n\r\n<div id=\"overDiv\" style=\"Z-INDEX: 1000; VISIBILITY: hidden; POSITION: absolute\"></div>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tbody>\r\n    <tr>\r\n    \r\n<td width=\"750\" height=\"5\" bgcolor=\"black\"> \r\n        </td>\r\n    </tr>\r\n    \r\n    <tr>\r\n<td width=\"750\" height=\"10\"> \r\n        </td>\r\n    </tr>\r\n\r\n<tr>\r\n<td width=\"750\"><!-- Banner -->\r\n<img alt=\"Star Trek: Frontline Combat\" src=\"{GFX_PATH}template_banner.jpg\" border=\"0\">\r\n</td></tr>\r\n\r\n\r\n    <tr>\r\n<td width=\"750\" height=\"10\"> \r\n        </td>\r\n    </tr>\r\n\r\n<tr>\r\n<td width=\"750\" height=\"1\" bgcolor=\"black\">\r\n\r\n        </td>\r\n    </tr>\r\n<tr>\r\n<td height=\"20\" bgcolor=\"{skin_farbe}\"><center> \r\n<a class=\"nav\" href=\"../index.php?a=home\"><span class=\"sub_caption2\">Home |</span></a>    \r\n<a class=\"nav\" href=\"{U_LOGOUT}\"><span class=\"sub_caption2\">Logout | </span></a>    \r\n<a class=\"nav\" href=\"../index.php?a=stats\"><span class=\"sub_caption2\">{B_STATS} | </span></a>      \r\n<a class=\"nav\" href=\"index.php?a=help\"><span class=\"sub_caption2\">{B_FAQ} | </span></a>      \r\n<a class=\"nav\" href=\"http://forum.stfc2.ch/\" target=_blank><span class=\"sub_caption2\">Forum | </span></a>       \r\n<a class=\"nav\" href=\"../index.php?a=imprint\"><span class=\"sub_caption2\">{B_IMPRINT} | </span></a>      \r\n<a class=\"nav\" href=\"../index.php?a=spende\"><span class=\"sub_caption2\">{B_DONATIONS}</span></a>     \r\n</center>\r\n</td>\r\n    </tr>\r\n\r\n\r\n<tr><td width=\"750\" height=\"1\" bgcolor=\"black\">\r\n\r\n        </td>\r\n    </tr></table>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1000\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tr>\r\n<td valign=\"top\" align=\"left\" width=\"125\">\r\n<center><span class=\"sub_caption2\">{B_COMMAND}</span><br><br>\r\n<span class=\"sub_caption2\">{T_STARDATE}</span><br>\r\n<span class=\"text_medium\">{STARDATE}</span><br><br>\r\n<form name=\"planet_switch_form\" method=\"post\" action=\"{U_PLANETSWITCH}\">\r\n<input accesskey=y class=button onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit()\" type=button value=\" <- \">\r\n<!--<input onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit();\" class=\"button\" value=\"<<\" type=\"button\"><input onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit();\" class=\"button\" value=\">>\" type=\"button\">-->\r\n<input accesskey=x class=button onclick=\"javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit()\" type=button value=\" -> \">\r\n<select name=switch_active_planet onchange=\"document.planet_switch_form.submit()\" size=1 style=\"max-width:120; min-width:120; width:120\">{PLANET_SWITCH_HTML}</select>\r\n<!--<input accesskey=y onclick=javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex-1);document.planet_switch_form.submit() style=\"height:0; width:0\" type=button>\r\n\r\n<input accesskey=x onclick=javascript:void(document.planet_switch_form.switch_active_planet.selectedIndex=document.planet_switch_form.switch_active_planet.selectedIndex+1);document.planet_switch_form.submit() style=\"height:0; width:0\" type=button>-->\r\n</form></center>\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_COLONY}</legend></span>\r\n           <a href={U_HEADQUARTER}>{L_HEADQUARTER}</a><br>\r\n<a href={U_BUILDINGS}>{L_BUILDINGS}</a><br>\r\n<a href={U_RESEARCH}>{L_RESEARCH}</a><br>\r\n<a href={U_SPACEDOCK}>{L_SPACEDOCK}</a><br>\r\n<a href={U_SHIPYARD}>{L_SHIPYARD}</a><br>\r\n<a href={U_SHIPTEMPLATE}>{L_SHIPTEMPLATE}</a><br>\r\n<a href={U_ACADEMY}>{L_ACADEMY}</a><br>\r\n<a href={U_MINES}>{L_MINES}</a><br>\r\n<a href={U_TRADE}>{L_TRADE}</a><br></fieldset>\r\n\r\n           <br>\r\n\r\n<fieldset><legend>          <span class=\"text_medium\">{T_COMMAND}</span></legend>\r\n             <a href={U_PLANETLIST}>{L_PLANETLIST}</a><br>\r\n<a href={U_FLEETS}>{L_FLEETS}</a><br>\r\n<a href={U_SHIPS}>{L_SHIPS}</a><br>\r\n<a href={U_TACTICAL}>{L_TACTICAL}</a><br>\r\n<a href={U_SENSORS}>{L_SENSORS}</a><br>\r\n<a href={U_SHIPMOVES}>{L_SHIPMOVES}</a><br>\r\n<a href={U_BUYTROOPS}>{L_BUYTROOPS}</a><br>\r\n<a href={U_DIPLOMACY}>{L_DIPLOMACY}</a><br>\r\n<a href={U_ALLIANCE}>{L_ALLIANCE}</a><br>\r\n<a href={U_ALLYTACTIC}>{L_ALLYTACTIC}</a><br>\r\n<a href={U_ALLYTAXES}>{L_ALLYTAXES}</a><br>\r\n{HP_Alliance_z}\r\n           </fieldset>\r\n		<br>\r\n\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_DATABASE}</span></legend>\r\n            <a href={U_DATABASE}>{L_DATABASE}</a><br>\r\n<a href={U_LOGBOOK}>{L_LOGBOOK}</a><br>\r\n<a href={U_MESSAGES}>{L_MESSAGES}</a><br>\r\n</fieldset>\r\n           <br>\r\n\r\n                <fieldset><legend>   <span class=\"text_medium\">{T_GENERAL}</span></legend>\r\n             <a href={U_PORTAL}>{L_PORTAL}</a><br>\r\n<a href={U_STATS}>{L_STATS}</a><br>\r\n<a href={U_SETTINGS}>{L_SETTINGS}</a><br>\r\n<a href={U_HELP}>{L_HELP}</a><br>\r\n<a href={U_SUPPORT}><b>{L_SUPPORT}</b></a><br>\r\n<a href={U_SUPPORTCENTER}><b>{L_SUPPORTCENTER}</b></a><br>\r\n<a href={U_ADMINPANEL}><b>{L_ADMINPANEL}</b></a><br></fieldset>\r\n<br>\r\n<fieldset><legend><span class=\"text_medium\">{T_NEXTTICK}</span></legend><br>\r\n<center><span style=\"color: #ffff00;\">{NEXT_TICK_HTML}</span></center><br></fieldset>\r\n<br><br>\r\n\r\n<center><span class=\"text_large\"><b>{T_SITTING}</b><br><br>\r\n{USER_SITTING}\r\n</center>\r\n                   \r\n\r\n</td>\r\n<td valign=\"top\" align=\"left\" width=\"1\" bgcolor=\"black\"> </td>\r\n<td valign=\"top\" align=\"center\" width=\"750\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" width=\"750\">\r\n<!-- Middle -->\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"650\" align=\"center\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"650\"><br>\r\n<center>{ACTIVE_PLANET_ATTACKED}</center>\r\n<br>\r\n\r\n<center>{GAME_HTML}<br>\r\n<br>{NOTEPAD_HTML}</center>\r\n<br>\r\n<br>\r\n</td>\r\n</tr>\r\n</table>\r\n<!-- Middle End -->\r\n\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n<td valign=\"top\" align=\"left\" width=\"1\" bgcolor=\"black\"> </td>\r\n<td valign=\"top\" align=\"left\" width=\"125\" >\r\n<center><span class=\"sub_caption2\">{B_OVERVIEW}</span></center>\r\n\r\n<table border=0><tr><td><center>\r\n\r\n<br>\r\n\r\n<fieldset><legend>\r\n<span class=\"sub_caption2\">{T_HELLO} <b>{USER_NAME},</b></span></legend>\r\n<span class=\"text_medium\"><u>{T_ALLIANCE}</u> {ALLIANCE_NAME}<br></span> \r\n<span class=\"text_medium\"><u>{T_POINTS}</u> {USER_POINTS}<br></span>\r\n<span class=\"text_medium\"><u>{T_RANK}</u> {USER_RANKPOS}<br></span></fieldset>\r\n\r\n<br>\r\n\r\n\r\n<fieldset><legend><span class=\"text_medium\">{ACTIVE_PLANET_NAME}:</span></legend>\r\n<a href=\"index.php?a=headquarter\"><img src=\"{ACTIVE_PLANET_GFX}\" width=\"100\" height=\"100\" border=0></a><br>\r\n<span class=\"text_medium\"><u>Klasse:</u> <a href=\"index.php?a=database&planet_type={ACTIVE_PLANET_TYPE}\">{ACTIVE_PLANET_TYPE}</a></span><br>\r\n<span class=\"text_medium\"><u>Position:</u> <a href=\"index.php?a=tactical_cartography&planet_id={ACTIVE_PLANET_ID}\">{ACTIVE_PLANET_POSITION}</a></span><br>\r\n<span class=\"text_medium\"><u>Punkte:</u> {ACTIVE_PLANET_POINTS} / {ACTIVE_PLANET_MAXPOINTS}</span><br><br>\r\n<img src=\"{GFX_PATH}menu_metal_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_METAL} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_mineral_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_MINERALS} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_latinum_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_LATINUM} / {ACTIVE_PLANET_MAXRES}</span><br>\r\n<img src=\"{GFX_PATH}menu_worker_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_WORKER} <!-- / {ACTIVE_PLANET_MAXWORKER} --> </span><br>\r\n</fieldset>\r\n\r\n<br>\r\n\r\n\r\n<fieldset><legend><span class=\"text_medium\">{T_TROOPS}</span></legend>\r\n												<img border=0 src={GFX_PATH}menu_unit1_small.gif> <span class=\"text_medium\"><b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT1}</font></b> / <img border=0 src={GFX_PATH}menu_unit1_small.gif> <b>\r\n\r\n                                                               <!-- ?BERSCHUSS LV1 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv1 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/2\r\n\r\n                                                                              if             (lv1>=1 && lv1<{ACTIVE_PLANET_UNIT1})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv1)+\'</font>\')}\r\n                                                                              else if (lv1>=1 && lv1>={ACTIVE_PLANET_UNIT1} && {ACTIVE_PLANET_UNIT1}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT1}+\'</font>\')}\r\n                                                                              else if (lv1>=1 && {ACTIVE_PLANET_UNIT1}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv1<1 && lv1>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv1<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>Seite</font>\')}\r\n                                                                              else       {lv1=lv1*-1;\r\n                                                                                       document.write(\'<font color=#ff0000>\'+Math.ceil(lv1)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n                                               <img border=0 src={GFX_PATH}menu_unit2_small.gif><span class=\"text_medium\"> <b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT2}</font></b> / <img border=0 src={GFX_PATH}menu_unit2_small.gif> <b>\r\n\r\n                                                               <!-- ?BERSCHUSS LV2 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv2 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/3\r\n\r\n                                                                              if             (lv2>=1 && lv2<{ACTIVE_PLANET_UNIT2})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv2)+\'</font>\')}\r\n                                                                              else if (lv2>=1 && lv2>={ACTIVE_PLANET_UNIT2} && {ACTIVE_PLANET_UNIT2}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT2}+\'</font>\')}\r\n                                                                              else if (lv2>=1 && {ACTIVE_PLANET_UNIT2}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv2<1 && lv2>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv2<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>neu</font>\')}\r\n                                                                              else       {lv2=lv2*-1;\r\n                                                                                document.write(\'<font color=#ff0000>\'+Math.ceil(lv2)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n<img border=0 src={GFX_PATH}menu_unit3_small.gif><span class=\"text_medium\"> <b><font color=#c0c0c0>{ACTIVE_PLANET_UNIT3}</font></b> / \r\n                                                               <img border=0 src={GFX_PATH}menu_unit3_small.gif> <b>\r\n\r\n                                                               <!-- ?BERSCHUSS LV3 -->\r\n\r\n                                                               <script language=javascript>\r\n                                                                              var lv3 = ({ACTIVE_PLANET_STRENGTH}-{ACTIVE_PLANET_STRENGTH_REQUIRED})/4\r\n\r\n                                                                              if             (lv3>=1 && lv3<{ACTIVE_PLANET_UNIT3})\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+Math.floor(lv3)+\'</font>\')}\r\n                                                                              else if (lv3>=1 && lv3>={ACTIVE_PLANET_UNIT3} && {ACTIVE_PLANET_UNIT3}!=0)\r\n                                                                                              {document.write(\'<font color=#80ff80>\'+{ACTIVE_PLANET_UNIT3}+\'</font>\')}\r\n                                                                              else if (lv3>=1 && {ACTIVE_PLANET_UNIT3}==0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv3<1 && lv3>=0)\r\n                                                                                              {document.write(\'<font color=#ffff00>\'+0+\'</font>\')}\r\n                                                                              else if (lv3<-55555)\r\n                                                                                              {document.write(\'<font color=#00ffff>laden</font>\')}\r\n                                                                              else       {lv3=lv3*-1;\r\n                                                                                document.write(\'<font color=#ff0000>\'+Math.ceil(lv3)+\'</font>\')}\r\n                                                               </script></b></span><br>\r\n<img src=\"{GFX_PATH}menu_unit4_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT4}<br>\r\n<img src=\"{GFX_PATH}menu_unit5_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT5}<br>\r\n<img src=\"{GFX_PATH}menu_unit6_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_UNIT6}<br>\r\n<br><img src=\"{GFX_PATH}menu_fight_small.gif\"> <span class=\"text_medium\">{ACTIVE_PLANET_TROOPS} / {ACTIVE_PLANET_STRENGTH_REQUIRED}</span><br>\r\n<img src={GFX_PATH}menu_fight_small.gif><span class=\"text_medium\"> {T_AVOIDREBEL}<FONT color=#FF0000><b>{ACTIVE_PLANET_STRENGTH_REQUIRED}<b></font><br>\r\n<br><span class=\"text_medium\"><img src={GFX_PATH}menu_fight_small.gif>{T_TROOPS}<br>  <FONT color=#FCFF00><b>{ACTIVE_PLANET_TROOPS}</b></font>/<b><FONT color=#FFFFFF>{ACTIVE_PLANET_MAXTROOPS}</font></b>\r\n<br></fieldset>\r\n\r\n<br>\r\n\r\n<fieldset><legend>{T_TROOPSXSEC}<br></legend>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit1_small.gif\"> {Lv1_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit2_small.gif\"> {Lv2_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit3_small.gif\"> {Lv3_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit4_small.gif\"> {Lv4_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit5_small.gif\"> {Lv5_Handel}</a><br>\r\n                    <a href=\"index.php?a=trade&view=trade_buy_truppen\"><img border=0 src=\"{GFX_PATH}menu_unit6_small.gif\"> {Lv6_Handel}</a><br></fieldset><br>\r\n\r\n\r\n\r\n<center>\r\n<span class=\"text_large\"><b>{T_FLEETS}</b><br>\r\n{ACTIVE_PLANET_FLEETS}\r\n</center>\r\n</td></tr></table>\r\n\r\n</td>\r\n\r\n</tr>\r\n\r\n</table>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"750\" align=\"center\" valign=\"top\" border=\"0\" bgcolor=\"{skin_farbe}\">\r\n<tbody>\r\n    <tr>\r\n<td align=\"center\" width=\"750\" height=\"2\" bgcolor=\"black\"></td>\r\n    </tr>\r\n    <tr>\r\n<td align=\"center\" width=\"750\" valign=\"middle\" height=\"15\"><img src=\"{GFX_PATH}copyright.jpg\" alt=\"copyright\" border=0>\r\n<br />\r\n</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n<br />\r\n</body>\r\n</html>\r\n');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `account_observe`
--
ALTER TABLE `account_observe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_ip_1` (`last_ip_1`),
  ADD KEY `last_ip_2` (`last_ip_2`);

--
-- Indizes für die Tabelle `alliance`
--
ALTER TABLE `alliance`
  ADD PRIMARY KEY (`alliance_id`);

--
-- Indizes für die Tabelle `alliance_application`
--
ALTER TABLE `alliance_application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indizes für die Tabelle `alliance_bposts`
--
ALTER TABLE `alliance_bposts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indizes für die Tabelle `alliance_bthreads`
--
ALTER TABLE `alliance_bthreads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indizes für die Tabelle `alliance_diplomacy`
--
ALTER TABLE `alliance_diplomacy`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indizes für die Tabelle `alliance_logs`
--
ALTER TABLE `alliance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `alliance_taxes`
--
ALTER TABLE `alliance_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alliance_id` (`alliance_id`);

--
-- Indizes für die Tabelle `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trade_id` (`trade_id`);

--
-- Indizes für die Tabelle `bidding_owed`
--
ALTER TABLE `bidding_owed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`);

--
-- Indizes für die Tabelle `borg_bot`
--
ALTER TABLE `borg_bot`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `borg_npc_target`
--
ALTER TABLE `borg_npc_target`
  ADD UNIQUE KEY `planet_id` (`planet_id`);

--
-- Indizes für die Tabelle `borg_target`
--
ALTER TABLE `borg_target`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `last_check` (`last_check`,`threat_level`,`planets_taken`);

--
-- Indizes für die Tabelle `click_ids`
--
ALTER TABLE `click_ids`
  ADD KEY `click_id` (`click_id`),
  ADD KEY `click_exist_check` (`user_id`,`class`);

--
-- Indizes für die Tabelle `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_set_id`);

--
-- Indizes für die Tabelle `FHB_bid_meldung`
--
ALTER TABLE `FHB_bid_meldung`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_Bot`
--
ALTER TABLE `FHB_Bot`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_cache_trupp_trade`
--
ALTER TABLE `FHB_cache_trupp_trade`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_Handels_Lager`
--
ALTER TABLE `FHB_Handels_Lager`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_handel_log`
--
ALTER TABLE `FHB_handel_log`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_logging_ship`
--
ALTER TABLE `FHB_logging_ship`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_news`
--
ALTER TABLE `FHB_news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_ship_Lager`
--
ALTER TABLE `FHB_ship_Lager`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_ship_templates`
--
ALTER TABLE `FHB_ship_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_sperr_list`
--
ALTER TABLE `FHB_sperr_list`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_stats`
--
ALTER TABLE `FHB_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_truppen_lib`
--
ALTER TABLE `FHB_truppen_lib`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `FHB_warteschlange`
--
ALTER TABLE `FHB_warteschlange`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ip_link`
--
ALTER TABLE `ip_link`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_messages_check` (`receiver`,`rread`),
  ADD KEY `receiver` (`receiver`);

--
-- Indizes für die Tabelle `message_archiv`
--
ALTER TABLE `message_archiv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`);

--
-- Indizes für die Tabelle `message_removed`
--
ALTER TABLE `message_removed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`);

--
-- Indizes für die Tabelle `planets`
--
ALTER TABLE `planets`
  ADD PRIMARY KEY (`planet_id`),
  ADD KEY `planet_owner` (`planet_owner`),
  ADD KEY `planet_name` (`planet_name`);

--
-- Indizes für die Tabelle `planet_details`
--
ALTER TABLE `planet_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Events` (`planet_id`,`log_code`);

--
-- Indizes für die Tabelle `portal_news`
--
ALTER TABLE `portal_news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `portal_poll`
--
ALTER TABLE `portal_poll`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `portal_poll_voted`
--
ALTER TABLE `portal_poll_voted`
  ADD KEY `portal_select` (`player_id`,`poll_id`);

--
-- Indizes für die Tabelle `resource_trade`
--
ALTER TABLE `resource_trade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player` (`player`);

--
-- Indizes für die Tabelle `scheduler_instbuild`
--
ALTER TABLE `scheduler_instbuild`
  ADD KEY `planet_id` (`planet_id`);

--
-- Indizes für die Tabelle `scheduler_research`
--
ALTER TABLE `scheduler_research`
  ADD KEY `planet_id` (`planet_id`);

--
-- Indizes für die Tabelle `scheduler_resourcetrade`
--
ALTER TABLE `scheduler_resourcetrade`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `scheduler_shipbuild`
--
ALTER TABLE `scheduler_shipbuild`
  ADD PRIMARY KEY (`planet_id`),
  ADD KEY `planet_id` (`planet_id`),
  ADD KEY `ship_type` (`ship_type`);

--
-- Indizes für die Tabelle `scheduler_shipmovement`
--
ALTER TABLE `scheduler_shipmovement`
  ADD PRIMARY KEY (`move_id`),
  ADD KEY `planet_attacked_check` (`user_id`,`dest`,`action_code`);

--
-- Indizes für die Tabelle `schulden_table`
--
ALTER TABLE `schulden_table`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `settlers_events`
--
ALTER TABLE `settlers_events`
  ADD UNIQUE KEY `planet_events` (`timestamp`,`planet_id`,`user_id`);

--
-- Indizes für die Tabelle `settlers_relations`
--
ALTER TABLE `settlers_relations`
  ADD UNIQUE KEY `Alliance` (`planet_id`,`alliance_id`,`timestamp`,`log_code`),
  ADD UNIQUE KEY `Player` (`planet_id`,`user_id`,`log_code`),
  ADD KEY `race_mood` (`race_id`,`planet_id`,`mood_modifier`),
  ADD KEY `alliance_mood` (`alliance_id`,`planet_id`,`mood_modifier`),
  ADD KEY `user_mood` (`user_id`,`planet_id`,`mood_modifier`);

--
-- Indizes für die Tabelle `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `fleet_id` (`fleet_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `ship_ccategory`
--
ALTER TABLE `ship_ccategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `race` (`race`);

--
-- Indizes für die Tabelle `ship_components`
--
ALTER TABLE `ship_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indizes für die Tabelle `ship_fleets`
--
ALTER TABLE `ship_fleets`
  ADD PRIMARY KEY (`fleet_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `planet_id` (`planet_id`);

--
-- Indizes für die Tabelle `ship_templates`
--
ALTER TABLE `ship_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indizes für die Tabelle `ship_trade`
--
ALTER TABLE `ship_trade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `end_time` (`end_time`);

--
-- Indizes für die Tabelle `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indizes für die Tabelle `spenden`
--
ALTER TABLE `spenden`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `starsystems`
--
ALTER TABLE `starsystems`
  ADD PRIMARY KEY (`system_id`),
  ADD KEY `system_sector` (`sector_id`);

--
-- Indizes für die Tabelle `starsystems_details`
--
ALTER TABLE `starsystems_details`
  ADD UNIQUE KEY `alliance` (`alliance_id`,`system_id`),
  ADD UNIQUE KEY `user` (`user_id`,`system_id`);

--
-- Indizes für die Tabelle `tc_coords_memo`
--
ALTER TABLE `tc_coords_memo`
  ADD PRIMARY KEY (`tcm_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `trade_settings`
--
ALTER TABLE `trade_settings`
  ADD PRIMARY KEY (`user_id`);

--
-- Indizes für die Tabelle `transport_logs`
--
ALTER TABLE `transport_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `treuhandkonto`
--
ALTER TABLE `treuhandkonto`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_alliance` (`user_alliance`),
  ADD KEY `sitting_query` (`user_active`,`user_auth_level`,`user_sitting_id1`,`user_sitting_id2`,`user_sitting_id3`,`user_sitting_id4`,`user_sitting_id5`);
ALTER TABLE `user` ADD FULLTEXT KEY `user_name` (`user_name`);

--
-- Indizes für die Tabelle `userally_history`
--
ALTER TABLE `userally_history`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_diplomacy`
--
ALTER TABLE `user_diplomacy`
  ADD PRIMARY KEY (`ud_id`);

--
-- Indizes für die Tabelle `user_iplog`
--
ALTER TABLE `user_iplog`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_logs`
--
ALTER TABLE `user_logs`
  ADD KEY `ip` (`ip`);

--
-- Indizes für die Tabelle `user_sitter_iplog`
--
ALTER TABLE `user_sitter_iplog`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_templates`
--
ALTER TABLE `user_templates`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `account_observe`
--
ALTER TABLE `account_observe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance`
--
ALTER TABLE `alliance`
  MODIFY `alliance_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_application`
--
ALTER TABLE `alliance_application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_bposts`
--
ALTER TABLE `alliance_bposts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_bthreads`
--
ALTER TABLE `alliance_bthreads`
  MODIFY `thread_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_diplomacy`
--
ALTER TABLE `alliance_diplomacy`
  MODIFY `ad_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_logs`
--
ALTER TABLE `alliance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `alliance_taxes`
--
ALTER TABLE `alliance_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bidding`
--
ALTER TABLE `bidding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bidding_owed`
--
ALTER TABLE `bidding_owed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `borg_bot`
--
ALTER TABLE `borg_bot`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_bid_meldung`
--
ALTER TABLE `FHB_bid_meldung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_Bot`
--
ALTER TABLE `FHB_Bot`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_cache_trupp_trade`
--
ALTER TABLE `FHB_cache_trupp_trade`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_Handels_Lager`
--
ALTER TABLE `FHB_Handels_Lager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_handel_log`
--
ALTER TABLE `FHB_handel_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_logging_ship`
--
ALTER TABLE `FHB_logging_ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_news`
--
ALTER TABLE `FHB_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_ship_Lager`
--
ALTER TABLE `FHB_ship_Lager`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_ship_templates`
--
ALTER TABLE `FHB_ship_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_sperr_list`
--
ALTER TABLE `FHB_sperr_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_stats`
--
ALTER TABLE `FHB_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_truppen_lib`
--
ALTER TABLE `FHB_truppen_lib`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `FHB_warteschlange`
--
ALTER TABLE `FHB_warteschlange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ip_link`
--
ALTER TABLE `ip_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `logbook`
--
ALTER TABLE `logbook`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `message_archiv`
--
ALTER TABLE `message_archiv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `message_removed`
--
ALTER TABLE `message_removed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `planets`
--
ALTER TABLE `planets`
  MODIFY `planet_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `planet_details`
--
ALTER TABLE `planet_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `portal_news`
--
ALTER TABLE `portal_news`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `portal_poll`
--
ALTER TABLE `portal_poll`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `resource_trade`
--
ALTER TABLE `resource_trade`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `scheduler_resourcetrade`
--
ALTER TABLE `scheduler_resourcetrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `scheduler_shipmovement`
--
ALTER TABLE `scheduler_shipmovement`
  MODIFY `move_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `schulden_table`
--
ALTER TABLE `schulden_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ships`
--
ALTER TABLE `ships`
  MODIFY `ship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ship_ccategory`
--
ALTER TABLE `ship_ccategory`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ship_components`
--
ALTER TABLE `ship_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ship_fleets`
--
ALTER TABLE `ship_fleets`
  MODIFY `fleet_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ship_templates`
--
ALTER TABLE `ship_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ship_trade`
--
ALTER TABLE `ship_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `skins`
--
ALTER TABLE `skins`
  MODIFY `skin_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `spenden`
--
ALTER TABLE `spenden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `starsystems`
--
ALTER TABLE `starsystems`
  MODIFY `system_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `tc_coords_memo`
--
ALTER TABLE `tc_coords_memo`
  MODIFY `tcm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `transport_logs`
--
ALTER TABLE `transport_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `treuhandkonto`
--
ALTER TABLE `treuhandkonto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `userally_history`
--
ALTER TABLE `userally_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_diplomacy`
--
ALTER TABLE `user_diplomacy`
  MODIFY `ud_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_iplog`
--
ALTER TABLE `user_iplog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_sitter_iplog`
--
ALTER TABLE `user_sitter_iplog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
