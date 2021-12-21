-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-07-2012 a las 07:21:56
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `web` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `contenido` text COLLATE latin1_spanish_ci NOT NULL,
  `id_post` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `titulo` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `preview` text COLLATE latin1_spanish_ci NOT NULL,
  `contenido` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `fecha`, `titulo`, `preview`, `contenido`) VALUES
(1, '2012-07-17 07:00:29', 'The Walking Dead Temporada - 2 [13/13] [Mkv] [Sub Español] [MF]', '						<b>FICHA TÉCNICA</b> <br />\r\n\r\nTítulo: The Walking Dead <br />\r\nGénero: Terror, Suspendo <br />\r\nTemporada: 2 - 13/13 <br />\r\nIdioma: Sub Español <br />\r\nDuración: 45 min. aproximadamente <br />\r\nCalidad De Video: Muy Buena <br />\r\nTamaño: 150 MB <br />\r\nFormato: Mkv <br />\r\nServidor: Mediafire <br />\r\n<br /><br />\r\n\r\nSinopsis: <br />\r\n\r\nThe Walking Dead cuenta la historia de las secuelas de un apocalipsis zombi y sigue a un pequeño grupo <br />de supervivientes que viajan a través de Esta', '						<b>FICHA TÉCNICA</b> <br />\r\n\r\nTítulo: The Walking Dead <br />\r\nGénero: Terror, Suspendo <br />\r\nTemporada: 2 - 13/13 <br />\r\nIdioma: Sub Español <br />\r\nDuración: 45 min. aproximadamente <br />\r\nCalidad De Video: Muy Buena <br />\r\nTamaño: 150 MB <br />\r\nFormato: Mkv <br />\r\nServidor: Mediafire <br />\r\n<br /><br />\r\n\r\nSinopsis: <br />\r\n\r\nThe Walking Dead cuenta la historia de las secuelas de un apocalipsis zombi y sigue a un pequeño grupo <br />de supervivientes que viajan a través de Estados Unidos en busca de un nuevo hogar lejos de las <br />hordas de zombis. Después de despertar de un coma en un hospital abandonado, el oficial de <br />policía Rick Grimes se da cuenta de que el mundo que conocía no existe, devastado por una epidemia <br />zombi de proporciones apocalípticas. En los alrededores, en las afueras de Atlanta, un pequeño <br />campamento lucha por sobrevivir mientras que los no-muertos los acechan a cada momento. El grupo <br />es guiado por Rick Grimes. Mientras su situación se vuelve más y más sombría, la desesperación <br />del grupo por sobrevivir los obliga a hacer casi cualquier cosa para mantenerse con vida.\r\n<br /><br />\r\nCapitulo 01: <br />\r\n<img src="http://www.subeimagenes.com/img/twd1-332260.jpg" /> <br />\r\n\r\n<a href="http://www.mediafire.com/?yygeigva50u86mk">http://www.mediafire.com/?yygeigva50u86mk</a>'),
(2, '2012-07-17 07:07:24', 'Kung Fu Panda 2 [BrRip] [Español Latino] [MF]', '						<b>Kung Fu Panda 2</b> <br />\r\n\r\n<img src="http://www.covercaratulas.com/ode2/dvd/Kung_Fu_Panda_2_-_Custom_-_V2_por_kal-noc_%5Bdvd%5D_80.jpg" width=650 height=500 /><br />\r\nTÍTULO ORIGINAL: Kung fu panda: The Kaboom of Doom<br />\r\nTÍTULO Latino: Kung Fu Panda 2<br />\r\nAÑO: 2011<br />\r\nDURACIÓN: 90 min.<br />\r\nIDIOMA : Español Latino<br />\r\nPAÍS: [Estados Unidos]<br />\r\nDIRECTOR: Jennifer Yuh<br />\r\nGenero: Animación. Comedia. Acción | Artes marciales.<br />\r\nPRODUCTORA: DreamWorks Animatio', '						<b>Kung Fu Panda 2</b> <br />\r\n\r\n<img src="http://www.covercaratulas.com/ode2/dvd/Kung_Fu_Panda_2_-_Custom_-_V2_por_kal-noc_%5Bdvd%5D_80.jpg" width=650 height=500 /><br />\r\nTÍTULO ORIGINAL: Kung fu panda: The Kaboom of Doom<br />\r\nTÍTULO Latino: Kung Fu Panda 2<br />\r\nAÑO: 2011<br />\r\nDURACIÓN: 90 min.<br />\r\nIDIOMA : Español Latino<br />\r\nPAÍS: [Estados Unidos]<br />\r\nDIRECTOR: Jennifer Yuh<br />\r\nGenero: Animación. Comedia. Acción | Artes marciales.<br />\r\nPRODUCTORA: DreamWorks Animation<br />\r\n\r\nSIPNOSIS\r\n\r\n<br />Secuela de la exitosa producción Kung Fu Panda. La historia vuelve a recuperar el personaje de <br />Po, que ahora vive su sueño como guerrero dragón protegiendo el valle de la paz junto a sus <br />amigos los cinco furiosos. Pero Po será amenazado por un nuevo villano, que planea usar una <br />imparable arma secreta para conquistar China y destruir el Kung Fu. Po se enfrentará a él, pero como <br />se puede parar un arma que puede destruir el Kung Fu. Po deberá buscar en su pasado y descubrir <br />los secretos de su misterioso origen, solo entonces podrá encontrar la fuerza que necesita.\r\n<br />\r\nINFORMACION\r\n<br />\r\nTamaño: 2.11 GB\r\n<br />\r\nDuracion: 90 Min\r\n<br />\r\nFormato: .MKV\r\n<br />\r\nResolucion: 1280×544\r\n<br />\r\nAudio: Español Latino\r\n<br /><br />\r\nCAPTURAS<br />\r\n<img src="http://img84.imageshack.us/img84/6956/nuevaimagencm.jpg" />\r\n<br /><br />\r\nLinks:<br />\r\n<br />\r\nDebes abrir el JDownloader para descargar\r\n<br />\r\nContraseña:\r\nwin32yque'),
(3, '2012-07-17 04:33:18', 'Los Tres Chiflados [2012] [DvdRip] [Latino] [MF]', '<img src="http://uppix.net/b/c/9/0d343dc0da8fe440d3ad2aa9c22e4.jpg /> <br />\r\n\r\n<img src="http://uppix.net/0/1/5/8f23d6de49c059b2c1e5d22150089.png" /><br />\r\n\r\nTÍTULO ORIGINAL: The Three Stooges<br />\r\n\r\nOTROS TÍTULOS: Los Tres Chiflados<br />\r\n\r\nAÑO: 2012<br />\r\n\r\nDURACIÓN: 92 min.<br />\r\n\r\nPAÍS: USA\r\n<br />\r\nDIRECTOR: Peter Farrelly, Robert Farrelly (AKA Bobby Farrelly)\r\n<br />\r\nGUIÓN: Peter Farrelly, Robert Farrelly (AKA Bobby Farrelly)\r\n<br />\r\nMÚSICA: John Debney\r\n<br />\r\nFOTOGRAFÍA: Matthe', '<img src="http://uppix.net/b/c/9/0d343dc0da8fe440d3ad2aa9c22e4.jpg /> <br />\r\n\r\n<img src="http://uppix.net/0/1/5/8f23d6de49c059b2c1e5d22150089.png" /><br />\r\n\r\nTÍTULO ORIGINAL: The Three Stooges<br />\r\n\r\nOTROS TÍTULOS: Los Tres Chiflados<br />\r\n\r\nAÑO: 2012<br />\r\n\r\nDURACIÓN: 92 min.<br />\r\n\r\nPAÍS: USA\r\n<br />\r\nDIRECTOR: Peter Farrelly, Robert Farrelly (AKA Bobby Farrelly)\r\n<br />\r\nGUIÓN: Peter Farrelly, Robert Farrelly (AKA Bobby Farrelly)\r\n<br />\r\nMÚSICA: John Debney\r\n<br />\r\nFOTOGRAFÍA: Matthew F. Leonetti\r\n<br />\r\nREPARTO: Sean Hayes, Will Sasso, Chris Diamantopoulos, Sofia Vergara, Larry David, Jane Lynch, Jennifer Hudson\r\n<br />\r\nPRODUCTORA: C3 Entertainment Inc. / Conundrum Entertainment\r\n<br />\r\nGÉNERO: Comedia | Película de episodios\r\n<br />\r\nCalidad: dvdrip\r\n<br />\r\nPeso: 696 mb\r\n<br />\r\nDuracion: 92 min\r\n<br />\r\nIdioma: Español Latino\r\n<br />\r\n\r\n<img src="http://uppix.net/8/f/f/850bafe015c857d91ae3d0c42a9b7.png" />\r\n<br />\r\nInspirada en la serie de 190 cortos, de unos 16 minutos, ‘The Three Stooges’ que estrenó Columbia Pictures entre 1934 y 1958. Los protagonistas son tres recién nacidos que viven en un orfanato.\r\n<br />\r\n<img src="http://uppix.net/0/d/e/e23c17db60abe7667264730b6dabe.png" />\r\n<br />\r\n<img src="http://uppix.net/7/0/9/4975ebf8b937844a74bdd6346039e.jpg" />\r\n<br />\r\n1 LINK\r\n<br />\r\n<img src="http://uppix.net/1/4/4/b2fb007384ce4c5bdc9478343854f.png" />\r\n<br />\r\n<a href="http://letitbit.net/download/93920.9038debc8395ff82f0e9e4006f30/L.3.C.2012.DVDRip.LATiNO.steven256.avi.html">http://letitbit.net/download/93920.9038debc8395ff82f0e9e4006f30/L.3.C.2012.DVDRip.LATiNO.steven256.avi.html</a>\r\n<br />\r\nBITSHARE\r\n<br />\r\n<a href="http://bitshare.com/files/xlk40q11/L.3.C.2012.DVDRip.LATiNO.steven256.avi.html">http://bitshare.com/files/xlk40q11/L.3.C.2012.DVDRip.LATiNO.steven256.avi.html</a>\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `password` int(50) NOT NULL,
  `activo` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
