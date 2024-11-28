-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 17:44:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autenticarsedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`) VALUES
(1, 'lucas', '$2y$10$VYbVXh6tR1KJG8jlR1UNlur93m06NPYd9uv0HuDbq.giT5RhMWeTi'),
(2, 'javier', '$2y$10$njSiD3WtSZmowpVfFWmoaOoaRTDwTDBS//Cpzr.TZ/VEW5pv0MCn6'),
(3, 'alexander', '$2y$10$51pOYErja9V9K9tF4skiseKEJZqho/Pi7b7vaXr45sqcD7UJl1c/y'),
(4, 'pepito', '$2y$10$gmnSNcakWqIEAy//Srz5netNT456Qw8zOoNoZcO6tfwIW28kxXnNi'),
(7, 'maria', '$2y$10$oZ6F1WX6cNC49ed9sVl40ezuhQXELBcgHAy.oCbI6AfpFG//GRV7S'),
(8, 'alejandra', '$2y$10$tBSGOweOREP.oWXxaQgULeoyj53pKfc0zWvoWPzwWvEOT71q/1rhO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
