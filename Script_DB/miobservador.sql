-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2022 a las 19:20:16
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miobservador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `DNI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `DNI`) VALUES
(1, 'Marysel', 'Romero', '30124703'),
(2, 'Salvador', 'Casas', '40246838'),
(3, 'Paul', 'Duarte', '37968992'),
(4, 'Juan', 'Zalazar', '24597515');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int NOT NULL,
  `codigo` int NOT NULL,
  `articulo` varchar(45) NOT NULL,
  `precio` float DEFAULT NULL,
  `articulocol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int NOT NULL,
  `nombreCiudad` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idProvincia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `nombreCiudad`, `idProvincia`) VALUES
(51, 'Achiras', 81),
(52, 'Adelia Maria', 81),
(53, 'Agua de Oro', 81),
(54, 'Alcira Gigena', 81),
(55, 'Aldea Santa Maria', 81),
(56, 'Alejandro Roca', 81),
(57, 'Alejo Ledesma', 81),
(58, 'Alicia', 81),
(59, 'Almafuerte', 81),
(60, 'Alpa Corral', 81),
(61, 'Alta Gracia', 81),
(62, 'Alto Alegre', 81),
(63, 'Alto de Los Quebrachos', 81),
(64, 'Altos de Chipion', 81),
(65, 'Amboy', 81),
(66, 'Ambul', 81),
(67, 'Ana Zumaran', 81),
(68, 'Anisacate', 81),
(69, 'Arguello', 81),
(70, 'Arias', 81),
(71, 'Arroyito', 81),
(72, 'Arroyo Algodon', 81),
(73, 'Arroyo Cabral', 81),
(74, 'Arroyo Los Patos', 81),
(75, 'Assunta', 81),
(76, 'Atahona', 81),
(77, 'Ausonia', 81),
(78, 'Avellaneda', 81),
(79, 'Ballesteros', 81),
(80, 'Ballesteros Sud', 81),
(81, 'Balnearia', 81),
(82, 'Bañado de Soto', 81),
(83, 'Bell Ville', 81),
(84, 'Bengolea', 81),
(85, 'Benjamin Gould', 81),
(86, 'Berrotaran', 81),
(87, 'Bialet Masse', 81),
(88, 'Bouwer', 81),
(89, 'Brinkmann', 81),
(90, 'Buchardo', 81),
(91, 'Bulnes', 81),
(92, 'Cabalango', 81),
(93, 'Calamuchita', 81),
(94, 'Calchin', 81),
(95, 'Calchin Oeste', 81),
(96, 'Calmayo', 81),
(97, 'Camilo Aldao', 81),
(98, 'Caminiaga', 81),
(99, 'Cañada de Luque', 81),
(100, 'Cañada de Machado', 81),
(101, 'Cañada de Rio Pinto', 81),
(102, 'Cañada del Sauce', 81),
(103, 'Canals', 81),
(104, 'Candelaria Sud', 81),
(105, 'Capilla de Remedios', 81),
(106, 'Capilla de Siton', 81),
(107, 'Capilla del Carmen', 81),
(108, 'Capilla del Monte', 81),
(109, 'Capital', 81),
(110, 'Capitan Gral B. O´Higgins', 81),
(111, 'Carnerillo', 81),
(112, 'Carrilobo', 81),
(113, 'Casa Grande', 81),
(114, 'Cavanagh', 81),
(115, 'Cerro Colorado', 81),
(116, 'Chaján', 81),
(117, 'Chalacea', 81),
(118, 'Chañar Viejo', 81),
(119, 'Chancaní', 81),
(120, 'Charbonier', 81),
(121, 'Charras', 81),
(122, 'Chazón', 81),
(123, 'Chilibroste', 81),
(124, 'Chucul', 81),
(125, 'Chuña', 81),
(126, 'Chuña Huasi', 81),
(127, 'Churqui Cañada', 81),
(128, 'Cienaga Del Coro', 81),
(129, 'Cintra', 81),
(130, 'Col. Almada', 81),
(131, 'Col. Anita', 81),
(132, 'Col. Barge', 81),
(133, 'Col. Bismark', 81),
(134, 'Col. Bremen', 81),
(135, 'Col. Caroya', 81),
(136, 'Col. Italiana', 81),
(137, 'Col. Iturraspe', 81),
(138, 'Col. Las Cuatro Esquinas', 81),
(139, 'Col. Las Pichanas', 81),
(140, 'Col. Marina', 81),
(141, 'Col. Prosperidad', 81),
(142, 'Col. San Bartolome', 81),
(143, 'Col. San Pedro', 81),
(144, 'Col. Tirolesa', 81),
(145, 'Col. Vicente Aguero', 81),
(146, 'Col. Videla', 81),
(147, 'Col. Vignaud', 81),
(148, 'Col. Waltelina', 81),
(149, 'Colazo', 81),
(150, 'Comechingones', 81),
(151, 'Conlara', 81),
(152, 'Copacabana', 81),
(153, 'Coronel Baigorria', 81),
(154, 'Coronel Moldes', 81),
(155, 'Corral de Bustos', 81),
(156, 'Corralito', 81),
(157, 'Cosquín', 81),
(158, 'Costa Sacate', 81),
(159, 'Cruz Alta', 81),
(160, 'Cruz de Caña', 81),
(161, 'Cruz del Eje', 81),
(162, 'Cuesta Blanca', 81),
(163, 'Dean Funes', 81),
(164, 'Del Campillo', 81),
(165, 'Despeñaderos', 81),
(166, 'Devoto', 81),
(167, 'Diego de Rojas', 81),
(168, 'Dique Chico', 81),
(169, 'El Arañado', 81),
(170, 'El Brete', 81),
(171, 'El Chacho', 81),
(172, 'El Crispín', 81),
(173, 'El Fortín', 81),
(174, 'El Manzano', 81),
(175, 'El Rastreador', 81),
(176, 'El Rodeo', 81),
(177, 'El Tío', 81),
(178, 'Elena', 81),
(179, 'Embalse', 81),
(180, 'Esquina', 81),
(181, 'Estación Gral. Paz', 81),
(182, 'Estación Juárez Celman', 81),
(183, 'Estancia de Guadalupe', 81),
(184, 'Estancia Vieja', 81),
(185, 'Etruria', 81),
(186, 'Eufrasio Loza', 81),
(187, 'Falda del Carmen', 81),
(188, 'Freyre', 81),
(189, 'Gral. Baldissera', 81),
(190, 'Gral. Cabrera', 81),
(191, 'Gral. Deheza', 81),
(192, 'Gral. Fotheringham', 81),
(193, 'Gral. Levalle', 81),
(194, 'Gral. Roca', 81),
(195, 'Guanaco Muerto', 81);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` int NOT NULL,
  `nombre` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(320) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idCuentaOrigen` int NOT NULL,
  `idCuentaEstado` int NOT NULL,
  `idCiudad` int NOT NULL,
  `idTipoCuenta` int DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `documento` int DEFAULT '1000000',
  `id_cuenta` int NOT NULL,
  `fecha_nacimiento` varchar(255) DEFAULT NULL,
  `id_ciudad` int DEFAULT NULL,
  `id_cuenta_estado` int DEFAULT NULL,
  `id_cuenta_origen` int DEFAULT NULL,
  `id_tipo_cuenta` int DEFAULT NULL,
  `telefono` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`idCuenta`, `nombre`, `apellido`, `email`, `password`, `idCuentaOrigen`, `idCuentaEstado`, `idCiudad`, `idTipoCuenta`, `domicilio`, `documento`, `id_cuenta`, `fecha_nacimiento`, `id_ciudad`, `id_cuenta_estado`, `id_cuenta_origen`, `id_tipo_cuenta`, `telefono`) VALUES
(12, 'Lorena', 'Martinez', 'lore@gmail.com', '123456', 1, 1, 109, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Pablo', 'Tolozsa', 'toloz@gmail.com', '123456789', 1, 1, 59, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Samuel', 'Jackson', 'jackson@hotmail.com', '123456', 1, 1, 58, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Salvador', 'Casas', 'salvadorcasas11@gmail.com', '123455', 1, 1, 109, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Paul', 'Duarte', 'paul_d18@hotmail.com', '1234', 1, 1, 195, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Maximo', 'Romero', 'maryselr@gmail.com', '12345678', 1, 1, 68, 1, 'General Paz 88', 1000000, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_estado`
--

CREATE TABLE `cuenta_estado` (
  `idCuentaEstado` int NOT NULL,
  `estado` varchar(25) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta_estado`
--

INSERT INTO `cuenta_estado` (`idCuentaEstado`, `estado`, `descripcion`) VALUES
(1, 'Inactiva', 'El usuario no ha confirmado la cuenta'),
(2, 'Activa', 'Cuenta activa'),
(3, 'Bloqueada', 'Cuenta con problemas de password');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_origen`
--

CREATE TABLE `cuenta_origen` (
  `idCuentaOrigen` int NOT NULL,
  `origen` varchar(25) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta_origen`
--

INSERT INTO `cuenta_origen` (`idCuentaOrigen`, `origen`, `descripcion`) VALUES
(1, 'Google', 'Cuenta registrada con datos de Google'),
(2, 'Facebook', 'Cuenta registrada con datos de Google'),
(3, 'miobservador', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_tipo`
--

CREATE TABLE `cuenta_tipo` (
  `idTipoCuenta` int NOT NULL,
  `TipoCuenta` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta_tipo`
--

INSERT INTO `cuenta_tipo` (`idTipoCuenta`, `TipoCuenta`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `idEvento` int NOT NULL,
  `inicioEvento` datetime DEFAULT NULL,
  `finEvento` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `idRegistro` int NOT NULL,
  `idAdvertencia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_advertencia`
--

CREATE TABLE `evento_advertencia` (
  `idAdvertencia` int NOT NULL,
  `mensaje` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_registro`
--

CREATE TABLE `evento_registro` (
  `idRegistro` int NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `coordenadas` varchar(50) DEFAULT NULL,
  `fechayhora` datetime DEFAULT NULL,
  `idCuenta` int NOT NULL,
  `idTipoEvento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_tipo`
--

CREATE TABLE `evento_tipo` (
  `idTipoEvento` int NOT NULL,
  `nombreEvento` varchar(25) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `NroFactura` int NOT NULL,
  `idCuentafactura` int DEFAULT NULL,
  `idarticulofactura` int DEFAULT NULL,
  `total` float DEFAULT NULL,
  `Subtotal` float DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `fechaFactura` date DEFAULT NULL,
  `vendedor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapago`
--

CREATE TABLE `formapago` (
  `idFormaPago` int NOT NULL,
  `FormaPago` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int NOT NULL,
  `NroPedido` int NOT NULL,
  `FechaPedido` datetime NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `idCuentaPedido` int DEFAULT NULL,
  `idArticuloPedido` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `idProvincia` int NOT NULL,
  `nombreProvincia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`idProvincia`, `nombreProvincia`) VALUES
(76, 'Buenos Aires-GBA'),
(77, 'Capital Federal'),
(78, 'Catamarca'),
(79, 'Chaco'),
(80, 'Chubut'),
(81, 'Córdoba'),
(82, 'Corrientes'),
(83, 'Entre Ríos'),
(84, 'Formosa'),
(85, 'Jujuy'),
(86, 'La Pampa'),
(87, 'La Rioja'),
(88, 'Mendoza'),
(89, 'Misiones'),
(90, 'Neuquén'),
(91, 'Río Negro'),
(92, 'Salta'),
(93, 'San Juan'),
(94, 'San Luis'),
(95, 'Santa Cruz'),
(96, 'Santa Fe'),
(97, 'Santiago del Estero'),
(98, 'Tierra del Fuego'),
(99, 'Tucumán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `cantidad` int NOT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `idArticuloStock` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomprobante`
--

CREATE TABLE `tipocomprobante` (
  `idtipoComprobante` int NOT NULL,
  `tipoComprobante` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `CIUDAD_idProvincia` (`idProvincia`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`),
  ADD KEY `CUENTA_idCuentaOrigen` (`idCuentaOrigen`),
  ADD KEY `CUENTA_idCuentaEstado` (`idCuentaEstado`),
  ADD KEY `CUENTA_idCiudad` (`idCiudad`),
  ADD KEY `CUENTA_idTipoCuenta_idx` (`idTipoCuenta`),
  ADD KEY `idx_cuenta_idTipoCuenta` (`idTipoCuenta`);

--
-- Indices de la tabla `cuenta_estado`
--
ALTER TABLE `cuenta_estado`
  ADD PRIMARY KEY (`idCuentaEstado`);

--
-- Indices de la tabla `cuenta_origen`
--
ALTER TABLE `cuenta_origen`
  ADD PRIMARY KEY (`idCuentaOrigen`);

--
-- Indices de la tabla `cuenta_tipo`
--
ALTER TABLE `cuenta_tipo`
  ADD KEY `idx_cuenta_tipo_idTipoCuenta` (`idTipoCuenta`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idEvento`),
  ADD KEY `EVENTO_idRegistro` (`idRegistro`),
  ADD KEY `EVENTO_idAdvertencia` (`idAdvertencia`);

--
-- Indices de la tabla `evento_advertencia`
--
ALTER TABLE `evento_advertencia`
  ADD PRIMARY KEY (`idAdvertencia`);

--
-- Indices de la tabla `evento_registro`
--
ALTER TABLE `evento_registro`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `EVENTO_REGISTRO_idCuenta` (`idCuenta`),
  ADD KEY `EVENTO_REGISTRO_idTipoEvento` (`idTipoEvento`);

--
-- Indices de la tabla `evento_tipo`
--
ALTER TABLE `evento_tipo`
  ADD PRIMARY KEY (`idTipoEvento`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`NroFactura`),
  ADD KEY `idcuentafactura_idx` (`idCuentafactura`),
  ADD KEY `idaarticulofactura_idx` (`idarticulofactura`);

--
-- Indices de la tabla `formapago`
--
ALTER TABLE `formapago`
  ADD PRIMARY KEY (`idFormaPago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCuentaPedido_idx` (`idCuentaPedido`),
  ADD KEY `idArticuloPedido_idx` (`idArticuloPedido`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProvincia`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`cantidad`),
  ADD KEY `idArticuloStock_idx` (`idArticuloStock`);

--
-- Indices de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
  ADD PRIMARY KEY (`idtipoComprobante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `idCuenta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `cuenta_estado`
--
ALTER TABLE `cuenta_estado`
  MODIFY `idCuentaEstado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cuenta_origen`
--
ALTER TABLE `cuenta_origen`
  MODIFY `idCuentaOrigen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `idEvento` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_advertencia`
--
ALTER TABLE `evento_advertencia`
  MODIFY `idAdvertencia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_registro`
--
ALTER TABLE `evento_registro`
  MODIFY `idRegistro` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_tipo`
--
ALTER TABLE `evento_tipo`
  MODIFY `idTipoEvento` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formapago`
--
ALTER TABLE `formapago`
  MODIFY `idFormaPago` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `idProvincia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
  MODIFY `idtipoComprobante` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `CIUDAD_idProvincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `CUENTA_idCiudad` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`),
  ADD CONSTRAINT `CUENTA_idCuentaEstado` FOREIGN KEY (`idCuentaEstado`) REFERENCES `cuenta_estado` (`idCuentaEstado`),
  ADD CONSTRAINT `CUENTA_idCuentaOrigen` FOREIGN KEY (`idCuentaOrigen`) REFERENCES `cuenta_origen` (`idCuentaOrigen`),
  ADD CONSTRAINT `CUENTA_idTipoCuenta` FOREIGN KEY (`idTipoCuenta`) REFERENCES `cuenta_tipo` (`idTipoCuenta`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `EVENTO_idAdvertencia` FOREIGN KEY (`idAdvertencia`) REFERENCES `evento_advertencia` (`idAdvertencia`),
  ADD CONSTRAINT `EVENTO_idRegistro` FOREIGN KEY (`idRegistro`) REFERENCES `evento_registro` (`idRegistro`);

--
-- Filtros para la tabla `evento_registro`
--
ALTER TABLE `evento_registro`
  ADD CONSTRAINT `EVENTO_REGISTRO_idCuenta` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`),
  ADD CONSTRAINT `EVENTO_REGISTRO_idTipoEvento` FOREIGN KEY (`idTipoEvento`) REFERENCES `evento_tipo` (`idTipoEvento`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `idaarticulofactura` FOREIGN KEY (`idarticulofactura`) REFERENCES `articulo` (`idarticulo`),
  ADD CONSTRAINT `idcuentafactura` FOREIGN KEY (`idCuentafactura`) REFERENCES `cuenta` (`idCuenta`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `idArticuloPedido` FOREIGN KEY (`idArticuloPedido`) REFERENCES `articulo` (`idarticulo`),
  ADD CONSTRAINT `idCuentaPedido` FOREIGN KEY (`idCuentaPedido`) REFERENCES `cuenta` (`idCuenta`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `idArticuloStock` FOREIGN KEY (`idArticuloStock`) REFERENCES `articulo` (`idarticulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
