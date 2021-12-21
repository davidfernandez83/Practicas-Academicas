-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-09-2013 a las 16:24:13
-- Versión del servidor: 5.5.29
-- Versión de PHP: 5.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agencia`
--
CREATE DATABASE IF NOT EXISTS `agencia` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agencia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

DROP TABLE IF EXISTS `destinos`;
CREATE TABLE IF NOT EXISTS `destinos` (
  `destID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `destNombre` varchar(45) NOT NULL COMMENT 'Nombre de los destinos turísticos',
  `regID` tinyint(2) unsigned NOT NULL COMMENT 'Relación a la tabla regiones',
  `destPrecio` int(7) unsigned NOT NULL,
  `destAsientos` tinyint(2) unsigned NOT NULL COMMENT 'Cantidad TOTAL de Asientos',
  `destDisponibles` tinyint(2) unsigned NOT NULL COMMENT 'Cantidad DISPONIBLE\\n de Asientos',
  `destActivo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`destID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`destID`, `destNombre`, `regID`, `destPrecio`, `destAsientos`, `destDisponibles`, `destActivo`) VALUES
(1, 'Londres (Heathrow)', 5, 9711, 5, 5, 1),
(2, 'Amsterdam (Schiphol)', 5, 6231, 5, 5, 1),
(3, 'Miami', 4, 6517, 5, 5, 1),
(4, 'Tokio (Narita)', 7, 8704, 5, 5, 1),
(5, 'Bangkok (Suvarnabhumi)', 8, 8469, 5, 5, 1),
(6, 'París (Charles de Gaulle)', 5, 7713, 5, 5, 1),
(7, 'Cancún (Cancún)', 3, 6494, 5, 5, 1),
(8, 'Milán (Malpensa)', 5, 6756, 5, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `regID` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `regNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`regID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Regiones' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`regID`, `regNombre`) VALUES
(1, 'América del Sur'),
(2, 'América Central'),
(3, 'Caribe y México'),
(4, 'América del Norte'),
(5, 'Europa Occidental'),
(6, 'Europa del Este'),
(7, 'Asia'),
(8, 'Oceanía');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
