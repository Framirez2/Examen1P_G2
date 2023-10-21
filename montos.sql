-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 22:31:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_1p`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montos`
--

CREATE TABLE `montos` (
  `IdPago` int(40) NOT NULL,
  `IdCliente` int(40) NOT NULL,
  `Cuota` int(40) NOT NULL,
  `Monto` decimal(40,0) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  `Pago_Fecha_R` date DEFAULT NULL,
  `Estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `montos`
--

INSERT INTO `montos` (`IdPago`, `IdCliente`, `Cuota`, `Monto`, `Fecha_Pago`, `Pago_Fecha_R`, `Estado`) VALUES
(1, 1001, 1, 200, '2023-10-26', NULL, 'P'),
(2, 1002, 1, 400, '2023-11-14', NULL, 'P'),
(3, 1001, 2, 300, '2023-11-12', NULL, 'P');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `montos`
--
ALTER TABLE `montos`
  ADD PRIMARY KEY (`IdPago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `montos`
--
ALTER TABLE `montos`
  MODIFY `IdPago` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
