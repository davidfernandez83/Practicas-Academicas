-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-09-2010 a las 16:40:14
-- Versión del servidor: 5.1.44
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `cat_id` int(2) NOT NULL AUTO_INCREMENT,
  `cat_nombre` varchar(20) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_nombre`) VALUES
(1, 'Teléfonos Celulares'),
(2, 'Televisores'),
(3, 'Cámaras Digitales'),
(4, 'GPS'),
(5, 'Audio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `prd_id` int(3) NOT NULL AUTO_INCREMENT,
  `prd_nombre` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `prd_descripcion` text COLLATE utf8_general_ci NOT NULL,
  `prd_precio` int(5) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `prd_alta` date NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `productos`
--

INSERT INTO `productos` (`prd_id`, `prd_nombre`, `prd_descripcion`, `prd_precio`, `cat_id`, `prd_alta`) VALUES
(1, 'Samsung Galaxy (I5700)', 'Teléfono celular con Wifi, GPS, Pantalla Amoled touchscreen de 3.2 pulgadas. \r\nSistema operativo Android 1.5.\r\nAcepta tarjetas SD hasta 32 Gb.\r\nCámara de 3.2mpx con autofocus y flash.  ', 1500, 1, '2010-06-10'),
(2, 'Samsung Omnia2 (I8000)', 'Teléfono celular con WIFI, GPS, Pantalla touchscreen Amoled de 3.7 pulgadas.\r\nCámara de 5Mpx, 8Gb de memoria interna y acepta tarjetas SD hasta 32Gb. ', 1900, 1, '2010-06-15'),
(3, 'Nokia 5800 XpressMusic', 'Teléfono celular con WIFI, GPS, pantalla touchscreen de 3.2 pulgadas. Acepta tajetas SD hasta 16 Gb\r\nSistema operativo Symbian 9.4.', 1200, 1, '2010-06-20'),
(4, 'Televisor Led Lg Infinia (Le5500)', 'Televisor Led TV de 32 pulgadas.\r\nFull HD (1080p) con sintonizador digital.\r\nContraste 500000:1 \r\nTiempo de Respuesta 2,4ms.\r\nISDB-Tb (norma japonesa brasileña).\r\nBroadband tv, conexión a internet para contenidos on Demand.', 6200, 2, '2010-06-21'),
(5, 'Televisor Led Samsung 40c5000', 'Televisor de Led de 40 pulgadas. \r\nTecnología Anynet.\r\nFull HD (1080p) con sintonizador digital.\r\nContraste 500000:1\r\nTiempo de Respuesta 2,4ms.\r\nAcceso a Internet con Internet@TV para contenidos on Demand', 7100, 2, '2010-06-22'),
(6, 'Tv Led Sony Bravia Kdl-40ex600', 'Televisor Led de 40 pulgadas.\r\nFull HD 1080, tecnología Edge, HDMI y USB.\r\n\r\n ', 8400, 2, '2010-06-24'),
(7, 'GPS Garmin Nuvi 200', 'Pantalla táctil de 3.5.\r\nBatería de litio con autonomía de 4-5 horas dependiendo del uso.\r\nMemoria interna libre de 2GB.\r\nSistema antirrobo Garmin Lock.', 420, 4, '2010-06-26'),
(8, 'Gps Tomtom One 130', 'Pantalla táctil de 3,5.\r\nSoporte para el parabrisas.\r\nTecnologia Map Share™ de TomTom®.\r\nSoftware de escritorio TomTom Home.\r\nMapas en 2 y 3D.\r\nMemoria interna flash de 1GB', 550, 4, '2010-06-26'),
(9, 'Cámara Reflex Nikon D3000', 'Cámara digital reflex de 10.2 MPX.\r\nLCD de 3 pulgadas.\r\nAlta sensibilidad ISO 100-1600', 2700, 3, '2010-06-28'),
(10, 'iPhone 3GS 32gb', 'Teléfono celular iPhone 3GS de 32Gb con pantalla touchscreen de 3.5 pulgadas multitouch.\r\nBrújula digital, WIFI, GPS, 3G, cámara digital de 3 MPX con autofocus.', 3600, 1, '2010-06-30'),
(11, 'Cámara Sony Tx1 (DSC-Tx1)', 'Cámara digital de 10.2 MPX.\r\nDisplay touchscreen de 3 pulgadas.\r\nLente Carl Zeiss® de alta calidad con zoom óptico de 4x', 1350, 3, '2010-06-30'),
(12, 'iPhone 4G 32GB', 'Teléfono celular iPhone 4G de 32Gb. Pantalla toucscreen de 3.5 pulgadas Multitouch con Retina Display®.\r\nCámara digital de 5MPX, filma video HD a 720p y cámara frontal para FaceTime®.\r\nWIFI, GPS.', 4500, 1, '2010-08-05'),
(13, 'Cámara Nikon P100', 'Cámara Digital Nikon P100.\r\nPantalla LCD de 3 pulgadas.\r\nZoom de 26x Lens NIKKOR gran angular.\r\nFilma vídeo de alta definición (1080p).\r\n', 2080, 3, '2010-08-16'),
(14, 'Home Theater Samsung Ht-c6930w', 'Home Theater Samsung Ht-c6930w 7.1 con Blue Ray 3d conexion HDMI.\r\nSistema de Altavoces inalámbricos, soporta Dolby y ProLogic.\r\n@Internet con WIFI para disfrutar contenido onDemand y pasar archivos desde la red local.\r\n', 6400, 5, '2010-08-21');
