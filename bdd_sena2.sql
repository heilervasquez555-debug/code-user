-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 22:16:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_sena2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_admin`, `documento`, `telefono_ad`, `dependencia`) VALUES
(1, 'Ana Martinez', 1024567891, 3114567891, 'Coordinacion'),
(2, 'Luis Fernandez', 1024567892, 3114567892, 'Secretaria'),
(3, 'Paula Sanchez', 1024567893, 3114567893, 'Bienestar'),
(4, 'David Moreno', 1024567894, 3114567894, 'Direccion'),
(5, 'Valentina Rojas', 1024567895, 3114567895, 'Archivo'),
(6, 'Jorge Ramirez', 1024567896, 3114567896, 'Coordinacion'),
(7, 'Natalia Castro', 1024567897, 3114567897, 'Secretaria'),
(8, 'Felipe Torres', 1024567898, 3114567898, 'Bienestar'),
(9, 'Isabella Gomez', 1024567899, 3114567899, 'Direccion'),
(10, 'Sebastian Diaz', 1024567800, 3114567800, 'Archivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre_ap` varchar(50) DEFAULT NULL,
  `tipo_doc` varchar(12) DEFAULT NULL,
  `no_doc` int(11) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_doc`, `no_doc`, `telefono`, `id_ficha`) VALUES
(1, 'Daniel Sanchez', 'CC', 1001234567, 3201234567, 1),
(2, 'Laura Martinez', 'TI', 1001234568, 3201234568, 1),
(3, 'Andres Gomez', 'TI', 1001234569, 3201234569, 2),
(4, 'Sofia Ramirez', 'CC', 1001234570, 3201234570, 2),
(5, 'Juan Torres', 'TI', 1001234571, 3201234571, 3),
(6, 'Camila Perez', 'TI', 1001234572, 3201234572, 3),
(7, 'Miguel Castro', 'CC', 1001234573, 3201234573, 4),
(8, 'Valeria Rojas', 'TI', 1001234574, 3201234574, 5),
(9, 'Samuel Herrera', 'TI', 1001234575, 3201234575, 6),
(10, 'Isabella Diaz', 'CC', 1001234576, 3201234576, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(11) NOT NULL,
  `competencia` varchar(12) DEFAULT NULL,
  `cod_competencia` varchar(12) DEFAULT NULL,
  `descripción` varchar(50) DEFAULT NULL,
  `duración` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_competencia`, `descripción`, `duración`) VALUES
(1, 'Finanzas', '37888', 'Reconocer recursos financieros', 120),
(2, 'Documentos', '38415', 'Elaborar documentos', 100),
(3, 'Clientes', '38426', 'Atender clientes', 80),
(4, 'Correspond.', '39031', 'Tramitar correspondencia', 90),
(5, 'Emprender', '39811', 'Fomentar cultura emprendedora', 100),
(6, 'Ofimatica', '39812', 'Manejar herramientas ofimaticas', 80),
(7, 'Archivo', '39813', 'Organizar archivos', 90),
(8, 'Informatica', '39814', 'Aplicar herramientas digitales', 120),
(9, 'Comunicacion', '39815', 'Desarrollar comunicacion efectiva', 60),
(10, 'Servicio', '39816', 'Gestionar servicio al cliente', 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `numero_ficha` int(11) DEFAULT NULL,
  `programa` varchar(30) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `id_instructor` int(11) DEFAULT NULL,
  `id_competencia` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `fecha_inicio`, `fecha_final`, `numero_ficha`, `programa`, `estado`, `id_instructor`, `id_competencia`, `id_admin`) VALUES
(1, '2026-01-15', '2026-12-15', 2900001, 'Asistencia Administrativa', 'Activa', 1, 1, 1),
(2, '2026-02-01', '2026-12-20', 2900002, 'Contabilidad', 'Activa', 2, 2, 2),
(3, '2026-01-20', '2026-11-20', 2900003, 'Sistemas', 'Activa', 3, 3, 3),
(4, '2026-03-01', '2026-12-30', 2900004, 'Gestion Documental', 'Activa', 4, 4, 4),
(5, '2026-02-10', '2026-12-10', 2900005, 'Emprendimiento', 'Activa', 5, 5, 5),
(6, '2026-01-25', '2026-11-25', 2900006, 'Asistencia Administrativa', 'Activa', 6, 6, 6),
(7, '2026-03-05', '2026-12-05', 2900007, 'Contabilidad', 'Activa', 7, 7, 7),
(8, '2026-02-15', '2026-12-15', 2900008, 'Sistemas', 'Activa', 8, 8, 8),
(9, '2026-01-10', '2026-11-10', 2900009, 'Gestion Documental', 'Activa', 9, 9, 9),
(10, '2026-03-10', '2026-12-20', 2900010, 'Emprendimiento', 'Activa', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructor`
--

CREATE TABLE `tb_instructor` (
  `id_instructor` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo_doc` varchar(12) DEFAULT NULL,
  `no_doc` int(11) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructor`
--

INSERT INTO `tb_instructor` (`id_instructor`, `nombre`, `tipo_doc`, `no_doc`, `especialidad`, `correo`, `telefono`) VALUES
(1, 'Carlos Ramirez', 'CC', 1023456789, 'Administracion', 'carlos@gmail.com', 3104567891),
(2, 'Maria Rodriguez', 'CC', 1023456790, 'Contabilidad', 'maria@gmail.com', 3104567892),
(3, 'Juan Martinez', 'CC', 1023456791, 'Informatica', 'juan@gmail.com', 3104567893),
(4, 'Laura Gomez', 'CC', 1023456792, 'Gestion documental', 'laura@gmail.com', 3104567894),
(5, 'Andres Torres', 'CC', 1023456793, 'Emprendimiento', 'andres@gmail.com', 3104567895),
(6, 'Diana Perez', 'CC', 1023456794, 'Administracion', 'diana@gmail.com', 3104567896),
(7, 'Pedro Castro', 'CC', 1023456795, 'Contabilidad', 'pedro@gmail.com', 3104567897),
(8, 'Sofia Herrera', 'CC', 1023456796, 'Informatica', 'sofia@gmail.com', 3104567898),
(9, 'Miguel Lopez', 'CC', 1023456797, 'Gestion documental', 'miguel@gmail.com', 3104567899),
(10, 'Camila Moreno', 'CC', 1023456798, 'Emprendimiento', 'camila@gmail.com', 3104567800);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_instructor` (`id_instructor`),
  ADD KEY `fk_ficha_competencia` (`id_competencia`),
  ADD KEY `fk_ficha_administrativos` (`id_admin`);

--
-- Indices de la tabla `tb_instructor`
--
ALTER TABLE `tb_instructor`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_administrativos` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_competencia` FOREIGN KEY (`id_competencia`) REFERENCES `tb_competencia` (`id_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `tb_instructor` (`id_instructor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
