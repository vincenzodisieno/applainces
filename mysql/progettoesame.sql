-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Apr 29, 2024 alle 10:04
-- Versione del server: 8.2.0
-- Versione PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progettoesame`
--
DROP DATABASE IF EXISTS `progettoesame`;
CREATE DATABASE `progettoesame`;
USE `progettoesame`;
-- --------------------------------------------------------

--
-- Struttura della tabella `preordini`
--

DROP TABLE IF EXISTS `preordini`;
CREATE TABLE IF NOT EXISTS `preordini` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `indirizzo` varchar(80) NOT NULL,
  `cap` varchar(10) NOT NULL,
  `stato` varchar(20) NOT NULL,
  `provincia` varchar(30) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `nomecompleto` varchar(70) NOT NULL,
  `numerocarta` varchar(200) NOT NULL,
  `scadenza` varchar(30) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `preordini`
--

INSERT INTO `preordini` (`id`, `nome`, `cognome`, `indirizzo`, `cap`, `stato`, `provincia`, `numero`, `nomecompleto`, `numerocarta`, `scadenza`, `cvv`) VALUES
(1, 'Vincenzo', 'Di Sieno', 'Via Ghittoni 56, San Giorgio Piacentino', '29019', 'Italia', 'Piacenza', '', 'Vincenzo Di Sieno', '1234567890123456', '01/01', '000'),
(2, 'Vincenzo', 'Di Sieno', 'Via Ghittoni 56, San Giorgio Piacentino', '29019', 'Italia', 'Piacenza', '3711504101', 'Vincenzo Di Sieno', '1234567890123456', '01/01', '000'),
(3, 'a', 'a', 'a', 'a', '1', '1', '1', '1', '1', '1', '1'),
(4, '', '', '', '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '', '', '', '', '', '', '', '', '', ''),
(9, '', '', '', '', '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', '', '', '', '', ''),
(12, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(13, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(14, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(15, 'Christopher', 'Cascio', 'Via Fiume 16, Carpaneto', '29013', 'Italia', 'Piacenza', '3209544789', 'Christopher Cascio', '4749583485947393', '02/53', '945'),
(16, 'Alberto', 'Castellucci', '2', '2', '2', '2', '2', '2', '2222222222222222', '22/22', '222'),
(17, 'Filippo', 'Albertazzi', 'Via Modenesi 15', '29122', 'Italia', 'Piacenza', '3456797535', 'Filippo Albertazzi', '1234789856898656', '97/33', '038'),
(18, '', '', '', '', '', '', '', 'Federico Garenna', '2856', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
