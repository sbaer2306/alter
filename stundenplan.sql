-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 06. Mrz 2020 um 10:02
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `stundenplan`
--
CREATE DATABASE IF NOT EXISTS `stundenplan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stundenplan`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fach`
--

CREATE TABLE `fach` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lehrer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kontakt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `fach`
--

INSERT INTO `fach` (`name`, `lehrer`, `raum`, `kontakt`, `fa_id`) VALUES
('adsf', 'fsadsa', '1', '', 1),
('', '', '', '', 2),
('', '', '', '', 3),
('', '', '', '', 4),
('', '', '', '', 5),
('', '', '', '', 6),
('', '', '', '', 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `noten`
--

CREATE TABLE `noten` (
  `no_id` int(11) NOT NULL,
  `fa_id` int(11) NOT NULL,
  `sa1` int(11) NOT NULL,
  `sa2` int(11) NOT NULL,
  `sa3` int(11) NOT NULL,
  `ex1` int(11) NOT NULL,
  `ex2` int(11) NOT NULL,
  `ex3` int(11) NOT NULL,
  `ex4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `fach`
--
ALTER TABLE `fach`
  ADD PRIMARY KEY (`fa_id`);

--
-- Indizes für die Tabelle `noten`
--
ALTER TABLE `noten`
  ADD PRIMARY KEY (`no_id`),
  ADD KEY `fa_id` (`fa_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `fach`
--
ALTER TABLE `fach`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `noten`
--
ALTER TABLE `noten`
  MODIFY `no_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
