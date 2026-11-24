-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 15:51:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estacion`
--

CREATE TABLE `tb_estacion` (
  `id_estacion` int(11) NOT NULL,
  `ubicacion` varchar(30) DEFAULT NULL,
  `tipo_estacion` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_transmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estacion`
--

INSERT INTO `tb_estacion` (`id_estacion`, `ubicacion`, `tipo_estacion`, `nombre`, `id_transmilenio`) VALUES
(1, 'Calle 100', 'Intermedia', 'Calle 100', 1),
(2, 'Autopista Sur', 'Portal', 'Portal Sur', 2),
(3, 'Calle 26', 'Intermedia', 'Ciudad Universitaria', 3),
(4, 'Avenida 68', 'Sencilla', 'Avenida 68', 4),
(5, 'Carrera 7', 'Sencilla', 'Museo Nacional', 5),
(6, 'Calle 80', 'Portal', 'Portal 80', 6),
(7, 'Avenida Americas', 'Portal', 'Portal Americas', 7),
(8, 'Avenida Suba', 'Portal', 'Portal Suba', 8),
(9, 'Usme', 'Portal', 'Portal Usme', 9),
(10, 'Soacha', 'Intermedia', 'San Mateo', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD PRIMARY KEY (`id_estacion`),
  ADD KEY `fk_transmilenio_estacion` (`id_transmilenio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD CONSTRAINT `fk_transmilenio_estacion` FOREIGN KEY (`id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
