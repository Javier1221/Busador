-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 01:04:00
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `busqueda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `userid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `apellido` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`userid`, `id`, `nombre`, `apellido`) VALUES
(2230, 8, 'Javier', 'M'),
(123, 1, 'Eduardo', 'Gonzalez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `curso` text NOT NULL,
  `duración` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `userid`, `curso`, `duración`) VALUES
(1, 2230, 'Piñatas', '3 horas'),
(2, 2230, 'Danza', '5 horas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course`
--

CREATE TABLE `mdl_course` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `shortname` text NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mdl_course`
--

INSERT INTO `mdl_course` (`id`, `fullname`, `shortname`, `summary`) VALUES
(6, 'Turismo Regional ', 'TR', 'curso de turismo'),
(17, 'Atencíon al cliente', 'AT', 'atendiendo curso'),
(24, 'Salón de docentes ', 'SD', 'datos sobre los docentes '),
(12, 'Curso de Power Bi', 'PB', 'probando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_enrol`
--

CREATE TABLE `mdl_enrol` (
  `id` int(200) NOT NULL,
  `courseid` int(200) NOT NULL,
  `roleid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mdl_enrol`
--

INSERT INTO `mdl_enrol` (`id`, `courseid`, `roleid`) VALUES
(46, 17, 5),
(13, 6, 5),
(102, 24, 5),
(19, 12, 5),
(10, 12, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user`
--

CREATE TABLE `mdl_user` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mdl_user`
--

INSERT INTO `mdl_user` (`id`, `username`, `idnumber`, `firstname`, `lastname`, `email`) VALUES
(77, 'jamarin', '8-951-574', 'Javier', 'Marin', 'gonzalezamistad0220@gmail.com'),
(8, '8-935-2190', '8-935-2190', 'Lia', 'Valdes', 'liavalds@gmail.com'),
(57, '8-954-2460', '8-954-2460', 'Luis', 'Bernal', 'luis020203@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_enrolments`
--

CREATE TABLE `mdl_user_enrolments` (
  `id` int(200) NOT NULL,
  `enrolid` int(200) NOT NULL,
  `userid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mdl_user_enrolments`
--

INSERT INTO `mdl_user_enrolments` (`id`, `enrolid`, `userid`) VALUES
(186, 46, 77),
(190, 13, 77),
(258, 102, 77),
(61, 19, 8),
(1357, 10, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
