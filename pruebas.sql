-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2017 a las 22:47:42
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellidos` text NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `Genero` text NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `localidad` text NOT NULL,
  `CP` int(5) NOT NULL,
  `Provincia` text NOT NULL,
  `Telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `Nombre`, `Apellidos`, `DNI`, `Genero`, `Direccion`, `localidad`, `CP`, `Provincia`, `Telefono`) VALUES
(1, 'angel@gmail.com', '12345', '', '', '', '', '', '', 0, '', 0),
(2, 'maria@gmail.com', '54321', '', '', '', '', '', '', 0, '', 0),
(3, 'pedro@gmail.com', '12345', 'pedro', 'martinez', '07486492z', 'HOMBRE', 'tenerias 49', 'Corral de Almaguer', 45880, 'Toledo', 620849489),
(5, 'maria@gmail.com', '147852', 'maria', 'gutierrez', '70356324s', 'MUJER', 'republica independiente, 30', 'ikea', 28340, 'madrid', 620489487);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
