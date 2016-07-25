-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2016 a las 08:42:06
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `systempoint`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(11) NOT NULL,
  `usuario` char(20) DEFAULT NULL,
  `clave` char(255) DEFAULT NULL,
  `jur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id`, `usuario`, `clave`, `jur_id`) VALUES
(1, 'admin', '123456', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL,
  `criterio_id` int(11) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `puntaje_min` int(11) DEFAULT NULL,
  `puntaje_max` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `criterio_id`, `serie_id`, `puntaje_min`, `puntaje_max`) VALUES
(1, 1, 1, 0, 20),
(2, 2, 1, 0, 35),
(3, 3, 1, 0, 20),
(4, 4, 1, 0, 25),
(5, 1, 2, 0, 10),
(6, 2, 2, 0, 20),
(7, 3, 2, 0, 25),
(8, 4, 2, 0, 35),
(9, 5, 2, 0, 10),
(10, 1, 3, 0, 10),
(11, 2, 3, 0, 20),
(12, 3, 3, 0, 20),
(13, 4, 3, 0, 40),
(14, 5, 3, 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

CREATE TABLE `criterio` (
  `id` int(11) NOT NULL,
  `nombre` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `criterio`
--

INSERT INTO `criterio` (`id`, `nombre`) VALUES
(1, 'Puntualidad'),
(2, 'Presentacion'),
(3, 'Expresion del Mensaje'),
(4, 'Coreografia'),
(5, 'Armonia ritmica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL,
  `Nombre` char(255) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `Nombre`, `serie_id`) VALUES
(1, 'IEI HILATA', 1),
(2, 'IEI IZAÑURA', 1),
(3, 'IEI JAJANRA', 1),
(4, 'IEI 297 YAPURA-YAPURA', 1),
(5, 'IEI SANTA MARIA-SANTA MARIA', 1),
(6, 'IEI 298 LLACHON', 1),
(7, 'IEI 201 CAPACHICA', 1),
(8, 'IEI LLACHON', 1),
(9, 'IEI CHAPA', 1),
(10, 'IEI N° ESCALLANI-ESCALLANI', 1),
(11, 'IEI CCOTOS CAMPANARIO-CCOTOS', 1),
(12, 'IEI CAPANO-CAPANO', 1),
(13, 'IEI CCOTOS-CCOTOS', 1),
(14, 'IEI TANTEON-TANTEON', 1),
(15, 'IEI CCOLLPA-CCOLPA', 1),
(16, 'IEP N° 70017 SIALE', 2),
(17, 'IEP N° 70046 HILATA', 2),
(18, 'IEP N° 70019 CHILLORA', 2),
(19, 'IEP N° 70028 CHAPA', 2),
(20, 'IEP N° 70039 LLACHON', 2),
(21, 'IEP N° 70027 ESCALLANI', 2),
(22, 'IEP N° 70016 CCOTOS', 2),
(23, 'IEP N° 70020 YAPURA', 2),
(24, 'IEP N° 70036 CAPACHICA', 2),
(25, 'IEP N° 70021 ISAÑURA', 2),
(26, 'IEP N° 70015 CAPANO', 2),
(27, 'IES CORAZON DE CRISTO YAPURA', 3),
(28, 'IES FRAY SAN MARTIN DE PORRES LLACHON', 3),
(29, 'IES JOSE ABELARDO QUIÑONES CCOTOS', 3),
(30, 'IES JOSE OLAYA BALANDRA ESCALLANI', 3),
(31, 'IES ISAÑURA', 3),
(32, 'IES JOSE CARLOS MARIATEGUI CAPACHICA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jurado`
--

CREATE TABLE `jurado` (
  `id` int(11) NOT NULL,
  `nombre` char(100) DEFAULT NULL,
  `apellido` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jurado`
--

INSERT INTO `jurado` (`id`, `nombre`, `apellido`) VALUES
(1, 'Jose', 'Puma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id` int(11) NOT NULL,
  `institucion_id` int(11) DEFAULT NULL,
  `criterio_1` decimal(5,2) DEFAULT NULL,
  `criterio_2` decimal(5,2) DEFAULT NULL,
  `criterio_3` decimal(5,2) DEFAULT NULL,
  `criterio_4` decimal(5,2) DEFAULT NULL,
  `criterio_5` decimal(5,2) DEFAULT NULL,
  `total` decimal(6,2) DEFAULT NULL,
  `jurado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `nombre` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`id`, `nombre`) VALUES
(1, 'Inicial'),
(2, 'Primaria'),
(3, 'Secundaria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jurado`
--
ALTER TABLE `jurado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `criterio`
--
ALTER TABLE `criterio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `jurado`
--
ALTER TABLE `jurado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
