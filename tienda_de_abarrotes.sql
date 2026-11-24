-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 15:49:28
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
-- Base de datos: `tienda_de_abarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `NO_doc` varchar(20) DEFAULT NULL,
  `tipo_doc` varchar(20) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nombre`, `NO_doc`, `tipo_doc`, `telefono`, `direccion`, `id_proveedor`) VALUES
(1, 'Juan Perez', '1001001001', 'CC', 3001234567, 'Soacha', NULL),
(2, 'Maria Lopez', '1001001002', 'CC', 3002345678, 'Bogota', NULL),
(3, 'Carlos Gomez', '1001001003', 'CC', 3003456789, 'Mosquera', NULL),
(4, 'Laura Rodriguez', '1001001004', 'CC', 3004567890, 'Soacha', NULL),
(5, 'Andres Martinez', '1001001005', 'CC', 3005678901, 'Bogota', NULL),
(6, 'Camila Torres', '1001001006', 'CC', 3006789012, 'Madrid', NULL),
(7, 'Pedro Ramirez', '1001001007', 'CC', 3007890123, 'Soacha', NULL),
(8, 'Sofia Hernandez', '1001001008', 'CC', 3008901234, 'Bogota', NULL),
(9, 'Daniel Castro', '1001001009', 'CC', 3009012345, 'Funza', NULL),
(10, 'Valentina Diaz', '1001001010', 'CC', 3010123456, 'Soacha', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_factura`
--

CREATE TABLE `tb_factura` (
  `id_factura` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_factura`
--

INSERT INTO `tb_factura` (`id_factura`, `total`, `fecha_venta`, `id_tienda`, `id_producto`) VALUES
(1, 4500.00, '2026-11-01', NULL, NULL),
(2, 7000.00, '2026-11-02', NULL, NULL),
(3, 7500.00, '2026-11-03', NULL, NULL),
(4, 8000.00, '2026-11-04', NULL, NULL),
(5, 10000.00, '2026-11-05', NULL, NULL),
(6, 16000.00, '2026-11-06', NULL, NULL),
(7, 9000.00, '2026-11-07', NULL, NULL),
(8, 13000.00, '2026-11-08', NULL, NULL),
(9, 7500.00, '2026-11-09', NULL, NULL),
(10, 11200.00, '2026-11-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`id_producto`, `nombre`, `categoria`, `precio`, `cantidad_producto`, `id_tienda`) VALUES
(1, 'Leche Alpina', 'Lacteos', 4500.00, 50, NULL),
(2, 'Gaseosa Postobon', 'Bebidas', 3500.00, 40, NULL),
(3, 'Chocolate Nestle', 'Dulces', 2500.00, 60, NULL),
(4, 'Coca Cola', 'Bebidas', 4000.00, 45, NULL),
(5, 'Pan Bimbo', 'Panaderia', 5000.00, 30, NULL),
(6, 'Queso Colanta', 'Lacteos', 8000.00, 25, NULL),
(7, 'Pasta Doria', 'Granos', 3000.00, 70, NULL),
(8, 'Papel Familia', 'Aseo', 6500.00, 35, NULL),
(9, 'Chocoramo', 'Dulces', 2500.00, 55, NULL),
(10, 'Papas Margarita', 'Snacks', 2800.00, 65, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedor`
--

CREATE TABLE `tb_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_proveedor`
--

INSERT INTO `tb_proveedor` (`id_proveedor`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'Alpina', 3104567890, 'Bogota'),
(2, 'Postobon', 3114567890, 'Medellin'),
(3, 'Nestle', 3124567890, 'Bogota'),
(4, 'Coca Cola', 3134567890, 'Cali'),
(5, 'Bimbo', 3144567890, 'Bogota'),
(6, 'Colanta', 3154567890, 'Medellin'),
(7, 'Doria', 3164567890, 'Bogota'),
(8, 'Familia', 3174567890, 'Cali'),
(9, 'Ramo', 3184567890, 'Bogota'),
(10, 'Frito Lay', 3194567890, 'Medellin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tienda`
--

CREATE TABLE `tb_tienda` (
  `id_tienda` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tienda`
--

INSERT INTO `tb_tienda` (`id_tienda`, `nombre`, `direccion`, `horario`) VALUES
(1, 'Abarrotes El Sol', 'Calle 10 # 5-20', '6AM-9PM'),
(2, 'La Economia', 'Carrera 15 # 8-30', '7AM-8PM'),
(3, 'Tienda Central', 'Calle 20 # 10-15', '6AM-10PM'),
(4, 'El Ahorro', 'Carrera 8 # 12-40', '7AM-9PM'),
(5, 'Mi Canasta', 'Calle 25 # 6-18', '6AM-8PM'),
(6, 'Super Abarrotes', 'Carrera 20 # 15-10', '6AM-10PM'),
(7, 'La Esquina', 'Calle 30 # 9-25', '7AM-9PM'),
(8, 'El Mercadito', 'Carrera 12 # 18-35', '6AM-9PM'),
(9, 'Don Pedro', 'Calle 40 # 7-12', '7AM-8PM'),
(10, 'Abarrotes San Jose', 'Carrera 5 # 20-16', '6AM-10PM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_proveedor_cliente` (`id_proveedor`);

--
-- Indices de la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `fk_tienda_factura` (`id_tienda`),
  ADD KEY `fk_producto_factura` (`id_producto`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_tienda_producto` (`id_tienda`);

--
-- Indices de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tb_tienda`
--
ALTER TABLE `tb_tienda`
  ADD PRIMARY KEY (`id_tienda`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD CONSTRAINT `fk_proveedor_cliente` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedor` (`id_proveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD CONSTRAINT `fk_producto_factura` FOREIGN KEY (`id_producto`) REFERENCES `tb_producto` (`id_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tienda_factura` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD CONSTRAINT `fk_tienda_producto` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
