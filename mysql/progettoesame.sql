-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Mag 12, 2024 alle 18:47
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
