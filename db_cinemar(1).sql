-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2022 a las 01:22:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_cinemar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE `asiento` (
  `id-asiento` int(11) NOT NULL,
  `id-funcion` int(11) NOT NULL,
  `asiento` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asiento`
--

INSERT INTO `asiento` (`id-asiento`, `id-funcion`, `asiento`) VALUES
(1, 2, '2'),
(2, 3, '5'),
(3, 3, '4'),
(4, 6, '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleto`
--

CREATE TABLE `boleto` (
  `id_bol` int(11) NOT NULL,
  `fec_bol` date NOT NULL,
  `id_fun` int(11) NOT NULL,
  `num_asi` char(3) NOT NULL,
  `imp_bol` decimal(10,0) NOT NULL,
  `id_punto` int(11) NOT NULL,
  `est_bol` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `boleto`
--

INSERT INTO `boleto` (`id_bol`, `fec_bol`, `id_fun`, `num_asi`, `imp_bol`, `id_punto`, `est_bol`) VALUES
(0, '2022-07-08', 1, '2', '100', 10, '4');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL,
  `des_caja` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `des_caja`) VALUES
(0, '1'),
(0, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE `cajero` (
  `id_cajero` int(11) NOT NULL,
  `nom_cajero` varchar(35) NOT NULL,
  `dni_cajero` char(8) NOT NULL,
  `correo_cajero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`id_cajero`, `nom_cajero`, `dni_cajero`, `correo_cajero`) VALUES
(0, '18040028', '1', 'jaldin-hernan'),
(0, '1', '1804028', 'jaldinhernan55@gmail.com'),
(0, '2', '18783389', 'celeste@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `id_funcion` int(11) NOT NULL,
  `id_prog` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `est_fun` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`id_funcion`, `id_prog`, `id_sala`, `id_horario`, `est_fun`) VALUES
(1, 3, 5, 2, 'l'),
(2, 4, 3, 3, 'i');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_hor` int(11) NOT NULL,
  `des_hor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_hor`, `des_hor`) VALUES
(1, 'B'),
(2, 'A'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_peli` int(11) NOT NULL,
  `nom_peli` varchar(30) NOT NULL,
  `fec_est` date NOT NULL,
  `dur_peli` decimal(6,0) NOT NULL,
  `actor` varchar(35) NOT NULL,
  `est_peli` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_peli`, `nom_peli`, `fec_est`, `dur_peli`, `actor`, `est_peli`) VALUES
(0, '1', '0000-00-00', '0', '120', 'O'),
(1, 'DRAGON', '0000-00-00', '120', 'TOM', 'l'),
(2, 'TIBURON', '0000-00-00', '120', 'METRGM', 'l'),
(2, 'CHACAL', '0000-00-00', '90', 'BRATP', 'l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `ide-pelicula` int(11) DEFAULT NULL,
  `titulo` text NOT NULL,
  `salas` int(11) NOT NULL,
  `longitud en minutos` int(128) DEFAULT NULL,
  `genero` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`ide-pelicula`, `titulo`, `salas`, `longitud en minutos`, `genero`) VALUES
(0, 'jPark3', 3, 90, 'DRAMA'),
(0, 'j-Park', 1, 120, 'DRAMA'),
(0, 'TIBURON', 2, 120, 'ACCION'),
(0, 'REY LEON', 2, 120, 'COMIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_prog` int(11) NOT NULL,
  `id_pel` int(11) NOT NULL,
  `fech_ini` date NOT NULL,
  `fech_fin` date NOT NULL,
  `id_usu` int(11) NOT NULL,
  `est_prog` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_prog`, `id_pel`, `fech_ini`, `fech_fin`, `id_usu`, `est_prog`) VALUES
(1, 2, '0000-00-00', '0000-00-00', 169, 'L'),
(2, 3, '0000-00-00', '0000-00-00', 0, 'l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntocaja`
--

CREATE TABLE `puntocaja` (
  `id_punto` int(11) NOT NULL,
  `fec_venta` date NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_cajero` int(11) NOT NULL,
  `saldo_ini` decimal(8,0) NOT NULL,
  `est_punto` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntocaja`
--

INSERT INTO `puntocaja` (`id_punto`, `fec_venta`, `id_caja`, `id_cajero`, `saldo_ini`, `est_punto`) VALUES
(5, '2022-07-12', 2, 5, '0', 'O'),
(3, '2022-07-09', 1, 3, '0', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recerva`
--

CREATE TABLE `recerva` (
  `precio` int(11) NOT NULL,
  `descuento` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recerva`
--

INSERT INTO `recerva` (`precio`, `descuento`) VALUES
(600, '10'),
(900, '20'),
(200, '10'),
(1200, '20'),
(800, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `des_sala` varchar(50) NOT NULL,
  `cap_sala` int(11) NOT NULL,
  `tip_sala` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `des_sala`, `cap_sala`, `tip_sala`) VALUES
(0, '1', 0, '6'),
(0, '2', 0, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopelicula`
--

CREATE TABLE `tipopelicula` (
  `formato` varchar(12) NOT NULL,
  `idioma` text NOT NULL,
  `subtitulada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipopelicula`
--

INSERT INTO `tipopelicula` (`formato`, `idioma`, `subtitulada`) VALUES
('1', 'INGLES', 3),
('2', 'ESPANICH', 2),
('1', 'INGLES', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `dni` bigint(20) NOT NULL,
  `fecha-nac` date NOT NULL,
  `e-mail` text NOT NULL,
  `contraseña` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='registro de usuario';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `apellido`, `dni`, `fecha-nac`, `e-mail`, `contraseña`) VALUES
('0', 'HERNAN','JALDIN' , '18040028', '1965-11-05','jaldinhernan55@gmail.com' ,'atc25456'),
('0', 'JUAN', 'PEREZ', '16045328', '2001-05-14','juanchip@gmail.com', 'juanchi45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `nom_usu` varchar(30) NOT NULL,
  `con_usu` varchar(30) NOT NULL,
  `fec_reg` date NOT NULL,
  `est_usu` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `nom_usu`, `con_usu`, `fec_reg`, `est_usu`) VALUES
(0, '1', '0.002472799208704253', '0000-00-00', 'A'),
(0, '2', '0.002472799208704253', '0000-00-00', 'N');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
