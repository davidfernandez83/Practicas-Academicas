-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-07-2012 a las 15:47:37
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursophp_alumnos`
--

CREATE TABLE IF NOT EXISTS `cursophp_alumnos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `edad` int(10) unsigned NOT NULL,
  `id_trabajo_practico` int(11) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_trabajo_practico` (`id_trabajo_practico`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `cursophp_alumnos`
--

INSERT INTO `cursophp_alumnos` (`id`, `nombre`, `edad`, `id_trabajo_practico`, `activo`) VALUES
(1, 'David', 29, 1, 1),
(2, 'Juan', 22, 2, 1),
(5, 'Pedro', 22, 1, 1),
(6, 'Manuel', 22, 3, 1),
(7, 'Matias', 25, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo_practico`
--

CREATE TABLE IF NOT EXISTS `trabajo_practico` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `nota` int(10) unsigned NOT NULL,
  `comentario` varchar(250) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `trabajo_practico`
--

INSERT INTO `trabajo_practico` (`id`, `nombre`, `nota`, `comentario`, `activo`) VALUES
(1, 'Blog', 8, 'Trabajo practico Blog', 1),
(2, 'Deportes', 8, 'Sitio web de deportes', 1),
(3, 'Musica', 7, 'Sitio web de musica', 1),
(4, 'Cine', 9, 'Cartelera de cine', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`) VALUES
(1, 'David', '1234'),
(2, 'Pedro', '2222');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursophp_alumnos`
--
ALTER TABLE `cursophp_alumnos`
  ADD CONSTRAINT `cursophp_alumnos_ibfk_1` FOREIGN KEY (`id_trabajo_practico`) REFERENCES `trabajo_practico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
