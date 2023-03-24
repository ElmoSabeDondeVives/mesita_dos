-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-03-2023 a las 14:33:42
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mesitabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes_salida`
--

CREATE TABLE `almacenes_salida` (
  `id_almacen` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_recurso_sede` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `almacen_salida_cantidad` decimal(10,2) NOT NULL,
  `almacen_salida_fecha_registro` datetime NOT NULL,
  `almacen_salida_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `id_persona_turno` int(11) NOT NULL,
  `asistencia_fecha` date NOT NULL,
  `asistencia_hora` time NOT NULL,
  `asistencia_hora_salida` time DEFAULT NULL COMMENT 'Para registrar Salida',
  `asistencia_valor` int(11) NOT NULL,
  `asistencia_horas` int(11) NOT NULL DEFAULT '0',
  `asistencia_observacion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asistencia_tipo` tinyint(2) DEFAULT NULL COMMENT '0 entrada, 1 salida',
  `asistencia_estado` tinyint(4) NOT NULL,
  `asistencia_proyectada` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `id_persona_turno`, `asistencia_fecha`, `asistencia_hora`, `asistencia_hora_salida`, `asistencia_valor`, `asistencia_horas`, `asistencia_observacion`, `asistencia_tipo`, `asistencia_estado`, `asistencia_proyectada`) VALUES
(1, 1, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(2, 1, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(3, 1, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(4, 1, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(5, 1, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(6, 1, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(7, 1, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(8, 1, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(9, 1, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(10, 1, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(11, 1, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(12, 1, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(13, 1, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(14, 1, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(15, 2, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(16, 2, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(17, 2, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(18, 2, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(19, 2, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(20, 2, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(21, 2, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(22, 2, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(23, 2, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(24, 2, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(25, 2, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(26, 2, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(27, 2, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(28, 2, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(29, 3, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(30, 3, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(31, 3, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(32, 3, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(33, 3, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(34, 3, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(35, 3, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(36, 3, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(37, 3, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(38, 3, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(39, 3, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(40, 3, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(41, 3, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(42, 3, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(43, 4, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(44, 4, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(45, 4, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(46, 4, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(47, 4, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(48, 4, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(49, 4, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(50, 4, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(51, 4, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(52, 4, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(53, 4, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(54, 4, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(55, 4, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(56, 4, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(57, 5, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(58, 5, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(59, 5, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(60, 5, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(61, 5, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(62, 5, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(63, 5, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(64, 5, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(65, 5, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(66, 5, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(67, 5, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(68, 5, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(69, 5, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(70, 5, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(71, 6, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(72, 6, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(73, 6, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(74, 6, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(75, 6, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(76, 6, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(77, 6, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(78, 6, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(79, 6, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(80, 6, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(81, 6, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(82, 6, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(83, 6, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(84, 6, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(85, 7, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(86, 7, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(87, 9, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(88, 9, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(89, 9, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(90, 9, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(91, 9, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(92, 9, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(93, 9, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(94, 9, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(95, 9, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(96, 9, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(97, 9, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(98, 9, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(99, 9, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(100, 9, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(101, 9, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(102, 10, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(103, 10, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(104, 10, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(105, 10, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(106, 10, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(107, 10, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(108, 10, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(109, 10, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(110, 10, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(111, 10, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(112, 10, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(113, 10, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(114, 10, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(115, 10, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(116, 10, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(117, 10, '2021-09-16', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(118, 11, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(119, 15, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(120, 15, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(121, 15, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(122, 15, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(123, 15, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(124, 15, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(125, 15, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(126, 15, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(127, 15, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(128, 15, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(129, 15, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(130, 15, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(131, 15, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(132, 15, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(133, 15, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(134, 15, '2021-09-16', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(135, 16, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(136, 16, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(137, 16, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(138, 16, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(139, 16, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(140, 16, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(141, 16, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(142, 16, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(143, 16, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(144, 16, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(145, 16, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(146, 16, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(147, 16, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(148, 16, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(149, 16, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(150, 16, '2021-09-16', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(151, 18, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(152, 18, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(153, 18, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(154, 18, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(155, 18, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(156, 18, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(157, 18, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(158, 18, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(159, 18, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(160, 18, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(161, 18, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(162, 18, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(163, 18, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(164, 18, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(165, 18, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(166, 18, '2021-09-16', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(167, 19, '2021-09-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(168, 19, '2021-09-02', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(169, 19, '2021-09-03', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(170, 19, '2021-09-04', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(171, 19, '2021-09-05', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(172, 19, '2021-09-06', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(173, 19, '2021-09-07', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(174, 19, '2021-09-08', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(175, 19, '2021-09-09', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(176, 19, '2021-09-10', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(177, 19, '2021-09-11', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(178, 19, '2021-09-12', '00:00:00', NULL, 7, 0, NULL, NULL, 0, 0),
(179, 19, '2021-09-13', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(180, 19, '2021-09-14', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(181, 19, '2021-09-15', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(182, 19, '2021-09-16', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(183, 21, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(184, 24, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(185, 26, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(186, 11, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(187, 15, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(188, 16, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(189, 31, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(190, 19, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(191, 3, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(192, 34, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(193, 35, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(194, 2, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(195, 37, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(196, 6, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(197, 8, '2021-10-01', '00:00:00', NULL, 1, 0, NULL, NULL, 0, 0),
(198, 1, '2021-11-21', '11:46:19', NULL, 10, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_fecha`
--

CREATE TABLE `asistencia_fecha` (
  `id_asistencia_fecha` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_caja_numero` int(11) NOT NULL,
  `caja_fecha` date NOT NULL,
  `id_usuario_apertura` int(11) NOT NULL,
  `caja_apertura` decimal(10,2) NOT NULL,
  `caja_fecha_apertura` datetime NOT NULL,
  `id_usuario_cierre` int(11) DEFAULT NULL,
  `caja_cierre` decimal(10,2) DEFAULT NULL,
  `caja_fecha_cierre` datetime DEFAULT NULL,
  `caja_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `id_turno`, `id_caja_numero`, `caja_fecha`, `id_usuario_apertura`, `caja_apertura`, `caja_fecha_apertura`, `id_usuario_cierre`, `caja_cierre`, `caja_fecha_cierre`, `caja_estado`) VALUES
(1, 1, 1, '2023-03-23', 38, '0.00', '2023-03-23 10:04:35', 38, '0.00', '2023-03-23 16:52:25', 0),
(2, 1, 1, '2023-03-24', 38, '0.00', '2023-03-24 09:19:30', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_numero`
--

CREATE TABLE `caja_numero` (
  `id_caja_numero` int(11) NOT NULL,
  `caja_numero_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `caja_numero_impresora` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caja_numero_fecha` datetime NOT NULL,
  `caja_numero_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `caja_numero`
--

INSERT INTO `caja_numero` (`id_caja_numero`, `caja_numero_nombre`, `caja_numero_impresora`, `caja_numero_fecha`, `caja_numero_estado`) VALUES
(1, 'Caja 1', 'Ticketera', '2021-10-15 09:52:20', 1),
(2, 'Caja 2', 'Ticketera_2', '2021-10-15 09:52:20', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_fecha_registro` datetime NOT NULL,
  `categoria_tipo` tinyint(2) NOT NULL COMMENT '1 resta unsumos y 2 resta almacen',
  `categoria_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria_nombre`, `categoria_fecha_registro`, `categoria_tipo`, `categoria_estado`) VALUES
(6, 'INSUMOS', '2021-05-01 00:00:00', 1, 1),
(9, 'MANTENIMIENTO Y LIMPIEZA', '2021-09-15 00:00:00', 2, 1),
(10, 'COMBUSTIBLE', '2021-09-15 13:42:36', 2, 1),
(11, 'SISTEMAS', '2021-10-14 12:23:59', 2, 1),
(12, 'ADMINISTRATIVO', '2021-10-14 12:24:53', 1, 1),
(13, 'SALON', '2021-10-14 12:25:12', 1, 1),
(14, 'TRANSPORTE', '2021-11-11 09:54:42', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_negocio`
--

CREATE TABLE `categorias_negocio` (
  `id_categoria_negocio` int(11) NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `recurso_categoria_estado` tinyint(1) NOT NULL,
  `recurso_categoria_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_negocio`
--

INSERT INTO `categorias_negocio` (`id_categoria_negocio`, `id_usuario_creacion`, `id_negocio`, `id_categoria`, `recurso_categoria_estado`, `recurso_categoria_fecha`) VALUES
(7, 1, 3, 6, 1, '2021-04-15 19:49:03'),
(8, 2, 3, 9, 1, '2021-09-15 00:00:00'),
(9, 1, 3, 10, 1, '2021-09-15 13:42:36'),
(10, 10, 3, 11, 1, '2021-10-14 12:23:59'),
(11, 10, 3, 12, 1, '2021-10-14 12:24:53'),
(12, 10, 3, 13, 1, '2021-10-14 12:25:12'),
(13, 2, 3, 14, 1, '2021-11-11 09:54:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `ciudad_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `ciudad_nombre`, `ciudad_estado`) VALUES
(1, 'Iquitos', 1),
(2, 'Nauta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_tipodocumento` int(11) NOT NULL,
  `cliente_razonsocial` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_numero` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_correo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_direccion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_direccion_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_telefono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_fecha` datetime NOT NULL,
  `cliente_estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_tipodocumento`, `cliente_razonsocial`, `cliente_nombre`, `cliente_numero`, `cliente_correo`, `cliente_direccion`, `cliente_direccion_2`, `cliente_telefono`, `cliente_fecha`, `cliente_estado`) VALUES
(3, 2, '', 'Anonimo', '11111111', 'anonimo@gmail.com', 'Calle S/n', '', '999999999', '2021-03-26 00:00:00', 1),
(12, 2, '', 'ADAMELITA QUISPE SANCHEZ', '72424265', 'undefined', 'ricardo palma 152\n', 'undefined', '999999999', '2021-10-18 09:52:30', 1),
(19, 4, 'BRUNNER CONSULTORES ', '', '20528443045', '', 'calle yavari 483', '', '', '2021-11-11 14:20:21', 1),
(20, 4, 'DANIEL MARTIN  LEMOS GIL', '', '70496115', '', '', '', '', '2021-11-11 14:38:35', 1),
(21, 4, 'BUFEO TEC S.A.C.', '', '20604352429', '', 'URB. SARGENTO LORES MZA.C LT3 - LORETO- MAYNAS - IQUITOS', '', '', '2021-11-11 15:08:53', 1),
(22, 4, 'PEREZ MURRIETA TATIANA', '', '10710161874', '', 'CALLE LAS MALVINAS 190', '', '', '2021-11-12 13:15:04', 1),
(23, 2, '', 'LIMBER JHONIG ALVIS RAMIREZ', '41734623', '', '', '', '', '2021-11-12 13:47:31', 1),
(24, 4, 'CIME COMERCIAL S.A.', '', '20117322751', '', 'AV. INDUSTRIAL 132 ATE- LIMA ', '', '', '2021-11-12 14:40:49', 1),
(25, 4, 'PANDURO CORAL EDWIN DARWIN', '', '10439051430', '', '25 DE ABRIL 168 ROSA PANDURO - SAN JUAN', '', '', '2021-11-13 15:05:34', 1),
(26, 4, 'SAEXPLORATION (PERU) S.R.L.', '', '20513925230', '', 'AV. EMILIO CAVENECIA NRO. 155 INT 701 OTR MIRAFLORES', '', '', '2021-11-13 15:17:56', 1),
(27, 2, '', 'AUGUSTO GUEVARA PEÑA', '05412942', '', '', '', '', '2021-11-13 17:36:37', 1),
(28, 2, '', 'MANUEL ANGEL ABADIE SAENZ', '40887731', '', '', '', '', '2021-11-14 12:57:39', 1),
(29, 2, '', 'ELIZABETH ROSARIO GARCIA LUDEÑA', '05398783', '', '', '', '', '2021-11-14 13:34:44', 1),
(30, 4, 'GARCIA CORTEGANO ZOILA FRANCISCA', '', '10407098787', '', 'AC. NAVARRO CAUPER 337', '', '', '2021-11-14 14:29:38', 1),
(31, 4, 'MACOR INGENIEROS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', '', '20602750303', '', 'CALLE SARGENTO LORES 283 - IQUITOS', '', '', '2021-11-14 15:11:13', 1),
(32, 4, 'GENERAL SERVICES PAES E.I.R.L.', '', '20603355793', '', 'CAL.ELMER FAUCETT NRO. 1860 (X EL GRUPO AEREO 42) LORETO - MAYNAS - IQUITOS', '', '', '2021-11-14 16:11:30', 1),
(33, 4, 'TORRES OCMIN SEGUNDO RAUL', '', '10452142096', '', 'RIO MAR - PJS C-17', '', '901387544', '2021-11-14 16:19:01', 1),
(34, 4, 'AMPLIA TECNOLOGIA SOCIEDAD ANONIMA CERRADA - AMPLIATE S.A.C.', '', '20601017891', '', 'JR. 28 DE JULIO 118 - TARAPOTO', '', '', '2021-11-16 12:16:17', 1),
(35, 4, 'D Y M TRADING S.A.C.', '', '20602377033', '', 'AV. ABELARDO QUIÑONES 2024', '', '', '2021-11-16 12:55:35', 1),
(36, 4, 'CORPORACION MARA S.A', '', '20389173666', '', 'LURIN - LIMA', '', '', '2021-11-16 14:51:39', 1),
(37, 4, 'FINANCIERA EFECTIVA S.A.', '', '20441805960', '', 'JR. SANTORIN #167 URB. EL VIVERO SURCO - LIMA', '', '', '2021-11-16 17:07:28', 1),
(38, 4, 'OLIMPEX AGENCIA DE ADUANA S.A.C.', '', '20136663268', '', '', '', '', '2021-11-17 13:22:22', 1),
(39, 4, 'GAVIRIA GARCIA WAGNER', '', '10053533740', '', 'PASAJE ATLANTIDA 649-A', '', '', '2021-11-17 13:29:14', 1),
(40, 2, '', 'RANDY FRANCESCA CHUNG CURI', '47036478', '', '', '', '', '2021-11-18 12:49:23', 1),
(41, 2, '', 'RUDDY GENITH RODRIGUEZ TAMANI', '46889494', '', '', '', '', '2021-11-18 13:27:55', 1),
(42, 2, '', 'JUAN CARLOS CASTRO GOMEZ', '05363583', '', '', '', '', '2021-11-18 13:53:19', 1),
(43, 2, '', 'CABRERA MONTALVO KATHERINE VIVIANE', '10722717525', '', 'CAL. LOS JAZMINES DEL NARANJAL 36 ASC. MERPLORIMA LIMA - LIMA - LOS OLIVOS ', '', '', '2021-11-18 14:12:32', 1),
(44, 2, '', 'AGRONEGOCIOS J', '20602955291', '', 'CALLE ORQUIDEAS S/N SAN JUAN', '', '', '2021-11-18 14:50:46', 1),
(45, 2, '', 'GABRIEL EMILIO VARGAS ARANA', '05415351', '', '', '', '', '2021-11-19 12:40:12', 1),
(46, 2, '', 'LUIS FELIPE SANTANA SOTO', '05377371', '', '', '', '', '2021-11-19 12:50:36', 1),
(47, 2, '', 'MILAGROS ASUNCION ORBEGOSO GOMEZ', '42276073', '', '', '', '', '2021-11-19 14:41:22', 1),
(48, 2, '', 'MUNICIPALIDAD PROVINCIAL DE REQUENA', '20165979967', '', 'CALLE SAN FRANCISCO Nª138  LORETO - REQUENA', '', '', '2021-11-19 16:16:16', 1),
(49, 2, '', 'JOSE ANTHONY RIVAS MENDEZ', '73025127', '', '', '', '', '2021-11-20 15:05:24', 1),
(50, 2, '', 'EMERSON FERNANDEZ CARDENAS', '10101814802', '', 'R. CASTILLA 235', '', '', '2021-11-20 15:15:16', 1),
(51, 4, 'TRASPORTES Y SERVICIOS BUMERAM ROMI S.A.C', '', '20603471629', '', 'CALLE LAS CASTAÑAS MZ-F LT-26 A1 PUNCHANA', '', '', '2021-11-20 15:47:42', 1),
(52, 2, '', 'ADAL IMPORT S.R.L', '20602240127', '', 'AV. FREYRE 1785', '', '', '2021-11-21 13:35:46', 1),
(53, 2, '', 'SERVICIOS GENERALES DE MAQUINARIAS PARUAR E.I.R.L', '20601903971', '', 'PASJ. GONZALES VIGIL Nª60 IQUITOS', '', '', '2021-11-21 14:36:11', 1),
(54, 2, '', 'VICTOR RAUL FLORES ANCAJIMA', '05395585', '', '', '', '', '2021-11-21 15:01:52', 1),
(55, 4, 'CHANAME GONZALES DIANA ELIZABETH', '', '10450680058', '', 'NAPO #1598', '', '', '2021-11-21 17:39:29', 1),
(56, 4, 'CTRO.P.EL DES.DEL INDIG AMAZONICO CEDIA', '', '20138684173', '', 'BONIFACIO 166 LA PERLA- CALLAO', '', '', '2021-11-22 13:20:32', 1),
(57, 4, 'INNOVALITY S.A.C.', '', '20603348533', '', 'AV. GALVEZ  BARRENECHEA  1085', '', '', '2021-11-22 14:55:41', 1),
(58, 4, 'SERVICIO DE MEDICINAS PRO VIDA', '', '20126098503', '', 'JR SAN MARTIN 102 MAGDALENA ', '', '', '2021-11-23 15:11:56', 1),
(59, 4, 'LORETO MOVILES E.I.R.L.', '', '20605634304', '', 'CALLE IBERIA N° 181- SAN JUAN', '', '', '2021-11-24 13:34:40', 1),
(60, 2, '', 'PATRICIA FERREIRA LOPEZ', '40595229', '', '', '', '', '2021-11-25 14:05:49', 1),
(61, 4, 'MUNICIPALIDAD DISTRITAL DE SAN JUAN BAUTISTA', '', '20451440625', '', 'AV. ABELARDO QUIÑONEZ NRO. 2371 (LOCAL EX CORPUS CHIRSTI) LORETO - MAYNAS - SAN JUAN BAUTISTA', '', '', '2021-11-25 15:10:31', 1),
(62, 4, 'EMPORIO E', '', '20528254749', '', '', '', '', '2021-11-25 15:16:17', 1),
(63, 4, 'CSAR CAR E.I.R.L.', '', '20602311423', '', 'calle cahuide 254', '', '', '2021-11-26 13:51:24', 1),
(64, 2, '', 'RUY PEDRO REATEGUI PIZANGO', '42331008', '', '', '', '', '2021-11-26 13:52:00', 1),
(65, 4, 'COMERCIAL NADIESKA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20567273297', '', 'AV. PARTICIPACION CDRA 23 MZ A LT B-6', '', '', '2021-11-26 14:23:34', 1),
(66, 2, '', 'MENDOZA VERDE JAVIER PAUL', '10099919251', '', 'CARRETERA RUMOCOCHA S/N - SANTA CLARA', '', '', '2021-11-26 14:44:44', 1),
(67, 4, 'GUTARRA CHUPAN FAUSTO JORGE', '', '10200540781', '', 'AV. JOSE OLAYA 807', '', '', '2021-11-27 14:12:41', 1),
(68, 2, '', 'RUFINO YARLEQUE MENDOZA', '10291175', '', '', '', '', '2021-11-27 14:39:06', 1),
(69, 2, '', 'ANEL CORALI RUIZ SOUZA', '44234604', '', '', '', '', '2021-11-27 16:02:15', 1),
(70, 4, 'INVERSIONES NASE E.I.R.L.', '', '20606458224', '', 'calle inca roca 126', '', '', '2021-11-27 19:39:06', 1),
(71, 2, '', 'ANGELICA BENDEZU BAUTISTA', '05352668', '', '', '', '', '2021-11-28 13:13:03', 1),
(72, 2, '', 'JACK WERNER RUIZ PEZO', '05417894', '', '', '', '', '2021-11-28 14:56:59', 1),
(73, 4, 'PINEDO USSEGLIO OLGA RUTH', '', '10053297485', '', '', '', '', '2021-11-28 16:37:03', 1),
(74, 4, 'HALCONES SECURITY COMPANY S.A.C.', '', '20601692806', '', 'calle bolognesi # 217-iquitos', '', '', '2021-11-29 14:22:03', 1),
(75, 2, '', 'DAVID PANDURO MURRIETA', '05357052', '', '', '', '', '2021-11-30 12:57:29', 1),
(76, 4, 'PETROMINAS ORIENTE S.A.C.', '', '20601661111', '', 'CALLE FITZCARRALD # 580', '', '', '2021-12-01 11:28:34', 1),
(77, 2, '', 'ANTONIO NORONHA GOMEZ', '41607534', '', '', '', '', '2021-12-01 13:13:01', 1),
(78, 2, '', 'ROY ELVIS RIOS FERREIRA', '41025075', '', '', '', '', '2021-12-01 14:15:33', 1),
(79, 2, '', 'KEVIN MATIAS TUEROS ROSALES', '70610945', '', 'AV BENAVIDES', '', '', '2021-12-01 14:53:15', 1),
(80, 4, 'CATCH THE VISION PERU RIVER MINISTRY', '', '20601414920', '', 'LOS DIAMANTES - 3 -NINARUMI', '', '', '2021-12-01 14:58:27', 1),
(81, 2, '', 'GIANCO DEL AGUILA ISUIZA', '46916972', '', '', '', '', '2021-12-02 13:01:09', 1),
(82, 2, '', 'EDWIN AUGUSTO PEZO VILLACORTA', '44328892', '', '', '', '', '2021-12-02 14:22:13', 1),
(83, 4, 'BAKING SERVICE S.R.L.', '', '20528489541', '', 'PROGRESO 718', '', '', '2021-12-04 13:32:01', 1),
(84, 4, 'GALAN PIZARRO IVAN DEMETRIO', '', '10174526961', '', 'PSJE TUPAC AMARU MZ Y LT 7 -A ', '', '', '2021-12-04 14:50:40', 1),
(85, 2, '', 'NANCY NAIR FLORES CASTILLO', '41724219', '', '', '', '', '2021-12-05 13:22:52', 1),
(86, 4, 'TORRES FALCON JESUS', '', '10460899279', '', 'CALLE MISTI 412', '', '', '2021-12-05 15:40:01', 1),
(87, 4, 'NEW GLOBAL SAC', '', '20477883312', '', 'CALLE SNTA MARGARITA 294 - SAN MARTIN DE PORRES - LIMA', '', '', '2021-12-06 13:10:33', 1),
(88, 4, 'DEL AGUILA GARCIA GIOVANNA VANESSA', '', '10459941318', '', 'CALLE MONITOR HUASCAR N° 106', '', '', '2021-12-06 14:18:42', 1),
(89, 4, 'HYDRA CONSULTING E.I.R.L.', '', '20603131259', '', 'SAN JOSE # 928 ', '', '', '2021-12-06 15:05:30', 1),
(90, 4, 'CAJA MUNICIPAL DE AHORRO Y CREDITO DE MAYNAS S.A ', '', '20103845328', '', 'AV. 28 DE JULIO 829', '', '', '2021-12-06 16:40:27', 1),
(91, 2, '', 'LORETA DE OLIVEIRA DIAZ WONG', '05240750', '', '', '', '', '2021-12-08 13:25:47', 1),
(92, 4, 'INVERSIONES DIAZ E.I.R.L.', '', '20528132988', '', 'JR. PROSPERO N° 1451', '', '', '2021-12-08 14:39:17', 1),
(93, 4, 'ZEGARRA CASTAGNE JUAN CARLOS', '', '10063823924', '', '9 DE DICIEMBRE # 663', '', '', '2021-12-08 14:49:40', 1),
(94, 4, 'QUISPE RAMOS FLORENTINO', '', '10024026936', '', 'JR MORONA 165', '', '', '2021-12-08 14:59:56', 1),
(95, 2, '', 'CESAR AUGUSTO TAFUR PANDURO', '41192779', '', '', '', '', '2021-12-08 15:16:35', 1),
(96, 4, 'REATEGUI PACAYA KATTY LUZMERY', '', '10451343527', '', 'URB. RIO MAR MZ. A LT 19 - B', '', '', '2021-12-08 16:03:51', 1),
(97, 2, '', 'CESAR ENRIQUE MEDINA GARCIA', '08637608', '', '', '', '', '2021-12-08 16:30:32', 1),
(98, 2, '', 'MIGUEL ANGEL RIOS USHIHUA', '05417731', '', '', '', '', '2021-12-09 13:42:52', 1),
(99, 2, '', 'CARLOMAGNO GRANDEZ VASQUEZ', '05225973', '', '', '', '', '2021-12-10 12:34:21', 1),
(100, 2, '', 'ELIDA JANETH SIBINA VELA', '46985956', '', '', '', '', '2021-12-10 14:59:14', 1),
(101, 4, 'SEGURO SOCIAL DE SALUD', '', '20131257750', '', '08 DE DICIEMBRE #533', '', '', '2021-12-10 15:05:05', 1),
(102, 2, '', 'CARLOS ALBERTO TELLO RAMIREZ', '41626962', '', '', '', '', '2021-12-11 12:51:48', 1),
(103, 4, 'HOZO E.I.R.L.', '', '20541299395', '', 'CALLE ANGEL BRUSCO # 624', '', '', '2021-12-12 13:29:32', 1),
(104, 4, 'SERVICIOS DE TRANSPORTES ARCHI EIRL', '', '20451294891', '', 'NAPO # 660', '', '', '2021-12-13 13:39:15', 1),
(105, 4, 'L.P.S. CONTRATISTAS GENERALES E.I.R.L.', '', '20603406266', '', 'CALLE LAS MAGNOLIAS J- 12 - IQUITOS', '', '', '2021-12-13 15:28:08', 1),
(106, 4, 'RODRIGUEZ GONZALES DE MORI KELLY', '', '10053782600', '', 'JR MI PERU # 375', '', '', '2021-12-14 12:23:57', 1),
(107, 4, 'UNIDAD DE GESTION EDUCATIVA LOCAL DATEM DEL MARAÑON - SL', '', '20528292918', '', 'JR. PASTAZA N° 224', '', '', '2021-12-15 15:47:22', 1),
(108, 4, 'CINTHYA RAQUEL NIZAMA RIERA ', '', '10447759549', '', 'PSJE CENTRAL # 18 - NUEVO VERSALLES ', '', '', '2021-12-16 13:01:12', 1),
(109, 4, 'NETWORKS AND SYSTEMS PERU E.I.R.L', '', '20608774590', '', 'CALLE ABTAO # 1350', '', '', '2021-12-16 14:30:18', 1),
(110, 2, '', 'CARLOS EDUARDO RUIZ ZAMORA ', '05401921', '', '', '', '', '2021-12-17 14:15:14', 1),
(111, 4, 'IKITOURS VIAJES Y TURISMO E.I.R.L ', '', '20606972394', '', 'BORJA # 604', '', '', '2021-12-17 14:26:28', 1),
(112, 4, 'ESTHER PEREYRA RAMIREZ ', '', '05396150', '', '', '', '', '2021-12-17 14:44:18', 1),
(113, 4, 'PROGRAMA NACIONAL DE APOYO DIRECTO A LOS MAS POBRES  - JUNTOS', '', '20511268401', '', 'CALLE SCHELL  N° 310 - MIRAFLORES  - LIMA ', '', '', '2021-12-17 14:49:25', 1),
(114, 2, '', 'MUNICIPALIDAD DISTRITAL DEL YAVARI', '20176710064', '', '', '', '', '2021-12-17 16:05:50', 1),
(115, 4, 'CIA DE SEGURIDAD PROSEGUR S A', '', '20100148162', '', 'ECHENIQUE #270', '', '', '2021-12-18 14:19:45', 1),
(116, 4, 'INVERSIONES Y NEGOCIOS PACRISAN E.I.R.L.', '', '20604967636', '', 'ECHENIQUE 727', '', '', '2021-12-18 15:03:06', 1),
(117, 4, 'ESTRADA NEIRA JAIME EDUARDO', '', '10052921436', '', 'AV. AUGUSTO FREYRE N° 1523 - PUNCHANA - MAYNAS - LORETO', '', '', '2021-12-18 15:32:25', 1),
(118, 2, '', 'STEFANYE MIRELLA SORIA BENITES', '42261982', '', '', '', '', '2021-12-19 13:50:51', 1),
(119, 4, 'SHEDIMORLY S.A.C.', '', '20604147621', '', 'JR GARCIA SAENZ 184', '', '', '2021-12-19 15:16:44', 1),
(120, 4, 'SANGAMA SAJAMI SAI OMAR', '', '10053513331', '', 'CALLE SINCHI ROCA 152  - A - TUPAC - IQUITOS', '', '', '2021-12-21 13:11:49', 1),
(121, 4, 'LH SERVICIOS CATERING S.A.C.', '', '20600891082', '', 'ALFONSO UGARTE 639', '', '', '2021-12-21 14:42:48', 1),
(122, 2, '', 'DOLLY JOSEFINA SINACAY ACOSTA', '71541196', '', '', '', '', '2021-12-22 13:30:34', 1),
(123, 4, 'DE SORIA ROJAS SANDRO', '', '10433236250', '', 'RICARDO PALMA 1142', '', '', '2021-12-22 13:37:37', 1),
(124, 4, 'VELA OCAMPO LUCIANA VICTORIA', '', '10429554719', '', 'DOS DE MAYO # 1411', '', '', '2021-12-22 14:12:12', 1),
(125, 4, 'SOLUCIONES CSMA E.I.R.L.', '', '20603673264', '', 'CALLE PUEBLO DIGNO MZ Q LT 29 - BELEN - LORETO', '', '', '2021-12-22 15:27:55', 1),
(126, 2, '', 'JOSE GUILLERMO ORTIZ ROMERO', '41150649', '', '', '', '', '2021-12-23 13:48:38', 1),
(127, 4, 'REGENCIA REGIONAL DE SALUD', '', '20408454299', '', 'AV. COLONIAL MZ B LT 21 - PUCHANA', '', '', '2021-12-23 14:15:24', 1),
(128, 2, '', 'ADRIAN GIANCARLO CHAVEZ SANDOVAL', '45561960', '', '', '', '', '2021-12-23 14:52:52', 1),
(129, 2, '', 'YEIKO ELIZA ROJAS CAMPOS', '71247371', '', '', '', '', '2021-12-23 14:53:57', 1),
(130, 4, 'RICK DANIEL TANG NORIEGA', '', '10709750921', '', '23 SEPTIEMBRE S/N - MAZAN ', '', '', '2021-12-24 13:21:49', 1),
(131, 2, '', 'CARMEN PATRICIA CERDEÑA DEL AGUILA', '05208012', '', '', '', '', '2021-12-26 13:33:29', 1),
(132, 2, '', 'ALBERTO GIOVANNI LOPEZ VASQUEZ', '05405036', '', '', '', '', '2021-12-26 14:50:10', 1),
(133, 4, 'UNIVERSIDAD NACIONAL DE LA AMAZONIA PERUANA', '', '20180260316', '', 'AV. GRAU N° 1072', '', '', '2021-12-27 13:43:19', 1),
(134, 4, 'MEZA DEL AGUILA LUIS HERNAN', '', '10052762532', '', 'JR ELIAS AGUIRRE 1512', '', '', '2021-12-28 15:20:54', 1),
(135, 4, 'INFINITO SOFTWARE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20605309551', '', 'CALLE NAUTA 858', '', '', '2021-12-29 14:57:43', 1),
(136, 4, 'MEGO RUIZ MAISA ANGELITA', '', '10053734681', '', 'AV. MARISCAL CACERES # 540', '', '', '2021-12-30 15:13:11', 1),
(137, 4, 'SOLINTEG AMAZONICA S.R.L.', '', '20601943205', '', 'CALLE 23 DE SEPTIEMBRE N° 246', '', '', '2021-12-30 15:24:51', 1),
(138, 2, '', 'FRANCO XAVIER VARGAS LOZANO', '48135840', '', '', '', '', '2021-12-31 12:23:29', 1),
(139, 4, 'JORGE VLADIMIR CESARE CORAL', '', '25834945', '', '', '', '', '2021-12-31 14:37:46', 1),
(140, 2, '', 'EDGAR ANTONIO KAHN MELENDEZ', '73084065', '', '', '', '', '2021-12-31 14:41:53', 1),
(141, 4, 'LPGAS PERU AMAZONICO E.I.R.L.', '', '20606995866', '', 'A.H.  24 DE MAYO G - 15', '', '', '2021-12-31 15:59:30', 1),
(142, 2, '', 'RUMY ALBERTO ALEGRIA ALMEYDA', '40413440', '', '', '', '', '2021-12-31 16:03:07', 1),
(143, 2, '', 'JOSE GIL AREVALO', '05318679', '', '', '', '', '2022-01-01 13:10:29', 1),
(144, 4, 'USHIÑAHUA BARDALES MAIRA ELISA', '', '10436090558', '', 'CALLE 15 DE JUNIO MZ C LT 17  ALT. PUTUMAYO CDRA 25', '', '', '2022-01-02 14:38:31', 1),
(145, 4, 'IHUARAQUI CARIVES OSWALDO', '', '10701165743', '', 'MAYNAS CON 3 DE OCTUBRE MZ H LT 2', '', '', '2022-01-02 14:55:42', 1),
(146, 2, '', 'MARLENA PEREZ LOPEZ', '05329575', '', '', '', '', '2022-01-03 12:10:57', 1),
(147, 4, 'HUAMAN DE NOGUEIRA JUANA', '', '10053668432', '', 'AV. 28 DE JULIO # 220', '', '', '2022-01-03 13:52:05', 1),
(148, 4, 'CAYMAN S.A.C.', '', '20380456444', '', 'AV. SAN MARTIN N° 1950 DPTO 601 - SAN BORJA - LIMA', '', '', '2022-01-03 15:07:52', 1),
(149, 2, '', 'EVELYN CARINA CUADROS TITO', '42297352', '', '', '', '', '2022-01-03 15:21:50', 1),
(150, 4, 'INVERSIONES HAUXWELL EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20567297129', '', 'PASAJE LAS PALMAS MANZANA M LOTE 16', '', '', '2022-01-04 12:31:24', 1),
(151, 2, '', 'HELMUT THOR BLANCO OLIVEIRA', '41204409', '', '', '', '', '2022-01-04 13:34:59', 1),
(152, 4, 'GRIFO Y SERVICIO TRANSPORTES SANTO TOMAS E.I.R.L.', '', '20493388721', '', 'CARRETERA SANTO TOMAS KM 1 MZ \"A\" L - 3  A.A. H.H. EROPUERTO', '', '', '2022-01-05 16:28:56', 1),
(153, 4, 'SERVICE PETROLEUM COMPANY EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20606834781', '', '28 DE JULIO 659', '', '', '2022-01-06 13:11:39', 1),
(154, 2, '', 'KAREN PAOLA PEREZ CHAPIAMA ', '45786076', '', '', '', '', '2022-01-06 14:27:31', 1),
(155, 4, 'PEÑA PINEDO PEDRO PASCUAL', '', '10052632752', '', 'AV. EJERCITO 344', '', '', '2022-01-06 14:35:25', 1),
(156, 2, '', 'VICTOR RIVAS CRUZ', '05384201', '', '', '', '', '2022-01-06 15:35:26', 1),
(157, 4, 'PERCY SOLANO VARGAS DAVILA ', '', '05409683', '', 'AV. DEL EJERCITO 1641', '', '', '2022-01-08 12:39:09', 1),
(158, 2, '', 'EDITA ZAMORA JULCA', '19213590', '', '', '', '', '2022-01-08 13:00:11', 1),
(159, 2, '', 'GERMAN GONZALEZ ASPAJO', '41200081', '', '', '', '', '2022-01-08 14:48:51', 1),
(160, 2, '', 'LUCILA ELVIRA VASQUEZ CHONG', '05411508', '', '', '', '', '2022-01-09 12:02:35', 1),
(161, 2, '', 'JAVIER ARTURO PEREIRA REATEGUI', '42227434', '', '', '', '', '2022-01-09 15:59:54', 1),
(162, 2, '', 'SILVIA MILAGROS JIMENO FREITAS', '47626456', '', '', '', '', '2022-01-09 16:17:16', 1),
(163, 4, 'PINEDA RODRIGUEZ RAUL ANDRES', '', '10078046479', '', 'TENIENTE PINGLO 138', '', '', '2022-01-10 14:28:36', 1),
(164, 2, '', 'INGRID CAROLA CHUMBE RODRIGUEZ', '05405334', '', '', '', '', '2022-01-11 13:56:30', 1),
(165, 2, '', 'ROGER FERNANDO RIOS PEREZ', '05327758', '', '', '', '', '2022-01-11 14:10:17', 1),
(166, 4, 'AMASIFUEN NUÑEZ NILSA', '', '10053231441', '', 'AV. GUARDIA CIVIL #595', '', '', '2022-01-12 14:46:54', 1),
(167, 2, '', 'LILIA ROJAS JARAMILLO', '05404741', '', '', '', '', '2022-01-13 12:44:59', 1),
(168, 2, '', 'IVONNE VANESSA FERNANDEZ CHUMBE', '42288819', '', '', '', '', '2022-01-13 14:02:51', 1),
(169, 4, 'DISTRIBUIDORA ', '', '20605573615', '', 'PUTUMAYO 1907', '', '', '2022-01-13 14:37:55', 1),
(170, 4, 'CONSORCIO SANTA ROSA', '', '20608533258', '', 'CALLE AMAZONAS 778 - PUNCHANA - MAYNAS - LORETO', '', '', '2022-01-15 14:11:33', 1),
(171, 4, 'MULTISERVICIOS AREVALO EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20601398932', '', 'BOLIVAR 697', '', '', '2022-01-15 15:32:52', 1),
(172, 2, '', 'RAQUEL RIVAS MEZA', '41763692', '', '', '', '', '2022-01-17 15:14:23', 1),
(173, 4, 'EDA FABRICACION Y CONSTRUCCION S.A.C.', '', '20603783850', '', 'JR. RAUL PILCO PEREZ 146 - IQUITOS', '', '', '2022-01-20 14:31:37', 1),
(174, 4, 'CESAR GUSTAVO TORRES DAVILA', '', '10702643835', '', 'PSJE CAMSA- A 20', '', '', '2022-01-21 12:35:07', 1),
(175, 4, 'PERNOS IQUITOS E.I.R.L.', '', '20601151899', '', 'AV. 28 DE JULIO #122 - PUNCHANA', '', '', '2022-01-21 15:23:29', 1),
(176, 2, '', 'DANIEL ALEJANDRO DIAZ CORDOVA', '47222069', '', '', '', '', '2022-01-21 15:53:45', 1),
(177, 2, '', 'MIDORY ORIANA ZUMAETA SAENZ', '72669868', '', '', '', '', '2022-01-22 12:33:36', 1),
(178, 2, '', 'RICHARD JAVIER HUARANCA ACOSTUPA', '05352981', '', '', '', '', '2022-01-22 12:58:32', 1),
(179, 2, '', 'JOSE ROBERTO DOMINGUEZ INGA', '42082336', '', '', '', '', '2022-01-22 14:10:49', 1),
(180, 2, '', 'FLOR DE MARIA MELENDEZ PEREA', '05287612', '', '', '', '', '2022-01-22 14:49:48', 1),
(181, 2, '', 'JUAN GABRIEL ARQUEROS LAVADO', '41746202', '', '', '', '', '2022-01-24 10:59:27', 1),
(182, 2, '', 'CARLOS MAX ARANGO MORA', '44869431', '', '', '', '', '2022-01-24 16:03:46', 1),
(183, 2, '', 'FRANK VICENTE CHANG VARGAS ', ' 05383395', '', '', '', '', '2022-01-25 13:26:54', 1),
(184, 4, 'PROGRAMA NACIONAL DE TELECOMUNICACIONES - PRONATEL', '', '20604676372', '', 'AV. PASEO DE LA REPUBLICA # 1645 - LA VICTORIA - LIMA', '', '', '2022-01-25 13:28:12', 1),
(185, 2, '', 'MINDI DANIRA SANDI BALAREZO', '44023342', '', '', '', '', '2022-01-25 13:39:33', 1),
(186, 2, '', 'RICHTER ELISEO RENGIFO RAMIREZ', '43290648', '', '', '', '', '2022-01-26 11:29:12', 1),
(187, 4, 'LAMAX CONSTRUCTORES Y CONSULTORES S.A.C.', '', '20607007099', '', 'URB. RIOMAR MZ M LT 7 - A ', '', '', '2022-01-26 13:06:26', 1),
(188, 2, '', 'JENNY ELVIRA SEOPA RUIZ', '40610365', '', '', '', '', '2022-01-27 16:46:18', 1),
(189, 2, '', 'LIZ JACQUELINE RIOS HIDALGO', '40992132', '', '', '', '', '2022-01-28 13:56:25', 1),
(190, 4, 'GUERRERO ', '', '20601970687', '', 'CALLE C MZA C LOTE 06 PRO INDUSTRIAL - SAN MARTIN DE PORRES ', '', '', '2022-01-28 14:36:15', 1),
(191, 2, '', 'JULIO CESAR VENEGAS GUEVARA', '42112366', '', '', '', '', '2022-01-29 15:25:43', 1),
(192, 2, '', 'ERNESTO ZUMAETA SEGURA', '43059856', '', '', '', '', '2022-01-30 13:53:08', 1),
(193, 4, 'RAMOS RODRIGUEZ RUTH DAMARIS', '', '10436457281', '', 'JR PUTUMAYO N° 1013', '', '', '2022-02-02 14:11:34', 1),
(194, 2, '', 'CHRISTHOPER NOGUEIRA DAVILA', '05409945', '', '', '', '', '2022-02-03 13:37:23', 1),
(195, 2, '', 'FREDDY ESCUDERO RAMIREZ', '42379296', '', '', '', '', '2022-02-05 15:02:35', 1),
(196, 2, '', 'ERICK CHONG YALTA', '41292320', '', '', '', '', '2022-02-06 14:19:04', 1),
(197, 4, 'CORPORACION RIVERA DA COSTA S.A.C.', '', '20606727497', '', '', '', '', '2022-02-07 13:09:48', 1),
(198, 2, '', 'KARLA ELIANA TUESTA FLORES', '41480989', '', '', '', '', '2022-02-07 14:56:08', 1),
(199, 4, 'CAUDAL INVERSIONES E.I.R.L.', '', '20493211634', '', 'CALLE CONDAMINE 162', '', '', '2022-02-08 13:33:11', 1),
(200, 2, '', 'KATIA YERINA PERDOMO FLORES', '46432371', '', '', '', '', '2022-02-08 14:47:14', 1),
(201, 4, 'SERVICIOS GENERALES REGION LORETO E.I.R.L.', '', '20493479874', '', 'SANCHEZ CARRION  273', '', '', '2022-02-09 14:33:10', 1),
(202, 4, 'FERNANDEZ SANCHEZ STEPHANI FIORELLA', '', '10725521508', '', 'CALLE MOORE N° 374 - IQUITOS', '', '', '2022-02-10 15:30:14', 1),
(203, 4, 'CARRASCO BABILONIA MARIA CLAUDIA', '', '10740450030', '', 'BRASIL 582', '', '', '2022-02-12 12:59:33', 1),
(204, 2, '', 'JHOSEL KIR FERNANDEZ TOSCANO', '45506717', '', '', '', '', '2022-02-13 15:49:31', 1),
(205, 2, '', 'JAIME ARTURO OLIVERA TRIGOSO', '70693014', '', '', '', '', '2022-02-14 22:21:51', 1),
(206, 2, '', 'NIKKI KRISTIAM VASQUEZ CHONG', '41194060', '', '', '', '', '2022-02-15 13:31:09', 1),
(207, 2, '', 'MARIO EDILBERTO GRAZIANI SANTA CRUZ', '21869205', '', '', '', '', '2022-02-15 15:48:16', 1),
(208, 4, 'INTEGRA RETAIL S.A.C.', '', '20605475273', '', 'AV. MANUEL OLGUIN N° 771 INT. 1204 - LIMA - LIMA - SANTIAGO DE SURCO', '', '', '2022-02-16 13:47:38', 1),
(209, 4, '', '', '1072842883', '', '', '', '', '2022-02-17 16:24:22', 1),
(210, 4, 'VARGAS ROJAS ERIC JOE', '', '10416348231', '', 'PSJE MARISCAL CACERES 163', '', '', '2022-02-18 14:24:41', 1),
(211, 4, 'RAMOS CASTILLO JORGE', '', '10058422555', '', 'JOSE CARLOS MARIATIGUI # 180 - REQUENA', '', '', '2022-02-19 14:10:02', 1),
(212, 2, '', 'ALBERTO SANCHEZ GONZALES', '43635570', '', '', '', '', '2022-02-20 14:08:16', 1),
(213, 2, '', 'CARLOS DAVID GRANJA CARIHUA', '43028930', '', '', '', '', '2022-02-20 14:30:40', 1),
(214, 2, '', 'FRANCESCA VANESSA QUIROZ MURRIETA', '41885439', '', '', '', '', '2022-02-22 13:20:53', 1),
(215, 2, '', 'FLOR KARLA MURRIETA TORRES', '44456025', '', '', '', '', '2022-02-22 13:22:29', 1),
(216, 4, 'MULTINEGOCIOS Y SERVICIOS MARICHIN S.A.C.', '', '20605626735', '', 'CALLE ARENALES B - 37', '', '', '2022-02-22 15:30:41', 1),
(217, 4, 'SERGEPREM E.I.R.L.', '', '20567301258', '', 'CA. SAN JOSE 233 - PUNCHANA', '', '', '2022-02-23 14:41:37', 1),
(218, 2, '', 'ROBERT STEVE RODRIGUEZ PEREA', '40712286', '', 'ABTAO # 1206', '', '', '2022-02-25 13:33:52', 1),
(219, 2, '', 'CESAR HERNAN RIVERA VASQUEZ', '41326638', '', '', '', '', '2022-02-25 14:48:15', 1),
(220, 4, 'LUDEÑA REYES WILDER GENARO', '', '10402671225', '', 'LOS TRIUNFADORES D 22', '', '', '2022-02-26 13:40:20', 1),
(221, 4, 'HIDALGO SANTILLAN PEDRO JOSE', '', '10435010569', '', 'JR PEDRO DE URQUIA 101 - TARAPOTO ', '', '', '2022-02-27 11:30:05', 1),
(222, 2, '', 'DIEGO HEREDIA CAVERO ', '72699670', '', '', '', '', '2022-02-27 14:21:30', 1),
(223, 2, '', 'FEREDIRO BUANERGHES CONTRERAS ESPINOZA', '42968050', '', '', '', '', '2022-02-27 15:05:41', 1),
(224, 2, '', 'ELISBAN ROBALINO TAPULLIMA', '05336490', '', '', '', '', '2022-02-28 14:31:46', 1),
(225, 4, 'PROGRAMA MEDICO ESPERANZA AMAZONICA DEL PERU', '', '20600712315', '', 'NAUTA 282', '', '', '2022-03-01 16:38:33', 1),
(226, 2, '', 'MIGUEL ANGEL ESCALANTE RENGIFO', '41346416', '', '', '', '', '2022-03-02 16:47:33', 1),
(227, 4, 'EMP REG DE SERV PUBLICO DE ELECTRICIDAD', '', '20103795631', '', 'AV. FREYRE 1168', '', '', '2022-03-03 13:40:34', 1),
(228, 4, 'PODER JUDICIAL', '', '20159981216', '', 'NICOLAS DE PIEROLA 745 - LIMA', '', '', '2022-03-03 15:26:02', 1),
(229, 4, 'SERVICIOS MEDICOS ESPECIALIZADOS  GOBA SRL', '', '20608581139', '', 'AV. 28 DE JULIO # 665', '', '', '2022-03-05 14:53:22', 1),
(230, 4, 'RIOS DE BENITES GLORIA MARINA', '', '10052367170', '', '', '', '', '2022-03-08 12:00:47', 1),
(231, 4, 'MULTISERVICIOS SHARDIN E.I.R.L.', '', '20602019480', '', 'ATAHUALPA N° 733 - ESPALDASA DEL CEMENTERIO GENERAL ', '', '', '2022-03-08 13:06:16', 1),
(232, 4, 'CORPORACION DARMAR E.I.R.L ', '', '20608801040', '', 'OSJE MIGUEL OLORTEGUI # 2 - CALLE LAS ORQUIDEAS - SAN JUAN ', '', '', '2022-03-08 15:21:18', 1),
(233, 4, 'DEL AGUILA VELA CHRISTY JANETH', '', '10456287773', '', 'PSJE SOMMO # 163 - MORONACOCHA', '', '', '2022-03-08 16:54:27', 1),
(234, 2, '', 'PEDRO ALVARO SEBASTIAN SALAZAR NUNES', '43406288', '', '', '', '', '2022-03-11 14:33:45', 1),
(235, 2, '', 'ROSA BEGOÑA HUANCI ROMERO', '45345879', '', '', '', '', '2022-03-12 12:26:16', 1),
(236, 2, '', 'GUILLERMO FRANCISCO DONAYRE SOTIL', '43883169', '', '', '', '', '2022-03-12 15:48:05', 1),
(237, 2, '', 'DEL AGULLA LOZANO, HUGO', '05356412', '', 'AV. 28 JULIO  #824', '', '', '2022-03-12 18:10:08', 1),
(238, 4, 'RAMIREZ MEGO FLOR', '', '10410287485', '', 'ATLANTIDA 882', '', '', '2022-03-13 12:33:10', 1),
(239, 2, '', 'VICTOR ANDRES SILVA LEDESMA', '42082042', '', '', '', '', '2022-03-16 13:43:05', 1),
(240, 4, ' PEREZ PORTOCARRERO MILAGROS ISABEL', '', '10431047468', '', 'TAVARA 452', '', '', '2022-03-17 14:18:10', 1),
(241, 2, '', 'ANGEL BENITO ISIDRO VASQUEZ MESIA', '40683724', '', '', '', '', '2022-03-18 14:04:28', 1),
(242, 4, 'IH SOLUCIONES INTEGRALES EIRL', '', '20608646478', '', 'PASAJE TNTE MANUEL CLAVERO #14', '', '', '2022-03-18 14:08:31', 1),
(243, 2, '', 'RIOS REATEGUI, PAULO CESAR', '10263693', '', 'URB. LOS PROCERES M-4 L-8', '', '', '2022-03-18 23:16:28', 1),
(244, 2, '', 'CHAVEZ PEREZ JESUS BRIAN ', '47382360', '', '', '', '', '2022-03-19 13:05:13', 1),
(245, 4, 'SECURITY CARE EIRL', '', '20508306246', '', 'CALLE LAS AZUCENAS 320 ATE - LIMA', '', '', '2022-03-22 16:15:32', 1),
(246, 2, '', 'KAHN OLORTEGUI MARCO ANTONIO ', '43405563', '', '', '', '', '2022-03-23 10:44:41', 1),
(247, 4, 'GLORIA LUZ MAGNO MERMAO', '', '10761810257', '', 'PEVAS CON MAYNAS #50', '', '', '2022-03-23 13:20:04', 1),
(248, 2, '', 'f f f', '46721392', '', 'CALLE TRUJILLO J - 1 - B', '', '', '2022-03-24 22:07:39', 1),
(249, 4, 'MUNICIPALIDAD DISTRITAL DE TORRES CAUSANA', '', '20174999393', '', 'CALLE MIRAFLORES N/ N C. PANTOJA', '', '', '2022-03-26 12:25:02', 1),
(250, 4, 'HUALLAGA BUSINESS & CONSULTING E.I.R.L', '', '20601789966', '', 'CALVO DE ARAUJO 1499', '', '', '2022-03-26 15:11:37', 1),
(251, 4, 'EMELY ADELAIDA QUISPE HUARACCALLO', '', '10451966478', '', '', '', '', '2022-03-27 14:29:37', 1),
(252, 2, '', 'CESAR ALVINO VELASQUEZ BORDOY', '05342497', '', '', '', '', '2022-03-27 20:31:51', 1),
(253, 4, 'ASTONITAS INUMA LIZ VANESSA', '', '10488732591', '', 'AV. ALFONSO NAVRRO CAUPER 285 - IQUITOS', '', '', '2022-03-29 13:14:00', 1),
(254, 4, 'CONTRERAS OROZCO HENRY', '', '10419222327', '', 'CALLE ABANCAY # 334', '', '', '2022-04-02 14:11:52', 1),
(255, 2, '', 'ORIETA GONZALES RAMIREZ', '05330270', '', '', '', '', '2022-04-04 15:23:32', 1),
(256, 2, '', 'ROBERT HAMILTON LOMAS MEDER', '40837329', '', '', '', '', '2022-04-05 16:12:04', 1),
(257, 4, 'CPM INGENIERIA ', '', '20528181334', '', 'TACNA # 152', '', '', '2022-04-06 13:21:57', 1),
(258, 2, '', 'ROCIO DEL PILAR VÁSQUEZ RENGIFO', '05343902', '', '', '', '', '2022-04-08 12:47:18', 1),
(259, 4, 'HEREDIA UYACU IGOR', '', '10412330205', '', 'PSJE TNTE. CLAVERO #14', '', '', '2022-04-08 13:06:53', 1),
(260, 2, '', 'HELMER SAAVEDRA DEL CASTILLO', '05405785', '', '', '', '', '2022-04-09 14:36:24', 1),
(261, 4, 'MULTISERVICIOS AMAZON DREAM S.R.L.', '', '20567273025', '', 'MOORE 366', '', '', '2022-04-10 13:28:05', 1),
(262, 4, 'GENERAL AND BUSINESS SERVICE H ', '', '20606506024', '', 'CALLE LOS CLAVELES 229- IQUITOS', '', '', '2022-04-11 12:38:55', 1),
(263, 2, '', 'WILLIAMS JOHN SOLSOL TORRES', '05380314', '', '', '', '', '2022-04-11 15:10:12', 1),
(264, 4, 'ECHENIQUE POINT S.R.L', '', '20605047174', '', 'CA. ECHENIQUE # 443', '', '', '2022-04-16 14:45:55', 1),
(265, 2, '', 'ANDRES EDUARDO MARMOL RENGIFO', '05380333', '', '', '', '', '2022-04-17 16:49:37', 1),
(266, 4, 'CENTRO MEDICO OBSTETRICO UNION ', '', '20608581309', '', 'CALLE MALECON GRAU S/N', '', '', '2022-04-20 11:17:49', 1),
(267, 4, 'MULTISERVICIOS JORIANK SOCIEDAD ANONIMA CERRADA', '', '20607286541', '', 'JR. NAUTA # 279', '', '', '2022-04-20 12:33:51', 1),
(268, 4, 'MARINA DE GUERRA DEL PERU ', '', '20153408191', '', 'AV. LA MARINA S/N', '', '', '2022-04-22 14:34:11', 1),
(269, 2, '', 'IBIS ANDREA TANCHIVA GRANDEZ', '70556770', '', '', '', '', '2022-04-23 14:58:02', 1),
(270, 2, '', 'RENATTO CLAVO PEREZ', '43631286', '', '', '', '', '2022-04-24 14:39:50', 1),
(271, 2, '', 'MINSA', '1111111', '', '', '', '', '2022-04-24 14:52:48', 1),
(272, 4, 'DEL AGUILA VELA CRISTINA MISHEL', '', '10753099366', '', 'LIBERTAD #808', '', '', '2022-04-25 14:37:37', 1),
(273, 2, '', 'ENRIQUE VASQUEZ GALVEZ', '05317669', '', '', '', '', '2022-04-26 12:30:12', 1),
(274, 2, '', 'YUVITZZA PATRICIA TONG RIOS', '45637442', '', '', '', '', '2022-04-27 12:08:52', 1),
(275, 2, '', 'RONALD ENRIQUE RENGIFO JIMENEZ', '45495437', '', '', '', '', '2022-04-27 12:34:46', 1),
(276, 4, 'REATEGUI RIVADENEYRA JANET', '', '10052688499', '', 'SAN MARTIN S/N', '', '', '2022-04-28 14:55:41', 1),
(277, 2, '', 'CARLOS ALBERTO MARTIN HURTADO VASQUEZ', '46040235', '', '', '', '', '2022-04-29 11:39:59', 1),
(278, 2, '', 'MARTHA JULISSA CARDENAS GALARCE', '42208748', '', '', '', '', '2022-04-30 14:33:57', 1),
(279, 2, '', 'MAURICIO GOMEZ MOURA', '70557476', '', '', '', '', '2022-05-01 14:46:40', 1),
(280, 2, '', 'ALEJO GONZALES MACEDO', '05384276', '', '', '', '', '2022-05-01 15:44:31', 1),
(281, 2, '', 'SILVIA ARBILDO RUIZ', '05278652', '', '', '', '', '2022-05-02 12:18:45', 1),
(282, 2, '', 'ROSALIA DEL PILAR RUIZ BORBOR', '05265891', '', '', '', '', '2022-05-03 11:26:22', 1),
(283, 2, '', 'FABIOLA RIOS MARICHI', '47071891', '', '', '', '', '2022-05-03 13:39:12', 1),
(284, 4, 'RENGIFO VILLAVICENCIO ANITA', '', '10419117108', '', 'PSJE LA PAZ C - 08', '', '', '2022-05-03 14:09:53', 1),
(285, 2, '', 'ESTEFANIA ROCHA DAVILA', '44260095', '', '', '', '', '2022-05-03 14:39:42', 1),
(286, 2, '', 'JAIRO MONTES SANTOS ', '10452464689', '', 'CALLE LAS CUMALAS  # 184 - SAN JUAN BAUTISTA ', '', '', '2022-05-03 14:54:38', 1),
(287, 2, '', 'RAUL MARIN MOURA', '41319146', '', '', '', '', '2022-05-04 12:50:27', 1),
(288, 4, 'ARROYO PEREZ BRENDA ETHEL', '', '10453531819', '', 'CALLE TERESA CALCUTRA  302', '', '', '2022-05-04 13:35:08', 1),
(289, 4, 'ROJAS MALAVER MILAGROS', '', '10406103591', '', '', '', '', '2022-05-05 14:17:03', 1),
(290, 2, '', 'CARLOS ENRIQUE MARTHANS RUIZ', '05372246', '', '', '', '', '2022-05-06 13:42:02', 1),
(291, 2, '', 'JANNY SELENA CASTRO PEREZ', '41668285', '', '', '', '', '2022-05-06 14:28:03', 1),
(292, 4, 'RUIZ REINOSO JHORDY', '', '10701880680', '', 'RICARDO PALMA 379', '', '', '2022-05-07 14:13:59', 1),
(293, 4, 'NAVAS ARMAS CARLOS AUGUSTO', '', '10415880532', '', 'CALLE 8 DE NOVIEMBRE N°144  CARDOSO- BELEN', '', '', '2022-05-09 14:00:45', 1),
(294, 2, '', 'MIGUEL ANGEL RODRIGUEZ RODRIGUEZ', '70830057', '', '', '', '', '2022-05-09 14:27:25', 1),
(295, 4, 'INVERSIONES VAYRA SOCIEDAD ANONIMA CERRADA', '', '20603629621', '', 'AV. ALFONSO UGARTE # 285 - BELEN', '', '', '2022-05-10 12:55:16', 1),
(296, 4, 'SERVICIOS MULTIPLES E INVERSIONES LOS SOLES E.I.R.L.', '', '20528421157', '', 'BRASILIA # 666', '', '', '2022-05-10 15:14:12', 1),
(297, 2, '', 'SHEYLA ROSA VASQUEZ HIDALGO', '40739081', '', '', '', '', '2022-05-12 13:29:41', 1),
(298, 4, 'IMAN CHUMPITAZ NOELIA ISABEL', '', '10710426835', '', 'CA. LORETO 828', '', '', '2022-05-14 14:49:46', 1),
(299, 2, '', 'HEINER CLAUDEL HUERTA ZELAYA', '70474681', '', '', '', '', '2022-05-14 15:12:53', 1),
(300, 2, '', 'DIANA LUZ BARTRA CALAMPA', '42640248', '', '', '', '', '2022-05-15 13:59:31', 1),
(301, 4, 'MINISTERIO DE CULTURA', '', '20537630222', '', 'AV. JAVIER PRADO ESTE  2465 - SAN BORJA  - LIMA', '', '', '2022-05-15 14:24:55', 1),
(302, 2, '', 'JULIO CESAR PINEDO REVILLA', '42184364', '', '', '', '', '2022-05-16 14:20:28', 1),
(303, 4, 'MULTIMARCA Y SERVICIOS GENERALES C ', '', '20605923811', '', 'CALLE LAS ORQUIDEAS 173', '', '', '2022-05-17 12:59:54', 1),
(304, 4, 'IMPORTACIONES Y TECNOLOGIA S.R.L', '', '20502243927', '', 'AV. ELMER FAUCETT 341 - SAN MIGUEL - LIMA', '', '', '2022-05-19 14:12:57', 1),
(305, 4, 'INVERSIONES PERU COMBUSTIBLES S.A.', '', '20450948986', '', 'AV. LA MARINA 944', '', '', '2022-05-19 14:14:06', 1),
(306, 4, 'MUNICIPALIDAD DISTRITAL DE TAPICHE', '', '20229244869', '', 'PALALCIO MUNICIPAL S/N IBERIA', '', '', '2022-05-20 15:21:03', 1),
(307, 2, '', 'CARLOS VICENTE MANRIQUE DE LARA ESTRADA', '08443553', '', '', '', '', '2022-05-21 14:31:19', 1),
(308, 4, 'GUERRA DEL CASTILLO HAROLD LEONELL', '', '10475170623', '', 'PSJE LOS LIRIOS MZ C LT 13 - SANTO TOMAS', '', '', '2022-05-21 14:50:56', 1),
(309, 4, 'INSTITUTO MEDICO DE DIAGNOSTICO POR LABORATORIO S.A.C.-INMEDIA LABORATORIOS S.A.C', '', '20541250205', '', 'CALLE AMAZONAS  MZ C LT 11', '', '', '2022-05-21 15:01:19', 1),
(310, 2, '', 'ROY HERNAN PISCO PANDURO', '41150784', '', '', '', '', '2022-05-21 15:22:20', 1),
(311, 4, 'EXPLORACIONES AMAZONICAS S.A.', '', '20103964921', '', 'AV. LA MARINA # 340', '', '', '2022-05-21 15:57:12', 1),
(312, 4, 'CENTRO ODONTOLOGICO INTEGRAL SALUDENT E.I.R.L', '', '20602103871', '', 'CALLE PEVAS 633', '', '', '2022-05-22 13:09:45', 1),
(313, 4, 'MAMANI VILLACORTA EDUARDO', '', '10053180197', '', 'CALLE AREQUIPA 1157', '', '', '2022-05-24 14:32:25', 1),
(314, 2, '', 'JIMMY JOSEPH RENGIFO DAVILA', '70556768', '', '', '', '', '2022-05-25 12:57:28', 1),
(315, 2, '', 'XIOMARA MARLLOLY ALVARADO RODRIGUEZ', '73869959', '', '', '', '', '2022-05-25 13:11:03', 1),
(316, 4, 'VPTM IQUITOS S.A.C.', '', '20602623964', '', 'CALLE MOORE N° 682', '', '', '2022-05-27 12:51:15', 1),
(317, 4, ' BENITES & MORALES CONSULTORES GLOBAL E.I.R.L.', '', '20609258218', '', 'CAL.MONITOR HUASCAR NRO. 443 LORETO - MAYNAS - IQUITOS', '', '', '2022-05-29 14:50:57', 1),
(318, 2, '', 'CLAUDIA ROSALIA VEINTIMILLA DAZA ', '45062095', '', '', '', '', '2022-05-29 15:19:31', 1),
(319, 2, '', 'null null null', '05338042', '', '', '', '', '2022-05-29 16:23:07', 1),
(320, 2, '', 'ROGER DENNIS AGUILAR VELA', '40626331', '', '', '', '', '2022-05-31 14:12:14', 1),
(321, 2, '', 'NIKOLAI GUILLERMO OU DAVILA LA TORRE', '73219876', '', '', '', '', '2022-06-01 14:09:02', 1),
(322, 2, '', 'DIBBA SAMANTHA CAMPOS DONAYRE', '45768178', '', '', '', '', '2022-06-02 13:17:53', 1),
(323, 4, 'HUAYA SHAHUANO ABRAHAM', '', '10054054071', '', 'LAS PALMERAS # 372', '', '', '2022-06-03 14:19:00', 1),
(324, 4, 'YUDICHI ORTIZ SONIA', '', '10053448696', '', 'AV. LA MARINA C/ GANZO AZUL # 418', '', '', '2022-06-03 14:36:09', 1),
(325, 4, 'NAVIERA DON MOISES E.I.R.L ', '', '20609102137', '', 'ECHENIQUE # 565', '', '', '2022-06-03 16:44:48', 1),
(326, 2, '', 'FRANCISCO VALENTIN REATEGUI UPIACHIHUAY', '05361901', '', '', '', '', '2022-06-05 12:11:50', 1),
(327, 2, '', 'MINA VANESSA GONZALES PEREZ', '43717451', '', '', '', '', '2022-06-05 14:17:00', 1),
(328, 4, 'CONSORCIO INTERCCAD', '', '20609253372', '', 'JR LOS LAURELES 112', '', '', '2022-06-05 16:10:52', 1),
(329, 4, 'MEDINA GOMEZ ALBERTO', '', '10711256381', '', 'Calle 17 de octubre N°16 - Punhchana', '', '', '2022-06-06 15:18:49', 1),
(330, 4, 'LA POSITIVA SEGUROS Y REASEGUROS S.A.A.', '', '20100210909', '', 'YAVARI 335 - IQUITOS', '', '', '2022-06-07 14:35:19', 1),
(331, 4, 'CHAMORRO PEÑA FERNANDO', '', '10000003986', '', 'CALLE IQUITOS 1122', '', '', '2022-06-10 16:11:51', 1),
(332, 4, 'GREEN WIT COMPANY E.I.R.L.', '', '20605115188', '', 'PSJE BOLIVAR MZ G LT 4', '', '', '2022-06-11 12:53:12', 1),
(333, 4, 'TECNOLOGIA Y SERVICIOS J ', '', '20572192033', '', 'JIRON LIMA 566', '', '', '2022-06-11 13:08:58', 1),
(334, 2, '', 'OTTO DENIS PEREA TORRES', '07754849', '', '', '', '', '2022-06-11 15:14:53', 1),
(335, 2, '', 'LETTY CONSUELO NORIEGA YAICATE', '40141495', '', '', '', '', '2022-06-13 13:45:13', 1),
(336, 2, '', 'NEAL JUNIORS SANDOVAL LOPEZ', '40302995', '', '', '', '', '2022-06-15 13:45:14', 1),
(337, 2, '', 'ANONIMO', '45994131', '', '', '', '', '2022-06-15 15:00:21', 1),
(338, 2, '', 'SHEILY VILLANUEVA AMES', '41949057', '', '', '', '', '2022-06-15 16:25:09', 1),
(339, 4, 'PIZANGO VELA MANUEL', '', '10422274711', '', 'CALLE JUAN CARLOS DEL AGUILA N°14 -BELEN', '', '', '2022-06-16 12:56:25', 1),
(340, 2, '', 'GERARDO JORGE LUIS HERRERA MAGALLANES', '46606119', '', '', '', '', '2022-06-18 14:48:05', 1),
(341, 2, '', 'CARLOS GONZALEZ ASPAJO', '10343235', '', '', '', '', '2022-06-18 15:42:51', 1),
(342, 2, '', 'ELSA DOLORES RUIZ BURGA', '70231441', '', '', '', '', '2022-06-19 13:10:09', 1),
(343, 4, 'OLIVER URE PALIZA LOPEZ ', '', '20435748070', '', 'AV. QUIÑONES KM. 4', '', '', '2022-06-19 13:39:38', 1),
(344, 4, 'WILCAT SYSTEMS E.I.R.L.', '', '20567128441', '', 'PSJE PIURA # 05', '', '', '2022-06-19 14:52:56', 1),
(345, 2, '', 'JOHSSY AQUILA HUAYANAY VIERA', '44492105', '', '', '', '', '2022-06-20 13:11:57', 1),
(346, 4, 'PANDURO SALAZAR DE TENAZOA JENNYFERR', '', '10425510563', '', 'pasaje 7 de Junio 139 - Iquitos', '', '', '2022-06-20 15:27:08', 1),
(347, 4, 'IMPORTACIONES PANAL E.I.R.L', '', '20502257804', '', '', '', '', '2022-06-20 16:45:18', 1),
(348, 4, 'FRESENIUS MEDICAL CARE DEL PERU S.A.', '', '20462793791', '', 'JAVIER PRADO OESTE 2442, MAGDALENA DEL MAR 17', '', '', '2022-06-21 12:49:13', 1),
(349, 2, '', 'LUIS ANTONIO MURO SALAZAR', '45472710', '', '', '', '', '2022-06-21 13:31:06', 1),
(350, 2, '', 'MILAGROS DEL PILAR CHARPENTIER KOO', '40618067', '', '', '', '', '2022-06-22 12:10:54', 1),
(351, 4, 'ASOCIACION CORPORATIVA CENTRO DE ESTUDIOS PROFESIONALES MURRIET', '', '20601355028', '', 'AV. TUPAC AMARU 911 - YARINACOCHA UCAYALI', '', '', '2022-06-23 12:46:42', 1),
(352, 2, '', 'CESAR AUGUSTO GATICA FLORES', '01124402', '', '', '', '', '2022-06-23 12:49:47', 1),
(353, 4, 'JIMENA PATRICIA JIMENEZ CAYCHO ', '', '10710880536', '', 'CALLE PANAMA 869', '', '', '2022-06-23 15:18:05', 1),
(354, 2, '', 'MIGUEL ANGEL CASTILLO AREVALO', '42519074', '', '', '', '', '2022-06-25 12:24:09', 1),
(355, 4, 'PINEDO RAMIREZ SHEYLA CARITO', '', '10705635451', '', 'YAVARI # 951', '', '', '2022-06-25 14:45:03', 1),
(356, 4, 'GODOY PEREZ LUIS GABRIEL', '', '10061277680', '', 'HUALLAGA 505', '', '', '2022-06-26 15:35:43', 1),
(357, 4, 'ESPOSITO BORJA MIRIAN ESTEFAN', '', '10482446103', '', 'MOORE # 459', '', '', '2022-06-26 15:56:34', 1),
(358, 2, '', 'ROSA ENCARNACION MERA ARO', '05327371', '', '', '', '', '2022-06-27 12:56:30', 1),
(359, 4, 'C&D BUSINESS SRL', '', '20608194844', '', 'PASAJE CLAVERO 1628', '', '', '2022-06-27 14:14:37', 1),
(360, 2, '', 'GAUDENCIO ANTONIO QUIROZ PASQUEL', '70028608', '', '', '', '', '2022-06-27 14:39:20', 1),
(361, 4, 'TUESTA MORENO MANUEL', '', '10053360373', '', '', '', '', '2022-06-27 15:26:04', 1),
(362, 4, 'ORGANISMO SUPERVISOR DE INVERSION PRIVADA EN TELECOMUNICACIONES-OSIPTEL', '', '20216072155', '', 'CALLE LA PROSA 136 - SAN BORJA', '', '', '2022-06-28 12:10:55', 1),
(363, 2, '', 'VICTOR FERNANDO ARMAS FREITAS', '41559887', '', '', '', '', '2022-06-28 13:30:15', 1),
(364, 4, 'FREITAS ROJAS LUIS FERNANDO', '', '10717732800', '', 'PUTUMAYO #760', '', '', '2022-06-28 15:30:38', 1),
(365, 2, '', 'CESAR JIMMY CORDOVA OROCHE', '45015609', '', '', '', '', '2022-06-30 14:03:42', 1),
(366, 4, 'MAYRAS IMPORT EXPORT E.I.R.L.', '', '20103836418', '', 'PSJ JORGE CHAVEZ 1905- URB MIAMI', '', '', '2022-07-01 12:44:57', 1),
(367, 4, 'SCAG IQUITOS S.A.C.', '', '20600654498', '', 'AV. LA MARINA 543', '', '', '2022-07-01 14:08:43', 1),
(368, 4, 'DIOPPE SINUIRI KEVIN JORDY', '', '10476117530', '', 'LOS CLAVELES 112', '', '', '2022-07-02 10:52:04', 1),
(369, 2, '', 'JUAN GABRIEL PASTOR GONZALES', '43054196', '', '', '', '', '2022-07-03 15:00:16', 1),
(370, 4, 'PELAEZ MORILLAS ANTHONY MITCHELL', '', '10475785903', '', 'CALLE LAS AMAPOLAS 119 SALAMANCA -LIMA', '', '', '2022-07-04 13:59:43', 1),
(371, 2, '', 'JORGE LUIS RIVERA LOPEZ', '05269396', '', '', '', '', '2022-07-05 14:17:36', 1),
(372, 4, 'NUNEZ SALAZAR JORGE LUIS', '', '10052910124', '', 'CALLE CAHUIDE # 359', '', '', '2022-07-05 14:34:54', 1),
(373, 2, '', 'JORGE SEVERINO D\'AZEVEDO REATEGUI', '44538205', '', '', '', '', '2022-07-06 14:08:05', 1),
(374, 2, '', 'KARINA SORIA SIFUENTES', '10416438337', '', 'LAS MERCEDES # 370', '', '', '2022-07-06 14:13:43', 1),
(375, 2, '', 'EDSON DIESTEFANO RACCHUMICK CASTILLO', '   70840030', '', '', '', '', '2022-07-06 15:03:49', 1),
(376, 2, '', 'IBETH ARMAS SILVA', '10434795911', '', 'MONITOR HUASCAR #657- PUNCHANA', '', '', '2022-07-06 15:54:28', 1),
(377, 2, '', 'ANTHONY ANDRE RODRIGUEZ INUMA', '45252591', '', '', '', '', '2022-07-08 14:14:43', 1),
(378, 4, 'D&D  TRANSPORTES  Y SOLUCIONES SAC', '', '20607496065', '', 'CALLE HEROES DEL CENEPA MZ B LT 21', '', '', '2022-07-09 12:16:45', 1),
(379, 4, 'LORETO GLOBAL INVERSIONES E.I.R.L.', '', '20604101761', '', 'tavara 1549', '', '', '2022-07-12 12:28:14', 1),
(380, 2, '', 'ALESSANDRA PATRICIA BARRIA GOMEZ', '70515438', '', '', '', '', '2022-07-12 13:31:20', 1),
(381, 4, 'MISION JESED', '', '20511758085', '', 'AV EL CARMEN N° 301 URB. SAN ROQUE ', '', '', '2022-07-12 14:25:25', 1),
(382, 4, 'USHIÑAHUA PEREZ TONNY BLADY', '', '10469017627', '', '', '', '', '2022-07-14 14:08:27', 1),
(383, 2, '', 'MEDINA SALAZAR DALIA ROSARIO', '40987981', '', '', '', '', '2022-07-14 14:13:29', 1),
(384, 4, 'MINISTERIO DE SALUD', 'MINISTERIO DE SALUD', '20131373237', '', 'AV. SALAVERRY N° 801 LIMA - JESUS MARIA ', '', '', '2022-07-14 14:19:48', 1),
(385, 4, 'ROBERTO RAY COBA ', '', '41372112', '', '', '', '', '2022-07-17 13:45:23', 1),
(386, 4, 'PALIZA LOPEZ OLIVER URI', '', '10435748070', '', 'AV QUIÑONES KM 4', '', '', '2022-07-17 14:44:10', 1),
(387, 4, 'CONTRATISTAS GENERALES AMAZON LOGISTICS S.R.L', '', '20606351390', '', 'PJ . 2 FRONTERAS MZ B LOTE 3 A.H LOS CEDROS ', '', '', '2022-07-18 13:27:05', 1),
(388, 4, 'DISTRIBUCIONES DIESEL PERU S.A.C.', '', '20100020441', '', 'JR CASTRO RONCEROS N  778 ZONA INDUSTRIAL - LIMA', '', '', '2022-07-21 14:17:57', 1),
(389, 2, '', 'AREVALO ROJAS  DIANA CAROLINA ', '46530373', '', '', '', '', '2022-07-22 15:36:10', 1),
(390, 4, 'INVERSIONES  Y SERVICIOS GENERALES ARSA EIRL ', '', '20606532041', '', 'TENIENTE PINGLO 132', '', '', '2022-07-23 14:20:11', 1),
(391, 2, '', 'GOMEZ RUIZ ROMINA GRISEL', '42518573', '', '', '', '', '2022-07-23 15:35:39', 1),
(392, 4, 'PANDURO OLIVEIRA XAVIER AUGUSTO', '', '10705584252', '', 'Monitor huascar 443', '', '', '2022-07-24 13:19:28', 1),
(393, 2, '', 'JOHN NORES CANDELA', '09778955', '', '', '', '', '2022-07-24 16:35:31', 1),
(394, 2, '', 'SANCHEZ AGUILAR  DE YALTA MIREYA GRABIELA ', '47757272', '', '', '', '', '2022-07-25 12:58:22', 1),
(395, 4, 'SILVIA DEL PILAR RENGIFO SOREGUI', '', '1005281412', '', 'JR PAJATEN 164 BANDA DE SHILICAYO TARAPOTO- SAN MARTIN ', '', '', '2022-07-28 14:14:04', 1),
(396, 2, '', 'JIMMY FRANK RUIZ VELA', '41210918', '', '', '', '', '2022-07-30 14:59:34', 1),
(397, 4, 'PAREDES CANCINO KELLY INGRID', '', '10731168313', '', 'Garcia calderon  E21', '', '', '2022-07-31 13:48:01', 1),
(398, 4, 'MORENO PINEDO KEPLER', '', '10476436104', '', 'calle las delicias 428', '', '', '2022-07-31 14:31:58', 1),
(399, 2, '', 'FRED WILLIAM CHU KOO', '05341642', '', '', '', '', '2022-08-01 13:54:41', 1),
(400, 4, 'CONSTRUCTORA Y ESTRUCTURAS DAVILA S.A.C.', '', '20528331913', '', 'AV. FRERE #1409', '', '', '2022-08-03 13:54:59', 1),
(401, 4, 'GARCIA CURITIMA LOYOLA TATIANA', '', '10462816486', '', 'TARMA # 135', '', '', '2022-08-04 11:35:23', 1),
(402, 2, '', 'GUAYLUPO FERREIRA SILVIA ELENA ', '72003685', '', '', '', '', '2022-08-04 13:30:03', 1),
(403, 2, '', 'RUIZ FARFAN JOSE RAUL ', '43544763', '', '', '', '', '2022-08-05 15:15:30', 1),
(404, 4, 'W Y M SERVICIOS GENERALES, CONSULTORIA Y EJECUCION DE PROYECTOS S.R.L.', '', '20601369665', '', 'PSJE LAS AZUCENAS MZ A L10- SAN JUAN BAUTISTA', '', '', '2022-08-07 14:37:39', 1),
(405, 4, 'HIDALGO HERNANDEZ GIOVANNI', '', '10053937191', '', '', '', '', '2022-08-07 15:37:14', 1),
(406, 2, '', 'MIGUEL ANGEL SOTOMAYOR DEL CASTILLO', '42425401', '', 'ARICA 533', '', '', '2022-08-07 16:04:08', 1),
(407, 2, '', 'SANCHEZ GUERRA GIANINA DIONISIA ', '74130723', '', '', '', '', '2022-08-08 13:50:22', 1),
(408, 2, '', 'RACCHUMICK CASTILLO EDSON DIESTEFANO', '70480030', '', '', '', '', '2022-08-09 15:54:28', 1),
(409, 4, 'CAPCHA VEGA LUIS ENRIQUE', '', '10408410431', '', 'CALLE LOS PERIODISTAS #439-iquitos', '', '', '2022-08-10 10:38:44', 1),
(410, 4, 'MANU ', '', '20607254924', '', 'BRASILIA # 538', '', '', '2022-08-11 12:49:42', 1),
(411, 2, '', 'RICHARD JOEL MEZA VASQUEZ', '44588613', '', '', '', '', '2022-08-11 13:44:03', 1),
(412, 4, 'CORPORACION HONGJU S.A.C.', '', '20606273704', '', '', '', '', '2022-08-13 14:36:34', 1),
(413, 2, '', 'SINACAY VASQUEZ HERLESS', '05700505', '', '', '', '', '2022-08-13 14:53:52', 1),
(414, 4, 'RIVAS VILLACORTA KARIN IVANA', '', '10053577143', '', 'LORETO N° 749 2do PISO', '', '', '2022-08-14 14:13:12', 1),
(415, 2, '', 'ROSA YSABEL CHAVEZ RIOS', '42067994', '', '', '', '', '2022-08-15 15:10:52', 1),
(416, 4, 'GREL', '', '20408454370', '', '', '', '', '2022-08-16 13:44:15', 1),
(417, 2, '', 'JOSE LUIS DIAZ LINARES', '40627280', '', '', '', '', '2022-08-18 13:09:58', 1),
(418, 4, 'ASOC CIVIL PROYECTO AMAZONAS', '', '20329028471', '', 'JR MOORE N°655', '', '', '2022-08-20 14:35:04', 1),
(419, 2, '', 'RODRIGUEZ SILVA DARWIN PEDRO ', '41455896', '', '', '', '', '2022-08-21 14:26:21', 1),
(420, 4, 'NAVARRO HUACACHI EDWARD ENRIQUE', '', '10737684798', '', 'PSJ LIBERTAD MZ E LT 5', '', '', '2022-08-23 16:38:31', 1),
(421, 2, '', 'CRUZ VASQUEZ JIHOVANA ISABEL', '43296659', '', '', '', '', '2022-08-23 16:54:36', 1),
(422, 4, 'D.J.L SERVICIOS GENRRALES MOZ E.I.R.L', '', '20602681654', '', 'SAN MARTIN DE PORRES', '', '', '2022-08-24 13:51:53', 1),
(423, 4, 'UNIDAD DE GESTION EDUCATIVA UCAYALI - CONTAMANA', '', '20450940811', '', 'CALLA BUENA AVENTURA MARQUEZ S/N', '', '', '2022-08-24 14:16:37', 1),
(424, 4, 'MARINA DE GUERA DEL PERU ', '', '201534081910', '', '', '', '', '2022-08-25 14:55:23', 1),
(425, 4, 'HONDA DEL PERU S.A', '', '20103733015', '', '', '', '', '2022-08-26 13:08:22', 1),
(426, 2, '', 'CARLOS VICENTE MANRIQUE DE LARA ESTRADA ', '8443553', '', '', '', '', '2022-08-27 15:31:56', 1),
(427, 4, 'CLEAN PACIFIC S.A.C.', '', '20549503579', '', 'JR FRANCISCO DE ZELA 265 CHUCUITO- CALLAO', '', '', '2022-08-28 16:03:19', 1),
(428, 4, 'TRANSPORTE FLUVIAL JV E.I.R.L', '', '20114044726', '', 'PSJE LEONOR N°344 ', '', '', '2022-08-29 13:06:36', 1),
(429, 4, 'COMERCIALIZADORA Y SERVICIOS GENERALES DELCAR S.A.C.', '', '20600946804', '', 'CALLE ATAHUALPA 938', '', '', '2022-08-29 14:43:23', 1),
(430, 4, 'PINILLOS CASTILLO SEGUNDO MOISES IVAN', '', '10728008399', '', 'libertad 434', '', '', '2022-08-30 13:20:26', 1),
(431, 4, 'VIVIANA PINEDO ROJAS ', '', '18207387', '', '', '', '', '2022-08-30 15:08:09', 1),
(432, 4, 'INVERSIONES GENERALES ZEYKA E.I.R.L', '', '20607553662', '', 'PSJE BEGONIAS 16', '', '', '2022-09-01 14:09:09', 1),
(433, 2, '', 'IRACEMA VASQUEZ SOPLIN ', '05409710', '', '', '', '', '2022-09-04 13:57:11', 1),
(434, 2, '', 'HEREDIA QUEZADA GREGORIO ', '05399335', '', '', '', '', '2022-09-04 14:32:56', 1),
(435, 4, 'CONSULTORIO ADONTOLOGICO ORTHOFACE EIRL ', '', '20608756303', '', 'AV. SAN ANTONIO 960', '', '', '2022-09-04 15:01:37', 1),
(436, 2, '', 'ERATOSTENES MAGIPO MERA ', '40025360', '', '', '', '', '2022-09-04 16:10:45', 1),
(437, 2, '', 'RAY CRISTIAN FLORES GARCIA', '44075575', '', '', '', '', '2022-09-04 17:21:41', 1),
(438, 4, 'CONSTRUCCIONES Y SERVICIOS JACCOK SCRL', '', '20603473583', '', 'SEÑOR DE LOS MILAGROS 380 SAN -JUAN', '', '', '2022-09-05 13:21:04', 1),
(439, 4, 'CANELO VELA JESUS GABRIEL', '', '10427910151', '', '', '', '', '2022-09-05 13:44:32', 1),
(440, 2, '', 'GLADYZ MICHELLE NATALIE RIVERA DA COSTA', '72700125', '', '', '', '', '2022-09-05 14:16:24', 1),
(441, 2, '', 'CHRISTIAN SORIA PINEDO ', '42020204', '', '', '', '', '2022-09-05 14:32:57', 1),
(442, 2, '', 'RAMIREZ VELA MAYTE', '05357670', '', '', '', '', '2022-09-06 13:57:17', 1),
(443, 4, 'CMA OPERADOR INTEGRAL SOCIEDAD ANONINA CERRADA-CMA OPERADOR INTEGRAL S.A.C.', '', '20548564400', '', 'AV 1 URB AERO INDUSTTRIAL MZ A LT 6- CALLAO ', '', '', '2022-09-06 14:45:21', 1),
(444, 4, 'KALULU EIRL', '', '20541186604', '', 'CALLE LOS FRUTALES D- 7A', '', '', '2022-09-10 13:54:40', 1),
(445, 2, '', 'ORIEL ALBERTO CARPIO JARAMILLO', '41541017', '', '', '', '', '2022-09-10 14:21:11', 1),
(446, 2, '', 'LUIS ANTONIO BABILONIA NUÑEZ', '70613296', '', '', '', '', '2022-09-11 13:16:20', 1),
(447, 4, 'COMERCIAL DISTRIBUIDORA VICKAR S.A.C.', '', '20601008611', '', 'ELIAS AGUIRRE  1211', '', '', '2022-09-13 14:01:02', 1),
(448, 4, 'SERVICIOS TURISTICOS Y NEGOCIOS DE EXPORTACION E IMPORTACION MONTECARLO E.I.R.L.', '', '20493578007', '', 'MLC. TARAPACA S/N NAUTA', '', '', '2022-09-14 11:40:14', 1),
(449, 2, '', 'TEDDY ENRIQUE SIGUAS GIERATHS', '05356971', '', '', '', '', '2022-09-21 14:28:37', 1),
(450, 2, '', 'PERCY SOLANO VARGAS DAVILA ', '054096830', '', '', '', '', '2022-09-21 15:02:26', 1),
(451, 4, 'CHUMBE RODRIGUEZ MARCO DENNIS', '', '10421611772', '', 'CALLE DIEGO DE ALMAGRO / CABO PANTOJA ', '', '', '2022-09-22 11:46:57', 1),
(452, 4, 'ALATA MESTANZA JHANK PIER', '', '10729661703', '', '', '', '', '2022-09-22 13:45:20', 1),
(453, 4, 'MACEDO ROJAS JORGE ANTONIO', '', '10053611562', '', 'JOSE GALVEZ 1570- IQUITOS ', '', '', '2022-09-23 13:58:07', 1);
INSERT INTO `clientes` (`id_cliente`, `id_tipodocumento`, `cliente_razonsocial`, `cliente_nombre`, `cliente_numero`, `cliente_correo`, `cliente_direccion`, `cliente_direccion_2`, `cliente_telefono`, `cliente_fecha`, `cliente_estado`) VALUES
(454, 2, '', 'CHRISTIAN BABILONIA VARGAS ', '40414695', '', '', '', '', '2022-09-23 15:00:40', 1),
(455, 2, '', 'ISRAEL ESTUARDO VELEZ ZUTA ', '06794164', '', '', '', '', '2022-09-23 15:02:48', 1),
(456, 4, 'INGESAT SRL', '', '20493499981', '', 'CALLE ATLANDIDA 430- IQUITOS ', '', '', '2022-09-24 13:10:48', 1),
(457, 2, '', 'JEHOSHUA RAFAEL MICHELANGELO LOPEZ LOPEZ ', '05394839', '', '', '', '', '2022-09-24 14:38:26', 1),
(458, 4, 'MUNICIPALIDAD DISTRITAL DE ROSA PANDURO', '', '20567286941', '', 'CALLE SAN ROMAN S/N', '', '', '2022-09-25 15:43:53', 1),
(459, 4, 'FLORENCIO VASQUEZ RIBEYRO E.I.R.L.', '', '20493461665', '', 'NAPO 359', '', '', '2022-09-28 14:21:26', 1),
(460, 2, '', 'CAMUS LOAYZA  YASSER YERSIN', '70128189', '', 'JR PUTUMAYO 1125', '', '', '2022-09-29 12:36:05', 1),
(461, 2, '', 'GUTIERREZ ALVAN ABEL', '40308285', '', 'CALLE LORETO  949', '', '', '2022-10-02 13:05:47', 1),
(462, 4, 'PERUANOS EMPRENDEDORES DECIDIDOS A SUPERARSE S.A.C. - PEDSU S.A.C.', '', '20565651839', '', 'CALLE 2 MZA, D LOTE 22 APV .SANTA MARIA  DE NARANJAL DE SAN  MARTIN DE PORRES -LIMA', '', '', '2022-10-02 14:00:24', 1),
(463, 4, 'MUNICIPALIDAD DISTRITAL DE PEVAS', '', '20195103101', '', 'FRENTE A LA PLAZA DE ARMAS SIN NUMERO', '', '', '2022-10-04 12:49:44', 1),
(464, 2, '', 'NIEVES EMPERATRIZ POZO TAPULLIMA', '41192739', '', '', '', '', '2022-10-05 12:18:09', 1),
(465, 2, '', 'LIZBETH RENGIFO PINEDO', '05355561', '', '', '', '', '2022-10-05 14:29:47', 1),
(466, 2, '', 'f f f', '41028748', '', '', '', '', '2022-10-07 11:16:52', 1),
(467, 4, 'WILBER DUEÑAS  FOTTI', '', '10434643550', '', 'DOS MAYO 353', '', '', '2022-10-07 15:04:27', 1),
(468, 4, 'GOBIERNO REGIONAL DE LORETO', '', '20493196902', '', 'AV. ABELARDO QUIÑONES KM. 1.5', '', '', '2022-10-08 14:29:50', 1),
(469, 2, '', 'JULIO CESAR CARDENAS FERREYRA', '41889657', '', '', '', '', '2022-10-08 14:58:00', 1),
(470, 4, 'INVERSIONES EVILA', '', '10487239611', '', 'CALLE MALECON MAZAN S/N ', '', '', '2022-10-10 13:11:46', 1),
(471, 4, 'INVERSIONES DULCE IMPERIO S.A.C', '', '20609004798', '', 'CALLE RICARDO PALMA #732-IQUITOS', '', '', '2022-10-12 14:26:30', 1),
(472, 4, 'TRANSPORTE Y SERVICIOS GENERAL FATIMA ', '', '10473788905', '', 'CALLE ABANCAY N°334 (LAS PALMERAS) - S.J.B', '', '', '2022-10-14 16:32:21', 1),
(473, 4, 'NEGOCIOS E INVERSIONES EL SAN MARTINENSE ', '', '20607904155', '', 'AV. ALFONSO UGARTE #615', '', '', '2022-10-15 11:49:53', 1),
(474, 4, ' C.V FORESTAL E.I.R.L', '', '20608022504', '', 'CAL.15 DE JUNIO NRO. 229 (A LA ALTURA DE LA PUTUMAYO CDRA 25) LORETO - MAYNAS - IQUITOS', '', '', '2022-10-18 11:38:10', 1),
(475, 4, 'EQUIPOS Y MAQUINARIA PESADA DIESEL S.A.C. ', '', '20554369759', '', 'AV. LA  ENCALADA #1257 INT .803 SANTIAGO DE SURCO', '', '', '2022-10-19 15:49:39', 1),
(476, 4, 'VELA DIAZ HUGO', '', '10079757450', '', 'NAPO 1288', '', '', '2022-10-20 15:34:46', 1),
(477, 2, '', 'JACKER CAMILO LOPEZ RUIZ ', '44819581', '', '', '', '', '2022-10-21 12:11:23', 1),
(478, 2, '', 'GILBERTO ROLAND ALVARADO ARBILDO', '05226218', '', '', '', '', '2022-10-21 13:45:32', 1),
(479, 2, '', 'SHEYLA ROXANA ALVARADO RAMIREZ', '40589373', '', '', '', '', '2022-10-22 14:13:19', 1),
(480, 2, '', 'RIMMEL SMYTH CHIRINOS ZAGACETA', '05371247', '', '', '', '', '2022-10-26 13:28:49', 1),
(481, 2, '', 'ANITA DE JESUS REPETTO URTEAGA ', '70811162', '', '', '', '', '2022-10-26 14:16:23', 1),
(482, 2, '', 'JANET GRACIELA SANTA CRUZ SALAS ', '40904470', '', '', '', '', '2022-10-26 15:07:15', 1),
(483, 2, '', 'ESTEBAN ABEL RIVADENEYRA GUERRERO', '09432296', '', '', '', '', '2022-10-26 15:22:24', 1),
(484, 4, 'USA CONTRATISTAS GENERALES S.R.L. ', '', '20108397005', '', 'CALLE RUBENS N°205 OF. 401 SAN BORJA - LIMA', '', '', '2022-10-26 15:57:39', 1),
(485, 4, 'VELA HERNANDEZ CARMEN MAGNOLIA', '', '10469412739', '', 'JR. TRUJILLO N°1843', '', '', '2022-10-28 13:56:38', 1),
(486, 2, '', 'ROBERTO OSWALDO CORREA FLORES', '05382509', '', '', '', '', '2022-10-30 12:43:42', 1),
(487, 4, 'M Y L MEDICAL E.I.R.L.', '', '20601525730', '', 'PJ. GUERRA NRO. 16 (FRENTE AL MONTE) LORETO - MAYNAS - SAN JUAN BAUTISTA', '', '', '2022-10-31 11:17:43', 1),
(488, 2, '', 'OCTAVIO PORTOCARRERO  AREVALO', '05358623', '', '', '', '', '2022-11-02 14:39:56', 1),
(489, 4, 'TRITON EVENTS ', '', '20602492312', '', 'SAN ROMAN 900', '', '', '2022-11-02 15:12:27', 1),
(490, 4, 'BRYCA GIFT E.I.R.L', '', '20607630918', '', 'CALLE GARCIA CALDERON E - 21', '', '', '2022-11-03 13:51:33', 1),
(491, 2, '', 'TEDDY SIGUAS GIERATHS', '05365037', '', 'AV. TRUJILLO #1064-A', '', '', '2022-11-04 14:25:17', 1),
(492, 2, '', 'JUAN CARLOS PAZ RODRIGUEZ', '30836556', '', '', '', '', '2022-11-07 15:25:43', 1),
(493, 2, '', 'CARLOS ALBERTO MORI CHAVEZ', '05372862', '', '', '', '', '2022-11-10 12:56:57', 1),
(494, 4, 'AQUA EXPEDITIONS S.A.C.', '', '20493584821', '', 'CALLE RAYMONDI N°253 IQUITOS - MAYNAS - LORETO ', '', '', '2022-11-11 14:18:31', 1),
(495, 4, 'FLORES CORREA LOYER', '', '10431806237', '', 'CALLE YURIMAGUAS MZ. J LT. 41', '', '', '2022-11-12 13:58:24', 1),
(496, 4, 'FRANCY HIDDIER RAMOS LOAYZA ', '', '10465503519', '', 'JR. ABANCAY 281', '', '', '2022-11-13 14:07:33', 1),
(497, 2, '', 'MICHEL ANTHONY MELENDEZ DAVILA ', '70081949', '', '', '', '', '2022-11-13 14:56:33', 1),
(498, 4, 'MAESTRANZA Y ASTILLERO DEL ORIENTE E.I.R.L.', '', '20606742844', '', 'CALLE PIURA N°363', '', '', '2022-11-13 15:09:39', 1),
(499, 2, '', 'WANDER ENRIQUE INGA ZEVALLOS', '71035355', '', '', '', '', '2022-11-14 14:11:46', 1),
(500, 4, 'KANAY S.A.C.', '', '20553255709', '', 'AV. JOSE LARCO 1232 DPTO 701', '', '', '2022-11-15 13:17:48', 1),
(501, 2, '', 'GRACY JHERMET VASQUEZ TORRES ', '47605820', '', '', '', '', '2022-11-16 14:25:40', 1),
(502, 4, 'PARAISO IQUITOS E.I.R.L', '', '20366681648', '', 'PROSPERO 446', '', '', '2022-11-19 13:04:33', 1),
(503, 4, 'CONSORCIO FLUVIAL DEL AMAZONAS', '', '20601312710', '', 'PEVAS 197', '', '', '2022-11-20 12:06:45', 1),
(504, 2, '', 'JULIO ABEL SOPLIN SANCHEZ', '42978190', '', '', '', '', '2022-11-20 13:42:35', 1),
(505, 2, '', 'NELSON JAVIER BUENAÑO GARCIA', '43453521', '', '', '', '', '2022-11-20 15:06:37', 1),
(506, 4, 'ZAMORA DEL CASTILLO PAOLA VIVIANA', '', '10401834988', '', 'URB. SARGENO LORES O-5', '', '', '2022-11-21 14:35:40', 1),
(507, 4, 'ANGULO RIOS JAIME', '', '10052533096', '', 'CALLE LORETO 761-A IQUITOS ', '', '', '2022-11-22 13:40:35', 1),
(508, 2, '', 'JORGE DANILO JARA VELA', '05365257', '', '', '', '', '2022-11-24 14:13:27', 1),
(509, 4, 'GRUPO TINCOL SAC', '', '20610098356', '', '', '', '', '2022-11-25 16:45:16', 1),
(510, 4, 'SANTILLAN VEGA NORA DORILA', '', '10444190901', '', 'SARGENTO LORES 873', '', '', '2022-11-30 13:47:33', 1),
(511, 4, 'B Y V COMERCIALIZADORA S.R.L.', '', '20408625107', '', 'CASTILLA 266', '', '', '2022-12-02 15:15:29', 1),
(512, 4, 'COOP. AHORRO Y CREDITO SAN JOSE LTDA 178', '', '20147154365', '', 'PUTUMAYO 350', '', '', '2022-12-03 10:36:44', 1),
(513, 2, '', 'f f f', '05323450', '', '', '', '', '2022-12-04 10:06:55', 1),
(514, 2, '', 'CLEVER IGLESIAS MACAHUACHI', '05415992', '', '', '', '', '2022-12-04 16:46:18', 1),
(515, 4, 'LAURA VELA RODOLFO WILLIAMS', '', '10404950598', '', '', '', '', '2022-12-05 13:20:57', 1),
(516, 2, '', 'chang vsrgas   frank  viente', '05383395', '', 'PSJ los arenales LT 02', '', '', '2022-12-06 14:05:54', 1),
(517, 4, 'D & M PHARMA PERU S.A.C.', '', '20514898961', '', 'AV. PABLO CARRIQUIRY PISO 3 NRO. 660 URB. CORPAC (UNA CUADRA DEL MINISTERIO DEL INTERIOR) LIMA - LIMA - SAN ISIDRO', '', '', '2022-12-06 16:05:02', 1),
(518, 4, 'RIVERO MACEDO CARLOS DANIEL', '', '10729603029', '', 'CALLE. ARGENTINA #17 - LAS MALVINAS ', '', '', '2022-12-07 11:22:49', 1),
(519, 2, '', 'MOISES PANDURO', '45382400', '', '', '', '', '2022-12-07 11:31:43', 1),
(520, 4, 'MEJIA PEREZ LUSGARDA', '', '10712134173', '', 'CALLE. CENTRAL VILLA SELVA MZ. B LT. 23', '', '', '2022-12-07 14:13:22', 1),
(521, 4, 'VELA ASPAJO KATHERIN LUCERO', '', '10728419631', '', 'RICARDO PALMA CDRA 9 - S/N ', '', '', '2022-12-08 14:07:50', 1),
(522, 4, 'CHALL SERVICIOS GENERALES SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', '', '20609379767', '', 'CAL. INDEPENDENCIA N°226 PSJ. SAN ANTONIO, IQUITOS, MAYNAS - LORETO', '', '', '2022-12-08 15:01:44', 1),
(523, 2, '', 'CISSELLA ITZELL GUEVARA GARCIA ', '71287370', '', '', '', '', '2022-12-08 15:55:04', 1),
(524, 2, '', 'KARLA MIGUELINA PEÑA LOPEZ', '74651033', '', '', '', '', '2022-12-09 14:15:39', 1),
(525, 2, '', 'EDITH GIOVANNA  GUIZADO JIMENEZ ', '05360646', '', 'CALLE. TRUJILLO N°1128 PUNCHANA - MAYNAS - LORETO', '', '', '2022-12-10 11:56:56', 1),
(526, 2, '', 'LLACCTAHUAMAN HINOSTROZA LEONAR', '44924809', '', '', '', '', '2022-12-10 12:40:09', 1),
(527, 2, '', 'JOEL GIOVANNI BARRETO GRANDA', '42876840', '', '', '', '', '2022-12-11 15:08:00', 1),
(528, 2, '', 'JOSEPH MICHAEL FARRO RIOS', '41636677', '', '', '', '', '2022-12-16 13:56:51', 1),
(529, 2, '', 'ALMENDRA YARAME MONTOYA', '72646658', '', '', '', '', '2022-12-16 15:41:23', 1),
(530, 4, 'SERVICIOS GENERALES MENINAO S.R.L.', '', '20567246214', '', 'PEVAS 184', '', '', '2022-12-18 13:26:25', 1),
(531, 4, 'MACEDO TORRES DANIEL ESLANDER', '', '10435623927', '', ' PJSJ  INDOAMERICA  B 37', '', '', '2022-12-19 15:33:17', 1),
(532, 2, '', 'LEX ALAN NUÑEZ ZUMAETA', '40231220', '', '', '', '', '2022-12-20 12:48:05', 1),
(533, 4, 'DISTRIBUIDORA CSM E.I.R.L.', '', '20601538165', '', 'JR. PALMERAS 131', '', '', '2022-12-21 15:45:08', 1),
(534, 4, 'INCACEL MOVIL S.A.', '', '20392709194', '', 'URB. SANTA ISABEL LIMA - LIMA -  SAN ISIDRO ', '', '', '2022-12-23 11:57:58', 1),
(535, 2, '', 'ROXANA GONZALES PANDURO', '40529156', '', '', '', '', '2022-12-23 12:11:04', 1),
(536, 2, '', 'DINO AARON CORDOVA SINTI ', '46889471', '', '', '', '', '2022-12-23 12:21:25', 1),
(537, 4, 'BEST DENTAL IQUITOS EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20607145220', '', 'URB. GALICIAS A - 12 PAMPACHICA ', '', '', '2022-12-23 14:55:06', 1),
(538, 4, 'ENTERCOM SOLUCIONES E.I.R.L.', '', '20604469253', '', 'JR. NAPO 592', '', '', '2022-12-24 14:56:47', 1),
(539, 4, 'GARCIA RIOS JACKSON ELIAS', '', '10420503071', '', 'RICARDO PALMA 168', '', '', '2022-12-25 13:42:12', 1),
(540, 4, 'FUND. PARA EL DES. SOSTENIBLE DE LA AMAZ', '', '20451385187', '', 'CAL.SAMANAEZ OCAMPO NRO. 576 LORETO - MAYNAS - IQUITOS', '', '', '2022-12-26 15:36:31', 1),
(541, 2, '', 'JESUS ANTONIO FERNANDEZ ROJAS ', '10126046', '', '', '', '', '2022-12-27 13:05:30', 1),
(542, 4, 'GESTION EDUCATIVA PARA EL DESARROLLO DE COMPETITIVIDAD Y CAPACIDAD PROFESIONAL EMPRESA INDIVIDUAL DE', '', '20606515104', '', 'AV. FREYRE 932', '', '', '2022-12-28 14:05:22', 1),
(543, 4, 'CHAVEZ REATEGUI INGRID DEL ROCIO', '', '10418663915', '', 'CALLE 2 DE MAYO 1529', '', '', '2022-12-29 13:02:51', 1),
(544, 2, '', 'RUSBELT ANTONIO VASQUEZ CANAYO ', '41896150', '', '', '', '', '2022-12-29 14:49:26', 1),
(545, 2, '', 'JARUMI INGA ZEVALLOS ', '45780280', '', '', '', '', '2022-12-30 13:22:20', 1),
(546, 4, 'BICENTENARIO Y JUSTICIA AMBIENTAL', '', '20609734541', '', 'ASOC. ESTRELLA ANDINA MZ.A LT.22 - GLORIA BAJA ATE - LIMA', '', '', '2022-12-30 13:29:42', 1),
(547, 2, '', 'RICHARD ALEXANDER PEREYRA VASQUEZ', '44044377', '', '', '', '', '2022-12-30 14:46:20', 1),
(548, 2, '', 'JOSE MANUEL CORONADO ARANA', '45312958', '', '', '', '', '2023-01-01 12:45:45', 1),
(549, 2, '', 'RUBEN CHARMI URBINA DIOSES  ', '25581319', '', '', '', '', '2023-01-01 15:20:41', 1),
(550, 4, 'HERBERT STANLEY SOTO SORIA ', '', '10422748691', '', 'CALLE. TAVARA 858', '', '', '2023-01-01 15:54:36', 1),
(551, 2, '', 'WELINSON CHAVEZ RIOS', '43715349', '', '', '', '', '2023-01-02 13:46:54', 1),
(552, 2, '', 'AUGUSTO CHUNG RENGIFO', '46969203', '', '', '', '', '2023-01-03 14:03:01', 1),
(553, 4, 'AMAZOONS CONSTRUCTORES Y SERVICIOS GENERALES S.R.L.', '', '20541143549', '', 'Sargento Lores 1116', '', '', '2023-01-06 12:47:43', 1),
(554, 4, 'FAST BUSINESS IQUITOS E.I.R.L.', '', '20567268293', '', '3 DE OCTUBRE 318-B', '', '', '2023-01-06 14:13:18', 1),
(555, 2, '', 'JHONATAN SALAS ', '05407464', '', '', '', '', '2023-01-06 15:44:00', 1),
(556, 2, '', 'JORGE DEL AGUILA ', '70161584', '', 'IQUITOS', '', '', '2023-01-07 14:00:09', 1),
(557, 2, '', 'SARA PATRICIA MUÑOZ MEDINA ', '76721392', '', '', '', '', '2023-01-07 15:14:39', 1),
(558, 4, 'CORDOVA LOZANO RENZO ABEL', '', '10719608006', '', 'URB. VIRGEN DE LORETO J 11', '', '', '2023-01-09 13:52:50', 1),
(559, 2, '', 'KHARLA MABEL SHUÑA GUTIERREZ', '45277678', '', '', '', '', '2023-01-13 14:22:52', 1),
(560, 4, 'BANCO DE LA NACION', '', '20100030595', '', 'CONDAMINE 488', '', '', '2023-01-13 14:48:07', 1),
(561, 4, 'CAMPOS PONCE RUDY MAGALY', '', '10053401011', '', 'CARLOS ALAYZA Y ROEL 2343 LINCE ', '', '', '2023-01-15 17:18:24', 1),
(562, 2, '', 'PEÑA IBAÑEZ GIULIANO GINO', '42562008', '', '', '', '', '2023-01-17 14:19:15', 1),
(563, 2, '', 'HUARI  JURADO FERNANDO', '77215186', '', '', '', '', '2023-01-17 14:22:31', 1),
(564, 4, 'BRUNO MORI GONSALES', '', '10711121710', '', 'LORETO 1048', '', '', '2023-01-20 13:49:15', 1),
(565, 2, '', 'JAVIER  RAMIREZ  RIOZ ', '41217882', '', '', '', '', '2023-01-22 16:04:14', 1),
(566, 4, ' SCAMHOLF INGENIERIA E INNOVACION EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20610055274', '', 'PJ. PASAJE I NRO. 173 (ALTURA CAL. PANAMA/CAL. IQUITOS) LORETO - MAYNAS - PUNCHANA', '', '', '2023-01-24 16:09:32', 1),
(567, 4, 'HOTELERIA Y SERVICIOS GENERALES GONZALES S.R.L ', '', '20609180740', '', 'CALLE MIRAFLORES N 200SAN JUAN BAUTISTA', '', '', '2023-01-25 15:27:33', 1),
(568, 4, 'LOPEZ ROJAS AUREA LORENA', '', '10721758708', '', 'NAUTA N° 126 - PUNCHANA', '', '', '2023-01-25 16:58:50', 1),
(569, 4, 'SERVICIOS GENERALES LLAXA S.R.L.', '', '20570647491', '', 'CALLE SAN JOSE  150 PUNCHANA', '', '', '2023-01-26 12:51:09', 1),
(570, 2, '', 'ROBERT STEVE RODRIGUEZ PEREA  ', '40712280', '', 'ABTAO  1206', '', '', '2023-01-28 14:13:31', 1),
(571, 2, '', 'DIAZ RENGIFO MARYSUE', '40242383', '', '', '', '', '2023-01-28 16:24:44', 1),
(572, 4, ' AMAZON CAPINURI EXPEDITIONS EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20610013831', '', 'CAL.SAMANEZ OCAMPO NRO. 264 P.J. SERAFIN FILOMENO LORETO - MAYNAS - IQUITOS', '', '', '2023-01-29 13:00:34', 1),
(573, 4, 'MAQUINADOS LOZANO EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20603627505', '', 'PJ. TRUJILLO NRO. 394 (INTERSECCION CUZCO Y PANTOJA) LORETO - MAYNAS - PUNCHANA', '', '', '2023-01-29 13:52:27', 1),
(574, 2, '', 'LOPEZ PINEDO LISSY REBECA', '73373431', '', '', '', '', '2023-01-31 13:15:43', 1),
(575, 4, 'VIETTEL  PERU  S.A.C.', '', '20543254798', '', 'CAL.21 NRO. 878 URB. CORPAC LIMA - LIMA - SAN ISIDRO', '', '', '2023-01-31 14:16:40', 1),
(576, 2, '', 'MARCOS TITO PIZANGO AYARZA', '05383849', '', 'CRUZEIRO 280', '', '', '2023-02-06 12:20:32', 1),
(577, 2, '', 'REATEGUI ASPAJO PEDRO', '05215820', '', '', '', '', '2023-02-10 12:01:53', 1),
(578, 2, '', 'ISLA PEZO ALDO LUIS', '45295033', '', '', '', '', '2023-02-14 11:15:30', 1),
(579, 4, 'SERV. MED. GRALES SAN JUAN S.R.L', '', '20451400241', '', '', '', '', '2023-02-14 15:21:23', 1),
(580, 4, 'OLIVEIRA OLORTEGUI JANE LUZ', '', '10053711761', '', 'MONITOR HUSCAR # 443', '', '', '2023-02-15 15:35:36', 1),
(581, 2, '', 'VERA DIAZ JESUS ANTONIO', '16765999', '', '', '', '', '2023-02-15 15:51:46', 1),
(582, 2, '', 'CECIA SALDAÑA', '76064679', '', '', '', '', '2023-02-16 11:53:12', 1),
(583, 4, 'T ', '', '20492952436', '', '', '', '', '2023-02-16 16:53:35', 1),
(584, 2, '', 'TATIANA RIVERA A.', '09648428', '', '', '', '', '2023-02-18 13:48:10', 1),
(585, 2, '', 'f f f', '997792036', '', 'PUTUMATYO. 21 CALLE MERCEDES SARGRENTO FLORES', '', '', '2023-02-19 12:38:17', 1),
(586, 2, '', 'CHAVEZ SANDOVAL JOHNNY FRANCIS', '44615304', '', '', '', '', '2023-02-19 13:57:10', 1),
(587, 2, '', 'XIOMARA LOPEZ CASADO', '72252713', '', '', '', '', '2023-02-21 10:36:10', 1),
(588, 4, 'REYNA ASPAJO BECKER AMILTON', '', '10412457621', '', '', '', '', '2023-02-21 13:38:59', 1),
(589, 4, 'CONGRESO DE LA REPUBLICA', '', '20161749126', '', 'AV. ABANCAY S/N', '', '', '2023-02-21 13:47:12', 1),
(590, 2, '', 'SARITA SAAVEDRA DEL AGUILA', '42124038', '', 'CALLE TARMA N° 124', '', '', '2023-02-21 16:56:25', 1),
(591, 2, '', 'MILCA RUTH RAMIREZ VILLACORTA', '41580241', '', '', '', '', '2023-02-22 16:10:03', 1),
(592, 2, '', 'QUEVEDO ROSSI LUIS GABRIEL', '08777351', '', '', '', '', '2023-02-28 15:27:13', 1),
(593, 4, 'VARGAS SANTILLAN JHON ANTONI', '', '10727207576', '', '-', '', '', '2023-03-01 14:44:59', 1),
(594, 2, '', 'DEL RISCO TORRES PETER PAUL', '40595208', '', '', '', '', '2023-03-02 13:10:46', 1),
(595, 2, '', 'SILVANO AQUITUARI SHIRLEY VALERIA', '45491427', '', '', '', '', '2023-03-02 13:40:43', 1),
(596, 4, 'ITC-PERU S.A.C.', '', '20523650077', '', 'AV. BOLOGNESI NRO. 125 DPTO. 1201 - LIMA LIMA MIRAFLORES', '', '', '2023-03-02 14:26:04', 1),
(597, 2, '', 'DAVILA RUIZ STEVE', '05414548', '', '', '', '', '2023-03-02 14:51:51', 1),
(598, 4, 'VIPETROS S.A.C', '', '20511497184', '', 'AV. JAIME BAUSATE Y MEZA NRO. 564 - LIMA LIMA LA VICTORIA', '', '', '2023-03-05 13:36:24', 1),
(599, 2, '', 'OCMIN SAAVEDRA DAVID LEWIS', '44470085', '', 'CALLE NAUTA 316', '', '', '2023-03-06 14:39:00', 1),
(600, 4, 'ALVAN ROJAS JOSE LUIS ALBERTO', '', '10102745936', '', '-', '', '', '2023-03-08 14:46:40', 1),
(601, 4, 'MULTISERVICIOS BRITHANY Y LUANA EIRL', '', '20605749152', '', 'CAL. MONITOR HUASCAR LT. 24 MZ. F A.H. 28 DE JULIO - LORETO MAYNAS PUNCHANA', '', '', '2023-03-08 15:39:40', 1),
(602, 2, '', 'CORDOVA LOZANO RENZO ABEL', '71960800', '', '', '', '', '2023-03-09 11:43:20', 1),
(603, 4, 'INVERSIONES OPTICAS SOCIEDAD ANONIMA CERRADA', '', '20502824733', '', 'CAL. BERNARDO ALCEDO NRO. 559 - LIMA LIMA LINCE', '', '', '2023-03-09 14:10:49', 1),
(604, 4, 'LA CASA DE LAS ENCHILADAS E.I.R.L.', '', '20601147352', '', 'CAL. FITZCARRALD NRO. 232 - LORETO MAYNAS IQUITOS', '', '', '2023-03-10 13:52:41', 1),
(605, 2, '', 'HUAYTA CAMONES LEYDI YING', '44750448', '', '', '', '', '2023-03-11 10:44:25', 1),
(606, 2, '', 'PINEDO TELLO JACQUELYNE', '05328943', '', '', '', '', '2023-03-12 14:20:21', 1),
(607, 4, 'PROGRAMA NACIONAL DE SANEAMIENTO RURAL', '', '20548776920', '', 'AV. ALFREDO BENAVIDES NRO. 395 URB. PALACIO DEL VIRREY - LIMA LIMA MIRAFLORES', '', '', '2023-03-13 14:29:09', 1),
(608, 4, 'CONSORCIO EL MIRADOR', '', '20609635372', '', 'JR. SAN VICENTE NRO. SN - SAN MARTÍN RIOJA AWAJUN', '', '', '2023-03-13 14:29:54', 1),
(609, 4, 'UNION BIBLICA DEL PERU', '', '20168500042', '', 'AV. BOLIVIA NRO. 180 - LIMA LIMA LIMA', '', '', '2023-03-15 11:57:12', 1),
(610, 4, 'CORREA LIMA CARY', '', '10053514419', '', '-', '', '', '2023-03-15 16:10:49', 1),
(611, 4, 'PORTOCARRERO SALOMON GENOVEVA MIGUELINA', '', '10052771264', '', '-', '', '', '2023-03-17 13:50:54', 1),
(612, 2, '', 'FLORETT DIAZ FIDEL', '05359144', '', 'CALLE BOLIVAR NRO 327', '', '', '2023-03-18 14:00:51', 1),
(613, 2, '', 'RUIZ MONTALVO PEDRO LAZARO', '41159841', '', '', '', '', '2023-03-18 14:44:58', 1),
(614, 2, '', 'PINEDO AREVALO RODRIGO', '44520474', '', '', '', '', '2023-03-21 13:39:31', 1),
(615, 4, 'CORPORACION DE AGENCIAS POSTALES DEL PERU SOCIEDAD ANONIMA CERRADA', '', '20542273705', '', 'JR. PUCALLPA LT. 18A MZ. D - SAN MARTÍN MOYOBAMBA MOYOBAMBA', '', '', '2023-03-22 13:58:54', 1),
(616, 2, '', 'HERRERA PERALTA LYNDA SUGUEY', '75508209', '', '', '', '', '2023-03-22 16:10:07', 1),
(617, 4, 'LA ULTIMA CONCHITA E.I.R.L.', '', '20567274421', '', 'AV. QUIÑONES 4757', '', '', '2023-03-23 11:13:34', 1),
(618, 4, 'POTENCIAL HUMANO CONSULTING E.I.R.L.', '', '20600728475', '', 'LT. 21 MZ. D URB. RIO MAR - LORETO MAYNAS BELÉN', '', '', '2023-03-23 15:23:13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comanda`
--

CREATE TABLE `comanda` (
  `id_comanda` int(11) NOT NULL,
  `id_mesa` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `comanda_nombre_delivery` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_direccion_delivery` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_telefono_delivery` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_cantidad_personas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comanda_nombre_mesa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_correlativo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comanda_total` decimal(10,2) NOT NULL,
  `comanda_fecha_registro` datetime NOT NULL,
  `comanda_estado` tinyint(2) NOT NULL,
  `comanda_codigo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comanda`
--

INSERT INTO `comanda` (`id_comanda`, `id_mesa`, `id_usuario`, `id_cliente`, `comanda_nombre_delivery`, `comanda_direccion_delivery`, `comanda_telefono_delivery`, `comanda_cantidad_personas`, `comanda_nombre_mesa`, `comanda_correlativo`, `comanda_total`, `comanda_fecha_registro`, `comanda_estado`, `comanda_codigo`) VALUES
(1, 6, 38, NULL, NULL, NULL, NULL, '1', NULL, '230323-1', '25.00', '2023-03-23 11:11:34', 1, '1679587894.3369'),
(2, 26, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-2', '106.00', '2023-03-23 11:30:59', 1, '1679589059.5736'),
(3, 7, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-3', '46.00', '2023-03-23 11:37:11', 1, '1679589431.0463'),
(4, 26, 38, NULL, NULL, NULL, NULL, '1', NULL, '230323-4', '159.00', '2023-03-23 12:45:39', 1, '1679593539.8116'),
(5, 22, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-5', '94.00', '2023-03-23 12:47:41', 1, '1679593661.4034'),
(6, 7, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-6', '87.00', '2023-03-23 13:07:53', 1, '1679594873.5458'),
(7, 59, 34, NULL, NULL, NULL, NULL, '-', NULL, '230323-7', '149.40', '2023-03-23 13:11:06', 1, '1679595066.8674'),
(8, 28, 29, NULL, NULL, NULL, NULL, '-', NULL, '230323-8', '79.00', '2023-03-23 13:22:14', 1, '1679595734.2334'),
(9, 16, 38, NULL, NULL, NULL, NULL, '1', NULL, '230323-9', '94.00', '2023-03-23 13:31:33', 1, '1679596293.15'),
(10, 22, 29, NULL, NULL, NULL, NULL, '-', NULL, '230323-10', '88.00', '2023-03-23 13:53:16', 1, '1679597596.4193'),
(11, 26, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-11', '104.00', '2023-03-23 13:53:46', 1, '1679597626.3254'),
(12, 8, 34, NULL, NULL, NULL, NULL, '-', NULL, '230323-12', '122.20', '2023-03-23 13:53:53', 1, '1679597633.6177'),
(13, 44, 34, NULL, NULL, NULL, NULL, '-', NULL, '230323-13', '87.00', '2023-03-23 14:04:10', 1, '1679598250.9869'),
(14, 34, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-14', '59.00', '2023-03-23 14:14:59', 1, '1679598899.9138'),
(15, 26, 42, NULL, NULL, NULL, NULL, '-', NULL, '230323-15', '129.20', '2023-03-23 14:43:57', 1, '1679600637.9411'),
(16, 6, 38, NULL, NULL, NULL, NULL, '1', NULL, '230323-16', '28.00', '2023-03-23 16:26:28', 1, '1679606788.7382');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comanda_detalle`
--

CREATE TABLE `comanda_detalle` (
  `id_comanda_detalle` int(11) NOT NULL,
  `id_comanda` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `comanda_detalle_precio` decimal(10,2) NOT NULL,
  `comanda_detalle_cantidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comanda_detalle_despacho` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comanda_detalle_total` decimal(10,2) NOT NULL,
  `comanda_detalle_observacion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_detalle_eliminacion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comanda_detalle_fecha_eliminacion` datetime DEFAULT NULL,
  `comanda_detalle_fecha_registro` datetime NOT NULL,
  `comanda_detalle_estado` tinyint(4) NOT NULL,
  `comanda_detalle_estado_venta` tinyint(2) NOT NULL DEFAULT '0',
  `comanda_detalle_hora_entrega` time DEFAULT NULL,
  `comanda_detalle_usuario` int(11) DEFAULT NULL,
  `id_usuario` int(11) UNSIGNED DEFAULT NULL,
  `comanda_detalle_eli_id` int(11) DEFAULT NULL,
  `id_usuario_eli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comanda_detalle`
--

INSERT INTO `comanda_detalle` (`id_comanda_detalle`, `id_comanda`, `id_producto`, `comanda_detalle_precio`, `comanda_detalle_cantidad`, `comanda_detalle_despacho`, `comanda_detalle_total`, `comanda_detalle_observacion`, `comanda_detalle_eliminacion`, `comanda_detalle_fecha_eliminacion`, `comanda_detalle_fecha_registro`, `comanda_detalle_estado`, `comanda_detalle_estado_venta`, `comanda_detalle_hora_entrega`, `comanda_detalle_usuario`, `id_usuario`, `comanda_detalle_eli_id`, `id_usuario_eli`) VALUES
(1, 1, 11, '25.00', '1', 'SALON', '25.00', 'NO SERVIR', NULL, NULL, '2023-03-23 11:11:34', 1, 1, NULL, NULL, 38, NULL, NULL),
(2, 2, 170, '10.00', '1', 'SALON', '10.00', '', NULL, NULL, '2023-03-23 11:30:59', 1, 1, NULL, NULL, 42, NULL, NULL),
(3, 2, 28, '38.00', '1', 'SALON', '38.00', '', NULL, NULL, '2023-03-23 11:33:12', 1, 1, NULL, NULL, 42, NULL, NULL),
(4, 3, 19, '18.00', '2', 'SALON', '36.00', '', NULL, NULL, '2023-03-23 11:37:11', 1, 1, NULL, NULL, 42, NULL, NULL),
(5, 3, 159, '10.00', '1', 'SALON', '10.00', '', NULL, NULL, '2023-03-23 11:37:11', 1, 1, NULL, NULL, 42, NULL, NULL),
(6, 2, 35, '36.00', '1', 'SALON', '36.00', '', NULL, NULL, '2023-03-23 11:43:20', 1, 1, NULL, NULL, 42, NULL, NULL),
(7, 2, 170, '10.00', '1', 'SALON', '10.00', '', NULL, NULL, '2023-03-23 11:48:49', 1, 1, NULL, NULL, 42, NULL, NULL),
(8, 2, 157, '4.00', '1', 'SALON', '4.00', '', NULL, NULL, '2023-03-23 11:51:52', 1, 1, NULL, NULL, 42, NULL, NULL),
(9, 2, 155, '4.00', '1', 'SALON', '4.00', '', NULL, NULL, '2023-03-23 11:59:21', 1, 1, NULL, NULL, 42, NULL, NULL),
(10, 2, 155, '4.00', '1', 'SALON', '4.00', '', NULL, NULL, '2023-03-23 12:18:51', 1, 1, NULL, NULL, 42, NULL, NULL),
(11, 4, 25, '28.00', '4', 'SALON', '112.00', '-', NULL, NULL, '2023-03-23 12:45:39', 1, 1, NULL, NULL, 38, NULL, NULL),
(12, 4, 203, '15.00', '1', 'SALON', '15.00', '-', NULL, NULL, '2023-03-23 12:45:39', 1, 1, NULL, NULL, 38, NULL, NULL),
(13, 4, 155, '4.00', '1', 'SALON', '4.00', '', NULL, NULL, '2023-03-23 12:46:43', 1, 1, NULL, NULL, 34, NULL, NULL),
(14, 5, 25, '28.00', '2', 'SALON', '56.00', '', NULL, NULL, '2023-03-23 12:47:41', 1, 1, NULL, NULL, 42, NULL, NULL),
(15, 5, 20, '23.00', '1', 'SALON', '23.00', '', NULL, NULL, '2023-03-23 12:47:41', 1, 1, NULL, NULL, 42, NULL, NULL),
(16, 5, 154, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 12:47:41', 1, 1, NULL, NULL, 42, NULL, NULL),
(17, 4, 25, '28.00', '1', 'PARA LLEVAR', '28.00', '', NULL, NULL, '2023-03-23 13:03:33', 1, 1, NULL, NULL, 34, NULL, NULL),
(18, 6, 114, '42.00', '1', 'SALON', '42.00', 'huevo bien frito', NULL, NULL, '2023-03-23 13:06:49', 1, 1, NULL, NULL, 42, NULL, NULL),
(19, 6, 50, '37.00', '1', 'SALON', '37.00', '', NULL, NULL, '2023-03-23 13:07:53', 1, 1, NULL, NULL, 42, NULL, NULL),
(20, 6, 160, '8.00', '1', 'SALON', '8.00', '', NULL, NULL, '2023-03-23 13:07:53', 1, 1, NULL, NULL, 42, NULL, NULL),
(21, 7, 25, '28.00', '1', 'PARA LLEVAR', '28.00', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(22, 7, 65, '38.00', '1', 'PARA LLEVAR', '38.00', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(23, 7, 52, '37.00', '1', 'PARA LLEVAR', '37.00', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(24, 7, 74, '38.00', '1', 'PARA LLEVAR', '38.00', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(25, 7, 174, '2.00', '4', 'SALON', '8.00', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(26, 7, 247, '0.20', '2', 'SALON', '0.40', '', NULL, NULL, '2023-03-23 13:11:06', 1, 1, NULL, NULL, 34, NULL, NULL),
(27, 8, 19, '18.00', '1', 'SALON', '18.00', '', NULL, NULL, '2023-03-23 13:22:14', 1, 1, NULL, NULL, 29, NULL, NULL),
(28, 8, 20, '23.00', '1', 'SALON', '23.00', '', NULL, NULL, '2023-03-23 13:22:14', 1, 1, NULL, NULL, 29, NULL, NULL),
(29, 8, 171, '6.00', '1', 'SALON', '6.00', '', NULL, NULL, '2023-03-23 13:22:14', 1, 1, NULL, NULL, 29, NULL, NULL),
(30, 9, 25, '28.00', '2', 'SALON', '56.00', '-', NULL, NULL, '2023-03-23 13:31:33', 1, 1, NULL, NULL, 38, NULL, NULL),
(31, 9, 20, '23.00', '1', 'SALON', '23.00', '-', NULL, NULL, '2023-03-23 13:31:33', 1, 1, NULL, NULL, 38, NULL, NULL),
(32, 9, 154, '15.00', '1', 'SALON', '15.00', '-', NULL, NULL, '2023-03-23 13:31:33', 1, 1, NULL, NULL, 38, NULL, NULL),
(33, 10, 27, '33.00', '1', 'SALON', '33.00', 'sin ají sin cangrejo mas pescao', NULL, NULL, '2023-03-23 13:53:16', 1, 1, NULL, NULL, 29, NULL, NULL),
(34, 11, 19, '18.00', '1', 'SALON', '18.00', '', NULL, NULL, '2023-03-23 13:53:46', 1, 1, NULL, NULL, 42, NULL, NULL),
(35, 11, 26, '33.00', '1', 'SALON', '33.00', 'sin aji', NULL, NULL, '2023-03-23 13:53:46', 1, 1, NULL, NULL, 42, NULL, NULL),
(36, 11, 154, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 13:53:46', 1, 1, NULL, NULL, 42, NULL, NULL),
(37, 12, 28, '38.00', '1', 'SALON', '38.00', '', NULL, NULL, '2023-03-23 13:53:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(38, 12, 25, '28.00', '1', 'SALON', '28.00', '', NULL, NULL, '2023-03-23 13:53:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(39, 12, 35, '36.00', '1', 'SALON', '36.00', '', NULL, NULL, '2023-03-23 13:53:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(40, 12, 155, '4.00', '1', 'SALON', '4.00', '', NULL, NULL, '2023-03-23 13:53:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(41, 12, 154, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 13:53:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(42, 10, 413, '40.00', '1', 'SALON', '40.00', '', NULL, NULL, '2023-03-23 13:57:56', 1, 1, NULL, NULL, 29, NULL, NULL),
(43, 10, 154, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 13:58:06', 1, 1, NULL, NULL, 29, NULL, NULL),
(44, 13, 45, '36.00', '1', 'SALON', '36.00', '', NULL, NULL, '2023-03-23 14:04:10', 1, 1, NULL, NULL, 34, NULL, NULL),
(45, 11, 28, '38.00', '1', 'SALON', '38.00', '', NULL, NULL, '2023-03-23 14:08:10', 1, 1, NULL, NULL, 29, NULL, NULL),
(46, 8, 165, '10.00', '2', 'SALON', '20.00', '', NULL, NULL, '2023-03-23 14:09:49', 1, 1, NULL, NULL, 29, NULL, NULL),
(47, 8, 463, '6.00', '2', 'SALON', '12.00', '', NULL, NULL, '2023-03-23 14:10:06', 1, 1, NULL, NULL, 29, NULL, NULL),
(48, 13, 102, '36.00', '1', 'SALON', '36.00', 'solo ensalada y papa dorada', NULL, NULL, '2023-03-23 14:11:53', 1, 1, NULL, NULL, 34, NULL, NULL),
(49, 13, 154, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 14:12:25', 1, 1, NULL, NULL, 34, NULL, NULL),
(50, 14, 20, '23.00', '1', 'SALON', '23.00', '', NULL, NULL, '2023-03-23 14:14:59', 1, 1, NULL, NULL, 42, NULL, NULL),
(51, 14, 19, '18.00', '2', 'SALON', '36.00', '', NULL, NULL, '2023-03-23 14:14:59', 1, 1, NULL, NULL, 42, NULL, NULL),
(52, 12, 361, '1.00', '1', 'SALON', '1.00', '', NULL, NULL, '2023-03-23 14:39:45', 1, 1, NULL, NULL, 34, NULL, NULL),
(53, 12, 247, '0.20', '1', 'SALON', '0.20', '-', NULL, NULL, '2023-03-23 14:41:58', 1, 1, NULL, NULL, 38, NULL, NULL),
(54, 15, 21, '20.00', '1', 'SALON', '20.00', '', NULL, NULL, '2023-03-23 14:43:57', 1, 1, NULL, NULL, 42, NULL, NULL),
(55, 15, 44, '36.00', '2', 'SALON', '72.00', '', NULL, NULL, '2023-03-23 14:43:57', 1, 1, NULL, NULL, 42, NULL, NULL),
(56, 15, 172, '15.00', '1', 'SALON', '15.00', '', NULL, NULL, '2023-03-23 14:43:57', 1, 1, NULL, NULL, 42, NULL, NULL),
(57, 15, 169, '10.00', '1', 'SALON', '10.00', '', NULL, NULL, '2023-03-23 14:44:10', 1, 1, NULL, NULL, 42, NULL, NULL),
(58, 15, 169, '10.00', '1', 'SALON', '10.00', '', NULL, NULL, '2023-03-23 14:56:23', 1, 1, NULL, NULL, 42, NULL, NULL),
(59, 15, 174, '2.00', '1', 'SALON', '2.00', '', NULL, NULL, '2023-03-23 15:19:05', 1, 1, NULL, NULL, 42, NULL, NULL),
(60, 15, 247, '0.20', '1', 'SALON', '0.20', '', NULL, NULL, '2023-03-23 15:19:15', 1, 1, NULL, NULL, 42, NULL, NULL),
(61, 16, 20, '23.00', '1', 'SALON', '23.00', '-NO SACAR', 'CONSUMO RICARDO', '2023-03-23 16:28:03', '2023-03-23 16:26:28', 0, 0, NULL, NULL, 38, NULL, NULL),
(62, 16, 25, '28.00', '1', 'SALON', '28.00', '-NO', 'CONSUMO FLAVIO', '2023-03-23 16:28:19', '2023-03-23 16:26:28', 0, 0, NULL, NULL, 38, NULL, NULL),
(63, 16, 25, '28.00', '1', 'SALON', '28.00', '-NO', 'CONSUMO MARIA JOSE', '2023-03-23 16:28:34', '2023-03-23 16:26:28', 0, 0, NULL, NULL, 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversiones`
--

CREATE TABLE `conversiones` (
  `id_conversion` int(11) NOT NULL,
  `id_recurso_sede` int(11) NOT NULL,
  `conversion_cantidad` decimal(10,2) NOT NULL,
  `conversion_unidad_medida` int(11) NOT NULL,
  `conversion_fecha_registro` datetime NOT NULL,
  `conversion_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `conversiones`
--

INSERT INTO `conversiones` (`id_conversion`, `id_recurso_sede`, `conversion_cantidad`, `conversion_unidad_medida`, `conversion_fecha_registro`, `conversion_estado`) VALUES
(1, 129, '1000.00', 18, '2021-04-13 11:47:16', 1),
(2, 67, '1000.00', 18, '2021-04-14 11:54:42', 1),
(3, 21, '1000.00', 18, '2021-04-14 12:43:34', 1),
(4, 97, '1000.00', 18, '2021-04-14 12:43:54', 1),
(5, 102, '1000.00', 18, '2021-04-14 12:44:51', 1),
(6, 38, '1000.00', 18, '2021-04-14 12:45:08', 1),
(7, 117, '1000.00', 18, '2021-08-09 10:58:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativos`
--

CREATE TABLE `correlativos` (
  `id_correlativo` int(11) NOT NULL,
  `correlativo_b` int(11) NOT NULL,
  `correlativo_f` int(11) NOT NULL,
  `correlativo_in` int(11) NOT NULL,
  `correlativo_out` int(11) NOT NULL,
  `correlativo_nc` int(11) NOT NULL,
  `correlativo_nd` int(11) NOT NULL,
  `correlativo_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `correlativos`
--

INSERT INTO `correlativos` (`id_correlativo`, `correlativo_b`, `correlativo_f`, `correlativo_in`, `correlativo_out`, `correlativo_nc`, `correlativo_nd`, `correlativo_venta`) VALUES
(2, 6, 3, 100000, 100001, 2, 1, 100030);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_detalle_compra` int(11) NOT NULL,
  `id_orden_compra` int(11) NOT NULL,
  `id_recurso_sede` int(11) NOT NULL,
  `detalle_compra_cantidad` float NOT NULL,
  `detalle_compra_cantidad_recibida` float DEFAULT NULL,
  `detalle_compra_precio_compra` decimal(10,2) NOT NULL,
  `detalle_compra_total_pedido` decimal(10,2) NOT NULL,
  `detalle_compra_tipo_moneda` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detalle_compra_tipo_cambio` decimal(10,5) DEFAULT NULL,
  `detalle_compra_total_dolares` decimal(10,2) DEFAULT '0.00',
  `detalle_compra_total_pagado` decimal(10,2) DEFAULT NULL,
  `detalle_compra_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id_detalle_compra`, `id_orden_compra`, `id_recurso_sede`, `detalle_compra_cantidad`, `detalle_compra_cantidad_recibida`, `detalle_compra_precio_compra`, `detalle_compra_total_pedido`, `detalle_compra_tipo_moneda`, `detalle_compra_tipo_cambio`, `detalle_compra_total_dolares`, `detalle_compra_total_pagado`, `detalle_compra_estado`) VALUES
(1, 2, 151, 0.641, NULL, '15.60', '10.00', NULL, NULL, '0.00', NULL, 1),
(2, 5, 84, 100, NULL, '0.32', '32.00', NULL, NULL, '0.00', NULL, 1),
(3, 6, 152, 3, NULL, '13.00', '39.00', NULL, NULL, '0.00', NULL, 1),
(5, 8, 37, 1.5, NULL, '80.00', '120.00', NULL, NULL, '0.00', NULL, 1),
(6, 8, 42, 2.86, NULL, '35.00', '100.10', NULL, NULL, '0.00', NULL, 1),
(7, 8, 53, 1.155, NULL, '26.00', '30.03', NULL, NULL, '0.00', NULL, 1),
(8, 8, 142, 1, NULL, '20.00', '20.00', NULL, NULL, '0.00', NULL, 1),
(9, 9, 37, 1.5, NULL, '80.00', '120.00', NULL, NULL, '0.00', NULL, 1),
(10, 9, 42, 2.86, NULL, '35.00', '100.10', NULL, NULL, '0.00', NULL, 1),
(11, 10, 37, 1.25, NULL, '80.00', '100.00', NULL, NULL, '0.00', NULL, 1),
(12, 10, 42, 2.86, NULL, '35.00', '100.10', NULL, NULL, '0.00', NULL, 1),
(13, 11, 67, 15, NULL, '25.00', '375.00', NULL, NULL, '0.00', NULL, 1),
(14, 12, 67, 20, NULL, '25.00', '500.00', NULL, NULL, '0.00', NULL, 1),
(15, 13, 104, 1.43, NULL, '35.00', '50.05', NULL, NULL, '0.00', NULL, 1),
(16, 13, 127, 6.67, NULL, '15.00', '100.05', NULL, NULL, '0.00', NULL, 1),
(17, 13, 127, 6.67, NULL, '15.00', '100.05', NULL, NULL, '0.00', NULL, 1),
(18, 13, 37, 1.25, NULL, '80.00', '100.00', NULL, NULL, '0.00', NULL, 1),
(19, 13, 42, 2.286, NULL, '35.00', '80.01', NULL, NULL, '0.00', NULL, 1),
(20, 13, 53, 1, NULL, '20.00', '20.00', NULL, NULL, '0.00', NULL, 1),
(21, 13, 96, 0.77, NULL, '26.00', '20.02', NULL, NULL, '0.00', NULL, 1),
(22, 18, 37, 1.25, NULL, '80.00', '100.00', NULL, NULL, '0.00', NULL, 1),
(23, 18, 42, 2.29, NULL, '35.00', '80.15', NULL, NULL, '0.00', NULL, 1),
(24, 18, 53, 1.155, NULL, '26.00', '30.03', NULL, NULL, '0.00', NULL, 1),
(25, 18, 142, 1, NULL, '20.00', '20.00', NULL, NULL, '0.00', NULL, 1),
(26, 19, 157, 2.125, NULL, '40.00', '85.00', NULL, NULL, '0.00', NULL, 1),
(27, 28, 101, 25, NULL, '0.32', '8.00', NULL, NULL, '0.00', NULL, 1),
(28, 30, 159, 2, NULL, '18.00', '36.00', NULL, NULL, '0.00', NULL, 1),
(29, 30, 160, 6, NULL, '1.00', '6.00', NULL, NULL, '0.00', NULL, 1),
(30, 30, 161, 6, NULL, '15.00', '90.00', NULL, NULL, '0.00', NULL, 1),
(31, 30, 162, 3.85, NULL, '15.06', '58.00', NULL, NULL, '0.00', NULL, 1),
(32, 31, 163, 1, 1, '2.00', '2984.54', NULL, NULL, '0.00', '2984.54', 1),
(33, 31, 164, 1, 1, '0.01', '0.01', NULL, NULL, '0.00', '0.01', 1),
(34, 32, 165, 1, 1, '625.00', '625.00', NULL, NULL, '0.00', '625.00', 1),
(35, 32, 166, 1, 1, '761.17', '761.17', NULL, NULL, '0.00', '761.17', 1),
(36, 32, 167, 1, 1, '1483.90', '1483.90', NULL, NULL, '0.00', '1483.90', 1),
(37, 32, 168, 1, 1, '2671.04', '2671.04', NULL, NULL, '0.00', '2671.04', 1),
(38, 32, 164, 1, 1, '0.00', '0.01', NULL, NULL, '0.00', '0.01', 1),
(39, 33, 67, 20, 20, '25.00', '500.00', NULL, NULL, '0.00', '500.00', 1),
(40, 35, 67, 20, 20, '25.00', '500.00', NULL, NULL, '0.00', '500.00', 1),
(41, 36, 67, 15, 15, '25.00', '375.00', NULL, NULL, '0.00', '375.00', 1),
(42, 37, 169, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(43, 37, 170, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(44, 37, 171, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(45, 40, 43, 10.52, 10.52, '1.90', '20.00', NULL, NULL, '0.00', '20.00', 1),
(46, 40, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(47, 40, 24, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(48, 40, 102, 11.42, 11.42, '3.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(49, 40, 39, 13.33, 13.33, '7.50', '100.00', NULL, NULL, '0.00', '100.00', 1),
(50, 40, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(51, 40, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(52, 40, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(53, 40, 143, 1.11, 1.11, '4.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(54, 40, 105, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(55, 40, 41, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(56, 40, 56, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(57, 40, 172, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(58, 40, 14, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(59, 40, 173, 0.75, 0.75, '4.00', '3.00', NULL, NULL, '0.00', '3.00', 1),
(60, 41, 117, 5.26, 5.26, '1.90', '10.00', NULL, NULL, '0.00', '10.00', 1),
(61, 41, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(62, 41, 43, 10.52, 10.52, '1.90', '20.00', NULL, NULL, '0.00', '20.00', 1),
(63, 41, 24, 7, 7, '2.90', '20.30', NULL, NULL, '0.00', '20.30', 1),
(64, 41, 102, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(65, 41, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(66, 41, 176, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(67, 41, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(68, 41, 113, 1, 1, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(69, 41, 54, 3.07, 3.07, '6.50', '19.99', NULL, NULL, '0.00', '19.99', 1),
(70, 41, 138, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(71, 41, 175, 2, 2, '40.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(72, 41, 131, 1, 1, '26.00', '26.00', NULL, NULL, '0.00', '26.00', 1),
(73, 41, 174, 0.31, 0.31, '16.00', '5.01', NULL, NULL, '0.00', '5.01', 1),
(74, 41, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(75, 43, 117, 5.26, 5.26, '1.90', '10.00', NULL, NULL, '0.00', '10.00', 1),
(76, 43, 118, 4.34, 4.34, '2.30', '10.00', NULL, NULL, '0.00', '10.00', 1),
(77, 43, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(78, 43, 43, 7.89, 7.89, '1.90', '15.00', NULL, NULL, '0.00', '15.00', 1),
(79, 43, 24, 5, 5, '2.90', '14.50', NULL, NULL, '0.00', '14.50', 1),
(80, 43, 102, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(81, 43, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(82, 43, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(83, 43, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(84, 43, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(85, 43, 107, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(86, 43, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(87, 43, 1, 1, 1, '165.00', '165.00', NULL, NULL, '0.00', '165.00', 1),
(88, 43, 178, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(89, 44, 117, 5.26, 5.26, '1.90', '10.00', NULL, NULL, '0.00', '10.00', 1),
(90, 44, 118, 4.55, 4.55, '2.20', '10.01', NULL, NULL, '0.00', '10.01', 1),
(91, 44, 179, 1.42, 1.42, '3.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(92, 44, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(93, 44, 43, 10.52, 10.52, '1.90', '20.00', NULL, NULL, '0.00', '20.00', 1),
(94, 44, 180, 35, 35, '2.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(95, 44, 24, 7, 7, '2.90', '20.30', NULL, NULL, '0.00', '20.30', 1),
(96, 44, 102, 11.42, 11.42, '3.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(97, 44, 94, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(98, 44, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(99, 44, 154, 30, 30, '0.35', '10.50', NULL, NULL, '0.00', '10.50', 1),
(100, 44, 131, 1, 1, '1.50', '1.50', NULL, NULL, '0.00', '1.50', 1),
(101, 44, 138, 3, 3, '5.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(102, 44, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(103, 44, 14, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(104, 45, 84, 125, 125, '0.32', '40.00', NULL, NULL, '0.00', '40.00', 1),
(105, 46, 84, 118, 118, '0.34', '40.12', NULL, NULL, '0.00', '40.12', 1),
(106, 52, 37, 1.25, 1.25, '80.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(107, 52, 42, 2.86, 2.86, '35.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(108, 52, 182, 2, 2, '40.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(109, 52, 127, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(110, 52, 127, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(111, 52, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(112, 52, 104, 0.86, 0.86, '35.00', '30.10', NULL, NULL, '0.00', '30.10', 1),
(113, 52, 53, 1.155, 1.155, '26.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(114, 53, 37, 1.25, 1.25, '80.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(115, 53, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(116, 53, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(117, 54, 183, 360, 360, '3.50', '1260.00', NULL, NULL, '0.00', '1260.00', 1),
(118, 56, 117, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(119, 56, 118, 4.54, 4.54, '2.20', '10.00', NULL, NULL, '0.00', '10.00', 1),
(120, 56, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(121, 56, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(122, 56, 24, 7, 7, '3.00', '21.00', NULL, NULL, '0.00', '21.00', 1),
(123, 56, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(124, 56, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(125, 56, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(126, 56, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(127, 56, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(128, 56, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(129, 56, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(130, 56, 138, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(131, 56, 143, 1.55, 1.55, '4.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(132, 56, 54, 3.07, 3.07, '6.50', '20.01', NULL, NULL, '0.00', '20.01', 1),
(133, 56, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(134, 57, 53, 1.155, 1.155, '26.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(135, 57, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(136, 57, 42, 2.86, 2.86, '35.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(137, 77, 185, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(138, 79, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(139, 79, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(140, 79, 43, 12.5, 12.5, '2.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(141, 79, 24, 7, 7, '2.90', '20.30', NULL, NULL, '0.00', '20.30', 1),
(142, 79, 102, 10, 10, '4.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(143, 79, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(144, 79, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(145, 79, 17, 1.07, 1.07, '14.00', '14.99', NULL, NULL, '0.00', '14.99', 1),
(146, 79, 186, 30, 30, '0.18', '5.40', NULL, NULL, '0.00', '5.40', 1),
(147, 79, 134, 18, 18, '0.37', '6.60', NULL, NULL, '0.00', '6.60', 1),
(148, 79, 35, 12, 12, '0.42', '5.00', NULL, NULL, '0.00', '5.00', 1),
(149, 79, 138, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(150, 79, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(151, 79, 143, 1.25, 1.25, '4.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(152, 79, 14, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(153, 79, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(154, 79, 105, 4, 4, '7.50', '30.00', NULL, NULL, '0.00', '30.00', 1),
(155, 79, 41, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(156, 79, 56, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(157, 79, 172, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(158, 79, 154, 30, 30, '0.30', '9.00', NULL, NULL, '0.00', '9.00', 1),
(159, 79, 187, 30, 30, '0.18', '5.40', NULL, NULL, '0.00', '5.40', 1),
(160, 79, 125, 1.66, 1.66, '6.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(161, 79, 130, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(162, 83, 117, 7.89, 7.89, '1.90', '15.00', NULL, NULL, '0.00', '15.00', 1),
(163, 83, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(164, 83, 24, 7, 7, '2.90', '20.30', NULL, NULL, '0.00', '20.30', 1),
(165, 83, 102, 4.44, 4.44, '4.50', '20.00', NULL, NULL, '0.00', '20.00', 1),
(166, 83, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(167, 83, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(168, 83, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(169, 83, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(170, 83, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(171, 83, 1, 1, 1, '165.00', '165.00', NULL, NULL, '0.00', '165.00', 1),
(172, 83, 82, 2, 2, '2.60', '5.20', NULL, NULL, '0.00', '5.20', 1),
(173, 83, 107, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(174, 83, 94, 0.62, 0.62, '8.00', '5.01', NULL, NULL, '0.00', '5.01', 1),
(175, 83, 14, 0.8, 0.8, '10.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(176, 83, 129, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(177, 83, 138, 1.6, 1.6, '5.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(178, 83, 188, 22.85, 22.85, '3.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(179, 83, 43, 7.89, 7.89, '1.90', '15.00', NULL, NULL, '0.00', '15.00', 1),
(180, 84, 44, 10, 10, '36.00', '360.00', NULL, NULL, '0.00', '360.00', 0),
(181, 84, 52, 2, 2, '36.00', '72.00', NULL, NULL, '0.00', '72.00', 0),
(182, 86, 44, 5, 5, '36.00', '180.00', NULL, NULL, '0.00', '180.00', 1),
(183, 87, 189, 84, 84, '3.13', '262.50', NULL, NULL, '0.00', '262.50', 1),
(184, 87, 190, 96, 96, '3.50', '336.00', NULL, NULL, '0.00', '336.00', 1),
(185, 87, 191, 48, 48, '4.17', '200.00', NULL, NULL, '0.00', '200.00', 1),
(186, 88, 192, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(187, 89, 193, 3, 3, '7.00', '21.00', NULL, NULL, '0.00', '21.00', 1),
(188, 93, 194, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(189, 95, 201, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(190, 95, 197, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(191, 95, 199, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(192, 96, 202, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(193, 96, 203, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(194, 96, 205, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(195, 96, 206, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(196, 96, 204, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(197, 97, 201, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(198, 97, 197, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(199, 97, 209, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(200, 97, 211, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(201, 97, 212, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(202, 97, 213, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(203, 97, 214, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(204, 97, 215, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(205, 97, 216, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(206, 98, 217, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(207, 98, 218, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(208, 98, 219, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(209, 99, 220, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(210, 99, 32, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(211, 100, 221, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(212, 100, 222, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(213, 100, 223, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(214, 100, 224, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(215, 100, 225, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(216, 100, 226, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(217, 101, 227, 4, 4, '20.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(218, 102, 189, 150, 150, '3.33', '500.00', NULL, NULL, '0.00', '500.00', 1),
(219, 103, 229, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(220, 103, 230, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(221, 104, 189, 0, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 1),
(222, 106, 231, 4, 4, '8.00', '32.00', NULL, NULL, '0.00', '32.00', 1),
(223, 106, 232, 0.5, 0.5, '90.00', '45.00', NULL, NULL, '0.00', '45.00', 1),
(224, 107, 233, 1, 1, '7.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(225, 107, 234, 1, 1, '8.50', '8.50', NULL, NULL, '0.00', '8.50', 1),
(226, 108, 191, 72, 72, '4.16', '299.38', NULL, NULL, '0.00', '299.38', 1),
(227, 108, 235, 24, 24, '4.16', '99.79', NULL, NULL, '0.00', '99.79', 1),
(228, 108, 236, 48, 48, '2.90', '139.41', NULL, NULL, '0.00', '139.41', 1),
(229, 108, 190, 360, 360, '2.90', '1045.54', NULL, NULL, '0.00', '1045.54', 1),
(230, 108, 237, 192, 192, '2.94', '564.16', NULL, NULL, '0.00', '564.16', 1),
(231, 109, 37, 1.25, 1.25, '80.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(232, 109, 182, 2, 2, '40.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(233, 109, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(234, 109, 104, 0.86, 0.86, '35.00', '30.10', NULL, NULL, '0.00', '30.10', 1),
(235, 109, 53, 1.155, 1.155, '26.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(236, 109, 42, 1.43, 1.43, '35.00', '50.05', NULL, NULL, '0.00', '50.05', 1),
(237, 109, 238, 3.334, 3.334, '15.00', '50.01', NULL, NULL, '0.00', '50.01', 1),
(238, 109, 239, 3.334, 3.334, '15.00', '50.01', NULL, NULL, '0.00', '50.01', 1),
(239, 110, 37, 1.25, 1.25, '80.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(240, 110, 42, 2.29, 2.29, '35.00', '80.15', NULL, NULL, '0.00', '80.15', 1),
(241, 110, 238, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(242, 110, 239, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(243, 110, 53, 1.155, 1.155, '26.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(244, 110, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(245, 110, 104, 0.86, 0.86, '35.00', '30.10', NULL, NULL, '0.00', '30.10', 1),
(246, 111, 24, 5, 5, '2.90', '14.50', NULL, NULL, '0.00', '14.50', 1),
(247, 111, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(248, 111, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(249, 111, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(250, 111, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(251, 111, 154, 30, 30, '0.35', '10.50', NULL, NULL, '0.00', '10.50', 1),
(252, 111, 187, 30, 30, '0.18', '5.40', NULL, NULL, '0.00', '5.40', 1),
(253, 111, 156, 20, 20, '0.18', '3.60', NULL, NULL, '0.00', '3.60', 1),
(254, 111, 35, 12, 12, '0.42', '5.00', NULL, NULL, '0.00', '5.00', 1),
(255, 111, 107, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(256, 111, 131, 18, 18, '1.44', '26.00', NULL, NULL, '0.00', '26.00', 1),
(257, 111, 27, 100, 100, '0.11', '10.50', NULL, NULL, '0.00', '10.50', 1),
(258, 112, 118, 6.25, 6.25, '2.40', '15.00', NULL, NULL, '0.00', '15.00', 1),
(259, 112, 117, 5.26, 5.26, '1.90', '10.00', NULL, NULL, '0.00', '10.00', 1),
(260, 112, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(261, 112, 43, 7.89, 7.89, '1.90', '15.00', NULL, NULL, '0.00', '15.00', 1),
(262, 112, 180, 35, 35, '2.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(263, 112, 102, 11.42, 11.42, '3.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(264, 112, 105, 5.33, 5.33, '7.50', '40.01', NULL, NULL, '0.00', '40.01', 1),
(265, 112, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(266, 112, 240, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(267, 112, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(268, 112, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(269, 112, 5, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(270, 112, 24, 7, 7, '2.90', '20.30', NULL, NULL, '0.00', '20.30', 1),
(271, 114, 43, 11.36, 11.36, '2.20', '25.00', NULL, NULL, '0.00', '25.00', 1),
(272, 114, 24, 4.68, 4.68, '3.20', '15.00', NULL, NULL, '0.00', '15.00', 1),
(273, 114, 102, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(274, 114, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(275, 114, 34, 96, 96, '0.06', '6.00', NULL, NULL, '0.00', '6.00', 1),
(276, 114, 1, 1, 1, '165.00', '165.00', NULL, NULL, '0.00', '165.00', 1),
(277, 114, 130, 25, 25, '0.20', '5.00', NULL, NULL, '0.00', '5.00', 1),
(278, 114, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(279, 114, 138, 4, 4, '5.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(280, 114, 54, 3.07, 3.07, '6.50', '20.00', NULL, NULL, '0.00', '20.00', 1),
(281, 114, 154, 30, 30, '0.25', '7.50', NULL, NULL, '0.00', '7.50', 1),
(282, 114, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(283, 114, 125, 1.66, 1.66, '6.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(284, 114, 174, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(285, 114, 178, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(286, 115, 37, 1.25, 1.25, '80.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(287, 115, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(288, 116, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(289, 116, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(290, 116, 117, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(291, 116, 102, 8, 8, '5.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(292, 116, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(293, 116, 24, 5, 5, '3.20', '16.00', NULL, NULL, '0.00', '16.00', 1),
(294, 116, 241, 60, 60, '0.08', '5.00', NULL, NULL, '0.00', '5.00', 1),
(295, 116, 143, 1.11, 1.11, '4.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(296, 116, 131, 18, 18, '1.39', '25.00', NULL, NULL, '0.00', '25.00', 1),
(297, 116, 94, 0.62, 0.62, '8.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(298, 117, 84, 89, 89, '0.34', '30.26', NULL, NULL, '0.00', '30.26', 1),
(299, 118, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(300, 118, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(301, 118, 43, 9.09, 9.09, '2.20', '20.00', NULL, NULL, '0.00', '20.00', 1),
(302, 118, 102, 8, 8, '5.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(303, 118, 39, 13.33, 13.33, '7.50', '100.00', NULL, NULL, '0.00', '100.00', 1),
(304, 118, 130, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(305, 118, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(306, 118, 176, 1, 1, '5.50', '5.50', NULL, NULL, '0.00', '5.50', 1),
(307, 118, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(308, 118, 242, 2, 2, '4.50', '9.00', NULL, NULL, '0.00', '9.00', 1),
(309, 118, 71, 2, 2, '4.50', '9.00', NULL, NULL, '0.00', '9.00', 1),
(310, 118, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(311, 118, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(312, 118, 175, 1, 1, '40.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(313, 118, 107, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(314, 118, 187, 10, 10, '0.18', '1.80', NULL, NULL, '0.00', '1.80', 1),
(315, 118, 156, 20, 20, '0.18', '3.60', NULL, NULL, '0.00', '3.60', 1),
(316, 118, 1, 1, 1, '165.00', '165.00', NULL, NULL, '0.00', '165.00', 1),
(317, 118, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(318, 118, 27, 2, 2, '10.50', '21.00', NULL, NULL, '0.00', '21.00', 1),
(319, 118, 26, 3, 3, '6.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(320, 118, 31, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(321, 118, 115, 1, 1, '23.00', '23.00', NULL, NULL, '0.00', '23.00', 1),
(322, 118, 100, 1, 1, '5.20', '5.20', NULL, NULL, '0.00', '5.20', 1),
(323, 119, 24, 6, 6, '3.20', '19.20', NULL, NULL, '0.00', '19.20', 1),
(324, 119, 102, 6, 6, '5.00', '30.00', NULL, NULL, '0.00', '30.00', 1),
(325, 119, 39, 10.66, 10.66, '7.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(326, 119, 118, 4.34, 4.34, '2.30', '10.00', NULL, NULL, '0.00', '10.00', 1),
(327, 119, 240, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(328, 119, 66, 12, 12, '0.92', '11.00', NULL, NULL, '0.00', '11.00', 1),
(329, 119, 92, 6, 6, '1.42', '8.50', NULL, NULL, '0.00', '8.50', 1),
(330, 119, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(331, 119, 54, 3.07, 3.07, '6.50', '20.00', NULL, NULL, '0.00', '20.00', 1),
(332, 119, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(333, 120, 243, 1, 1, '101.69', '101.69', NULL, NULL, '0.00', '101.69', 1),
(334, 121, 244, 24, 24, '2.67', '64.00', NULL, NULL, '0.00', '64.00', 0),
(335, 121, 245, 6, 6, '6.58', '39.50', NULL, NULL, '0.00', '39.50', 0),
(336, 121, 9, 24, 24, '1.54', '37.00', NULL, NULL, '0.00', '37.00', 0),
(337, 122, 236, 12, 12, '3.50', '42.00', NULL, NULL, '0.00', '42.00', 1),
(338, 123, 244, 24, 24, '2.67', '64.00', NULL, NULL, '0.00', '64.00', 1),
(339, 123, 245, 6, 6, '6.58', '39.50', NULL, NULL, '0.00', '39.50', 1),
(340, 123, 9, 24, 24, '1.54', '37.00', NULL, NULL, '0.00', '37.00', 1),
(341, 124, 247, 4, 4, '48.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(342, 125, 246, 15, 15, '1.07', '16.00', NULL, NULL, '0.00', '16.00', 1),
(343, 126, 248, 8, 8, '256.00', '256.00', NULL, NULL, '0.00', '256.00', 1),
(344, 126, 249, 3, 3, '90.00', '90.00', NULL, NULL, '0.00', '90.00', 1),
(345, 127, 37, 1, 1, '80.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(346, 127, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(347, 127, 238, 6.7, 6.7, '15.00', '100.50', NULL, NULL, '0.00', '100.50', 1),
(348, 127, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(349, 127, 104, 0.575, 0.575, '35.00', '20.13', NULL, NULL, '0.00', '20.13', 1),
(350, 128, 64, 100, 100, '0.31', '31.00', NULL, NULL, '0.00', '31.00', 1),
(351, 128, 63, 50, 50, '0.46', '23.00', NULL, NULL, '0.00', '23.00', 1),
(352, 128, 70, 100, 100, '0.40', '40.00', NULL, NULL, '0.00', '40.00', 1),
(353, 128, 253, 200, 200, '0.28', '56.00', NULL, NULL, '0.00', '56.00', 1),
(354, 128, 108, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(355, 129, 7, 7, 7, '3.00', '21.00', NULL, NULL, '0.00', '21.00', 1),
(356, 130, 76, 48, 48, '1.64', '78.75', NULL, NULL, '0.00', '78.75', 1),
(357, 131, 58, 24, 24, '2.67', '64.05', NULL, NULL, '0.00', '64.05', 1),
(358, 131, 86, 96, 96, '2.67', '256.20', NULL, NULL, '0.00', '256.20', 1),
(359, 131, 89, 18, 18, '6.67', '120.04', NULL, NULL, '0.00', '120.04', 1),
(360, 131, 59, 12, 12, '6.67', '80.03', NULL, NULL, '0.00', '80.03', 1),
(361, 131, 8, 120, 120, '1.52', '182.60', NULL, NULL, '0.00', '182.60', 1),
(362, 131, 87, 24, 24, '1.97', '47.25', NULL, NULL, '0.00', '47.25', 1),
(363, 131, 61, 60, 60, '1.97', '118.13', NULL, NULL, '0.00', '118.13', 1),
(364, 131, 88, 18, 18, '5.55', '99.89', NULL, NULL, '0.00', '99.89', 1),
(365, 131, 57, 12, 12, '5.55', '66.60', NULL, NULL, '0.00', '66.60', 1),
(366, 132, 151, 1.01, 1.01, '17.04', '17.04', NULL, NULL, '0.00', '17.04', 1),
(367, 133, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(368, 133, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(369, 133, 43, 9.09, 9.09, '2.20', '20.00', NULL, NULL, '0.00', '20.00', 1),
(370, 133, 130, 0.25, 0.25, '2.20', '5.00', NULL, NULL, '0.00', '5.00', 1),
(371, 133, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(372, 133, 107, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(373, 133, 131, 1, 1, '26.00', '26.00', NULL, NULL, '0.00', '26.00', 1),
(374, 133, 175, 1, 1, '40.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(375, 133, 27, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(376, 133, 254, 0.8, 0.8, '7.50', '6.00', NULL, NULL, '0.00', '6.00', 1),
(377, 134, 42, 2.5, 2.5, '32.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(378, 134, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(379, 134, 142, 0.75, 0.75, '20.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(380, 135, 67, 10, 10, '40.00', '400.00', NULL, NULL, '0.00', '400.00', 1),
(381, 136, 31, 1, 1, '11.00', '11.00', NULL, NULL, '0.00', '11.00', 1),
(382, 137, 157, 3, 3, '35.00', '105.00', NULL, NULL, '0.00', '105.00', 1),
(383, 137, 37, 1, 1, '70.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(384, 137, 97, 1.56, 1.56, '45.00', '70.20', NULL, NULL, '0.00', '70.20', 1),
(385, 138, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(386, 138, 24, 4, 4, '3.20', '12.80', NULL, NULL, '0.00', '12.80', 1),
(387, 138, 43, 6.81, 6.81, '2.20', '15.00', NULL, NULL, '0.00', '15.00', 1),
(388, 138, 102, 12.5, 12.5, '4.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(389, 138, 107, 17.77, 17.77, '4.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(390, 138, 255, 1, 1, '23.00', '23.00', NULL, NULL, '0.00', '23.00', 1),
(391, 138, 66, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(392, 138, 101, 0.25, 0.25, '32.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(393, 138, 138, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(394, 138, 14, 0.7, 0.7, '10.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(395, 138, 13, 0.7, 0.7, '10.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(396, 138, 131, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(397, 139, 67, 20, 20, '40.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(398, 140, 256, 1, 1, '150.00', '150.00', NULL, NULL, '0.00', '150.00', 1),
(399, 141, 257, 2, 2, '20.50', '41.00', NULL, NULL, '0.00', '41.00', 1),
(400, 141, 259, 5, 5, '4.40', '22.00', NULL, NULL, '0.00', '22.00', 1),
(401, 141, 260, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(402, 141, 262, 1, 1, '14.00', '14.00', NULL, NULL, '0.00', '14.00', 1),
(403, 141, 262, 3, 3, '14.00', '40.50', NULL, NULL, '0.00', '40.50', 1),
(404, 141, 85, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(405, 142, 77, 4, 4, '212.00', '212.00', NULL, NULL, '0.00', '212.00', 1),
(406, 143, 263, 20, 20, '5.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(407, 143, 108, 2, 2, '10.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(408, 143, 63, 100, 100, '0.46', '46.00', NULL, NULL, '0.00', '46.00', 1),
(409, 143, 264, 300, 300, '0.34', '102.00', NULL, NULL, '0.00', '102.00', 1),
(410, 143, 64, 100, 100, '0.31', '31.00', NULL, NULL, '0.00', '31.00', 1),
(411, 143, 265, 50, 50, '0.60', '30.00', NULL, NULL, '0.00', '30.00', 1),
(412, 143, 253, 50, 50, '0.28', '14.00', NULL, NULL, '0.00', '14.00', 1),
(413, 144, 7, 4, 4, '3.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(414, 146, 24, 4, 4, '3.20', '12.80', NULL, NULL, '0.00', '12.80', 1),
(415, 146, 54, 2.3, 2.3, '6.50', '15.00', NULL, NULL, '0.00', '15.00', 1),
(416, 146, 269, 3, 3, '3.00', '9.00', NULL, NULL, '0.00', '9.00', 1),
(417, 146, 130, 12, 12, '0.50', '6.00', NULL, NULL, '0.00', '6.00', 1),
(418, 146, 271, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(419, 146, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(420, 146, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(421, 146, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(422, 146, 43, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(423, 146, 102, 11.11, 11.11, '4.50', '50.01', NULL, NULL, '0.00', '50.01', 1),
(424, 146, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(425, 146, 155, 1, 1, '2.00', '2.00', NULL, NULL, '0.00', '2.00', 1),
(426, 146, 154, 1, 1, '2.50', '2.50', NULL, NULL, '0.00', '2.50', 1),
(427, 146, 156, 1, 1, '1.80', '1.80', NULL, NULL, '0.00', '1.80', 1),
(428, 147, 97, 1.556, 1.556, '45.00', '70.02', NULL, NULL, '0.00', '70.02', 1),
(429, 147, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(430, 147, 37, 1, 1, '70.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(431, 148, 267, 1, 1, '65.00', '65.00', NULL, NULL, '0.00', '65.00', 1),
(432, 148, 231, 4, 4, '6.50', '26.00', NULL, NULL, '0.00', '26.00', 1),
(433, 148, 272, 2, 2, '32.50', '65.00', NULL, NULL, '0.00', '65.00', 1),
(434, 149, 222, 1, 1, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(435, 150, 24, 5, 5, '3.20', '16.00', NULL, NULL, '0.00', '16.00', 1),
(436, 150, 130, 0.5, 0.5, '20.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(437, 150, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(438, 150, 176, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(439, 150, 54, 2.3, 2.3, '6.50', '15.00', NULL, NULL, '0.00', '15.00', 1),
(440, 150, 269, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(441, 150, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(442, 150, 94, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(443, 150, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(444, 150, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(445, 150, 107, 17.77, 17.77, '4.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(446, 150, 113, 1, 1, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(447, 150, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(448, 150, 117, 11.11, 11.11, '1.80', '20.00', NULL, NULL, '0.00', '20.00', 1),
(449, 150, 179, 2.85, 2.85, '3.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(450, 150, 118, 4.54, 4.54, '2.20', '10.00', NULL, NULL, '0.00', '10.00', 1),
(451, 150, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(452, 151, 67, 15, 15, '40.00', '600.00', NULL, NULL, '0.00', '600.00', 1),
(453, 152, 37, 1, 1, '80.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(454, 152, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(455, 153, 102, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(456, 154, 77, 3, 3, '53.00', '159.00', NULL, NULL, '0.00', '159.00', 1),
(457, 155, 75, 0.64, 0.64, '15.60', '10.00', NULL, NULL, '0.00', '10.00', 1),
(458, 156, 102, 2.7, 2.7, '5.50', '14.85', NULL, NULL, '0.00', '14.85', 1),
(459, 157, 83, 4, 4, '5.50', '22.00', NULL, NULL, '0.00', '22.00', 1),
(460, 157, 32, 1, 1, '1.00', '1.00', NULL, NULL, '0.00', '1.00', 1),
(461, 158, 42, 2, 2, '30.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(462, 158, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(463, 159, 37, 2.145, 2.145, '70.00', '150.15', NULL, NULL, '0.00', '150.15', 1),
(464, 160, 24, 5, 5, '3.20', '16.00', NULL, NULL, '0.00', '16.00', 1),
(465, 160, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(466, 160, 38, 8, 8, '2.50', '20.00', NULL, NULL, '0.00', '20.00', 1),
(467, 160, 43, 9.1, 9.1, '2.20', '20.02', NULL, NULL, '0.00', '20.02', 1),
(468, 160, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(469, 160, 115, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(470, 160, 273, 1, 1, '6.00', '6.00', NULL, NULL, '0.00', '6.00', 1),
(471, 160, 66, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(472, 160, 101, 0.25, 0.25, '32.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(473, 160, 35, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(474, 160, 34, 3, 3, '1.50', '4.50', NULL, NULL, '0.00', '4.50', 1),
(475, 160, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(476, 160, 153, 0.5, 0.5, '90.00', '45.00', NULL, NULL, '0.00', '45.00', 1),
(477, 160, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(478, 160, 14, 0.7, 0.7, '10.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(479, 160, 138, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(480, 160, 154, 1, 1, '2.50', '2.50', NULL, NULL, '0.00', '2.50', 1),
(481, 160, 187, 1, 1, '2.00', '2.00', NULL, NULL, '0.00', '2.00', 1),
(482, 160, 102, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(483, 161, 135, 2, 2, '3.20', '6.40', NULL, NULL, '0.00', '6.40', 1),
(484, 161, 274, 0.04, 0.04, '100.00', '4.00', NULL, NULL, '0.00', '4.00', 1),
(485, 162, 275, 0.335, 0.335, '15.01', '5.03', NULL, NULL, '0.00', '5.03', 1),
(486, 162, 178, 1, 1, '8.50', '8.50', NULL, NULL, '0.00', '8.50', 1),
(487, 164, 276, 2, 2, '49.10', '98.20', NULL, NULL, '0.00', '98.20', 1),
(488, 164, 277, 1, 1, '92.40', '92.40', NULL, NULL, '0.00', '92.40', 1),
(489, 165, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(490, 165, 182, 2, 2, '40.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(491, 166, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(492, 167, 118, 6.81, 6.81, '2.20', '15.00', NULL, NULL, '0.00', '15.00', 0),
(493, 167, 117, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 0),
(494, 167, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 0),
(495, 167, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 0),
(496, 167, 107, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 0),
(497, 167, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 0),
(498, 167, 131, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 0),
(499, 167, 33, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 0),
(500, 167, 154, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 0),
(501, 167, 143, 2.85, 2.85, '3.50', '10.00', NULL, NULL, '0.00', '10.00', 0),
(502, 167, 113, 1, 1, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 0),
(503, 167, 279, 1, 1, '19.00', '19.00', NULL, NULL, '0.00', '19.00', 0),
(504, 167, 102, 12.5, 12.5, '4.00', '50.00', NULL, NULL, '0.00', '50.00', 0),
(505, 168, 67, 20, 20, '40.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(506, 169, 280, 0.25, 0.25, '3.03', '75.82', NULL, NULL, '0.00', '75.82', 1),
(507, 169, 76, 48, 48, '1.64', '78.75', NULL, NULL, '0.00', '78.75', 1),
(508, 169, 281, 12, 12, '4.10', '49.20', NULL, NULL, '0.00', '49.20', 1),
(509, 171, 282, 1, 1, '179.60', '179.60', NULL, NULL, '0.00', '179.60', 1),
(510, 172, 7, 7, 7, '3.00', '21.00', NULL, NULL, '0.00', '21.00', 1),
(511, 173, 283, 2, 2, '17.00', '34.00', NULL, NULL, '0.00', '34.00', 1),
(512, 173, 284, 1, 1, '3.50', '3.50', NULL, NULL, '0.00', '3.50', 1),
(513, 173, 290, 1, 1, '10.80', '10.80', NULL, NULL, '0.00', '10.80', 1),
(514, 173, 285, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(515, 173, 286, 2, 2, '2.70', '5.40', NULL, NULL, '0.00', '5.40', 1),
(516, 173, 287, 2, 2, '3.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(517, 173, 288, 1, 1, '0.35', '3.50', NULL, NULL, '0.00', '3.50', 1),
(518, 173, 28, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(519, 174, 102, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(520, 174, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(521, 174, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(522, 174, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(523, 174, 270, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(524, 174, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(525, 174, 15, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(526, 174, 101, 0.25, 0.25, '32.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(527, 174, 105, 7.14, 7.14, '7.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(528, 174, 41, 10, 10, '1.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(529, 174, 56, 10, 10, '1.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(530, 174, 291, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(531, 174, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(532, 175, 292, 12, 12, '0.35', '4.20', NULL, NULL, '0.00', '4.20', 1),
(533, 175, 84, 1, 1, '115.00', '115.00', NULL, NULL, '0.00', '115.00', 1),
(534, 176, 4, 6, 6, '93.03', '558.18', NULL, NULL, '0.00', '558.18', 1),
(535, 177, 4, 1, 1, '100.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(536, 177, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(537, 178, 37, 1.145, 1.145, '70.00', '80.15', NULL, NULL, '0.00', '80.15', 1),
(538, 179, 102, 6, 6, '5.00', '30.00', NULL, NULL, '0.00', '30.00', 1),
(539, 179, 92, 8, 8, '1.50', '12.00', NULL, NULL, '0.00', '12.00', 1),
(540, 179, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(541, 179, 16, 2, 2, '8.50', '17.00', NULL, NULL, '0.00', '17.00', 1),
(542, 179, 107, 17.77, 17.77, '4.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(543, 179, 131, 1, 1, '26.00', '26.00', NULL, NULL, '0.00', '26.00', 1),
(544, 179, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(545, 179, 26, 1, 1, '6.00', '6.00', NULL, NULL, '0.00', '6.00', 1),
(546, 179, 293, 1, 1, '12.50', '12.50', NULL, NULL, '0.00', '12.50', 1),
(547, 179, 294, 2, 2, '2.80', '5.60', NULL, NULL, '0.00', '5.60', 1),
(548, 180, 67, 20, 20, '40.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(549, 181, 77, 4, 4, '57.50', '230.00', NULL, NULL, '0.00', '230.00', 1),
(550, 183, 301, 4, 4, '17.00', '68.00', NULL, NULL, '0.00', '68.00', 1),
(551, 184, 7, 6, 6, '3.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(552, 185, 178, 2, 2, '8.50', '17.00', NULL, NULL, '0.00', '17.00', 1),
(553, 186, 75, 0.61, 0.61, '16.30', '10.00', NULL, NULL, '0.00', '10.00', 1),
(554, 188, 77, 3, 3, '57.50', '172.50', NULL, NULL, '0.00', '172.50', 1),
(555, 189, 266, 40, 40, '20.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(556, 190, 214, 1, 1, '188.00', '188.00', NULL, NULL, '0.00', '188.00', 1),
(557, 190, 250, 1, 1, '188.00', '188.00', NULL, NULL, '0.00', '188.00', 1),
(558, 190, 251, 1, 1, '188.00', '188.00', NULL, NULL, '0.00', '188.00', 1),
(559, 190, 252, 1, 1, '292.00', '292.00', NULL, NULL, '0.00', '292.00', 1),
(560, 190, 295, 1, 1, '292.00', '292.00', NULL, NULL, '0.00', '292.00', 1),
(561, 190, 296, 1, 1, '64.50', '64.50', NULL, NULL, '0.00', '64.50', 1),
(562, 190, 297, 1, 1, '45.00', '45.00', NULL, NULL, '0.00', '45.00', 1),
(563, 190, 300, 1, 1, '14.00', '14.00', NULL, NULL, '0.00', '14.00', 1),
(564, 190, 302, 2, 2, '204.00', '204.00', NULL, NULL, '0.00', '204.00', 1),
(565, 190, 298, 2, 2, '124.00', '124.00', NULL, NULL, '0.00', '124.00', 1),
(566, 190, 299, 2, 2, '90.00', '90.00', NULL, NULL, '0.00', '90.00', 1),
(567, 191, 303, 3, 3, '13.00', '39.00', NULL, NULL, '0.00', '39.00', 1),
(568, 191, 304, 2, 2, '14.50', '29.00', NULL, NULL, '0.00', '29.00', 1),
(569, 192, 113, 1, 1, '17.00', '17.00', NULL, NULL, '0.00', '17.00', 1),
(570, 192, 17, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(571, 193, 305, 18, 18, '162.00', '162.00', NULL, NULL, '0.00', '162.00', 1),
(572, 194, 306, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(573, 195, 58, 60, 60, '2.67', '160.13', NULL, NULL, '0.00', '160.13', 1),
(574, 195, 244, 84, 84, '2.67', '224.18', NULL, NULL, '0.00', '224.18', 1),
(575, 195, 245, 18, 18, '6.67', '120.04', NULL, NULL, '0.00', '120.04', 1),
(576, 195, 59, 12, 12, '6.67', '80.03', NULL, NULL, '0.00', '80.03', 1),
(577, 195, 9, 150, 150, '1.22', '182.60', NULL, NULL, '0.00', '182.60', 1),
(578, 195, 8, 60, 60, '1.22', '73.04', NULL, NULL, '0.00', '73.04', 1),
(579, 195, 87, 60, 60, '1.87', '112.21', NULL, NULL, '0.00', '112.21', 1),
(580, 195, 61, 60, 60, '1.87', '112.21', NULL, NULL, '0.00', '112.21', 1),
(581, 195, 88, 12, 12, '5.55', '66.60', NULL, NULL, '0.00', '66.60', 1),
(582, 195, 307, 4, 4, '6.72', '26.87', NULL, NULL, '0.00', '26.87', 1),
(583, 195, 309, 4, 4, '6.72', '26.88', NULL, NULL, '0.00', '26.88', 1),
(584, 196, 310, 1.8, 1.8, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(585, 197, 311, 1, 1, '240.00', '240.00', NULL, NULL, '0.00', '240.00', 1),
(586, 197, 312, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(587, 198, 313, 24, 24, '2.92', '70.08', NULL, NULL, '0.00', '70.08', 1),
(588, 199, 67, 60, 60, '40.00', '2400.00', NULL, NULL, '0.00', '2400.00', 1),
(589, 200, 7, 6, 6, '3.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(590, 201, 77, 4, 4, '57.50', '230.00', NULL, NULL, '0.00', '230.00', 1),
(591, 202, 84, 360, 360, '0.28', '100.00', NULL, NULL, '0.00', '100.00', 1),
(592, 203, 314, 1, 1, '50.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(593, 203, 315, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(594, 203, 312, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(595, 204, 316, 30, 30, '0.79', '23.60', NULL, NULL, '0.00', '23.60', 1),
(596, 204, 317, 24, 24, '3.72', '89.20', NULL, NULL, '0.00', '89.20', 1),
(597, 204, 318, 24, 24, '3.72', '89.20', NULL, NULL, '0.00', '89.20', 1),
(598, 205, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(599, 205, 43, 6.5, 6.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(600, 205, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(601, 205, 177, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(602, 205, 94, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(603, 205, 102, 8, 8, '5.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(604, 205, 154, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(605, 205, 156, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(606, 205, 187, 2, 2, '2.00', '4.00', NULL, NULL, '0.00', '4.00', 1),
(607, 205, 72, 1.887, 1.887, '8.00', '15.10', NULL, NULL, '0.00', '15.10', 1),
(608, 205, 107, 10, 10, '4.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(609, 205, 113, 1, 1, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(610, 205, 134, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(611, 205, 131, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(612, 205, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(613, 206, 319, 1, 1, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(614, 206, 43, 9.09, 9.09, '2.20', '20.00', NULL, NULL, '0.00', '20.00', 1),
(615, 206, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(616, 206, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(617, 206, 54, 2.307, 2.307, '6.50', '15.00', NULL, NULL, '0.00', '15.00', 1),
(618, 206, 268, 3, 3, '3.20', '9.60', NULL, NULL, '0.00', '9.60', 1),
(619, 206, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(620, 206, 102, 11.111, 11.111, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(621, 206, 1, 1, 1, '155.00', '155.00', NULL, NULL, '0.00', '155.00', 1),
(622, 206, 39, 6.25, 6.25, '8.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(623, 206, 187, 2, 2, '2.00', '4.00', NULL, NULL, '0.00', '4.00', 1),
(624, 206, 156, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(625, 206, 154, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(626, 206, 129, 4, 4, '3.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(627, 206, 138, 2.222, 2.222, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(628, 206, 118, 4.545, 4.545, '2.20', '10.00', NULL, NULL, '0.00', '10.00', 1),
(629, 206, 31, 0.5, 0.5, '11.00', '5.50', NULL, NULL, '0.00', '5.50', 1),
(630, 206, 143, 1.714, 1.714, '3.50', '6.00', NULL, NULL, '0.00', '6.00', 1),
(631, 206, 72, 1.875, 1.875, '8.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(632, 207, 97, 1.78, 1.78, '45.00', '80.10', NULL, NULL, '0.00', '80.10', 1),
(633, 207, 37, 1.145, 1.145, '70.00', '80.15', NULL, NULL, '0.00', '80.15', 1),
(634, 208, 102, 6.66, 6.66, '4.50', '30.00', NULL, NULL, '0.00', '30.00', 1),
(635, 208, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(636, 208, 94, 1.25, 1.25, '8.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(637, 208, 175, 1, 1, '42.00', '42.00', NULL, NULL, '0.00', '42.00', 1),
(638, 208, 28, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(639, 208, 99, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(640, 208, 138, 1.55, 1.55, '4.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(641, 208, 129, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(642, 208, 31, 0.5, 0.5, '11.00', '5.50', NULL, NULL, '0.00', '5.50', 1),
(643, 210, 43, 9.09, 9.09, '2.20', '20.00', NULL, NULL, '0.00', '20.00', 1),
(644, 210, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(645, 210, 54, 2.3, 2.3, '6.50', '15.00', NULL, NULL, '0.00', '15.00', 1),
(646, 210, 268, 3, 3, '3.00', '9.00', NULL, NULL, '0.00', '9.00', 1),
(647, 210, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(648, 210, 102, 12.5, 12.5, '4.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(649, 210, 28, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(650, 210, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(651, 210, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(652, 210, 39, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(653, 210, 49, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(654, 210, 118, 2, 2, '3.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(655, 210, 131, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(656, 210, 35, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(657, 210, 34, 6, 6, '1.50', '9.00', NULL, NULL, '0.00', '9.00', 1),
(658, 211, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(659, 211, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(660, 211, 130, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(661, 211, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(662, 211, 66, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(663, 211, 39, 6.25, 6.25, '8.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(664, 211, 138, 1.55, 1.55, '4.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(665, 211, 143, 2.85, 2.85, '3.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(666, 211, 43, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(667, 212, 182, 2, 2, '40.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(668, 212, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(669, 213, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(670, 213, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(671, 213, 43, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(672, 213, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(673, 213, 94, 1.33, 1.33, '7.50', '10.01', NULL, NULL, '0.00', '10.01', 1),
(674, 213, 16, 2, 2, '8.50', '17.00', NULL, NULL, '0.00', '17.00', 1),
(675, 213, 291, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(676, 213, 26, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(677, 213, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(678, 213, 76, 1, 1, '21.50', '21.50', NULL, NULL, '0.00', '21.50', 1),
(679, 213, 107, 12.5, 12.5, '4.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(680, 213, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(681, 213, 118, 2.2, 2.2, '5.00', '11.00', NULL, NULL, '0.00', '11.00', 1),
(682, 214, 320, 1, 1, '45.00', '45.00', NULL, NULL, '0.00', '45.00', 1),
(683, 215, 266, 40, 40, '20.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(684, 216, 37, 1.143, 1.143, '70.00', '80.01', NULL, NULL, '0.00', '80.01', 1),
(685, 216, 42, 2, 2, '30.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(686, 216, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(687, 216, 142, 0.75, 0.75, '20.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(688, 217, 321, 2, 2, '12.00', '24.00', NULL, NULL, '0.00', '24.00', 1),
(689, 217, 322, 2, 2, '10.50', '21.00', NULL, NULL, '0.00', '21.00', 1),
(690, 218, 4, 6, 6, '85.59', '513.54', NULL, NULL, '0.00', '513.54', 1),
(691, 218, 2, 2, 2, '139.01', '278.02', NULL, NULL, '0.00', '278.02', 1),
(692, 219, 87, 24, 24, '2.00', '48.00', NULL, NULL, '0.00', '48.00', 1);
INSERT INTO `detalle_compra` (`id_detalle_compra`, `id_orden_compra`, `id_recurso_sede`, `detalle_compra_cantidad`, `detalle_compra_cantidad_recibida`, `detalle_compra_precio_compra`, `detalle_compra_total_pedido`, `detalle_compra_tipo_moneda`, `detalle_compra_tipo_cambio`, `detalle_compra_total_dolares`, `detalle_compra_total_pagado`, `detalle_compra_estado`) VALUES
(693, 219, 86, 24, 24, '2.92', '70.00', NULL, NULL, '0.00', '70.00', 1),
(694, 219, 59, 6, 6, '6.67', '40.00', NULL, NULL, '0.00', '40.00', 1),
(695, 219, 89, 6, 6, '6.67', '40.00', NULL, NULL, '0.00', '40.00', 1),
(696, 220, 67, 20, 20, '40.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(697, 221, 67, 20, 20, '40.00', '800.00', NULL, NULL, '0.00', '800.00', 1),
(698, 222, 86, 48, 48, '3.00', '144.00', NULL, NULL, '0.00', '144.00', 1),
(699, 222, 87, 48, 48, '2.00', '96.00', NULL, NULL, '0.00', '96.00', 1),
(700, 222, 59, 12, 12, '6.67', '80.00', NULL, NULL, '0.00', '80.00', 1),
(701, 222, 9, 3, 3, '19.00', '57.00', NULL, NULL, '0.00', '57.00', 1),
(702, 223, 265, 100, 100, '0.60', '60.00', NULL, NULL, '0.00', '60.00', 1),
(703, 223, 70, 100, 100, '0.40', '40.00', NULL, NULL, '0.00', '40.00', 1),
(704, 223, 253, 100, 100, '0.28', '28.00', NULL, NULL, '0.00', '28.00', 1),
(705, 223, 64, 50, 50, '0.31', '15.50', NULL, NULL, '0.00', '15.50', 1),
(706, 223, 108, 2, 2, '10.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(707, 224, 76, 96, 96, '1.73', '166.25', NULL, NULL, '0.00', '166.25', 1),
(708, 225, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(709, 225, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(710, 225, 43, 9.09, 9.09, '2.20', '20.00', NULL, NULL, '0.00', '20.00', 1),
(711, 225, 101, 0.25, 0.25, '32.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(712, 225, 66, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(713, 225, 130, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(714, 225, 102, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(715, 225, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(716, 225, 118, 4.54, 4.54, '2.20', '10.00', NULL, NULL, '0.00', '10.00', 1),
(717, 225, 27, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(718, 225, 4, 0.5, 0.5, '100.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(719, 225, 107, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(720, 225, 35, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(721, 225, 39, 6.25, 6.25, '8.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(722, 226, 42, 2, 2, '30.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(723, 226, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(724, 226, 142, 0.75, 0.75, '20.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(725, 226, 37, 1.143, 1.143, '70.00', '80.01', NULL, NULL, '0.00', '80.01', 1),
(726, 228, 323, 0.5, 0.5, '7.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(727, 229, 67, 15, 15, '400.00', '6000.00', NULL, NULL, '0.00', '6000.00', 1),
(728, 231, 44, 5.3, 5.3, '36.00', '192.00', NULL, NULL, '0.00', '192.00', 1),
(729, 232, 324, 1, 1, '19.00', '19.00', NULL, NULL, '0.00', '19.00', 1),
(730, 232, 262, 3, 3, '13.50', '40.50', NULL, NULL, '0.00', '40.50', 1),
(731, 232, 325, 2, 2, '6.50', '13.00', NULL, NULL, '0.00', '13.00', 1),
(732, 232, 31, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(733, 232, 328, 5, 5, '1.90', '9.50', NULL, NULL, '0.00', '9.50', 1),
(734, 232, 326, 1, 1, '6.50', '6.50', NULL, NULL, '0.00', '6.50', 1),
(735, 232, 32, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(736, 232, 29, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(737, 233, 249, 3, 3, '93.00', '93.00', NULL, NULL, '0.00', '93.00', 1),
(738, 234, 337, 2, 2, '44.00', '44.00', NULL, NULL, '0.00', '44.00', 1),
(739, 234, 338, 2, 2, '42.00', '42.00', NULL, NULL, '0.00', '42.00', 1),
(740, 234, 339, 1, 1, '0.30', '0.30', NULL, NULL, '0.00', '0.30', 1),
(741, 234, 32, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(742, 235, 20, 10, 10, '7.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(743, 235, 340, 1.43, 1.43, '14.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(744, 235, 14, 0.42, 0.42, '12.00', '5.04', NULL, NULL, '0.00', '5.04', 1),
(745, 235, 13, 0.583, 0.583, '12.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(746, 235, 341, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(747, 235, 275, 0.42, 0.42, '12.00', '5.04', NULL, NULL, '0.00', '5.04', 1),
(748, 236, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(749, 236, 42, 2, 2, '30.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(750, 236, 142, 0.75, 0.75, '20.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(751, 236, 37, 1.143, 1.143, '70.00', '80.01', NULL, NULL, '0.00', '80.01', 1),
(752, 237, 327, 2, 2, '5.70', '11.40', NULL, NULL, '0.00', '11.40', 1),
(753, 237, 329, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(754, 237, 330, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(755, 237, 285, 2, 2, '2.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(756, 237, 331, 3, 3, '20.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(757, 237, 332, 1, 1, '4.30', '4.30', NULL, NULL, '0.00', '4.30', 1),
(758, 237, 333, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(759, 237, 287, 3, 3, '3.00', '9.00', NULL, NULL, '0.00', '9.00', 1),
(760, 237, 334, 1, 1, '4.20', '4.20', NULL, NULL, '0.00', '4.20', 1),
(761, 237, 335, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(762, 237, 283, 2, 2, '18.50', '37.00', NULL, NULL, '0.00', '37.00', 1),
(763, 237, 336, 1, 1, '9.50', '9.50', NULL, NULL, '0.00', '9.50', 1),
(764, 237, 32, 2, 2, '0.30', '0.60', NULL, NULL, '0.00', '0.60', 1),
(765, 237, 85, 2, 2, '0.30', '0.60', NULL, NULL, '0.00', '0.60', 1),
(766, 238, 87, 72, 72, '2.00', '144.00', NULL, NULL, '0.00', '144.00', 1),
(767, 238, 86, 60, 60, '3.00', '180.00', NULL, NULL, '0.00', '180.00', 1),
(768, 238, 9, 24, 24, '1.58', '38.00', NULL, NULL, '0.00', '38.00', 1),
(769, 238, 59, 12, 12, '6.67', '80.00', NULL, NULL, '0.00', '80.00', 1),
(770, 239, 343, 6.369, 6.369, '100.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(771, 240, 342, 1, 1, '10.50', '10.50', NULL, NULL, '0.00', '10.50', 1),
(772, 240, 344, 1, 1, '5.50', '5.50', NULL, NULL, '0.00', '5.50', 1),
(773, 241, 118, 6.81, 6.81, '2.20', '15.00', NULL, NULL, '0.00', '15.00', 1),
(774, 241, 154, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(775, 241, 345, 1, 1, '23.00', '23.00', NULL, NULL, '0.00', '23.00', 1),
(776, 241, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(777, 241, 54, 2.3, 2.3, '6.50', '15.00', NULL, NULL, '0.00', '15.00', 1),
(778, 241, 270, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(779, 241, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(780, 241, 102, 8, 8, '5.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(781, 241, 107, 17.77, 17.77, '4.50', '80.00', NULL, NULL, '0.00', '80.00', 1),
(782, 241, 131, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(783, 241, 26, 4, 4, '3.50', '14.00', NULL, NULL, '0.00', '14.00', 1),
(784, 241, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(785, 241, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(786, 241, 319, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(787, 242, 17, 2, 2, '14.00', '28.00', NULL, NULL, '0.00', '28.00', 1),
(788, 242, 347, 0.585, 0.585, '12.99', '7.30', NULL, NULL, '0.00', '7.30', 1),
(789, 243, 348, 3, 3, '4.80', '14.40', NULL, NULL, '0.00', '14.40', 1),
(790, 243, 350, 1, 1, '7.70', '7.70', NULL, NULL, '0.00', '7.70', 1),
(791, 243, 351, 3, 3, '2.00', '6.00', NULL, NULL, '0.00', '6.00', 1),
(792, 243, 352, 1, 1, '9.00', '9.00', NULL, NULL, '0.00', '9.00', 1),
(793, 243, 354, 1, 1, '5.40', '5.40', NULL, NULL, '0.00', '5.40', 1),
(794, 243, 32, 1, 1, '0.30', '0.30', NULL, NULL, '0.00', '0.30', 1),
(795, 243, 353, 1, 1, '1.70', '1.70', NULL, NULL, '0.00', '1.70', 1),
(796, 244, 355, 2, 2, '2.00', '4.00', NULL, NULL, '0.00', '4.00', 1),
(797, 244, 344, 2, 2, '6.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(798, 244, 356, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(799, 245, 75, 0.67, 0.67, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(800, 246, 175, 1, 1, '58.00', '58.00', NULL, NULL, '0.00', '58.00', 1),
(801, 247, 83, 30, 30, '3.50', '105.00', NULL, NULL, '0.00', '105.00', 1),
(802, 248, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(803, 248, 43, 6.66, 6.66, '1.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(804, 248, 158, 17, 17, '3.50', '60.00', NULL, NULL, '0.00', '60.00', 1),
(805, 248, 24, 5, 5, '2.90', '14.50', NULL, NULL, '0.00', '14.50', 1),
(806, 248, 102, 10, 10, '4.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(807, 248, 15, 1, 1, '11.00', '11.00', NULL, NULL, '0.00', '11.00', 1),
(808, 248, 143, 1.25, 1.25, '4.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(809, 248, 17, 0.71, 0.71, '14.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(810, 248, 138, 1.66, 1.66, '6.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(811, 248, 107, 10, 10, '3.00', '30.00', NULL, NULL, '0.00', '30.00', 1),
(812, 248, 117, 5.55, 5.55, '1.80', '10.00', NULL, NULL, '0.00', '10.00', 1),
(813, 249, 266, 40, 40, '18.50', '740.00', NULL, NULL, '0.00', '740.00', 1),
(814, 250, 360, 1, 1, '70.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(815, 250, 361, 1, 1, '42.00', '42.00', NULL, NULL, '0.00', '42.00', 1),
(816, 250, 362, 4, 4, '40.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(817, 251, 363, 2, 2, '22.00', '22.00', NULL, NULL, '0.00', '22.00', 1),
(818, 251, 364, 5, 5, '19.00', '19.00', NULL, NULL, '0.00', '19.00', 1),
(819, 251, 365, 2, 2, '26.00', '26.00', NULL, NULL, '0.00', '26.00', 1),
(820, 251, 366, 2, 2, '14.00', '14.00', NULL, NULL, '0.00', '14.00', 1),
(821, 252, 370, 9, 9, '72.00', '72.00', NULL, NULL, '0.00', '72.00', 1),
(822, 253, 367, 2.16, 2.16, '168.48', '168.48', NULL, NULL, '0.00', '168.48', 1),
(823, 253, 368, 2, 2, '36.00', '36.00', NULL, NULL, '0.00', '36.00', 1),
(824, 254, 349, 1, 1, '30.00', '30.00', NULL, NULL, '0.00', '30.00', 1),
(825, 254, 371, 1, 1, '60.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(826, 255, 191, 168, 168, '3.68', '617.54', NULL, NULL, '0.00', '617.54', 1),
(827, 256, 372, 4, 4, '128.00', '128.00', NULL, NULL, '0.00', '128.00', 1),
(828, 256, 373, 1, 1, '38.00', '38.00', NULL, NULL, '0.00', '38.00', 1),
(829, 256, 374, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(830, 256, 375, 2, 2, '6.00', '6.00', NULL, NULL, '0.00', '6.00', 1),
(831, 256, 376, 2, 2, '6.00', '6.00', NULL, NULL, '0.00', '6.00', 1),
(832, 256, 32, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(833, 257, 343, 6.369, 6.369, '100.00', '100.00', NULL, NULL, '0.00', '100.00', 1),
(834, 258, 377, 1, 1, '54.00', '54.00', NULL, NULL, '0.00', '54.00', 1),
(835, 259, 378, 3, 3, '210.00', '210.00', NULL, NULL, '0.00', '210.00', 1),
(836, 259, 379, 1, 1, '70.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(837, 259, 380, 5, 5, '130.00', '130.00', NULL, NULL, '0.00', '130.00', 1),
(838, 259, 381, 5, 5, '40.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(839, 259, 382, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(840, 259, 383, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(841, 260, 364, 5, 5, '19.00', '19.00', NULL, NULL, '0.00', '19.00', 1),
(842, 260, 366, 2, 2, '14.00', '14.00', NULL, NULL, '0.00', '14.00', 1),
(843, 260, 365, 2, 2, '26.00', '26.00', NULL, NULL, '0.00', '26.00', 1),
(844, 261, 385, 50, 50, '1550.00', '1550.00', NULL, NULL, '0.00', '1550.00', 1),
(845, 262, 247, 5, 5, '50.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(846, 263, 386, 3, 3, '24.00', '24.00', NULL, NULL, '0.00', '24.00', 1),
(847, 263, 387, 2, 2, '16.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(848, 264, 360, 1, 1, '70.00', '70.00', NULL, NULL, '0.00', '70.00', 1),
(849, 265, 378, 8, 8, '560.00', '560.00', NULL, NULL, '0.00', '560.00', 1),
(850, 265, 389, 2, 2, '140.00', '140.00', NULL, NULL, '0.00', '140.00', 1),
(851, 265, 390, 10, 10, '260.00', '260.00', NULL, NULL, '0.00', '260.00', 1),
(852, 266, 391, 2, 2, '28.00', '28.00', NULL, NULL, '0.00', '28.00', 1),
(853, 266, 392, 6, 6, '54.00', '54.00', NULL, NULL, '0.00', '54.00', 1),
(854, 266, 393, 1, 1, '32.00', '32.00', NULL, NULL, '0.00', '32.00', 1),
(855, 267, 390, 2, 2, '52.00', '52.00', NULL, NULL, '0.00', '52.00', 1),
(856, 267, 394, 2, 2, '140.00', '140.00', NULL, NULL, '0.00', '140.00', 1),
(857, 268, 395, 1, 1, '16.80', '16.80', NULL, NULL, '0.00', '16.80', 1),
(858, 268, 396, 1, 1, '2.46', '2.46', NULL, NULL, '0.00', '2.46', 1),
(859, 269, 136, 20, 20, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(860, 269, 399, 5, 5, '110.00', '110.00', NULL, NULL, '0.00', '110.00', 1),
(861, 269, 400, 3, 3, '66.00', '66.00', NULL, NULL, '0.00', '66.00', 1),
(862, 269, 372, 1, 1, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(863, 270, 388, 1, 1, '1595.00', '1595.00', NULL, NULL, '0.00', '1595.00', 0),
(864, 271, 384, 12, 12, '96.00', '96.00', NULL, NULL, '0.00', '96.00', 1),
(865, 271, 370, 3, 3, '24.00', '24.00', NULL, NULL, '0.00', '24.00', 1),
(866, 272, 370, 20, 20, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(867, 273, 401, 4, 4, '136.00', '136.00', NULL, NULL, '0.00', '136.00', 1),
(868, 274, 377, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(869, 275, 237, 24, 24, '3.32', '79.60', NULL, NULL, '0.00', '79.60', 1),
(870, 275, 189, 96, 96, '3.37', '323.20', NULL, NULL, '0.00', '323.20', 1),
(871, 275, 402, 12, 12, '3.65', '43.80', NULL, NULL, '0.00', '43.80', 1),
(872, 275, 190, 24, 24, '3.65', '87.60', NULL, NULL, '0.00', '87.60', 1),
(873, 275, 190, 48, 48, '3.65', '175.20', NULL, NULL, '0.00', '175.20', 1),
(874, 276, 50, 1, 1, '107.50', '107.50', NULL, NULL, '0.00', '107.50', 1),
(875, 278, 185, 1, 1, '25.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(876, 280, 20, 11.43, 11.43, '7.00', '80.01', NULL, NULL, '0.00', '80.01', 1),
(877, 280, 36, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(878, 280, 62, 0.417, 0.417, '12.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(879, 280, 51, 0.714, 0.714, '14.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(880, 280, 19, 0.556, 0.556, '18.00', '10.01', NULL, NULL, '0.00', '10.01', 1),
(881, 280, 341, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(882, 280, 14, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(883, 280, 12, 0.5, 0.5, '16.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(884, 281, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(885, 281, 14, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(886, 281, 291, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(887, 281, 43, 12.5, 12.5, '2.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(888, 281, 94, 0.71, 0.71, '7.00', '5.01', NULL, NULL, '0.00', '5.01', 1),
(889, 281, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(890, 281, 345, 1, 1, '23.00', '23.00', NULL, NULL, '0.00', '23.00', 1),
(891, 281, 179, 2, 2, '3.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(892, 281, 118, 4.76, 4.76, '2.10', '10.00', NULL, NULL, '0.00', '10.00', 1),
(893, 281, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(894, 281, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(895, 282, 102, 4, 4, '5.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(896, 282, 20, 8.571, 8.571, '7.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(897, 282, 12, 0.5, 0.5, '16.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(898, 282, 62, 0.417, 0.417, '12.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(899, 282, 36, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(900, 282, 13, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(901, 283, 43, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(902, 283, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(903, 283, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(904, 283, 138, 2.5, 2.5, '4.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(905, 283, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(906, 283, 130, 20, 20, '0.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(907, 283, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(908, 283, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(909, 283, 143, 1.42, 1.42, '3.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(910, 283, 154, 10, 10, '1.80', '18.00', NULL, NULL, '0.00', '18.00', 1),
(911, 283, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(912, 283, 116, 2, 2, '24.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(913, 283, 319, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(914, 283, 24, 16.66, 16.66, '3.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(915, 284, 177, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(916, 285, 116, 3, 3, '25.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(917, 286, 67, 25, 25, '38.00', '950.00', NULL, NULL, '0.00', '950.00', 1),
(918, 287, 67, 15, 15, '38.00', '570.00', NULL, NULL, '0.00', '570.00', 1),
(919, 288, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(920, 288, 97, 2.223, 2.223, '45.00', '100.03', NULL, NULL, '0.00', '100.03', 1),
(921, 288, 42, 2.67, 2.67, '30.00', '80.10', NULL, NULL, '0.00', '80.10', 1),
(922, 288, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(923, 288, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(924, 290, 117, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(925, 290, 38, 6.66, 6.66, '3.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(926, 290, 43, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(927, 290, 66, 12, 12, '0.83', '10.00', NULL, NULL, '0.00', '10.00', 1),
(928, 290, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(929, 290, 49, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(930, 290, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(931, 290, 156, 10, 10, '1.70', '17.00', NULL, NULL, '0.00', '17.00', 1),
(932, 290, 100, 4, 4, '1.30', '5.20', NULL, NULL, '0.00', '5.20', 1),
(933, 290, 131, 18, 18, '1.39', '25.00', NULL, NULL, '0.00', '25.00', 1),
(934, 290, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(935, 291, 403, 2, 2, '3.80', '7.60', NULL, NULL, '0.00', '7.60', 1),
(936, 292, 67, 25, 25, '38.00', '950.00', NULL, NULL, '0.00', '950.00', 1),
(937, 293, 66, 12, 12, '0.83', '10.00', NULL, NULL, '0.00', '10.00', 1),
(938, 293, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(939, 293, 99, 3, 3, '1.00', '3.00', NULL, NULL, '0.00', '3.00', 1),
(940, 293, 117, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(941, 293, 38, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(942, 293, 319, 25.71, 25.71, '3.50', '90.00', NULL, NULL, '0.00', '90.00', 1),
(943, 295, 129, 1.5, 1.5, '10.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(944, 295, 404, 0.75, 0.75, '20.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(945, 295, 13, 0.833, 0.833, '12.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(946, 296, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(947, 296, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(948, 296, 43, 9.52, 9.52, '2.10', '20.00', NULL, NULL, '0.00', '20.00', 1),
(949, 296, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(950, 296, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(951, 296, 138, 2.22, 2.22, '4.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(952, 298, 182, 1.6, 1.6, '50.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(953, 298, 239, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(954, 298, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(955, 298, 104, 0.86, 0.86, '35.00', '30.10', NULL, NULL, '0.00', '30.10', 1),
(956, 298, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(957, 298, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(958, 298, 238, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(959, 298, 42, 2.67, 2.67, '30.00', '80.10', NULL, NULL, '0.00', '80.10', 1),
(960, 299, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(961, 299, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(962, 300, 20, 11.429, 11.429, '7.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(963, 300, 14, 0.666, 0.666, '12.00', '7.99', NULL, NULL, '0.00', '7.99', 1),
(964, 300, 12, 0.313, 0.313, '16.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(965, 302, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(966, 302, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(967, 302, 319, 25.71, 25.71, '3.50', '90.00', NULL, NULL, '0.00', '90.00', 1),
(968, 302, 43, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(969, 302, 102, 11.11, 11.11, '4.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(970, 302, 140, 2, 2, '2.00', '4.00', NULL, NULL, '0.00', '4.00', 1),
(971, 302, 113, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(972, 302, 154, 10, 10, '1.80', '18.00', NULL, NULL, '0.00', '18.00', 1),
(973, 302, 138, 2, 2, '5.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(974, 302, 174, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(975, 302, 143, 1.42, 1.42, '3.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(976, 302, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(977, 302, 405, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(978, 303, 20, 11.429, 11.429, '7.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(979, 303, 51, 0.714, 0.714, '14.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(980, 303, 19, 0.556, 0.556, '18.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(981, 303, 36, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(982, 303, 62, 0.417, 0.417, '12.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(983, 303, 139, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(984, 303, 341, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(985, 303, 14, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(986, 303, 12, 0.5, 0.5, '16.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(987, 303, 13, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(988, 303, 406, 0.417, 0.417, '12.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(989, 304, 407, 10, 10, '2.25', '22.50', NULL, NULL, '0.00', '22.50', 1),
(990, 305, 238, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(991, 305, 239, 5, 5, '15.00', '75.00', NULL, NULL, '0.00', '75.00', 1),
(992, 305, 104, 0.858, 0.858, '35.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(993, 305, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(994, 305, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(995, 305, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(996, 305, 42, 1.67, 1.67, '30.00', '50.10', NULL, NULL, '0.00', '50.10', 1),
(997, 306, 408, 4, 4, '5.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(998, 307, 20, 8.571, 8.571, '7.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(999, 307, 102, 4, 4, '5.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1000, 307, 406, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1001, 308, 240, 1, 1, '17.00', '17.00', NULL, NULL, '0.00', '17.00', 1),
(1002, 308, 39, 13.33, 13.33, '7.50', '100.01', NULL, NULL, '0.00', '100.01', 1),
(1003, 309, 319, 28.57, 28.57, '3.50', '100.00', NULL, NULL, '0.00', '100.00', 1),
(1004, 310, 13, 0.313, 0.313, '16.00', '5.01', NULL, NULL, '0.00', '5.01', 1),
(1005, 310, 13, 0.833, 0.833, '12.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1006, 310, 102, 8, 8, '5.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1007, 311, 67, 20, 20, '38.00', '760.00', NULL, NULL, '0.00', '760.00', 1),
(1008, 312, 42, 3.335, 3.335, '30.00', '100.05', NULL, NULL, '0.00', '100.05', 1),
(1009, 312, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(1010, 312, 53, 1.155, 1.155, '26.00', '30.03', NULL, NULL, '0.00', '30.03', 1),
(1011, 313, 20, 11.429, 11.429, '7.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(1012, 313, 13, 0.833, 0.833, '12.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1013, 314, 138, 2.5, 2.5, '4.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1014, 314, 5, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1015, 314, 116, 1, 1, '24.00', '24.00', NULL, NULL, '0.00', '24.00', 1),
(1016, 314, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1017, 314, 35, 12, 12, '0.42', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1018, 314, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(1019, 314, 118, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1020, 314, 107, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1021, 314, 131, 18, 18, '1.39', '25.00', NULL, NULL, '0.00', '25.00', 1),
(1022, 314, 255, 12, 12, '1.92', '23.00', NULL, NULL, '0.00', '23.00', 1),
(1023, 314, 319, 28.57, 28.57, '3.50', '100.00', NULL, NULL, '0.00', '100.00', 1),
(1024, 314, 143, 2, 2, '3.50', '7.00', NULL, NULL, '0.00', '7.00', 1),
(1025, 315, 20, 8.571, 8.571, '7.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(1026, 315, 19, 0.25, 0.25, '20.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1027, 315, 409, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1028, 315, 102, 10, 10, '5.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1029, 315, 51, 0.357, 0.357, '14.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1030, 315, 12, 0.625, 0.625, '16.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1031, 316, 67, 30, 30, '38.00', '1140.00', NULL, NULL, '0.00', '1140.00', 1),
(1032, 317, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1033, 317, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(1034, 318, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(1035, 319, 410, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1036, 319, 143, 1, 1, '5.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1037, 320, 411, 0.28, 0.28, '38.00', '10.64', NULL, NULL, '0.00', '10.64', 1),
(1038, 320, 412, 0.62, 0.62, '18.00', '11.07', NULL, NULL, '0.00', '11.07', 1),
(1039, 320, 413, 0.1, 0.1, '10.00', '1.00', NULL, NULL, '0.00', '1.00', 1),
(1040, 321, 118, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1041, 321, 43, 10, 10, '2.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1042, 321, 38, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1043, 321, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(1044, 321, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1045, 321, 66, 12, 12, '0.83', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1046, 321, 116, 2, 2, '24.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(1047, 321, 175, 1, 1, '42.00', '42.00', NULL, NULL, '0.00', '42.00', 1),
(1048, 321, 153, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1049, 321, 138, 2.25, 2.25, '5.00', '11.25', NULL, NULL, '0.00', '11.25', 1),
(1050, 321, 33, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(1051, 321, 107, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1052, 321, 291, 2, 2, '5.50', '11.00', NULL, NULL, '0.00', '11.00', 1),
(1053, 321, 71, 1, 1, '4.50', '4.50', NULL, NULL, '0.00', '4.50', 1),
(1054, 321, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1055, 322, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1056, 322, 131, 18, 18, '1.39', '25.00', NULL, NULL, '0.00', '25.00', 1),
(1057, 322, 138, 2.5, 2.5, '4.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1058, 322, 129, 3.33, 3.33, '3.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1059, 322, 143, 1.42, 1.42, '3.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1060, 322, 118, 7.14, 7.14, '2.10', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1061, 322, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1062, 322, 43, 9.52, 9.52, '2.10', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1063, 322, 319, 25.71, 25.71, '3.50', '90.00', NULL, NULL, '0.00', '90.00', 1),
(1064, 322, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1065, 322, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(1066, 322, 130, 0.5, 0.5, '20.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1067, 322, 54, 3.07, 3.07, '6.50', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1068, 322, 269, 3.12, 3.12, '3.20', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1069, 322, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(1070, 322, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1071, 322, 116, 2, 2, '24.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(1072, 322, 1, 1, 1, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(1073, 322, 241, 12, 12, '0.75', '9.00', NULL, NULL, '0.00', '9.00', 1),
(1074, 322, 66, 12, 12, '0.83', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1075, 322, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1076, 323, 67, 15, 15, '38.00', '570.00', NULL, NULL, '0.00', '570.00', 1),
(1077, 324, 67, 30, 30, '38.00', '1140.00', NULL, NULL, '0.00', '1140.00', 1),
(1078, 325, 67, 30, 30, '38.00', '1140.00', NULL, NULL, '0.00', '1140.00', 1),
(1079, 326, 20, 11.429, 11.429, '7.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(1080, 326, 13, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1081, 327, 42, 2.67, 2.67, '30.00', '80.10', NULL, NULL, '0.00', '80.10', 1),
(1082, 327, 53, 0.77, 0.77, '26.00', '20.02', NULL, NULL, '0.00', '20.02', 1),
(1083, 327, 142, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1084, 328, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1085, 328, 118, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1086, 328, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1087, 328, 43, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1088, 328, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1089, 328, 101, 25, 25, '0.32', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1090, 328, 15, 1, 1, '13.00', '13.00', NULL, NULL, '0.00', '13.00', 1),
(1091, 328, 35, 12, 12, '0.42', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1092, 328, 1, 1, 1, '160.00', '160.00', NULL, NULL, '0.00', '160.00', 1),
(1093, 328, 143, 1.42, 1.42, '3.50', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1094, 328, 105, 6.66, 6.66, '7.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1095, 328, 41, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1096, 328, 56, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1097, 328, 172, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1098, 328, 138, 2.5, 2.5, '4.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1099, 328, 113, 1, 1, '18.00', '18.00', NULL, NULL, '0.00', '18.00', 1),
(1100, 329, 414, 1, 1, '60.00', '60.00', NULL, NULL, '0.00', '60.00', 1),
(1101, 329, 415, 1, 1, '40.00', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1102, 329, 416, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1103, 329, 417, 15, 15, '1.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1104, 329, 418, 15, 15, '1.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1105, 329, 420, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1106, 329, 419, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1107, 330, 84, 63, 63, '0.32', '20.16', NULL, NULL, '0.00', '20.16', 1),
(1108, 331, 117, 7.5, 7.5, '2.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1109, 331, 38, 5, 5, '3.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1110, 331, 43, 12.5, 12.5, '2.00', '25.00', NULL, NULL, '0.00', '25.00', 1),
(1111, 331, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1112, 331, 66, 12, 12, '0.83', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1113, 331, 17, 1, 1, '10.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1114, 331, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1115, 331, 24, 16.66, 16.66, '3.00', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1116, 331, 319, 14.28, 14.28, '3.50', '50.00', NULL, NULL, '0.00', '50.00', 1),
(1117, 331, 116, 2, 2, '24.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(1118, 332, 421, 1, 1, '35.00', '35.00', NULL, NULL, '0.00', '35.00', 1),
(1119, 332, 422, 1, 1, '8.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1120, 332, 423, 1, 1, '30.00', '30.00', NULL, NULL, '0.00', '30.00', 1),
(1121, 332, 416, 1, 1, '15.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1122, 332, 417, 15, 15, '1.00', '15.00', NULL, NULL, '0.00', '15.00', 1),
(1123, 332, 418, 20, 20, '1.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1124, 332, 419, 1, 1, '20.00', '20.00', NULL, NULL, '0.00', '20.00', 1),
(1125, 332, 275, 5, 5, '1.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1126, 333, 280, 8, 8, '4.00', '32.00', NULL, NULL, '0.00', '32.00', 1),
(1127, 333, 424, 1, 1, '4.50', '4.50', NULL, NULL, '0.00', '4.50', 1),
(1128, 333, 85, 1, 1, '0.30', '0.30', NULL, NULL, '0.00', '0.30', 1),
(1129, 333, 32, 1, 1, '0.20', '0.20', NULL, NULL, '0.00', '0.20', 1),
(1130, 334, 117, 5, 5, '2.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1131, 334, 38, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1132, 334, 116, 2, 2, '24.00', '48.00', NULL, NULL, '0.00', '48.00', 1),
(1133, 334, 425, 6, 6, '1.25', '7.50', NULL, NULL, '0.00', '7.50', 1),
(1134, 334, 268, 3.03, 3.03, '3.30', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1135, 334, 426, 1, 1, '42.00', '42.00', NULL, NULL, '0.00', '42.00', 1),
(1136, 334, 129, 4, 4, '2.50', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1137, 334, 95, 1, 1, '12.00', '12.00', NULL, NULL, '0.00', '12.00', 1),
(1138, 334, 153, 2, 2, '8.00', '16.00', NULL, NULL, '0.00', '16.00', 1),
(1139, 334, 102, 8.88, 8.88, '4.50', '40.00', NULL, NULL, '0.00', '40.00', 1),
(1140, 337, 20, 11.429, 11.429, '7.00', '80.00', NULL, NULL, '0.00', '80.00', 1),
(1141, 337, 13, 0.583, 0.583, '12.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(1142, 337, 347, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1143, 337, 14, 0.667, 0.667, '12.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1144, 337, 12, 0.5, 0.5, '16.00', '8.00', NULL, NULL, '0.00', '8.00', 1),
(1145, 337, 409, 0.25, 0.25, '12.00', '3.00', NULL, NULL, '0.00', '3.00', 1),
(1146, 337, 125, 0.583, 0.583, '12.00', '7.00', NULL, NULL, '0.00', '7.00', 1),
(1147, 337, 36, 0.5, 0.5, '10.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1148, 337, 62, 0.417, 0.417, '12.00', '5.00', NULL, NULL, '0.00', '5.00', 1),
(1149, 337, 51, 0.714, 0.714, '14.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1150, 337, 19, 0.5, 0.5, '20.00', '10.00', NULL, NULL, '0.00', '10.00', 1),
(1151, 338, 37, 1.43, 1.43, '70.00', '100.10', NULL, NULL, '0.00', '100.10', 1),
(1152, 338, 42, 1.68, 1.68, '30.00', '50.40', NULL, NULL, '0.00', '50.40', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_recetas`
--

CREATE TABLE `detalle_recetas` (
  `id_detalle_receta` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `id_recursos_sede` int(11) NOT NULL,
  `detalle_receta_unidad_medida` int(11) DEFAULT NULL,
  `detalle_receta_cantidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalle_receta_precio` decimal(10,2) NOT NULL,
  `detalle_receta_estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_recetas`
--

INSERT INTO `detalle_recetas` (`id_detalle_receta`, `id_receta`, `id_recursos_sede`, `detalle_receta_unidad_medida`, `detalle_receta_cantidad`, `detalle_receta_precio`, `detalle_receta_estado`) VALUES
(17, 21, 67, NULL, '170', '6.80', 1),
(18, 21, 102, NULL, '60', '0.30', 1),
(19, 21, 38, NULL, '30', '0.08', 1),
(25, 66, 21, 3, '500', '2.50', 1),
(26, 66, 97, 4, '200', '4.00', 1),
(27, 8, 129, 1, '200', '0.50', 1),
(28, 8, 138, 0, '0.300', '1.20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id_documento` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_adjunto` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `documento_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `documento_fechainicio` date NOT NULL,
  `documento_fechafin` date NOT NULL,
  `documento_fecha_registro` datetime NOT NULL,
  `documento_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `empresa_razon_social` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_nombrecomercial` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_descrpcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_ruc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_domiciliofiscal` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_pais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_departamento` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_provincia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_distrito` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_ubigeo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_telefono1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_telefono2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_celular1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_celular2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_foto` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_correo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_usuario_sol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_clave_sol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_fechayhora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empresa_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa_razon_social`, `empresa_nombrecomercial`, `empresa_descrpcion`, `empresa_ruc`, `empresa_domiciliofiscal`, `empresa_pais`, `empresa_departamento`, `empresa_provincia`, `empresa_distrito`, `empresa_ubigeo`, `empresa_telefono1`, `empresa_telefono2`, `empresa_celular1`, `empresa_celular2`, `empresa_foto`, `empresa_correo`, `empresa_usuario_sol`, `empresa_clave_sol`, `empresa_fechayhora`, `empresa_estado`) VALUES
(1, 'GRUPO DE INVERSIONES LUISA-G.I.L. E.I.R.L.', 'LA ULTIMA CONCHITA', 'LA ULTIMA CONCHITA', '20608482050', 'CAL.BORJA NRO. 906', 'PE', 'LORETO', 'MAYNAS', 'PUNCHANA', '160101', NULL, NULL, NULL, NULL, NULL, NULL, 'CONCBUFE', 'Concbufeo1', '2023-03-23 12:30:31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio_resumen`
--

CREATE TABLE `envio_resumen` (
  `id_envio_resumen` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT '1',
  `envio_resumen_fecha` date NOT NULL,
  `envio_resumen_serie` varchar(20) NOT NULL,
  `envio_resumen_correlativo` varchar(20) NOT NULL,
  `envio_resumen_nombreXML` varchar(200) DEFAULT NULL,
  `envio_resumen_nombreCDR` varchar(200) DEFAULT NULL,
  `envio_resumen_estado` tinyint(4) NOT NULL DEFAULT '0',
  `envio_resumen_estadosunat` varchar(2000) DEFAULT NULL,
  `envio_resumen_estadosunat_consulta` varchar(2000) DEFAULT NULL,
  `envio_resumen_ticket` varchar(100) NOT NULL,
  `envio_sunat_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envio_resumen`
--

INSERT INTO `envio_resumen` (`id_envio_resumen`, `id_empresa`, `envio_resumen_fecha`, `envio_resumen_serie`, `envio_resumen_correlativo`, `envio_resumen_nombreXML`, `envio_resumen_nombreCDR`, `envio_resumen_estado`, `envio_resumen_estadosunat`, `envio_resumen_estadosunat_consulta`, `envio_resumen_ticket`, `envio_sunat_datetime`) VALUES
(1, 1, '2023-03-23', '20230323', '1', 'libs/ApiFacturacion/xml/20608482050-RC-20230323-1.XML', '', 1, 'TICKET ENVIADO', 'error : ', '400000023539968', '2023-03-23 16:51:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio_resumen_detalle`
--

CREATE TABLE `envio_resumen_detalle` (
  `id_envio_resumen_detalle` int(11) NOT NULL,
  `id_envio_resumen` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `envio_resumen_detalle_condicion` tinyint(4) NOT NULL COMMENT '1-Creacion, 2-Actualizacion, 3-Baja'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envio_resumen_detalle`
--

INSERT INTO `envio_resumen_detalle` (`id_envio_resumen_detalle`, `id_envio_resumen`, `id_venta`, `envio_resumen_detalle_condicion`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(5, 1, 6, 1),
(6, 1, 7, 1),
(7, 1, 8, 1),
(8, 1, 9, 1),
(9, 1, 10, 1),
(10, 1, 11, 1),
(11, 1, 12, 1),
(12, 1, 13, 1),
(13, 1, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feriados`
--

CREATE TABLE `feriados` (
  `id_feriado` int(11) NOT NULL,
  `feriado_dia` date NOT NULL,
  `feriado_motivo` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `feriados`
--

INSERT INTO `feriados` (`id_feriado`, `feriado_dia`, `feriado_motivo`) VALUES
(2, '2020-06-29', 'San Pedro y San Pablo'),
(3, '2020-07-28', 'Fiestas Patrias'),
(5, '2020-08-30', 'Santa Rosa de Lima'),
(7, '2020-11-01', 'Dia de Todos los Santos'),
(8, '2020-12-08', 'Inmaculada Concepción'),
(9, '2020-12-25', 'Navidad'),
(12, '2021-07-28', 'Fiestas Patrias'),
(13, '2021-12-31', 'Año Nuevo'),
(14, '2021-01-01', 'Año Nuevo'),
(15, '2021-04-01', 'Jueves Santo'),
(16, '2021-04-02', 'Viernes Santo'),
(17, '2021-05-01', 'Dia del Trabajo'),
(18, '2021-06-29', 'San Pedro y San Pablo'),
(19, '2021-07-28', 'FIestas Patrias'),
(21, '2021-07-29', 'Fiestas Patrias'),
(22, '2021-08-30', 'Santa Rosa de Lima'),
(23, '2021-10-08', 'Combate de Angamos'),
(24, '2021-11-01', 'Dia de los Santos'),
(25, '2021-12-08', 'Dia de la Inmaculada Concepción'),
(26, '2021-12-25', 'Navidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_personal`
--

CREATE TABLE `gastos_personal` (
  `id_gasto_personal` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_caja_numero` int(11) NOT NULL,
  `gasto_personal_concepto` varchar(300) NOT NULL,
  `gasto_personal_monto` decimal(10,2) NOT NULL,
  `gasto_personal_fecha` date DEFAULT NULL,
  `gasto_personal_fecha_registro` datetime NOT NULL,
  `gasto_personal_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos_personal`
--

INSERT INTO `gastos_personal` (`id_gasto_personal`, `id_persona`, `id_usuario`, `id_caja_numero`, `gasto_personal_concepto`, `gasto_personal_monto`, `gasto_personal_fecha`, `gasto_personal_fecha_registro`, `gasto_personal_estado`) VALUES
(1, 43, 38, 1, 'ADELANTO DE SUELDO', '50.00', '2023-03-23', '2023-03-23 12:54:12', 1),
(2, 29, 38, 1, 'AQDELANTO DE SUELDO', '10.00', '2023-03-23', '2023-03-23 16:32:48', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL,
  `grupo_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `grupo_ticketera` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo_fecha_registro` datetime NOT NULL,
  `grupo_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `grupo_nombre`, `grupo_ticketera`, `grupo_fecha_registro`, `grupo_estado`) VALUES
(1, 'CALIENTES', 'CALIENTES_2', '2021-03-15 00:00:00', 1),
(2, 'FRIOS', 'FRIOS_2', '2021-03-15 00:00:00', 1),
(3, 'CALIENTE FRIO', 'Ticketera', '2021-04-30 21:26:17', 1),
(4, 'BEBIDAS', 'BEBIDAS_2', '2021-10-06 09:41:43', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `igv`
--

CREATE TABLE `igv` (
  `id_igv` int(11) NOT NULL,
  `igv_codigo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `igv_codigoafectacion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `igv_descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `igv_codigoInternacional` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `igv_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `igv_tipodeafectacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `igv_tipo_json` tinyint(4) NOT NULL,
  `igv_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `igv`
--

INSERT INTO `igv` (`id_igv`, `igv_codigo`, `igv_codigoafectacion`, `igv_descripcion`, `igv_codigoInternacional`, `igv_nombre`, `igv_tipodeafectacion`, `igv_tipo_json`, `igv_estado`) VALUES
(1, '1000', '10', 'IGV Impuesto General a las Ventas', 'VAT', 'IGV', 'Gravado - Operación Onerosa', 1, 1),
(2, '9998', '30', 'Inafecta', 'FRE', 'INA', 'Inafecto - Operación Onerosa', 9, 1),
(3, '9997', '20', 'Exonerado', 'VAT', 'EXO', 'Exonerado - Operación Onerosa', 8, 1),
(4, '9996', '11', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Retiro por premio', 2, 1),
(5, '9996', '12', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Retiro por donación', 3, 1),
(6, '9996', '13', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Retiro', 4, 1),
(7, '9996', '14', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Retiro por publicidad', 5, 1),
(8, '9996', '15', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Bonificaciones', 6, 1),
(9, '9996', '16', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - Retiro por entrega a trabajadores', 7, 1),
(10, '1016', '17', 'Impuesto a la Venta Arroz Pilado', 'VAT', 'IVAP', 'Gravado - IVAP', 17, 1),
(11, '9996', '21', 'Gratuita', 'FRE', 'GRA', '[Gratuita] Exonerado - Transferencia gratuita', 0, 0),
(12, '9996', '31', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecta - Retiro por Bonificación', 10, 1),
(13, '9996', '32', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Retiro', 11, 1),
(14, '9996', '33', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Retiro por Muestras Médicas', 12, 1),
(15, '9996', '34', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Retiro por Convenio Colectivo', 13, 1),
(16, '9996', '35', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Retiro por premio', 14, 1),
(17, '9996', '36', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Retiro por publicidad', 15, 1),
(18, '9996', '37', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Inafecto - Transferencia gratuita', 0, 0),
(19, '9995', '40', 'Exportación', 'FRE', 'EXP', 'Exportación de Bienes o Servicios', 16, 1),
(20, '9996', '17', 'Gratuito', 'FRE', 'GRA', '[Gratuita] Gravado - IVAP', 101, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memorandum`
--

CREATE TABLE `memorandum` (
  `id_memorandum` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `memorandum_numero` int(11) DEFAULT NULL,
  `memorandum_motivo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `memorandum_otros` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memorandum_fecha` date NOT NULL,
  `memorandum_descripcion` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `memorandum_fecha_creacion` datetime NOT NULL,
  `id_user_aprobacion` int(11) DEFAULT NULL,
  `memoradum_fecha_aprobacion` datetime DEFAULT NULL,
  `memorandum_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL,
  `menu_nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `menu_controlador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `menu_icono` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `menu_orden` int(11) NOT NULL,
  `menu_mostrar` tinyint(1) NOT NULL,
  `menu_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id_menu`, `menu_nombre`, `menu_controlador`, `menu_icono`, `menu_orden`, `menu_mostrar`, `menu_estado`) VALUES
(1, 'Login', 'Login', '-', 0, 0, 1),
(2, 'Panel de Inicio', 'Admin', 'fa fa-dashboard', 1, 1, 1),
(3, 'Gestión de Menu', 'Menu', 'fa fa-desktop', 2, 1, 1),
(4, 'Roles de Usuario', 'Rol', 'fa fa-user-secret', 3, 1, 1),
(5, 'Usuarios', 'Usuario', 'fa fa-user', 4, 1, 1),
(6, 'Datos Personales', 'Datos', 'fa fa-', 0, 0, 1),
(7, 'Negocios', 'Negocio', 'fa fa-industry', 10, 1, 1),
(8, 'Recursos', 'Recursos', 'fa fa-cart-plus', 7, 0, 1),
(9, 'Proveedores', 'Proveedor', 'fa fa-car', 9, 1, 1),
(10, 'Orden de Compra', 'Ordencompra', 'fa fa-plus-square', 9, 1, 1),
(11, 'Productos', 'Producto', 'fa fa-tags', 9, 1, 1),
(12, 'Pedidos', 'Pedido', 'fa fa-shopping-cart', 11, 1, 1),
(13, 'Mesas', 'Mesa', 'fa fa-sitemap', 6, 1, 1),
(14, 'Almacen', 'Almacen', 'fa fa-folder-open', 6, 1, 1),
(15, 'Recetas', 'Receta', 'fa fa-file-text-o', 9, 1, 1),
(16, 'Ventas ', 'Ventas', 'fa fa-money', 12, 1, 1),
(17, 'Clientes', 'Cliente', 'fa fa-male', 5, 1, 1),
(18, 'Conversiones', 'Conversiones', 'fa fa-refresh', 8, 1, 1),
(19, 'Movimientos', 'Egreso', 'fa fa-usd', 13, 1, 1),
(20, 'Reportes', 'Reporte', 'fa fa-calendar-minus-o', 14, 1, 1),
(21, 'Insumos', 'Insumos', 'fa fa-apple', 8, 0, 1),
(22, 'Categorias', 'Categorias', 'fa fa-cutlery', 6, 0, 1),
(23, 'Recursos Humanos', 'Rhumanos', 'fa fa-folder-open', 2, 1, 1),
(24, 'Pedido Libre', 'Pedido', 'fa fa-', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `mesa_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesa_capacidad` int(100) NOT NULL,
  `mesa_estado` tinyint(4) NOT NULL,
  `mesa_estado_atencion` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`, `id_sucursal`, `mesa_nombre`, `mesa_capacidad`, `mesa_estado`, `mesa_estado_atencion`) VALUES
(-28, 5, 'B - 09', 1, 1, 0),
(-27, 5, 'B - 08', 1, 1, 0),
(-26, 5, 'B - 07', 1, 1, 0),
(-25, 5, 'B - 06', 1, 1, 0),
(-24, 5, 'B - 05', 1, 1, 0),
(-23, 5, 'B - 04', 1, 1, 0),
(-22, 5, 'B - 03', 1, 1, 0),
(-21, 5, 'B - 02', 1, 1, 0),
(-20, 5, 'B - 01', 1, 1, 0),
(-6, 5, 'TG - 06', 2, 1, 0),
(-5, 5, 'TG - 05', 2, 1, 0),
(-4, 5, 'TG - 04', 2, 1, 0),
(-3, 5, 'TG - 03', 2, 1, 0),
(-2, 5, 'TG - 02', 2, 1, 0),
(-1, 5, 'TG - 01', 2, 1, 0),
(0, 5, 'DELIVERY', 1, 1, 2),
(6, 5, 'Mesa 01', 3, 1, 0),
(7, 5, 'Mesa 02', 2, 1, 0),
(8, 5, 'Mesa 03', 4, 1, 0),
(9, 5, 'Mesa 04', 6, 1, 0),
(16, 5, 'Mesa 05', 4, 1, 0),
(17, 5, 'Mesa 06', 4, 1, 0),
(18, 5, 'Mesa 07', 4, 1, 0),
(19, 5, 'Mesa 08', 4, 1, 0),
(20, 5, 'Mesa 09', 4, 1, 0),
(21, 5, 'Mesa 10', 4, 1, 0),
(22, 5, 'Mesa 11', 4, 1, 0),
(23, 5, 'Mesa 12', 4, 1, 0),
(24, 5, 'Mesa 13', 4, 1, 0),
(25, 5, 'Mesa 14', 4, 1, 0),
(26, 5, 'Mesa 15', 4, 1, 0),
(27, 5, 'Mesa 16', 4, 1, 0),
(28, 5, 'Mesa 17', 4, 1, 0),
(29, 5, 'Mesa 18', 4, 1, 0),
(30, 5, 'Mesa 19', 4, 1, 0),
(31, 5, 'Mesa 20', 4, 1, 0),
(32, 5, 'Mesa 21', 4, 1, 0),
(33, 5, 'Mesa 22', 4, 1, 0),
(34, 5, 'Mesa 23', 4, 1, 0),
(35, 5, 'Mesa 24', 4, 1, 0),
(36, 5, 'Mesa 25', 4, 1, 0),
(37, 5, 'Mesa 26', 4, 1, 0),
(38, 5, 'Mesa 27', 4, 1, 0),
(39, 5, 'Mesa 28', 4, 1, 0),
(40, 5, 'Mesa 29', 4, 1, 0),
(41, 5, 'Mesa 30', 4, 1, 0),
(42, 5, 'Mesa 31', 4, 1, 0),
(43, 5, 'Mesa 32', 4, 1, 0),
(44, 5, 'Mesa 33', 4, 1, 0),
(45, 5, 'Mesa 34', 4, 1, 0),
(46, 5, 'Mesa 35', 4, 1, 0),
(47, 5, 'Mesa 36', 4, 1, 0),
(48, 5, 'Mesa 37', 4, 1, 0),
(49, 5, 'Mesa 38', 4, 1, 0),
(50, 5, 'Mesa 39', 4, 1, 0),
(51, 5, 'Mesa 40', 4, 1, 0),
(52, 5, 'Mesa 41', 4, 1, 0),
(53, 5, 'Mesa 42', 4, 1, 0),
(54, 5, 'Mesa 43', 4, 1, 0),
(55, 5, 'Mesa 44', 4, 1, 0),
(56, 5, 'Mesa 45', 4, 1, 0),
(57, 5, 'Mesa 46', 4, 1, 0),
(58, 5, 'Mesa 47', 4, 1, 0),
(59, 5, 'Mesa 48', 4, 1, 0),
(60, 5, 'Mesa 49', 4, 1, 0),
(61, 5, 'Mesa 50', 4, 1, 0),
(62, 5, 'Mesa 99', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa_log`
--

CREATE TABLE `mesa_log` (
  `id_mesa_log` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `mesa_log_estado_atencion` tinyint(2) NOT NULL,
  `mesa_log_fecha_hora` datetime NOT NULL,
  `mesa_log_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mesa_log`
--

INSERT INTO `mesa_log` (`id_mesa_log`, `id_mesa`, `mesa_log_estado_atencion`, `mesa_log_fecha_hora`, `mesa_log_estado`) VALUES
(1, 6, 1, '2023-03-23 10:17:38', 1),
(2, 6, 2, '2023-03-23 10:25:08', 1),
(3, 7, 1, '2023-03-23 10:59:13', 1),
(4, 7, 2, '2023-03-23 10:59:22', 1),
(5, 7, 0, '2023-03-23 10:59:36', 1),
(6, 6, 0, '2023-03-23 10:59:38', 1),
(7, 6, 1, '2023-03-23 11:11:34', 1),
(8, 6, 2, '2023-03-23 11:13:34', 1),
(9, 6, 0, '2023-03-23 11:14:14', 1),
(10, 26, 1, '2023-03-23 11:30:59', 1),
(11, 7, 1, '2023-03-23 11:37:11', 1),
(12, 7, 2, '2023-03-23 12:12:47', 1),
(13, 7, 0, '2023-03-23 12:15:47', 1),
(14, 26, 2, '2023-03-23 12:27:44', 1),
(15, 26, 0, '2023-03-23 12:28:28', 1),
(16, 26, 1, '2023-03-23 12:45:39', 1),
(17, 22, 1, '2023-03-23 12:47:41', 1),
(18, 7, 1, '2023-03-23 13:07:53', 1),
(19, 26, 2, '2023-03-23 13:10:48', 1),
(20, 59, 1, '2023-03-23 13:11:07', 1),
(21, 26, 0, '2023-03-23 13:11:20', 1),
(22, 59, 2, '2023-03-23 13:12:09', 1),
(23, 59, 0, '2023-03-23 13:12:49', 1),
(24, 28, 1, '2023-03-23 13:22:14', 1),
(25, 22, 2, '2023-03-23 13:27:39', 1),
(26, 22, 0, '2023-03-23 13:28:16', 1),
(27, 16, 1, '2023-03-23 13:31:33', 1),
(28, 16, 2, '2023-03-23 13:32:15', 1),
(29, 16, 0, '2023-03-23 13:33:24', 1),
(30, 7, 2, '2023-03-23 13:49:51', 1),
(31, 22, 1, '2023-03-23 13:53:16', 1),
(32, 26, 1, '2023-03-23 13:53:46', 1),
(33, 8, 1, '2023-03-23 13:54:03', 1),
(34, 7, 0, '2023-03-23 13:54:04', 1),
(35, 44, 1, '2023-03-23 14:04:11', 1),
(36, 34, 1, '2023-03-23 14:15:00', 1),
(37, 34, 2, '2023-03-23 14:16:37', 1),
(38, 28, 2, '2023-03-23 14:27:35', 1),
(39, 28, 0, '2023-03-23 14:29:24', 1),
(40, 34, 0, '2023-03-23 14:30:29', 1),
(41, 22, 2, '2023-03-23 14:32:32', 1),
(42, 22, 0, '2023-03-23 14:32:53', 1),
(43, 26, 2, '2023-03-23 14:35:53', 1),
(44, 26, 0, '2023-03-23 14:36:18', 1),
(45, 8, 2, '2023-03-23 14:42:08', 1),
(46, 26, 1, '2023-03-23 14:43:58', 1),
(47, 8, 0, '2023-03-23 14:46:33', 1),
(48, 44, 2, '2023-03-23 15:23:13', 1),
(49, 26, 2, '2023-03-23 15:24:04', 1),
(50, 26, 0, '2023-03-23 15:24:29', 1),
(51, 44, 0, '2023-03-23 15:24:38', 1),
(52, 6, 1, '2023-03-23 16:26:28', 1),
(53, 6, 2, '2023-03-23 16:28:34', 1),
(54, 6, 2, '2023-03-23 16:28:34', 1),
(55, 6, 0, '2023-03-23 16:28:38', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id_moneda` int(11) NOT NULL,
  `moneda` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `abreviado` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `abrstandar` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `simbolo` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `activo` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id_moneda`, `moneda`, `abreviado`, `abrstandar`, `simbolo`, `activo`) VALUES
(1, 'SOLES', 'sol', 'PEN', 'S/', '1'),
(2, 'DÓLARES', 'dol', 'USD', '$', '1'),
(3, 'EUROS', 'eur', 'EUR', 'E', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id_movimiento` int(11) NOT NULL,
  `id_caja_numero` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `movimiento_tipo` tinyint(2) NOT NULL COMMENT '1 es entrada y 2 es salida',
  `egreso_descripcion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `egreso_monto` decimal(10,2) NOT NULL,
  `egreso_fecha_registro` datetime NOT NULL,
  `egreso_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id_movimiento`, `id_caja_numero`, `id_usuario`, `id_sucursal`, `movimiento_tipo`, `egreso_descripcion`, `egreso_monto`, `egreso_fecha_registro`, `egreso_estado`) VALUES
(1, 1, 38, 5, 2, 'ACEITE TONDERO (F001-1836)', '90.00', '2023-03-23 11:29:53', 1),
(2, 1, 38, 5, 2, 'LECHE GLORIA (F001-00291980)', '96.80', '2023-03-23 12:01:29', 1),
(3, 1, 38, 5, 2, 'MERCADO (SRA CARITO VARGAS)', '288.00', '2023-03-23 15:25:21', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocios`
--

CREATE TABLE `negocios` (
  `id_negocio` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `negocio_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `negocio_direccion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `negocio_ruc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `negocio_foto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `negocio_telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `negocio_estado` tinyint(1) NOT NULL,
  `negocio_fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `negocios`
--

INSERT INTO `negocios` (`id_negocio`, `id_ciudad`, `negocio_nombre`, `negocio_direccion`, `negocio_ruc`, `negocio_foto`, `negocio_telefono`, `negocio_estado`, `negocio_fecha_registro`) VALUES
(3, 1, 'LA ULTIMA CONCHITA', 'San Juan', '36521452001', 'media/negocio/LA ULTIMA CONCHITA_24032021142225.jp', '965562001', 1, '2021-03-24 14:22:25'),
(4, 1, 'SILERI', 'CALLE 3 DE JUNIO', '71005281', 'media/negocio/default.png', '947769104', 1, '2023-03-01 11:44:17'),
(5, 1, 'SILERI', 'CALLE 3 DE JUMIO Y-23', '71005281', 'media/negocio/default.png', '947769104', 1, '2023-03-01 11:50:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_venta`
--

CREATE TABLE `nota_venta` (
  `id_nota_venta` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT '1',
  `id_usuario` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `nota_venta_tipo` varchar(10) NOT NULL COMMENT 'aca siempre 20, porque es nota de venta',
  `nota_venta_serie` varchar(10) NOT NULL,
  `nota_venta_correlativo` varchar(60) NOT NULL,
  `nota_venta_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_pago_cliente` decimal(10,2) DEFAULT '0.00',
  `nota_venta_vuelto` decimal(10,2) DEFAULT '0.00',
  `nota_venta_fecha` datetime NOT NULL,
  `nota_venta_observacion` varchar(500) DEFAULT NULL,
  `nota_venta_cancelar` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'si esta 1 significa que fue cancelada',
  `nota_venta_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_venta_detalle`
--

CREATE TABLE `nota_venta_detalle` (
  `id_nota_venta_detalle` int(11) NOT NULL,
  `id_nota_venta` int(11) NOT NULL,
  `id_comanda_detalle` int(11) NOT NULL,
  `nota_venta_detalle_valor_unitario` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_precio_valor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_nombre_producto` varchar(200) NOT NULL,
  `nota_venta_detalle_cantidad` double NOT NULL,
  `nota_venta_detalle_total_igv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_porcentaje_igv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_total_icbper` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_valor_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nota_venta_detalle_importe_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_producto_precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obligacion_pagar`
--

CREATE TABLE `obligacion_pagar` (
  `id_obligacion` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_user_creacion` int(11) NOT NULL,
  `id_user_aprobacion` int(11) DEFAULT NULL,
  `obligacion_clase` tinyint(4) NOT NULL,
  `obligacion_codigo` int(11) DEFAULT NULL,
  `obligacion_fecha_creacion` date NOT NULL,
  `obligacion_hora_creacion` time NOT NULL,
  `obligacion_fecha_inicio` date DEFAULT NULL,
  `obligacion_fecha_fin` date NOT NULL,
  `obligacion_estado` tinyint(1) NOT NULL,
  `obligacion_tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `obligacion_concepto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obligacion_activo` tinyint(1) NOT NULL,
  `obligacion_moneda` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obligacion_importe` float(10,2) DEFAULT NULL,
  `obligacion_id_persona` int(11) DEFAULT NULL,
  `obligacion_documentacion` tinyint(4) NOT NULL,
  `obligacion_fecha_aprobacion` date DEFAULT NULL,
  `obligacion_hora_aprobacion` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obligacion_personal`
--

CREATE TABLE `obligacion_personal` (
  `id_obligacionper` int(11) NOT NULL,
  `id_obligacion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `obligacionper_dias_efectivos` float(10,2) NOT NULL,
  `obligacionper_dias_laborales` int(11) NOT NULL,
  `obligacionper_monto_mensual` float(10,2) NOT NULL,
  `obligacionper_total_mensual` float(10,2) NOT NULL,
  `obligacionper_subtotal` float(10,2) NOT NULL,
  `obligacionper_total` float(10,2) NOT NULL,
  `obligacionper_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obligacionper_cuenta` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obligacionper_estadi` tinyint(1) NOT NULL,
  `obligacionper_cts` float(10,2) DEFAULT NULL,
  `obligacionper_grati` float(10,2) DEFAULT NULL,
  `obligacionper_vaca` float(10,2) DEFAULT NULL,
  `obligacionper_reint` float(10,2) DEFAULT NULL,
  `obligacionper_fondo` float(10,2) DEFAULT NULL,
  `obligacionper_desc` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id_opcion` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `opcion_nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `opcion_funcion` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `opcion_icono` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opcion_mostrar` tinyint(1) NOT NULL,
  `opcion_orden` int(11) NOT NULL,
  `opcion_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opcion`, `id_menu`, `opcion_nombre`, `opcion_funcion`, `opcion_icono`, `opcion_mostrar`, `opcion_orden`, `opcion_estado`) VALUES
(1, 1, 'Inicio de Sesion', 'inicio', '-', 0, 0, 1),
(2, 2, 'Inicio', 'inicio', 'fa fa-play', 1, 1, 1),
(3, 2, 'Cerrar Sesión', 'finalizar_sesion', 'fa fa-sign-out', 0, 1, 1),
(4, 3, 'Gestionar Menús', 'inicio', NULL, 1, 1, 1),
(5, 3, 'Iconos', 'iconos', NULL, 1, 2, 1),
(6, 3, 'Accesos por Rol', 'roles', NULL, 0, 0, 1),
(7, 3, 'Opciones por Menú', 'opciones', NULL, 0, 0, 1),
(8, 3, 'Gestionar Permisos(breve)', 'gestion_permisos', '', 0, 0, 1),
(9, 4, 'Gestionar Roles', 'inicio', '', 1, 1, 1),
(10, 4, 'Accesos por Rol', 'accesos', '', 0, 0, 1),
(11, 3, 'Gestionar Restricciones(breve)', 'gestion_restricciones', '', 0, 0, 1),
(12, 5, 'Gestionar Usuarios', 'inicio', '', 1, 1, 1),
(13, 6, 'Editar Datos', 'editar_datos', '', 0, 0, 1),
(14, 6, 'Editar Usuario', 'editar_usuario', '', 0, 0, 1),
(15, 6, 'Cambiar Contraseña', 'cambiar_contrasenha', '', 0, 0, 1),
(16, 7, 'Gestionar', 'gestionar', '', 1, 1, 1),
(17, 7, 'Asignar Sucursal', 'sucursal', '', 0, 2, 1),
(18, 7, 'Usuarios Sucursal', 'usuarios_sucursal', '', 0, 3, 1),
(19, 7, 'Usuarios Negocios', 'usuarios_negocio', '', 0, 4, 1),
(20, 8, 'Gestionar Categorias', 'categorias', '', 1, 1, 1),
(21, 8, 'Gestionar Recursos', 'recursos', '', 1, 2, 1),
(22, 9, 'Gestionar', 'inicio', '', 1, 1, 1),
(23, 10, 'Registrar Orden de Compra', 'orden_compra', '', 1, 1, 1),
(24, 10, 'Ordenes de Compras Pendientes', 'orden_pendiente', '', 1, 2, 1),
(25, 10, 'Ordenes de Compra Aprobadas', 'orden_aprobada', '', 1, 3, 1),
(26, 10, 'Detalle de la Orden de Compra', 'detalle_orden_compra', '', 0, 4, 1),
(27, 10, 'Editar Orden de Compra', 'orden_editar', '', 0, 5, 1),
(28, 10, 'Recepcion Detalle Compra', 'recepcion_orden', '', 0, 6, 1),
(29, 11, 'Gestionar Productos', 'gestionar', '', 1, 1, 1),
(30, 12, 'Gestionar Pedidos', 'gestionar', '', 1, 1, 1),
(31, 13, 'Gestionar Mesas', 'inicio', '', 1, 1, 1),
(32, 14, 'Gestionar Almacen', 'inicio', '', 1, 1, 1),
(33, 12, 'Asignar Pedido', 'asignar', '', 0, 2, 1),
(34, 12, 'Listar Grupos', 'listar_grupos', '', 1, 5, 1),
(35, 12, 'Listado', 'listado_detalle_grupo', '', 0, 4, 1),
(36, 12, 'Listado Bebidas', 'listado_bebida', '', 0, 5, 1),
(37, 15, 'Gestionar Recetas', 'inicio', '', 1, 1, 1),
(38, 15, 'Gestionar Detalle Recetas', 'detalle_receta', '', 0, 2, 1),
(39, 16, 'Pendientes de Declarar', 'historial_ventas', '', 1, 2, 1),
(40, 12, 'Detalle del Pedido', 'detalle_pedido', '', 0, 6, 1),
(41, 17, 'Gestionar Clientes', 'inicio', '', 1, 1, 1),
(42, 18, 'Gestionar', 'gestionar', '', 1, 1, 1),
(43, 19, 'Gestionar Movimientos', 'gestionar', '', 1, 1, 1),
(44, 20, 'Reporte Ingresos y Egresos', 'ingresos_egresos', '', 1, 1, 1),
(45, 21, 'Gestionar Insumos', 'gestionar', '', 1, 1, 1),
(46, 12, 'Realizar Delivery', 'delivery', '', 1, 2, 1),
(47, 16, 'Ver Detalle Venta', 'ver_detalle_venta', '', 0, 0, 1),
(48, 12, 'Historial de Deliverys', 'historial_delivery', '', 1, 3, 1),
(49, 20, 'Reporte Clientes', 'reporte_clientes', '', 1, 2, 1),
(50, 20, 'Reporte Proveedores', 'reporte_proveedores', '', 0, 3, 1),
(51, 20, 'Reporte Meseros', 'reporte_meseros', '', 1, 4, 1),
(52, 16, 'Historial Ventas Sunat', 'historial_ventas_enviadas', '', 1, 3, 1),
(53, 16, 'Resumen Diario', 'envio_resumenes_diario', '', 1, 4, 1),
(54, 20, 'Reporte Insumos', 'reporte_insumos', '', 0, 6, 1),
(55, 16, 'Historial Resumen Diario', 'historial_resumen_diario', '', 1, 5, 1),
(56, 16, 'Ver Detalle Resumen', 'ver_detalle_resumen', '', 0, 0, 1),
(57, 12, 'ticket_pedido', 'ticket_pedido', '', 0, 0, 1),
(58, 16, 'imprimir_ticket_pdf', 'imprimir_ticket_pdf', '', 0, 0, 1),
(59, 12, 'ticket_venta', 'ticket_venta', '', 0, 0, 1),
(60, 16, 'Excel Ventas', 'excel_ventas_enviadas', '', 0, 0, 1),
(61, 12, 'Detalle Delivery', 'detalle_delivery', '', 0, 2, 1),
(62, 12, 'Historial Deliverys Entregados', 'historial_delivery_entregados', '', 1, 4, 1),
(63, 12, 'Ticket Venta Delivery', 'ticket_venta_delivery', '', 0, 0, 1),
(64, 16, 'Historia Bajas de Facturas', 'historial_bajas_facturas', '', 1, 6, 1),
(65, 16, 'Generar Nota', 'generar_nota', '', 0, 0, 1),
(66, 22, 'Gestionar Categorias', 'gestionar', '', 1, 0, 1),
(67, 23, 'Periodo Laboral', 'periodolaboral', '', 1, 4, 1),
(68, 23, 'Asistencia de Personal', 'asistencia', '', 1, 5, 1),
(69, 23, 'Convocatoria', 'convocatoria', '', 0, 1, 1),
(70, 23, 'Gestión de Personal', 'gestion_personal', '', 1, 2, 1),
(71, 23, 'Memorandum al Personal', 'memorandum', '', 1, 6, 1),
(72, 23, 'Obligación Laboral', 'obligacion_laboral', '', 0, 7, 1),
(73, 23, 'Listado de Memorandum', 'listar_memo', '', 0, 6, 1),
(74, 23, 'PDF MEMO', 'ver_memo', '', 0, 0, 1),
(75, 23, 'Editar Personal', 'editar_personal', '', 0, 0, 1),
(76, 23, 'Detalle Periodo Laboral', 'detalle_periodo_laboral', '', 0, 0, 1),
(77, 23, 'Agregar Periodo', 'agregar_periodo', '', 0, 0, 1),
(78, 23, 'Adjuntar Documentos', 'adjuntar', '', 0, 0, 1),
(79, 23, 'Gestionar Feriados', 'feriados', '', 0, 0, 1),
(80, 23, 'Proyectar Asistencia', 'proyectar_asistencia', '', 0, 0, 1),
(81, 23, 'Opciones', 'opciones', '', 0, 0, 1),
(82, 23, 'Por Persona', 'por_persona', '', 0, 0, 1),
(83, 23, 'Consultar', 'consultar', '', 0, 0, 1),
(84, 23, 'Asitencia Personal', 'asistencia_personal', '', 0, 0, 1),
(85, 23, 'Constancia de Trabajo', 'constancia_trabajo', '', 0, 0, 1),
(86, 23, 'Vacaciones', 'vacaciones', '', 0, 0, 1),
(87, 23, 'Editar Periodo', 'editar', '', 0, 0, 1),
(88, 23, 'Pendientes de Aprobación', 'aprobar', '', 0, 0, 1),
(89, 23, 'Ver Periodo', 'ver_periodo', '', 0, 0, 1),
(90, 23, 'Aprobar Asistencias', 'aprobar_asistencias', '', 0, 0, 1),
(91, 23, 'Renovar Periodo', 'renovar_periodo', '', 0, 0, 1),
(92, 23, 'guardar', 'guardar_departamento', '', 0, 0, 0),
(93, 10, 'Compra Rapida', 'facturas_sin_oc', '', 1, 7, 1),
(94, 23, 'Asignar Turnos', 'asignar_turnos', '', 0, 0, 1),
(95, 10, 'Ver Facturas', 'ver_facturas', '', 1, 8, 1),
(96, 12, 'Historial Pedido', 'historial_pedidos', '', 1, 2, 1),
(97, 12, 'Detalle Pedido Ver', 'detalle_pedido_ver', '', 0, 0, 1),
(98, 20, 'Tiempo de Atención por Pedido', 'tiempo_promedio_atencion', '', 0, 7, 1),
(99, 20, 'Ventas por Tipo de Pago', 'ventas_tipo_pago', '', 0, 8, 1),
(100, 20, 'Reporte Ventas por Productos', 'reporte_ventas_productos', '', 1, 0, 1),
(101, 23, 'Gestionar Turnos', 'gestionar_turnos', '', 0, 0, 1),
(102, 20, 'Reporte Ventas Productos PDF', 'reporte_ventas_productos_pdf', '', 0, 0, 1),
(103, 16, 'Historial Notas Ventas', 'historial_notas_ventas', '', 1, 1, 1),
(104, 16, 'tabla_productos_editar', 'tabla_productos_editar', '', 0, 0, 1),
(105, 16, 'editar_nota_venta', 'editar_nota_venta', '', 0, 0, 1),
(106, 20, 'Reporte General', 'reporte_general', '', 1, 0, 1),
(107, 20, 'Reporte General PDF', 'reporte_general_pdf', '', 0, 0, 1),
(108, 20, 'Reporte por Caja', 'reporte_por_caja', '', 0, 0, 1),
(109, 14, 'Gestionar Recursos', 'recursos', '', 1, 2, 1),
(110, 14, 'Gestionar Categorias', 'categorias', '', 1, 3, 1),
(111, 12, 'Historial Pedidos Gratis', 'historial_pedidos_gratis', '', 1, 2, 1),
(112, 12, 'Pedidos Eliminados', 'pedidos_eliminados', '', 1, 6, 1),
(113, 24, 'ws libres', 'ws', '', 1, 0, 1),
(114, 19, 'Adelanto de Personal', 'gastos_personal', '', 1, 2, 1),
(115, 16, 'EXCEL NOTA DE VENTAS', 'excel_notas_ventas', '', 0, 0, 1),
(116, 16, 'excel_compro_eliminados', 'excel_compro_eliminados', '', 0, 0, 1),
(117, 16, 'COMPROBANTES ELIMINADOS', 'historial_compro_eliminados', '', 1, 10, 1),
(118, 16, 'imprimir_ticket_pdf_A4', 'imprimir_ticket_pdf_a4', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `id_orden_compra` int(11) NOT NULL,
  `id_caja_numero` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_aprobacion` int(11) DEFAULT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `orden_compra_observacion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden_compra_fecha_aprob` datetime DEFAULT NULL,
  `orden_compra_titulo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `orden_compra_activo` int(11) DEFAULT NULL,
  `orden_compra_numero` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `orden_compra_estado` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `orden_compra_fecha` datetime NOT NULL,
  `orden_compra_tipo_doc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden_compra_numero_doc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden_compra_doc_adjuntado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden_compra_fecha_emision_doc` date DEFAULT NULL,
  `orden_compra_doc_cuotas` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden_compra_fecha_recibida` datetime DEFAULT NULL,
  `orden_compra_usuario_recibido` int(11) NOT NULL,
  `orden_compra_codigo` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_compra`
--

INSERT INTO `orden_compra` (`id_orden_compra`, `id_caja_numero`, `id_solicitante`, `id_aprobacion`, `id_proveedor`, `id_sucursal`, `id_tipo_pago`, `orden_compra_observacion`, `orden_compra_fecha_aprob`, `orden_compra_titulo`, `orden_compra_activo`, `orden_compra_numero`, `orden_compra_estado`, `orden_compra_fecha`, `orden_compra_tipo_doc`, `orden_compra_numero_doc`, `orden_compra_doc_adjuntado`, `orden_compra_fecha_emision_doc`, `orden_compra_doc_cuotas`, `orden_compra_fecha_recibida`, `orden_compra_usuario_recibido`, `orden_compra_codigo`) VALUES
(1, 0, 2, 2, 19, 4, 3, '---', '2021-09-13 14:27:20', 'Generado por Compra Rapida', 0, '100001', '1', '2021-09-13 14:27:20', 'factura', 'FA01-00000800', 'media/documentos/sin_foto.jpg', '2021-09-01', '', '2021-09-13 14:27:20', 2, '1631561240.1752'),
(2, 0, 1, 1, 17, 4, 3, '---', '2021-09-15 12:14:59', 'Generado por Compra Rapida', 0, '100002', '1', '2021-09-15 12:14:59', 'factura', 'F16Z-00007197', 'media/documentos/_15092021121459.jpeg', '2021-09-01', '', '2021-09-15 12:14:59', 1, '1631726099.5032'),
(5, 0, 10, 10, 13, 4, 3, '---', '2021-09-16 13:17:46', 'Generado por Compra Rapida', 0, '100004', '1', '2021-09-16 13:17:46', 'factura', 'F001-2934', 'media/documentos/_16092021131746.jpeg', '2021-09-01', '', '2021-09-16 13:17:46', 10, '1631816266.856'),
(6, 0, 10, 10, 18, 4, 3, '---', '2021-09-16 13:39:09', 'Generado por Compra Rapida', 0, '100005', '1', '2021-09-16 13:39:09', 'factura', 'F002-00003521', 'media/documentos/_16092021133909.jpeg', '2021-06-30', '', '2021-09-16 13:39:09', 10, '1631817549.8993'),
(8, 0, 10, 10, 19, 4, 3, '---', '2021-09-16 14:15:22', 'Generado por Compra Rapida', 0, '100007', '1', '2021-09-16 14:15:22', 'factura', 'FA01- 00000792', 'media/documentos/_16092021141522.jpeg', '2021-08-31', '', '2021-09-16 14:15:22', 10, '1631819722.738'),
(9, 0, 10, 10, 19, 4, 3, '---', '2021-09-16 14:22:46', 'Generado por Compra Rapida', 0, '100008', '1', '2021-09-16 14:22:46', 'factura', 'FA01- 00000800', 'media/documentos/_16092021142246.jpeg', '2021-09-01', '', '2021-09-16 14:22:46', 10, '1631820166.2313'),
(10, 0, 10, 10, 19, 4, 3, '---', '2021-09-16 14:26:41', 'Generado por Compra Rapida', 0, '100009', '1', '2021-09-16 14:26:41', 'factura', 'FA01-00000803', 'media/documentos/_16092021142641.jpeg', '2021-09-02', '', '2021-09-16 14:26:41', 10, '1631820401.409'),
(11, 0, 10, 10, 16, 4, 3, '---', '2021-09-17 12:19:16', 'Generado por Compra Rapida', 0, '100010', '1', '2021-09-17 12:19:16', 'factura', '0002-0005281', 'media/documentos/_17092021121916.jpeg', '2021-09-01', '', '2021-09-17 12:19:16', 10, '1631899156.4435'),
(12, 0, 10, 10, 16, 4, 3, '---', '2021-09-20 11:58:11', 'Generado por Compra Rapida', 0, '100011', '1', '2021-09-20 11:58:11', 'factura', '0002-0005288', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-09-20 11:58:11', 10, '1632157091.8882'),
(13, 0, 10, 10, 19, 4, 3, '---', '2021-09-20 12:38:18', 'Generado por Compra Rapida', 0, '100012', '1', '2021-09-20 12:38:18', 'factura', 'FA01-00000813', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-09-20 12:38:18', 10, '1632159498.5922'),
(18, 0, 10, 10, 19, 4, 3, '---', '2021-09-20 13:03:53', 'Generado por Compra Rapida', 0, '100013', '1', '2021-09-20 13:03:53', 'factura', 'FA01-00000806', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-20 13:03:53', 10, '1632161033.7409'),
(19, 0, 10, 10, 19, 4, 3, '---', '2021-09-20 13:06:17', 'Generado por Compra Rapida', 0, '100014', '1', '2021-09-20 13:06:17', 'factura', 'FA01-00000808', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-20 13:06:17', 10, '1632161177.8168'),
(28, 0, 10, 10, 14, 4, 3, '---', '2021-09-20 14:18:32', 'Generado por Compra Rapida', 0, '100015', '1', '2021-09-20 14:18:32', 'factura', 'F001-00002358', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-09-20 14:18:32', 10, '1632165512.712'),
(30, 0, 10, 10, 20, 4, 3, '---', '2021-09-22 13:31:28', 'Generado por Compra Rapida', 0, '100016', '1', '2021-09-22 13:31:28', 'factura', '0001-009009', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-22 13:31:28', 10, '1632335488.9953'),
(31, 0, 10, 10, 21, 4, 2, '---', '2021-09-23 15:06:24', 'Generado por Compra Rapida', 0, '100017', '1', '2021-09-23 15:06:24', 'factura', 'E001-1783', 'media/documentos/sin_foto.jpg', '2021-09-20', '', '2021-09-23 15:06:24', 10, '1632427584.3518'),
(32, 0, 10, 10, 21, 4, 2, '---', '2021-09-24 13:41:00', 'Generado por Compra Rapida', 0, '100018', '1', '2021-09-24 13:41:00', 'factura', 'E001-1780', 'media/documentos/sin_foto.jpg', '2021-09-17', '', '2021-09-24 13:41:00', 10, '1632508860.5587'),
(33, 0, 10, 10, 16, 4, 3, '---', '2021-09-24 13:45:56', 'Generado por Compra Rapida', 0, '100019', '1', '2021-09-24 13:45:56', 'factura', '0002-0005290', 'media/documentos/sin_foto.jpg', '2021-09-06', '', '2021-09-24 13:45:56', 10, '1632509156.8398'),
(34, 0, 10, 10, 16, 4, 3, '---', '2021-09-24 13:49:28', 'Generado por Compra Rapida', 0, '100020', '1', '2021-09-24 13:49:28', '', '0002-0005285', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-24 13:49:28', 10, '1632509368.5783'),
(35, 0, 10, 10, 16, 4, 3, '---', '2021-09-24 15:22:28', 'Generado por Compra Rapida', 0, '100021', '1', '2021-09-24 15:22:28', 'factura', '0002-005292', 'media/documentos/sin_foto.jpg', '2021-09-07', '', '2021-09-24 15:22:28', 10, '1632514948.095'),
(36, 0, 10, 10, 16, 4, 3, '---', '2021-09-24 15:24:46', 'Generado por Compra Rapida', 0, '100022', '1', '2021-09-24 15:24:46', 'factura', '00020005289', 'media/documentos/sin_foto.jpg', '2021-07-05', '', '2021-09-24 15:24:46', 10, '1632515086.1402'),
(37, 0, 10, 10, 22, 4, 3, '---', '2021-09-27 13:26:11', 'Generado por Compra Rapida', 0, '100023', '1', '2021-09-27 13:26:11', 'factura', 'F001-00000234', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-27 13:26:11', 10, '1632767171.4758'),
(40, 0, 10, 10, 14, 4, 3, '---', '2021-09-28 12:04:43', 'Generado por Compra Rapida', 0, '100024', '1', '2021-09-28 12:04:43', 'factura', 'F001-00002349', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-09-28 12:04:43', 10, '1632848683.9367'),
(41, 0, 10, 10, 14, 4, 3, '---', '2021-09-28 13:55:20', 'Generado por Compra Rapida', 0, '100025', '1', '2021-09-28 13:55:20', 'factura', 'F001-00002387', 'media/documentos/sin_foto.jpg', '2021-09-07', '', '2021-09-28 13:55:20', 10, '1632855320.5889'),
(43, 0, 10, 10, 14, 4, 3, '---', '2021-09-29 13:20:18', 'Generado por Compra Rapida', 0, '100026', '1', '2021-09-29 13:20:18', 'factura', 'F001-00002377', 'media/documentos/sin_foto.jpg', '2021-09-06', '', '2021-09-29 13:20:18', 10, '1632939618.4605'),
(44, 0, 10, 10, 14, 4, 3, '---', '2021-09-29 14:12:13', 'Generado por Compra Rapida', 0, '100027', '1', '2021-09-29 14:12:13', 'factura', 'F001-00002368', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-09-29 14:12:13', 10, '1632942733.0432'),
(45, 0, 10, 10, 23, 4, 3, '---', '2021-09-29 14:17:38', 'Generado por Compra Rapida', 0, '100028', '1', '2021-09-29 14:17:38', 'factura', 'F001-383', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-09-29 14:17:38', 10, '1632943058.5923'),
(46, 0, 10, 10, 23, 4, 3, '---', '2021-09-29 14:18:58', 'Generado por Compra Rapida', 0, '100029', '1', '2021-09-29 14:18:58', 'factura', 'F001-390', 'media/documentos/sin_foto.jpg', '2021-09-06', '', '2021-09-29 14:18:58', 10, '1632943138.2538'),
(52, 0, 10, 10, 19, 4, 3, '---', '2021-09-29 14:40:37', 'Generado por Compra Rapida', 0, '100030', '1', '2021-09-29 14:40:37', 'factura', 'FA01-00000823', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-09-29 14:40:37', 10, '1632944437.7565'),
(53, 0, 10, 10, 19, 4, 3, '---', '2021-09-29 14:49:16', 'Generado por Compra Rapida', 0, '100031', '1', '2021-09-29 14:49:16', 'factura', 'F001-00000818', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-09-29 14:49:16', 10, '1632944956.0388'),
(54, 0, 10, 10, 24, 4, 3, '---', '2021-10-04 14:51:07', 'Generado por Compra Rapida', 0, '100032', '1', '2021-10-04 14:51:07', 'factura', 'F001-00005947', 'media/documentos/sin_foto.jpg', '2021-09-27', '', '2021-10-04 14:51:07', 10, '1633377067.5835'),
(56, 0, 10, 10, 14, 4, 3, '---', '2021-10-05 15:38:43', 'Generado por Compra Rapida', 0, '100033', '1', '2021-10-05 15:38:43', 'factura', 'F001-00002443', 'media/documentos/sin_foto.jpg', '2021-09-14', '', '2021-10-05 15:38:43', 10, '1633466323.5599'),
(57, 0, 10, 10, 19, 4, 3, '---', '2021-10-05 15:53:38', 'Generado por Compra Rapida', 0, '100034', '1', '2021-10-05 15:53:38', 'factura', 'FA01-00000851', 'media/documentos/sin_foto.jpg', '2021-09-13', '', '2021-10-05 15:53:38', 10, '1633467218.1523'),
(58, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 14:48:44', 'Generado por Compra Rapida', 0, '100035', '1', '2021-10-06 14:48:44', 'factura', '0002-0005304', 'media/documentos/sin_foto.jpg', '2021-09-14', '', '2021-10-06 14:48:44', 2, '1633549724.6533'),
(59, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 14:51:31', 'Generado por Compra Rapida', 0, '100036', '1', '2021-10-06 14:51:31', 'factura', '0002-0005303', 'media/documentos/sin_foto.jpg', '2021-09-13', '', '2021-10-06 14:51:31', 2, '1633549891.6436'),
(60, 0, 2, 2, 25, 4, 3, '---', '2021-10-06 14:58:59', 'Generado por Compra Rapida', 0, '100037', '1', '2021-10-06 14:58:59', 'factura', '0002-0000219', 'media/documentos/sin_foto.jpg', '2021-09-12', '', '2021-10-06 14:58:59', 2, '1633550339.1544'),
(61, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:00:36', 'Generado por Compra Rapida', 0, '100038', '1', '2021-10-06 15:00:36', 'factura', '0002-0005295', 'media/documentos/sin_foto.jpg', '2021-09-09', '', '2021-10-06 15:00:36', 2, '1633550436.4979'),
(62, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:07:35', 'Generado por Compra Rapida', 0, '100039', '1', '2021-10-06 15:07:35', 'factura', '0002-0005330', 'media/documentos/sin_foto.jpg', '2021-09-28', '', '2021-10-06 15:07:35', 2, '1633550855.8778'),
(63, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:08:54', 'Generado por Compra Rapida', 0, '100040', '1', '2021-10-06 15:08:54', 'factura', '0002-0005334', 'media/documentos/sin_foto.jpg', '2021-09-29', '', '2021-10-06 15:08:54', 2, '1633550934.6738'),
(64, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:10:41', 'Generado por Compra Rapida', 0, '100041', '1', '2021-10-06 15:10:41', 'factura', '0002-0005329', 'media/documentos/sin_foto.jpg', '2021-09-27', '', '2021-10-06 15:10:41', 2, '1633551041.3577'),
(65, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:13:57', 'Generado por Compra Rapida', 0, '100042', '1', '2021-10-06 15:13:57', 'factura', '0002-0005328', 'media/documentos/sin_foto.jpg', '2021-09-26', '', '2021-10-06 15:13:57', 2, '1633551237.9107'),
(66, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:15:52', 'Generado por Compra Rapida', 0, '100043', '1', '2021-10-06 15:15:52', 'factura', '0002-0005325', 'media/documentos/sin_foto.jpg', '2021-09-25', '', '2021-10-06 15:15:52', 2, '1633551352.5102'),
(67, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:21:12', 'Generado por Compra Rapida', 0, '100044', '1', '2021-10-06 15:21:12', 'factura', '0002-0005324', 'media/documentos/sin_foto.jpg', '2021-09-24', '', '2021-10-06 15:21:12', 2, '1633551672.0803'),
(68, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:25:07', 'Generado por Compra Rapida', 0, '100045', '1', '2021-10-06 15:25:07', 'factura', '0002-0005322', 'media/documentos/sin_foto.jpg', '2021-09-23', '', '2021-10-06 15:25:07', 2, '1633551907.2533'),
(69, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:28:34', 'Generado por Compra Rapida', 0, '100046', '1', '2021-10-06 15:28:34', 'factura', '0002-0005319', 'media/documentos/sin_foto.jpg', '2021-09-20', '', '2021-10-06 15:28:34', 2, '1633552114.3583'),
(70, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:31:10', 'Generado por Compra Rapida', 0, '100047', '1', '2021-10-06 15:31:10', 'factura', '0002-0005313', 'media/documentos/sin_foto.jpg', '2021-09-18', '', '2021-10-06 15:31:10', 2, '1633552270.3624'),
(71, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:32:37', 'Generado por Compra Rapida', 0, '100048', '1', '2021-10-06 15:32:37', 'factura', '0002-0005317', 'media/documentos/sin_foto.jpg', '2021-09-19', '', '2021-10-06 15:32:37', 2, '1633552357.8801'),
(72, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:34:00', 'Generado por Compra Rapida', 0, '100049', '1', '2021-10-06 15:34:00', 'factura', '0002-0005312', 'media/documentos/sin_foto.jpg', '2021-09-17', '', '2021-10-06 15:34:00', 2, '1633552440.5363'),
(73, 0, 2, 2, 16, 4, 3, '---', '2021-10-06 15:35:00', 'Generado por Compra Rapida', 0, '100050', '1', '2021-10-06 15:35:00', 'factura', '0002-0005310', 'media/documentos/sin_foto.jpg', '2021-09-16', '', '2021-10-06 15:35:00', 2, '1633552500.9458'),
(74, 0, 2, 2, 25, 4, 3, '---', '2021-10-06 15:36:53', 'Generado por Compra Rapida', 0, '100051', '1', '2021-10-06 15:36:53', 'factura', '0002-0000221', 'media/documentos/sin_foto.jpg', '2021-09-16', '', '2021-10-06 15:36:53', 2, '1633552613.843'),
(75, 0, 2, 2, 26, 4, 3, '---', '2021-10-06 15:45:24', 'Generado por Compra Rapida', 0, '100052', '1', '2021-10-06 15:45:24', 'factura', 'F015-1708', 'media/documentos/sin_foto.jpg', '2021-09-09', '', '2021-10-06 15:45:24', 2, '1633553124.8437'),
(77, 0, 10, 10, 27, 4, 3, '---', '2021-10-11 13:52:26', 'Generado por Compra Rapida', 0, '100053', '1', '2021-10-11 13:52:26', 'factura', 'F001-00010670', 'media/documentos/sin_foto.jpg', '2021-09-13', '', '2021-10-11 13:52:26', 10, '1633978346.9135'),
(79, 0, 10, 10, 14, 4, 3, '---', '2021-10-13 11:32:15', 'Generado por Compra Rapida', 0, '100054', '1', '2021-10-13 11:32:15', 'factura', 'F001-00002434', 'media/documentos/sin_foto.jpg', '2021-09-13', '', '2021-10-13 11:32:15', 10, '1634142735.5144'),
(83, 0, 10, 10, 14, 4, 3, '---', '2021-10-13 13:13:15', 'Generado por Compra Rapida', 0, '100055', '1', '2021-10-13 13:13:15', 'factura', 'F001-00002424', 'media/documentos/sin_foto.jpg', '2021-09-12', '', '2021-10-13 13:13:15', 10, '1634148795.7615'),
(84, 0, 10, 10, 28, 4, 3, '---', '2021-10-14 11:13:50', 'Generado por Compra Rapida', 0, '100056', '0', '2021-10-14 11:13:50', 'factura', '003-002386', 'media/documentos/sin_foto.jpg', '2021-09-09', '', '2021-10-14 11:13:50', 10, '1634228030.5002'),
(86, 0, 10, 10, 28, 4, 3, '---', '2021-10-14 11:18:28', 'Generado por Compra Rapida', 0, '100056', '1', '2021-10-14 11:18:28', 'factura', '003-002359', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-10-14 11:18:28', 10, '1634228308.6494'),
(87, 0, 10, 10, 29, 4, 3, '---', '2021-10-14 12:18:03', 'Generado por Compra Rapida', 0, '100057', '1', '2021-10-14 12:18:03', 'factura', 'F001-00008475', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-10-14 12:18:03', 10, '1634231883.2237'),
(88, 0, 10, 10, 30, 4, 3, '---', '2021-10-14 12:28:00', 'Generado por Compra Rapida', 0, '100058', '1', '2021-10-14 12:28:00', 'factura', 'F001-00002416', 'media/documentos/sin_foto.jpg', '2021-09-08', '', '2021-10-14 12:28:00', 10, '1634232480.9257'),
(89, 0, 10, 10, 31, 4, 3, '---', '2021-10-14 12:53:21', 'Generado por Compra Rapida', 0, '100059', '1', '2021-10-14 12:53:21', 'factura', 'F001-00061302', 'media/documentos/sin_foto.jpg', '2021-09-02', '', '2021-10-14 12:53:21', 10, '1634234001.5168'),
(90, 0, 2, 2, 33, 4, 3, '---', '2021-10-21 13:50:22', 'Generado por Compra Rapida', 0, '100060', '1', '2021-10-21 13:50:22', 'factura', '0002-000339', 'media/documentos/sin_foto.jpg', '2021-10-08', '', '2021-10-21 13:50:22', 2, '1634842222.5368'),
(91, 0, 2, 2, 34, 4, 3, '---', '2021-10-21 13:59:21', 'Generado por Compra Rapida', 0, '100061', '1', '2021-10-21 13:59:21', 'factura', 'E001-1958', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-10-21 13:59:21', 2, '1634842761.6189'),
(92, 0, 2, 2, 34, 4, 3, '---', '2021-10-21 14:01:13', 'Generado por Compra Rapida', 0, '100062', '1', '2021-10-21 14:01:13', 'factura', 'E001-1925', 'media/documentos/sin_foto.jpg', '2021-10-13', '', '2021-10-21 14:01:13', 2, '1634842873.7462'),
(93, 0, 10, 10, 32, 4, 3, '---', '2021-10-25 14:51:47', 'Generado por Compra Rapida', 0, '100063', '1', '2021-10-25 14:51:47', 'boleta', 'F004-0022795', 'media/documentos/sin_foto.jpg', '2021-09-08', '', '2021-10-25 14:51:47', 10, '1635191507.6077'),
(95, 0, 10, 10, 35, 4, 3, '---', '2021-10-26 13:42:41', 'Generado por Compra Rapida', 0, '100064', '1', '2021-10-26 13:42:41', 'factura', 'FE02-00048502', 'media/documentos/sin_foto.jpg', '2021-09-07', '', '2021-10-26 13:42:41', 10, '1635273761.8522'),
(96, 0, 10, 10, 36, 4, 3, '---', '2021-10-26 14:58:00', 'Generado por Compra Rapida', 0, '100065', '1', '2021-10-26 14:58:00', 'factura', 'F002-00038008', 'media/documentos/sin_foto.jpg', '2021-09-03', '', '2021-10-26 14:58:00', 10, '1635278280.1526'),
(97, 0, 10, 10, 35, 4, 3, '---', '2021-10-29 11:21:57', 'Generado por Compra Rapida', 0, '100066', '1', '2021-10-29 11:21:57', 'factura', 'FE02-00048186', 'media/documentos/sin_foto.jpg', '2021-09-02', '', '2021-10-29 11:21:57', 10, '1635524517.4497'),
(98, 0, 10, 10, 38, 4, 3, '---', '2021-10-29 11:43:55', 'Generado por Compra Rapida', 0, '100067', '1', '2021-10-29 11:43:55', 'factura', 'FE05-00000578', 'media/documentos/sin_foto.jpg', '2021-09-02', '', '2021-10-29 11:43:55', 10, '1635525835.1233'),
(99, 0, 10, 10, 32, 4, 3, '---', '2021-10-29 11:52:29', 'Generado por Compra Rapida', 0, '100068', '1', '2021-10-29 11:52:29', 'factura', 'F004-0022590', 'media/documentos/sin_foto.jpg', '2021-09-07', '', '2021-10-29 11:52:29', 10, '1635526349.1102'),
(100, 0, 10, 10, 39, 4, 3, '---', '2021-10-29 12:31:30', 'Generado por Compra Rapida', 0, '100069', '1', '2021-10-29 12:31:30', 'factura', 'F002-59356', 'media/documentos/sin_foto.jpg', '2021-09-08', '', '2021-10-29 12:31:30', 10, '1635528690.0563'),
(101, 0, 10, 10, 40, 4, 3, '---', '2021-10-29 14:25:39', 'Generado por Compra Rapida', 0, '100070', '1', '2021-10-29 14:25:39', 'factura', 'FF01-0000428', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-10-29 14:25:39', 10, '1635535539.3497'),
(102, 0, 10, 10, 41, 4, 3, '---', '2021-10-29 14:32:41', 'Generado por Compra Rapida', 0, '100071', '1', '2021-10-29 14:32:41', 'factura', 'F001-00009295', 'media/documentos/sin_foto.jpg', '2021-08-31', '', '2021-10-29 14:32:41', 10, '1635535961.495'),
(103, 0, 10, 10, 42, 4, 3, '---', '2021-10-29 15:13:46', 'Generado por Compra Rapida', 0, '100072', '1', '2021-10-29 15:13:46', 'factura', 'F011-00000108', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-10-29 15:13:46', 10, '1635538426.9574'),
(104, 0, 10, 10, 43, 4, 3, '---', '2021-10-29 15:33:06', 'Generado por Compra Rapida', 0, '100073', '1', '2021-10-29 15:33:06', 'factura', 'F001-18904', 'media/documentos/sin_foto.jpg', '2021-09-06', '', '2021-10-29 15:33:06', 10, '1635539586.8877'),
(105, 0, 10, 10, 41, 4, 3, '---', '2021-10-31 13:17:04', 'Generado por Compra Rapida', 0, '100074', '1', '2021-10-31 13:17:04', 'factura', 'F001-00010051', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-10-31 13:17:04', 10, '1635704224.3409'),
(106, 0, 10, 10, 44, 4, 3, '---', '2021-11-02 12:27:39', 'Generado por Compra Rapida', 0, '100075', '1', '2021-11-02 12:27:39', 'factura', 'F001-7975', 'media/documentos/sin_foto.jpg', '2021-09-05', '', '2021-11-02 12:27:39', 10, '1635874059.9537'),
(107, 0, 10, 10, 39, 4, 3, '---', '2021-11-02 13:25:17', 'Generado por Compra Rapida', 0, '100076', '1', '2021-11-02 13:25:17', 'factura', 'F002-59112', 'media/documentos/sin_foto.jpg', '2021-09-04', '', '2021-11-02 13:25:17', 10, '1635877517.1528'),
(108, 0, 10, 10, 45, 4, 3, '---', '2021-11-02 14:39:36', 'Generado por Compra Rapida', 0, '100077', '1', '2021-11-02 14:39:36', 'factura', 'FW22-00049689', 'media/documentos/sin_foto.jpg', '2021-09-06', '', '2021-11-02 14:39:36', 10, '1635881976.8552'),
(109, 0, 10, 10, 19, 4, 3, '---', '2021-11-02 14:55:14', 'Generado por Compra Rapida', 0, '100078', '1', '2021-11-02 14:55:14', 'factura', 'FA01-00000850', 'media/documentos/sin_foto.jpg', '2021-09-12', '', '2021-11-02 14:55:14', 10, '1635882914.1844'),
(110, 0, 10, 10, 19, 4, 3, '---', '2021-11-02 15:04:42', 'Generado por Compra Rapida', 0, '100079', '1', '2021-11-02 15:04:42', 'factura', 'FA01-00000841', 'media/documentos/sin_foto.jpg', '2021-09-11', '', '2021-11-02 15:04:42', 10, '1635883482.7554'),
(111, 0, 10, 10, 14, 4, 3, '---', '2021-11-02 16:21:17', 'Generado por Compra Rapida', 0, '100080', '1', '2021-11-02 16:21:17', 'factura', 'F001-00002543', 'media/documentos/sin_foto.jpg', '2021-09-25', '', '2021-11-02 16:21:17', 10, '1635888077.1932'),
(112, 0, 10, 10, 14, 4, 3, '---', '2021-11-03 13:05:31', 'Generado por Compra Rapida', 0, '100081', '1', '2021-11-03 13:05:31', 'factura', 'F001-00002402', 'media/documentos/sin_foto.jpg', '2021-09-09', '', '2021-11-03 13:05:31', 10, '1635962731.0853'),
(114, 0, 10, 10, 14, 4, 3, '---', '2021-11-03 13:36:43', 'Generado por Compra Rapida', 0, '100082', '1', '2021-11-03 13:36:43', 'factura', 'F001-00002572', 'media/documentos/sin_foto.jpg', '2021-09-27', '', '2021-11-03 13:36:43', 10, '1635964603.5838'),
(115, 0, 10, 10, 19, 4, 3, '---', '2021-11-03 13:40:59', 'Generado por Compra Rapida', 0, '100083', '1', '2021-11-03 13:40:59', 'factura', 'FA01-00000917', 'media/documentos/sin_foto.jpg', '2021-09-20', '', '2021-11-03 13:40:59', 10, '1635964859.7818'),
(116, 0, 10, 10, 14, 4, 3, '---', '2021-11-03 14:10:29', 'Generado por Compra Rapida', 0, '100084', '1', '2021-11-03 14:10:29', 'factura', 'F001-00002583', 'media/documentos/sin_foto.jpg', '2021-09-28', '', '2021-11-03 14:10:29', 10, '1635966629.8005'),
(117, 0, 10, 10, 13, 4, 3, '---', '2021-11-03 14:13:21', 'Generado por Compra Rapida', 0, '100085', '1', '2021-11-03 14:13:21', 'factura', 'F001-3043', 'media/documentos/sin_foto.jpg', '2021-09-29', '', '2021-11-03 14:13:21', 10, '1635966801.042'),
(118, 0, 10, 10, 14, 4, 3, '---', '2021-11-04 15:50:50', 'Generado por Compra Rapida', 0, '100086', '1', '2021-11-04 15:50:50', 'factura', 'F001-00002571', 'media/documentos/sin_foto.jpg', '2021-09-27', '', '2021-11-04 15:50:50', 10, '1636059050.1703'),
(119, 0, 10, 10, 14, 4, 3, '---', '2021-11-04 16:06:20', 'Generado por Compra Rapida', 0, '100087', '1', '2021-11-04 16:06:20', 'factura', 'F001-00002592', 'media/documentos/sin_foto.jpg', '2021-09-29', '', '2021-11-04 16:06:20', 10, '1636059980.8526'),
(120, 0, 2, 2, 46, 4, 3, '---', '2021-11-11 09:58:27', 'Generado por Compra Rapida', 0, '100088', '1', '2021-11-11 09:58:27', 'factura', 'F037-00043659', 'media/documentos/sin_foto.jpg', '2021-10-04', '', '2021-11-11 09:58:27', 2, '1636642707.9668'),
(121, 0, 2, 2, 47, 4, 3, '---', '2021-11-11 10:36:08', 'Generado por Compra Rapida', 0, '100089', '0', '2021-11-11 10:36:08', 'factura', '10428983535', 'media/documentos/sin_foto.jpg', '2021-10-04', '', '2021-11-11 10:36:08', 2, '1636644968.5089'),
(122, 0, 10, 10, 29, 4, 3, '---', '2021-11-11 10:42:58', 'Generado por Compra Rapida', 0, '100089', '1', '2021-11-11 10:42:58', 'factura', 'F001-00009930', 'media/documentos/sin_foto.jpg', '2021-11-04', '', '2021-11-11 10:42:58', 10, '1636645378.7888'),
(123, 0, 2, 2, 47, 4, 3, '---', '2021-11-11 10:53:49', 'Generado por Compra Rapida', 0, '100090', '1', '2021-11-11 10:53:49', 'factura', '0001-N°000483', 'media/documentos/sin_foto.jpg', '2021-10-04', '', '2021-11-11 10:53:49', 2, '1636646029.8835'),
(124, 0, 10, 10, 49, 4, 3, '---', '2021-11-11 11:05:14', 'Generado por Compra Rapida', 0, '100091', '1', '2021-11-11 11:05:14', 'factura', 'F001-00006958', 'media/documentos/sin_foto.jpg', '2021-11-03', '', '2021-11-11 11:05:14', 10, '1636646714.6513'),
(125, 0, 2, 2, 48, 4, 3, '---', '2021-11-11 11:06:25', 'Generado por Compra Rapida', 0, '100092', '1', '2021-11-11 11:06:25', 'factura', 'F001 - 00000004', 'media/documentos/sin_foto.jpg', '2021-10-04', '', '2021-11-11 11:06:25', 2, '1636646785.6829'),
(126, 0, 10, 10, 50, 4, 3, '---', '2021-11-11 11:18:48', 'Generado por Compra Rapida', 0, '100093', '1', '2021-11-11 11:18:48', 'factura', 'F001-00000439', 'media/documentos/sin_foto.jpg', '2021-11-03', '', '2021-11-11 11:18:48', 10, '1636647528.1277'),
(127, 0, 2, 2, 19, 4, 3, '---', '2021-11-11 11:19:38', 'Generado por Compra Rapida', 0, '100094', '1', '2021-11-11 11:19:38', 'factura', 'FA01-00000950', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 11:19:38', 2, '1636647578.2763'),
(128, 0, 2, 2, 52, 4, 3, '---', '2021-11-11 12:20:58', 'Generado por Compra Rapida', 0, '100095', '1', '2021-11-11 12:20:58', 'factura', 'E001-767', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 12:20:58', 2, '1636651258.6149'),
(129, 0, 2, 2, 53, 4, 3, '---', '2021-11-11 12:27:42', 'Generado por Compra Rapida', 0, '100096', '1', '2021-11-11 12:27:42', 'factura', 'E001-154', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 12:27:42', 2, '1636651662.2453'),
(130, 0, 2, 2, 54, 4, 3, '---', '2021-11-11 12:33:26', 'Generado por Compra Rapida', 0, '100097', '1', '2021-11-11 12:33:26', 'factura', 'F001-00169037', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 12:33:26', 2, '1636652006.8159'),
(131, 0, 2, 2, 55, 4, 3, '---', '2021-11-11 13:00:43', 'Generado por Compra Rapida', 0, '100098', '1', '2021-11-11 13:00:43', 'factura', 'F700-00216517', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 13:00:43', 2, '1636653643.2681'),
(132, 0, 2, 2, 56, 4, 3, '---', '2021-11-11 13:22:29', 'Generado por Compra Rapida', 0, '100099', '1', '2021-11-11 13:22:29', 'factura', 'S/N', 'media/documentos/sin_foto.jpg', '2021-10-05', '', '2021-11-11 13:22:29', 2, '1636654949.6047'),
(133, 0, 2, 2, 14, 4, 3, '---', '2021-11-11 13:39:17', 'Generado por Compra Rapida', 0, '100100', '1', '2021-11-11 13:39:17', 'factura', 'F001-00002649', 'media/documentos/sin_foto.jpg', '2021-10-06', '', '2021-11-11 13:39:17', 2, '1636655957.7261'),
(134, 0, 2, 2, 19, 4, 3, '---', '2021-11-11 13:42:54', 'Generado por Compra Rapida', 0, '100101', '1', '2021-11-11 13:42:54', 'factura', 'FA1-00000953', 'media/documentos/sin_foto.jpg', '2021-10-06', '', '2021-11-11 13:42:54', 2, '1636656174.7981'),
(135, 0, 2, 2, 16, 4, 3, '---', '2021-11-11 14:23:59', 'Generado por Compra Rapida', 0, '100102', '1', '2021-11-11 14:23:59', 'factura', '0002 N°0005348', 'media/documentos/sin_foto.jpg', '2021-10-06', '', '2021-11-11 14:23:59', 2, '1636658639.2037'),
(136, 0, 2, 2, 39, 4, 3, '---', '2021-11-11 14:27:47', 'Generado por Compra Rapida', 0, '100103', '1', '2021-11-11 14:27:47', 'factura', 'F001-19413', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 14:27:47', 2, '1636658867.3804'),
(137, 0, 2, 2, 19, 4, 3, '---', '2021-11-11 14:31:59', 'Generado por Compra Rapida', 0, '100104', '1', '2021-11-11 14:31:59', 'factura', 'FA01-00000956', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 14:31:59', 2, '1636659119.601'),
(138, 0, 2, 2, 14, 4, 3, '---', '2021-11-11 14:50:48', 'Generado por Compra Rapida', 0, '100105', '1', '2021-11-11 14:50:48', 'factura', 'F001-00002661', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 14:50:48', 2, '1636660248.942'),
(139, 0, 2, 2, 16, 4, 3, '---', '2021-11-11 14:52:33', 'Generado por Compra Rapida', 0, '100106', '1', '2021-11-11 14:52:33', 'factura', '0002 N°0005351', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 14:52:33', 2, '1636660353.102'),
(140, 0, 2, 2, 57, 4, 3, '---', '2021-11-11 15:03:42', 'Generado por Compra Rapida', 0, '100107', '1', '2021-11-11 15:03:42', 'factura', '001-N° 000272', 'media/documentos/sin_foto.jpg', '2021-09-07', '', '2021-11-11 15:03:42', 2, '1636661022.131'),
(141, 0, 2, 2, 58, 4, 3, '---', '2021-11-11 15:30:25', 'Generado por Compra Rapida', 0, '100108', '1', '2021-11-11 15:30:25', 'factura', 'F003-15059', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 15:30:25', 2, '1636662625.805'),
(142, 0, 2, 2, 59, 4, 3, '---', '2021-11-11 15:36:22', 'Generado por Compra Rapida', 0, '100109', '1', '2021-11-11 15:36:22', 'factura', 'F001-00000201', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 15:36:22', 2, '1636662982.5304'),
(143, 0, 2, 2, 52, 4, 3, '---', '2021-11-11 15:52:56', 'Generado por Compra Rapida', 0, '100110', '1', '2021-11-11 15:52:56', 'factura', 'E001-776', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-11 15:52:56', 2, '1636663976.2734'),
(144, 0, 2, 2, 53, 4, 3, '---', '2021-11-12 10:08:19', 'Generado por Compra Rapida', 0, '100111', '1', '2021-11-12 10:08:19', 'factura', 'E001-159', 'media/documentos/sin_foto.jpg', '2021-10-07', '', '2021-11-12 10:08:19', 2, '1636729699.8404'),
(145, 0, 2, 2, 60, 4, 3, '---', '2021-11-12 10:21:35', 'Generado por Compra Rapida', 0, '100112', '1', '2021-11-12 10:21:35', 'factura', 'FF02-5849', 'media/documentos/sin_foto.jpg', '2021-10-08', '', '2021-11-12 10:21:35', 2, '1636730495.6568'),
(146, 0, 2, 2, 14, 4, 3, '---', '2021-11-12 12:35:18', 'Generado por Compra Rapida', 0, '100113', '1', '2021-11-12 12:35:18', 'factura', 'F001-00002669', 'media/documentos/sin_foto.jpg', '2021-08-07', '', '2021-11-12 12:35:18', 2, '1636738518.6122'),
(147, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 12:39:01', 'Generado por Compra Rapida', 0, '100114', '1', '2021-11-12 12:39:01', 'factura', 'FA01-00000962', 'media/documentos/sin_foto.jpg', '2021-10-08', '', '2021-11-12 12:39:01', 2, '1636738741.8724'),
(148, 0, 2, 2, 61, 4, 3, '---', '2021-11-12 12:43:32', 'Generado por Compra Rapida', 0, '100115', '1', '2021-11-12 12:43:32', 'factura', '0003-N°0003488', 'media/documentos/sin_foto.jpg', '2021-10-08', '', '2021-11-12 12:43:32', 2, '1636739012.9294'),
(149, 0, 2, 2, 39, 4, 3, '---', '2021-11-12 12:47:32', 'Generado por Compra Rapida', 0, '100116', '1', '2021-11-12 12:47:32', 'factura', 'F001-19433', 'media/documentos/sin_foto.jpg', '2021-10-08', '', '2021-11-12 12:47:32', 2, '1636739252.4328'),
(150, 0, 2, 2, 14, 4, 3, '---', '2021-11-12 12:58:32', 'Generado por Compra Rapida', 0, '100117', '1', '2021-11-12 12:58:32', 'factura', 'F001-00002680', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 12:58:32', 2, '1636739912.7702'),
(151, 0, 2, 2, 16, 4, 3, '---', '2021-11-12 12:59:52', 'Generado por Compra Rapida', 0, '100118', '1', '2021-11-12 12:59:52', 'factura', '0002- N° 0005355', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 12:59:52', 2, '1636739992.2883'),
(152, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 13:01:35', 'Generado por Compra Rapida', 0, '100119', '1', '2021-11-12 13:01:35', 'factura', 'FA01-00000969', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 13:01:35', 2, '1636740095.4752'),
(153, 0, 2, 2, 48, 4, 3, '---', '2021-11-12 13:03:21', 'Generado por Compra Rapida', 0, '100120', '1', '2021-11-12 13:03:21', 'factura', 'F001-00000005', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 13:03:21', 2, '1636740201.9479'),
(154, 0, 2, 2, 59, 4, 3, '---', '2021-11-12 13:04:41', 'Generado por Compra Rapida', 0, '100121', '1', '2021-11-12 13:04:41', 'factura', 'F001-00000206', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 13:04:41', 2, '1636740281.0926'),
(155, 0, 2, 2, 56, 4, 3, '---', '2021-11-12 13:06:46', 'Generado por Compra Rapida', 0, '100122', '1', '2021-11-12 13:06:46', 'factura', 'FE01-00001681', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 13:06:46', 2, '1636740406.3422'),
(156, 0, 2, 2, 62, 4, 3, '---', '2021-11-12 13:20:59', 'Generado por Compra Rapida', 0, '100123', '1', '2021-11-12 13:20:59', 'factura', 'FE02-00001115', 'media/documentos/sin_foto.jpg', '2021-10-09', '', '2021-11-12 13:20:59', 2, '1636741259.8654'),
(157, 0, 2, 2, 63, 4, 3, '---', '2021-11-12 13:28:58', 'Generado por Compra Rapida', 0, '100124', '1', '2021-11-12 13:28:58', 'factura', 'F101-00000366', 'media/documentos/sin_foto.jpg', '2021-09-10', '', '2021-11-12 13:28:58', 2, '1636741738.8366'),
(158, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 13:31:46', 'Generado por Compra Rapida', 0, '100125', '1', '2021-11-12 13:31:46', 'factura', 'FA01-00001046', 'media/documentos/sin_foto.jpg', '2021-10-24', '', '2021-11-12 13:31:46', 2, '1636741906.2633'),
(159, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 13:34:55', 'Generado por Compra Rapida', 0, '100126', '1', '2021-11-12 13:34:55', 'factura', 'FA01-00000975', 'media/documentos/sin_foto.jpg', '2021-10-10', '', '2021-11-12 13:34:55', 2, '1636742095.0649'),
(160, 0, 2, 2, 14, 4, 3, '---', '2021-11-12 13:52:56', 'Generado por Compra Rapida', 0, '100127', '1', '2021-11-12 13:52:56', 'factura', 'F001-00002690', 'media/documentos/sin_foto.jpg', '2021-10-10', '', '2021-11-12 13:52:56', 2, '1636743176.2'),
(161, 0, 2, 2, 63, 4, 3, '---', '2021-11-12 13:58:06', 'Generado por Compra Rapida', 0, '100128', '1', '2021-11-12 13:58:06', 'factura', 'F102-00000611', 'media/documentos/sin_foto.jpg', '2021-10-10', '', '2021-11-12 13:58:06', 2, '1636743486.3991'),
(162, 0, 2, 2, 62, 4, 3, '---', '2021-11-12 14:01:05', 'Generado por Compra Rapida', 0, '100129', '1', '2021-11-12 14:01:05', 'factura', 'FE02-00001119', 'media/documentos/sin_foto.jpg', '2021-10-10', '', '2021-11-12 14:01:05', 2, '1636743665.1831'),
(164, 0, 2, 2, 64, 4, 3, '---', '2021-11-12 14:13:30', 'Generado por Compra Rapida', 0, '100130', '1', '2021-11-12 14:13:30', 'factura', 'F001-00002821', 'media/documentos/sin_foto.jpg', '2021-10-11', '', '2021-11-12 14:13:30', 2, '1636744410.0629'),
(165, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 14:22:24', 'Generado por Compra Rapida', 0, '100131', '1', '2021-11-12 14:22:24', 'factura', 'FA01-00000980', 'media/documentos/sin_foto.jpg', '2021-10-11', '', '2021-11-12 14:22:24', 2, '1636744944.1371'),
(166, 0, 2, 2, 19, 4, 3, '---', '2021-11-12 14:23:57', 'Generado por Compra Rapida', 0, '100132', '1', '2021-11-12 14:23:57', 'factura', 'FA01-00000986', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 14:23:57', 2, '1636745037.2059'),
(167, 0, 2, 2, 14, 4, 3, '---', '2021-11-12 14:33:25', 'Generado por Compra Rapida', 0, '100133', '0', '2021-11-12 14:33:25', 'factura', 'F001-00002713', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 14:33:25', 2, '1636745605.2625'),
(168, 0, 2, 2, 16, 4, 3, '---', '2021-11-12 14:58:49', 'Generado por Compra Rapida', 0, '100133', '1', '2021-11-12 14:58:49', 'factura', '0002-N°0005357', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 14:58:49', 2, '1636747129.5656'),
(169, 0, 2, 2, 54, 4, 3, '---', '2021-11-12 15:12:46', 'Generado por Compra Rapida', 0, '100134', '1', '2021-11-12 15:12:46', 'factura', 'F001-00170118', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 15:12:46', 2, '1636747966.3859'),
(171, 0, 2, 2, 64, 4, 3, '---', '2021-11-12 15:22:57', 'Generado por Compra Rapida', 0, '100135', '1', '2021-11-12 15:22:57', 'factura', 'F001-00002835', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 15:22:57', 2, '1636748577.5625'),
(172, 0, 2, 2, 53, 4, 3, '---', '2021-11-12 15:24:39', 'Generado por Compra Rapida', 0, '100136', '1', '2021-11-12 15:24:39', 'factura', 'E001-160', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-12 15:24:39', 2, '1636748679.2399'),
(173, 0, 2, 2, 65, 4, 3, '---', '2021-11-13 10:53:51', 'Generado por Compra Rapida', 0, '100137', '1', '2021-11-13 10:53:51', 'factura', 'F010-00001862', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-13 10:53:51', 2, '1636818831.1619'),
(174, 0, 2, 2, 14, 4, 3, '---', '2021-11-13 11:02:42', 'Generado por Compra Rapida', 0, '100138', '1', '2021-11-13 11:02:42', 'factura', 'F001-00002722', 'media/documentos/sin_foto.jpg', '2021-10-13', '', '2021-11-13 11:02:42', 2, '1636819362.933'),
(175, 0, 2, 2, 66, 4, 3, '---', '2021-11-13 11:10:38', 'Generado por Compra Rapida', 0, '100139', '1', '2021-11-13 11:10:38', 'factura', 'F002-00005863', 'media/documentos/sin_foto.jpg', '2021-10-13', '', '2021-11-13 11:10:38', 2, '1636819838.2915'),
(176, 0, 2, 2, 67, 4, 3, '---', '2021-11-13 11:18:13', 'Generado por Compra Rapida', 0, '100140', '1', '2021-11-13 11:18:13', 'factura', 'F500-00027297', 'media/documentos/sin_foto.jpg', '2021-10-13', '', '2021-11-13 11:18:13', 2, '1636820293.5844'),
(177, 0, 2, 2, 48, 4, 3, '---', '2021-11-13 11:20:32', 'Generado por Compra Rapida', 0, '100141', '1', '2021-11-13 11:20:32', 'factura', 'F001-00000007', 'media/documentos/sin_foto.jpg', '2021-10-13', '', '2021-11-13 11:20:32', 2, '1636820432.1768'),
(178, 0, 2, 2, 19, 4, 3, '---', '2021-11-13 11:21:58', 'Generado por Compra Rapida', 0, '100142', '1', '2021-11-13 11:21:58', 'factura', 'FA01-00000997', 'media/documentos/sin_foto.jpg', '2021-10-14', '', '2021-11-13 11:21:58', 2, '1636820518.033'),
(179, 0, 2, 2, 14, 4, 3, '---', '2021-11-13 11:32:12', 'Generado por Compra Rapida', 0, '100143', '1', '2021-11-13 11:32:12', 'factura', 'F001-00002731', 'media/documentos/sin_foto.jpg', '2021-10-14', '', '2021-11-13 11:32:12', 2, '1636821132.9863'),
(180, 0, 2, 2, 16, 4, 3, '---', '2021-11-13 11:33:24', 'Generado por Compra Rapida', 0, '100144', '1', '2021-11-13 11:33:24', 'factura', '0002-N°0005359', 'media/documentos/sin_foto.jpg', '2021-10-14', '', '2021-11-13 11:33:24', 2, '1636821204.9933'),
(181, 0, 2, 2, 59, 4, 3, '---', '2021-11-13 11:35:02', 'Generado por Compra Rapida', 0, '100145', '1', '2021-11-13 11:35:02', 'factura', 'F001-00000215', 'media/documentos/sin_foto.jpg', '2021-10-14', '', '2021-11-13 11:35:02', 2, '1636821302.1407'),
(183, 0, 2, 2, 68, 4, 3, '---', '2021-11-13 11:46:27', 'Generado por Compra Rapida', 0, '100146', '1', '2021-11-13 11:46:27', 'factura', 'FH01-0000007', 'media/documentos/sin_foto.jpg', '2021-10-15', '', '2021-11-13 11:46:27', 2, '1636821987.4966'),
(184, 0, 2, 2, 53, 4, 3, '---', '2021-11-13 11:47:48', 'Generado por Compra Rapida', 0, '100147', '1', '2021-11-13 11:47:48', 'factura', 'E001-167', 'media/documentos/sin_foto.jpg', '2021-10-15', '', '2021-11-13 11:47:48', 2, '1636822068.2845'),
(185, 0, 2, 2, 62, 4, 3, '---', '2021-11-13 11:50:34', 'Generado por Compra Rapida', 0, '100148', '1', '2021-11-13 11:50:34', 'factura', 'FE02-0000', 'media/documentos/sin_foto.jpg', '2021-10-15', '', '2021-11-13 11:50:34', 2, '1636822234.7476'),
(186, 0, 2, 2, 56, 4, 3, '---', '2021-11-13 11:52:17', 'Generado por Compra Rapida', 0, '100149', '1', '2021-11-13 11:52:17', 'factura', 'FE02-00004373', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-11-13 11:52:17', 2, '1636822337.8031'),
(188, 0, 2, 2, 59, 4, 3, '---', '2021-11-13 11:53:37', 'Generado por Compra Rapida', 0, '100150', '1', '2021-11-13 11:53:37', 'factura', 'F001-00000220', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-11-13 11:53:37', 2, '1636822417.3402'),
(189, 0, 2, 2, 60, 4, 3, '---', '2021-11-13 11:54:58', 'Generado por Compra Rapida', 0, '100151', '1', '2021-11-13 11:54:58', 'factura', 'FF02-6094', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-11-13 11:54:58', 2, '1636822498.4119'),
(190, 0, 10, 10, 51, 4, 3, '---', '2021-11-13 11:57:43', 'Generado por Compra Rapida', 0, '100152', '1', '2021-11-13 11:57:43', 'factura', 'F001-00057013', 'media/documentos/sin_foto.jpg', '2021-11-03', '', '2021-11-13 11:57:43', 10, '1636822663.2241'),
(191, 0, 2, 2, 63, 4, 3, '---', '2021-11-13 12:23:53', 'Generado por Compra Rapida', 0, '100153', '1', '2021-11-13 12:23:53', 'factura', 'F102-00000641', 'media/documentos/sin_foto.jpg', '2021-10-17', '', '2021-11-13 12:23:53', 2, '1636824233.2855'),
(192, 0, 2, 2, 48, 4, 3, '---', '2021-11-13 12:25:30', 'Generado por Compra Rapida', 0, '100154', '1', '2021-11-13 12:25:30', 'factura', 'F001-00000008', 'media/documentos/sin_foto.jpg', '2021-10-17', '', '2021-11-13 12:25:30', 2, '1636824330.8552'),
(193, 0, 2, 2, 69, 4, 3, '---', '2021-11-13 12:32:05', 'Generado por Compra Rapida', 0, '100155', '1', '2021-11-13 12:32:05', 'factura', 'FF20-00060708', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-11-13 12:32:05', 2, '1636824725.9482'),
(194, 0, 2, 2, 70, 4, 3, '---', '2021-11-13 12:42:50', 'Generado por Compra Rapida', 0, '100156', '1', '2021-11-13 12:42:50', 'factura', '0001-N°004687', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-11-13 12:42:50', 2, '1636825370.9666'),
(195, 0, 2, 2, 55, 4, 3, '---', '2021-11-13 13:22:52', 'Generado por Compra Rapida', 0, '100157', '1', '2021-11-13 13:22:52', 'factura', 'F700-00220558', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-11-13 13:22:52', 2, '1636827772.9009'),
(196, 0, 2, 2, 71, 4, 3, '---', '2021-11-15 10:45:57', 'Generado por Compra Rapida', 0, '100158', '1', '2021-11-15 10:45:57', 'factura', 'f001-00000035', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 10:45:57', 2, '1636991157.677'),
(197, 0, 2, 2, 72, 4, 3, '---', '2021-11-15 11:00:42', 'Generado por Compra Rapida', 0, '100159', '1', '2021-11-15 11:00:42', 'factura', 'F100-00000067', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 11:00:42', 2, '1636992042.2822'),
(198, 0, 2, 2, 54, 4, 3, '---', '2021-11-15 11:06:25', 'Generado por Compra Rapida', 0, '100160', '1', '2021-11-15 11:06:25', 'factura', 'F001-00171535', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 11:06:25', 2, '1636992385.431'),
(199, 0, 2, 2, 16, 4, 3, '---', '2021-11-15 11:09:55', 'Generado por Compra Rapida', 0, '100161', '1', '2021-11-15 11:09:55', 'factura', '0002 N°0005369', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 11:09:55', 2, '1636992595.917'),
(200, 0, 2, 2, 53, 4, 3, '---', '2021-11-15 11:11:23', 'Generado por Compra Rapida', 0, '100162', '1', '2021-11-15 11:11:23', 'factura', 'E001-176', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 11:11:23', 2, '1636992683.4066'),
(201, 0, 2, 2, 59, 4, 3, '---', '2021-11-15 11:58:45', 'Generado por Compra Rapida', 0, '100163', '1', '2021-11-15 11:58:45', 'factura', 'F001-00000222', 'media/documentos/sin_foto.jpg', '2021-10-20', '', '2021-11-15 11:58:45', 2, '1636995525.1428'),
(202, 0, 2, 2, 66, 4, 3, '---', '2021-11-15 12:01:47', 'Generado por Compra Rapida', 0, '100164', '1', '2021-11-15 12:01:47', 'factura', 'F001-00015452', 'media/documentos/sin_foto.jpg', '2021-10-20', '', '2021-11-15 12:01:47', 2, '1636995707.0444'),
(203, 0, 2, 2, 72, 4, 3, '---', '2021-11-15 12:07:24', 'Generado por Compra Rapida', 0, '100165', '1', '2021-11-15 12:07:24', 'factura', 'F100-00000068', 'media/documentos/sin_foto.jpg', '2021-10-20', '', '2021-11-15 12:07:24', 2, '1636996044.0541'),
(204, 0, 2, 2, 73, 4, 3, '---', '2021-11-15 12:31:48', 'Generado por Compra Rapida', 0, '100166', '1', '2021-11-15 12:31:48', 'factura', 'FI01 N°00273075', 'media/documentos/sin_foto.jpg', '2021-10-21', '', '2021-11-15 12:31:48', 2, '1636997508.3181'),
(205, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 12:53:33', 'Generado por Compra Rapida', 0, '100167', '1', '2021-11-15 12:53:33', 'factura', 'F001-00002838', 'media/documentos/sin_foto.jpg', '2021-10-24', '', '2021-11-15 12:53:33', 2, '1636998813.2518'),
(206, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 13:14:01', 'Generado por Compra Rapida', 0, '100168', '1', '2021-11-15 13:14:01', 'factura', 'F001-00002843', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 13:14:01', 2, '1637000041.5137'),
(207, 0, 2, 2, 19, 4, 3, '---', '2021-11-15 13:16:05', 'Generado por Compra Rapida', 0, '100169', '1', '2021-11-15 13:16:05', 'factura', 'FA01-00001007', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-11-15 13:16:05', 2, '1637000165.37'),
(208, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 13:22:42', 'Generado por Compra Rapida', 0, '100170', '1', '2021-11-15 13:22:42', 'factura', 'F001-00002471', 'media/documentos/sin_foto.jpg', '2021-10-15', '', '2021-11-15 13:22:42', 2, '1637000562.5262'),
(210, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 13:31:16', 'Generado por Compra Rapida', 0, '100171', '1', '2021-11-15 13:31:16', 'factura', 'F001-00002750', 'media/documentos/sin_foto.jpg', '2021-10-16', '', '2021-11-15 13:31:16', 2, '1637001076.4442'),
(211, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 13:37:14', 'Generado por Compra Rapida', 0, '100172', '1', '2021-11-15 13:37:14', 'factura', 'F001-00002759', 'media/documentos/sin_foto.jpg', '2021-10-17', '', '2021-11-15 13:37:14', 2, '1637001434.0759'),
(212, 0, 2, 2, 19, 4, 3, '---', '2021-11-15 13:38:58', 'Generado por Compra Rapida', 0, '100173', '1', '2021-11-15 13:38:58', 'factura', 'FA01-00001012', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-11-15 13:38:58', 2, '1637001538.0062'),
(213, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 13:50:40', 'Generado por Compra Rapida', 0, '100174', '1', '2021-11-15 13:50:40', 'factura', 'F001-00002784', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-15 13:50:40', 2, '1637002240.093'),
(214, 0, 2, 2, 63, 4, 3, '---', '2021-11-15 13:54:38', 'Generado por Compra Rapida', 0, '100175', '1', '2021-11-15 13:54:38', 'factura', 'F102-00000656', 'media/documentos/sin_foto.jpg', '2021-10-23', '', '2021-11-15 13:54:38', 2, '1637002478.2735'),
(215, 0, 2, 2, 60, 4, 3, '---', '2021-11-15 13:56:32', 'Generado por Compra Rapida', 0, '100176', '1', '2021-11-15 13:56:32', 'factura', 'FF02-6278', 'media/documentos/sin_foto.jpg', '2021-10-23', '', '2021-11-15 13:56:32', 2, '1637002592.1079'),
(216, 0, 2, 2, 19, 4, 3, '---', '2021-11-15 13:59:07', 'Generado por Compra Rapida', 0, '100177', '1', '2021-11-15 13:59:07', 'factura', 'FA01-00001047', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 13:59:07', 2, '1637002747.1465'),
(217, 0, 2, 2, 74, 4, 3, '---', '2021-11-15 14:06:07', 'Generado por Compra Rapida', 0, '100178', '1', '2021-11-15 14:06:07', 'factura', 'F001-00032561', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 14:06:07', 2, '1637003167.8466'),
(218, 0, 2, 2, 67, 4, 3, '---', '2021-11-15 14:09:36', 'Generado por Compra Rapida', 0, '100179', '1', '2021-11-15 14:09:36', 'factura', 'F500-00027693', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 14:09:36', 2, '1637003376.4458'),
(219, 0, 2, 2, 75, 4, 3, '---', '2021-11-15 14:18:53', 'Generado por Compra Rapida', 0, '100180', '1', '2021-11-15 14:18:53', 'factura', '0001-N°004577', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 14:18:53', 2, '1637003933.4857'),
(220, 0, 2, 2, 16, 4, 3, '---', '2021-11-15 14:20:45', 'Generado por Compra Rapida', 0, '100181', '1', '2021-11-15 14:20:45', 'factura', '0002-N°0005381', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-15 14:20:45', 2, '1637004045.0423'),
(221, 0, 2, 2, 16, 4, 3, '---', '2021-11-15 14:22:01', 'Generado por Compra Rapida', 0, '100182', '1', '2021-11-15 14:22:01', 'factura', '0002-N°0005382', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:22:01', 2, '1637004121.3886'),
(222, 0, 2, 2, 75, 4, 3, '---', '2021-11-15 14:34:46', 'Generado por Compra Rapida', 0, '100183', '1', '2021-11-15 14:34:46', 'factura', '0001-N°004579', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:34:46', 2, '1637004886.0675'),
(223, 0, 2, 2, 52, 4, 3, '---', '2021-11-15 14:38:52', 'Generado por Compra Rapida', 0, '100184', '1', '2021-11-15 14:38:52', 'factura', 'E001-828', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:38:52', 2, '1637005132.8182'),
(224, 0, 2, 2, 54, 4, 3, '---', '2021-11-15 14:40:54', 'Generado por Compra Rapida', 0, '100185', '1', '2021-11-15 14:40:54', 'factura', 'F001-00172786', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:40:54', 2, '1637005254.4479'),
(225, 0, 2, 2, 14, 4, 3, '---', '2021-11-15 14:46:43', 'Generado por Compra Rapida', 0, '100186', '1', '2021-11-15 14:46:43', 'factura', 'F001-00002853', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:46:43', 2, '1637005603.4204'),
(226, 0, 2, 2, 19, 4, 3, '---', '2021-11-15 14:48:46', 'Generado por Compra Rapida', 0, '100187', '1', '2021-11-15 14:48:46', 'factura', 'FA01-00001053', 'media/documentos/sin_foto.jpg', '2021-10-26', '', '2021-11-15 14:48:46', 2, '1637005726.7551'),
(228, 0, 2, 2, 76, 4, 3, '---', '2021-11-15 14:55:23', 'Generado por Compra Rapida', 0, '100188', '1', '2021-11-15 14:55:23', 'factura', 'F002-00000116', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-15 14:55:23', 2, '1637006123.7721'),
(229, 0, 2, 2, 16, 4, 3, '---', '2021-11-15 14:56:29', 'Generado por Compra Rapida', 0, '100189', '1', '2021-11-15 14:56:29', 'factura', '0002-N°0005386', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-15 14:56:29', 2, '1637006189.16'),
(231, 0, 10, 10, 28, 4, 3, '---', '2021-11-16 10:15:39', 'Generado por Compra Rapida', 0, '100190', '1', '2021-11-16 10:15:39', 'factura', '003-0002734', 'media/documentos/sin_foto.jpg', '2021-11-04', '', '2021-11-16 10:15:39', 10, '1637075739.6763'),
(232, 0, 2, 2, 58, 4, 3, '---', '2021-11-16 10:24:55', 'Generado por Compra Rapida', 0, '100191', '1', '2021-11-16 10:24:55', 'factura', 'F002-19767', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-16 10:24:55', 2, '1637076295.2434'),
(233, 0, 2, 2, 77, 4, 3, '---', '2021-11-16 10:33:04', 'Generado por Compra Rapida', 0, '100192', '1', '2021-11-16 10:33:04', 'factura', 'F001-00003415', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-16 10:33:04', 2, '1637076784.9076'),
(234, 0, 2, 2, 78, 4, 3, '---', '2021-11-16 10:52:27', 'Generado por Compra Rapida', 0, '100193', '1', '2021-11-16 10:52:27', 'factura', 'F002-002662', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-16 10:52:27', 2, '1637077947.7482'),
(235, 0, 2, 2, 15, 4, 3, '---', '2021-11-16 11:00:31', 'Generado por Compra Rapida', 0, '100194', '1', '2021-11-16 11:00:31', 'factura', 'F001-00000001', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-16 11:00:31', 2, '1637078431.4461'),
(236, 0, 2, 2, 19, 4, 3, '---', '2021-11-16 11:06:43', 'Generado por Compra Rapida', 0, '100195', '1', '2021-11-16 11:06:43', 'factura', 'FA01-00001061', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-16 11:06:43', 2, '1637078803.7596'),
(237, 0, 10, 10, 65, 4, 3, '---', '2021-11-16 11:10:18', 'Generado por Compra Rapida', 0, '100196', '1', '2021-11-16 11:10:18', 'factura', 'F010-00002180', 'media/documentos/sin_foto.jpg', '2021-11-06', '', '2021-11-16 11:10:18', 10, '1637079018.3015'),
(238, 0, 2, 2, 75, 4, 3, '---', '2021-11-16 11:19:48', 'Generado por Compra Rapida', 0, '100197', '1', '2021-11-16 11:19:48', 'factura', '0001-N°004582', 'media/documentos/sin_foto.jpg', '2021-10-28', '', '2021-11-16 11:19:48', 2, '1637079588.3552');
INSERT INTO `orden_compra` (`id_orden_compra`, `id_caja_numero`, `id_solicitante`, `id_aprobacion`, `id_proveedor`, `id_sucursal`, `id_tipo_pago`, `orden_compra_observacion`, `orden_compra_fecha_aprob`, `orden_compra_titulo`, `orden_compra_activo`, `orden_compra_numero`, `orden_compra_estado`, `orden_compra_fecha`, `orden_compra_tipo_doc`, `orden_compra_numero_doc`, `orden_compra_doc_adjuntado`, `orden_compra_fecha_emision_doc`, `orden_compra_doc_cuotas`, `orden_compra_fecha_recibida`, `orden_compra_usuario_recibido`, `orden_compra_codigo`) VALUES
(239, 0, 10, 10, 79, 4, 3, '---', '2021-11-16 11:25:51', 'Generado por Compra Rapida', 0, '100198', '1', '2021-11-16 11:25:51', 'factura', 'F201-00020837', 'media/documentos/sin_foto.jpg', '2021-11-06', '', '2021-11-16 11:25:51', 10, '1637079951.618'),
(240, 0, 2, 2, 80, 4, 3, '---', '2021-11-16 11:26:30', 'Generado por Compra Rapida', 0, '100199', '1', '2021-11-16 11:26:30', 'factura', 'FQ49-00000113', 'media/documentos/sin_foto.jpg', '2021-10-28', '', '2021-11-16 11:26:30', 2, '1637079990.1462'),
(241, 0, 2, 2, 14, 4, 3, '---', '2021-11-16 11:39:38', 'Generado por Compra Rapida', 0, '100200', '1', '2021-11-16 11:39:38', 'factura', 'F001-00002871', 'media/documentos/sin_foto.jpg', '2021-10-28', '', '2021-11-16 11:39:38', 2, '1637080778.2904'),
(242, 0, 2, 2, 62, 4, 3, '---', '2021-11-16 11:44:04', 'Generado por Compra Rapida', 0, '100201', '1', '2021-11-16 11:44:04', 'factura', 'FE02-00001221', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-16 11:44:04', 2, '1637081044.5795'),
(243, 0, 2, 2, 80, 4, 3, '---', '2021-11-16 12:41:19', 'Generado por Compra Rapida', 0, '100202', '1', '2021-11-16 12:41:19', 'factura', 'FS01-00003482', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-16 12:41:19', 2, '1637084479.5309'),
(244, 0, 2, 2, 82, 4, 3, '---', '2021-11-16 12:49:30', 'Generado por Compra Rapida', 0, '100203', '1', '2021-11-16 12:49:30', 'factura', 'F102-0000006219', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-16 12:49:30', 2, '1637084970.5669'),
(245, 0, 2, 2, 56, 4, 3, '---', '2021-11-16 12:51:35', 'Generado por Compra Rapida', 0, '100204', '1', '2021-11-16 12:51:35', 'factura', 'FE04-00003430', 'media/documentos/sin_foto.jpg', '2021-10-30', '', '2021-11-16 12:51:35', 2, '1637085095.253'),
(246, 0, 2, 2, 63, 4, 3, '---', '2021-11-16 12:53:03', 'Generado por Compra Rapida', 0, '100205', '1', '2021-11-16 12:53:03', 'factura', 'F101-00000581', 'media/documentos/sin_foto.jpg', '2021-10-30', '', '2021-11-16 12:53:03', 2, '1637085183.7677'),
(247, 0, 2, 2, 34, 4, 3, '---', '2021-11-16 12:55:12', 'Generado por Compra Rapida', 0, '100206', '1', '2021-11-16 12:55:12', 'factura', 'E001-2054', 'media/documentos/sin_foto.jpg', '2021-10-30', '', '2021-11-16 12:55:12', 2, '1637085312.2088'),
(248, 0, 2, 2, 14, 4, 3, '---', '2021-11-16 13:13:08', 'Generado por Compra Rapida', 0, '100207', '1', '2021-11-16 13:13:08', 'factura', 'F001-00000002', 'media/documentos/sin_foto.jpg', '2021-10-31', '', '2021-11-16 13:13:08', 2, '1637086388.7355'),
(249, 0, 2, 2, 60, 4, 3, '---', '2021-11-17 09:42:05', 'Generado por Compra Rapida', 0, '100208', '1', '2021-11-17 09:42:05', 'factura', 'FF02-5724', 'media/documentos/sin_foto.jpg', '2021-10-02', '', '2021-11-17 09:42:05', 2, '1637160125.2185'),
(250, 0, 2, 2, 84, 4, 3, '---', '2021-11-17 10:03:18', 'Generado por Compra Rapida', 0, '100209', '1', '2021-11-17 10:03:18', 'factura', 'F001-00008872', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-17 10:03:18', 2, '1637161398.803'),
(251, 0, 2, 2, 85, 4, 3, '---', '2021-11-17 10:18:26', 'Generado por Compra Rapida', 0, '100210', '1', '2021-11-17 10:18:26', 'factura', 'F001-00010312', 'media/documentos/sin_foto.jpg', '2021-10-12', '', '2021-11-17 10:18:26', 2, '1637162306.401'),
(252, 0, 10, 10, 81, 4, 3, '---', '2021-11-17 10:31:40', 'Generado por Compra Rapida', 0, '100211', '1', '2021-11-17 10:31:40', 'factura', 'F001-00023703', 'media/documentos/sin_foto.jpg', '2021-10-28', '', '2021-11-17 10:31:40', 10, '1637163100.2626'),
(253, 0, 2, 2, 86, 4, 3, '---', '2021-11-17 10:47:44', 'Generado por Compra Rapida', 0, '100212', '1', '2021-11-17 10:47:44', 'factura', 'FA01-00001038', 'media/documentos/sin_foto.jpg', '2021-10-20', '', '2021-11-17 10:47:44', 2, '1637164064.3862'),
(254, 0, 10, 10, 69, 4, 3, '---', '2021-11-17 10:56:00', 'Generado por Compra Rapida', 0, '100213', '1', '2021-11-17 10:56:00', 'factura', 'FF20-00061428', 'media/documentos/sin_foto.jpg', '2021-11-08', '', '2021-11-17 10:56:00', 10, '1637164560.0616'),
(255, 0, 10, 10, 45, 4, 3, '---', '2021-11-17 11:01:53', 'Generado por Compra Rapida', 0, '100214', '1', '2021-11-17 11:01:53', 'factura', 'FW31-000542776', 'media/documentos/sin_foto.jpg', '2021-11-01', '', '2021-11-17 11:01:53', 10, '1637164913.7639'),
(256, 0, 2, 2, 31, 4, 3, '---', '2021-11-17 11:14:50', 'Generado por Compra Rapida', 0, '100215', '1', '2021-11-17 11:14:50', 'factura', 'F001-00061390', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-17 11:14:50', 2, '1637165690.5987'),
(257, 0, 10, 10, 79, 4, 3, '---', '2021-11-17 11:15:52', 'Generado por Compra Rapida', 0, '100216', '1', '2021-11-17 11:15:52', 'factura', 'F200-00028621', 'media/documentos/sin_foto.jpg', '2021-11-01', '', '2021-11-17 11:15:52', 10, '1637165752.1414'),
(258, 0, 2, 2, 87, 4, 3, '---', '2021-11-17 11:26:22', 'Generado por Compra Rapida', 0, '100217', '1', '2021-11-17 11:26:22', 'factura', 'FL02-976', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-17 11:26:22', 2, '1637166382.3718'),
(259, 0, 2, 2, 31, 4, 3, '---', '2021-11-17 12:42:54', 'Generado por Compra Rapida', 0, '100218', '1', '2021-11-17 12:42:54', 'factura', 'F001-00061647', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-17 12:42:54', 2, '1637170974.6537'),
(260, 0, 2, 2, 85, 4, 3, '---', '2021-11-17 12:45:22', 'Generado por Compra Rapida', 0, '100219', '1', '2021-11-17 12:45:22', 'factura', 'F001-00010485', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-17 12:45:22', 2, '1637171122.4186'),
(261, 0, 2, 2, 89, 4, 3, '---', '2021-11-17 12:58:41', 'Generado por Compra Rapida', 0, '100220', '1', '2021-11-17 12:58:41', 'factura', 'F010-0204041', 'media/documentos/sin_foto.jpg', '2021-10-27', '', '2021-11-17 12:58:41', 2, '1637171921.6093'),
(262, 0, 10, 10, 88, 4, 3, '---', '2021-11-17 13:11:37', 'Generado por Compra Rapida', 0, '100221', '1', '2021-11-17 13:11:37', 'factura', 'F001-00000749', 'media/documentos/sin_foto.jpg', '2021-11-01', '', '2021-11-17 13:11:37', 10, '1637172697.5824'),
(263, 0, 10, 10, 81, 4, 3, '---', '2021-11-17 13:34:04', 'Generado por Compra Rapida', 0, '100222', '1', '2021-11-17 13:34:04', 'factura', 'F001-00023826', 'media/documentos/sin_foto.jpg', '2021-11-03', '', '2021-11-17 13:34:04', 10, '1637174044.9826'),
(264, 0, 2, 2, 84, 4, 3, '---', '2021-11-17 13:51:17', 'Generado por Compra Rapida', 0, '100223', '1', '2021-11-17 13:51:17', 'factura', 'F001-00008875', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-17 13:51:17', 2, '1637175077.2921'),
(265, 0, 2, 2, 31, 4, 3, '---', '2021-11-17 13:58:38', 'Generado por Compra Rapida', 0, '100224', '1', '2021-11-17 13:58:38', 'factura', 'F001-00061355', 'media/documentos/sin_foto.jpg', '2021-10-18', '', '2021-11-17 13:58:38', 2, '1637175518.3979'),
(266, 0, 2, 2, 81, 4, 3, '---', '2021-11-17 14:14:38', 'Generado por Compra Rapida', 0, '100225', '1', '2021-11-17 14:14:38', 'factura', 'F001-00023443', 'media/documentos/sin_foto.jpg', '2021-10-19', '', '2021-11-17 14:14:38', 2, '1637176478.9774'),
(267, 0, 10, 10, 93, 4, 3, '---', '2021-11-17 14:40:05', 'Generado por Compra Rapida', 0, '100226', '1', '2021-11-17 14:40:05', 'factura', 'F001-00062059', 'media/documentos/sin_foto.jpg', '2021-11-08', '', '2021-11-17 14:40:05', 10, '1637178005.88'),
(268, 0, 10, 10, 35, 4, 3, '---', '2021-11-17 14:58:09', 'Generado por Compra Rapida', 0, '100227', '1', '2021-11-17 14:58:09', 'factura', 'FE02-00052124', 'media/documentos/sin_foto.jpg', '2021-11-09', '', '2021-11-17 14:58:09', 10, '1637179089.1138'),
(269, 0, 10, 10, 93, 4, 3, '---', '2021-11-17 15:20:55', 'Generado por Compra Rapida', 0, '100228', '1', '2021-11-17 15:20:55', 'factura', 'F001-00062102', 'media/documentos/sin_foto.jpg', '2021-11-09', '', '2021-11-17 15:20:55', 10, '1637180455.5477'),
(270, 0, 2, 2, 90, 4, 3, '---', '2021-11-18 11:27:26', 'Generado por Compra Rapida', 0, '100229', '0', '2021-11-18 11:27:26', 'factura', '0001-0000128', 'media/documentos/sin_foto.jpg', '2021-10-11', '', '2021-11-18 11:27:26', 2, '1637252846.0199'),
(271, 0, 2, 2, 81, 4, 3, '---', '2021-11-18 11:42:22', 'Generado por Compra Rapida', 0, '100229', '1', '2021-11-18 11:42:22', 'factura', 'F001-00023763', 'media/documentos/sin_foto.jpg', '2021-10-29', '', '2021-11-18 11:42:22', 2, '1637253742.2706'),
(272, 0, 2, 2, 81, 4, 3, '---', '2021-11-18 12:55:44', 'Generado por Compra Rapida', 0, '100230', '1', '2021-11-18 12:55:44', 'factura', 'F001-00023628', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-18 12:55:44', 2, '1637258144.2649'),
(273, 0, 2, 2, 81, 4, 3, '---', '2021-11-18 13:03:27', 'Generado por Compra Rapida', 0, '100231', '1', '2021-11-18 13:03:27', 'factura', 'F001-00023631', 'media/documentos/sin_foto.jpg', '2021-10-25', '', '2021-11-18 13:03:27', 2, '1637258607.8348'),
(274, 0, 10, 10, 87, 4, 3, '---', '2021-11-18 15:46:43', 'Generado por Compra Rapida', 0, '100232', '1', '2021-11-18 15:46:43', 'factura', 'FL02-1329', 'media/documentos/sin_foto.jpg', '2021-11-11', '', '2021-11-18 15:46:43', 10, '1637268403.2822'),
(275, 0, 10, 10, 94, 4, 3, '---', '2021-11-19 13:14:35', 'Generado por Compra Rapida', 0, '100233', '1', '2021-11-19 13:14:35', 'factura', 'F069-00002114', 'media/documentos/sin_foto.jpg', '2021-11-11', '', '2021-11-19 13:14:35', 10, '1637345675.2415'),
(276, 0, 10, 10, 39, 4, 3, '---', '2021-11-19 13:16:41', 'Generado por Compra Rapida', 0, '100234', '1', '2021-11-19 13:16:41', 'factura', 'F002-63303', 'media/documentos/sin_foto.jpg', '2021-11-13', '', '2021-11-19 13:16:41', 10, '1637345801.2754'),
(277, 0, 2, 2, 95, 4, 3, '---', '2021-11-19 15:37:18', 'Generado por Compra Rapida', 0, '100235', '1', '2021-11-19 15:37:18', 'boleta', 'F002-00008849', 'media/documentos/sin_foto.jpg', '2021-10-01', '', '2021-11-19 15:37:18', 2, '1637354238.4273'),
(278, 0, 10, 10, 27, 4, 3, '---', '2021-11-23 12:45:29', 'Generado por Compra Rapida', 0, '100236', '1', '2021-11-23 12:45:29', 'factura', 'F001-00011668', 'media/documentos/sin_foto.jpg', '2021-11-22', '', '2021-11-23 12:45:29', 10, '1637689529.8011'),
(280, 0, 10, 10, 15, 4, 3, '---', '2021-11-23 13:59:49', 'Generado por Compra Rapida', 0, '100237', '1', '2021-11-23 13:59:49', 'factura', 'F001-00000191', 'media/documentos/sin_foto.jpg', '2021-11-21', '', '2021-11-23 13:59:49', 10, '1637693989.1326'),
(281, 0, 10, 10, 14, 4, 3, '---', '2021-11-23 14:13:52', 'Generado por Compra Rapida', 0, '100238', '1', '2021-11-23 14:13:52', 'factura', 'F001-00003142', 'media/documentos/sin_foto.jpg', '2021-11-23', '', '2021-11-23 14:13:52', 10, '1637694832.5111'),
(282, 0, 10, 10, 15, 4, 3, '---', '2021-11-23 14:22:48', 'Generado por Compra Rapida', 0, '100239', '1', '2021-11-23 14:22:48', 'factura', 'F001-00000209', 'media/documentos/sin_foto.jpg', '2021-11-23', '', '2021-11-23 14:22:48', 10, '1637695368.5996'),
(283, 0, 10, 10, 14, 4, 3, '---', '2021-11-23 14:39:06', 'Generado por Compra Rapida', 0, '100240', '1', '2021-11-23 14:39:06', 'boleta', 'F001-00003125', 'media/documentos/sin_foto.jpg', '2021-11-22', '', '2021-11-23 14:39:06', 10, '1637696346.9597'),
(284, 0, 10, 10, 96, 4, 3, '---', '2021-11-23 14:44:36', 'Generado por Compra Rapida', 0, '100241', '1', '2021-11-23 14:44:36', 'factura', 'F004-00005384', 'media/documentos/sin_foto.jpg', '2021-11-23', '', '2021-11-23 14:44:36', 10, '1637696676.762'),
(285, 0, 10, 10, 27, 4, 3, '---', '2021-11-23 14:47:34', 'Generado por Compra Rapida', 0, '100242', '1', '2021-11-23 14:47:34', 'factura', 'F001-00011684', 'media/documentos/sin_foto.jpg', '2021-11-23', '', '2021-11-23 14:47:34', 10, '1637696854.4616'),
(286, 0, 10, 10, 16, 4, 3, '---', '2021-11-23 14:49:15', 'Generado por Compra Rapida', 0, '100243', '1', '2021-11-23 14:49:15', 'factura', '0002-0005443', 'media/documentos/sin_foto.jpg', '2021-11-22', '', '2021-11-23 14:49:15', 10, '1637696955.8722'),
(287, 0, 10, 10, 16, 4, 3, '---', '2021-11-23 14:50:36', 'Generado por Compra Rapida', 0, '100244', '1', '2021-11-23 14:50:36', 'factura', '0002-0005446', 'media/documentos/sin_foto.jpg', '2021-11-23', '', '2021-11-23 14:50:36', 10, '1637697036.0159'),
(288, 0, 2, 2, 19, 4, 3, '---', '2021-11-24 11:34:16', 'Generado por Compra Rapida', 0, '100245', '1', '2021-11-24 11:34:16', 'factura', 'FA01-00001180', 'media/documentos/sin_foto.jpg', '2021-11-22', '', '2021-11-24 11:34:16', 2, '1637771656.0364'),
(290, 0, 2, 2, 14, 4, 3, '---', '2021-11-24 12:03:04', 'Generado por Compra Rapida', 0, '100246', '1', '2021-11-24 12:03:04', 'factura', 'F001-00003152', 'media/documentos/sin_foto.jpg', '2021-11-24', '', '2021-11-24 12:03:04', 2, '1637773384.3876'),
(291, 0, 2, 2, 27, 4, 3, '---', '2021-11-24 12:06:40', 'Generado por Compra Rapida', 0, '100247', '1', '2021-11-24 12:06:40', 'factura', 'F001-00011707', 'media/documentos/sin_foto.jpg', '2021-11-24', '', '2021-11-24 12:06:40', 2, '1637773600.6361'),
(292, 0, 2, 2, 16, 4, 3, '---', '2021-11-24 12:09:20', 'Generado por Compra Rapida', 0, '100248', '1', '2021-11-24 12:09:20', 'factura', '00002-0005447', 'media/documentos/sin_foto.jpg', '2021-11-24', '', '2021-11-24 12:09:20', 2, '1637773760.037'),
(293, 0, 2, 2, 14, 4, 3, '---', '2021-11-24 12:56:15', 'Generado por Compra Rapida', 0, '100249', '1', '2021-11-24 12:56:15', 'factura', 'F001-00003005', 'media/documentos/sin_foto.jpg', '2021-11-10', '', '2021-11-24 12:56:15', 2, '1637776575.6284'),
(295, 0, 2, 2, 15, 4, 3, '---', '2021-11-24 13:02:03', 'Generado por Compra Rapida', 0, '100250', '1', '2021-11-24 13:02:03', 'factura', 'F001-00000154', 'media/documentos/sin_foto.jpg', '2021-11-16', '', '2021-11-24 13:02:03', 2, '1637776923.5552'),
(296, 0, 2, 2, 14, 4, 3, '---', '2021-11-24 13:46:36', 'Generado por Compra Rapida', 0, '100251', '1', '2021-11-24 13:46:36', 'factura', 'F001-00003086', 'media/documentos/sin_foto.jpg', '2021-11-18', '', '2021-11-24 13:46:36', 2, '1637779596.9272'),
(298, 0, 2, 2, 19, 4, 3, '---', '2021-11-24 13:57:15', 'Generado por Compra Rapida', 0, '100252', '1', '2021-11-24 13:57:15', 'factura', 'FA01-00001146', 'media/documentos/sin_foto.jpg', '2021-11-15', '', '2021-11-24 13:57:15', 2, '1637780235.3094'),
(299, 0, 2, 2, 19, 4, 3, '---', '2021-11-24 14:06:43', 'Generado por Compra Rapida', 0, '100253', '1', '2021-11-24 14:06:43', 'factura', 'FA01-00001154', 'media/documentos/sin_foto.jpg', '2021-11-17', '', '2021-11-24 14:06:43', 2, '1637780803.6669'),
(300, 0, 2, 2, 15, 4, 3, '---', '2021-11-24 14:12:54', 'Generado por Compra Rapida', 0, '100254', '1', '2021-11-24 14:12:54', 'factura', 'F001-00000165', 'media/documentos/sin_foto.jpg', '2021-11-17', '', '2021-11-24 14:12:54', 2, '1637781174.5551'),
(302, 0, 2, 2, 14, 4, 3, '---', '2021-11-24 14:52:20', 'Generado por Compra Rapida', 0, '100255', '1', '2021-11-24 14:52:20', 'factura', 'F001-00003048', 'media/documentos/sin_foto.jpg', '2021-11-14', '', '2021-11-24 14:52:20', 2, '1637783540.6693'),
(303, 0, 2, 2, 15, 4, 3, '---', '2021-11-24 15:12:21', 'Generado por Compra Rapida', 0, '100256', '1', '2021-11-24 15:12:21', 'factura', 'F001-00000150', 'media/documentos/sin_foto.jpg', '2021-11-15', '', '2021-11-24 15:12:21', 2, '1637784741.1258'),
(304, 0, 2, 2, 39, 4, 3, '---', '2021-11-24 15:24:36', 'Generado por Compra Rapida', 0, '100257', '1', '2021-11-24 15:24:36', 'factura', 'F001-20081', 'media/documentos/sin_foto.jpg', '2021-11-17', '', '2021-11-24 15:24:36', 2, '1637785476.6178'),
(305, 0, 2, 2, 19, 4, 3, '---', '2021-11-24 15:39:49', 'Generado por Compra Rapida', 0, '100258', '1', '2021-11-24 15:39:49', 'factura', 'FA01-00001152', 'media/documentos/sin_foto.jpg', '2021-11-16', '', '2021-11-24 15:39:49', 2, '1637786389.2022'),
(306, 0, 2, 2, 15, 4, 3, '---', '2021-11-24 16:06:51', 'Generado por Compra Rapida', 0, '100259', '1', '2021-11-24 16:06:51', 'factura', 'F001-00000168', 'media/documentos/sin_foto.jpg', '2021-11-17', '', '2021-11-24 16:06:51', 2, '1637788011.2582'),
(307, 0, 10, 10, 15, 4, 3, '---', '2021-11-26 10:31:05', 'Generado por Compra Rapida', 0, '100260', '1', '2021-11-26 10:31:05', 'factura', 'F001-00000216', 'media/documentos/sin_foto.jpg', '2021-11-24', '', '2021-11-26 10:31:05', 10, '1637940665.369'),
(308, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 10:34:47', 'Generado por Compra Rapida', 0, '100261', '1', '2021-11-26 10:34:47', 'factura', 'F001-00003162', 'media/documentos/sin_foto.jpg', '2021-11-25', '', '2021-11-26 10:34:47', 10, '1637940887.296'),
(309, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 10:41:08', 'Generado por Compra Rapida', 0, '100262', '1', '2021-11-26 10:41:08', 'factura', 'F001-00003163', 'media/documentos/sin_foto.jpg', '2021-11-25', '', '2021-11-26 10:41:08', 10, '1637941268.8055'),
(310, 0, 10, 10, 15, 4, 3, '---', '2021-11-26 10:45:34', 'Generado por Compra Rapida', 0, '100263', '1', '2021-11-26 10:45:34', 'factura', 'F001-00000223', 'media/documentos/sin_foto.jpg', '2021-11-25', '', '2021-11-26 10:45:34', 10, '1637941534.0484'),
(311, 0, 10, 10, 16, 4, 3, '---', '2021-11-26 10:48:57', 'Generado por Compra Rapida', 0, '100264', '1', '2021-11-26 10:48:57', 'factura', '0002-0005448', 'media/documentos/sin_foto.jpg', '2021-11-25', '', '2021-11-26 10:48:57', 10, '1637941737.5696'),
(312, 0, 10, 10, 19, 4, 3, '---', '2021-11-26 10:54:57', 'Generado por Compra Rapida', 0, '100265', '1', '2021-11-26 10:54:57', 'factura', 'FA01-00001141', 'media/documentos/sin_foto.jpg', '2021-11-13', '', '2021-11-26 10:54:57', 10, '1637942097.8458'),
(313, 0, 10, 10, 15, 4, 3, '---', '2021-11-26 10:58:20', 'Generado por Compra Rapida', 0, '100266', '1', '2021-11-26 10:58:20', 'factura', 'F001-00000143', 'media/documentos/sin_foto.jpg', '2021-11-14', '', '2021-11-26 10:58:20', 10, '1637942300.2863'),
(314, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 12:01:47', 'Generado por Compra Rapida', 0, '100267', '1', '2021-11-26 12:01:47', 'factura', 'F001-00003172', 'media/documentos/sin_foto.jpg', '2021-11-26', '', '2021-11-26 12:01:47', 10, '1637946107.2234'),
(315, 0, 10, 10, 15, 4, 3, '---', '2021-11-26 13:26:47', 'Generado por Compra Rapida', 0, '100268', '1', '2021-11-26 13:26:47', 'factura', 'F001-00000230', 'media/documentos/sin_foto.jpg', '2021-11-26', '', '2021-11-26 13:26:47', 10, '1637951207.178'),
(316, 0, 10, 10, 16, 4, 3, '---', '2021-11-26 13:28:32', 'Generado por Compra Rapida', 0, '100269', '1', '2021-11-26 13:28:32', 'factura', '0002-0005450', 'media/documentos/sin_foto.jpg', '2021-11-26', '', '2021-11-26 13:28:32', 10, '1637951312.4293'),
(317, 0, 10, 10, 19, 4, 3, '---', '2021-11-26 13:46:41', 'Generado por Compra Rapida', 0, '100270', '1', '2021-11-26 13:46:41', 'factura', 'FA01-00001128', 'media/documentos/sin_foto.jpg', '2021-11-11', '', '2021-11-26 13:46:41', 10, '1637952401.8829'),
(318, 0, 10, 10, 19, 4, 3, '---', '2021-11-26 13:48:49', 'Generado por Compra Rapida', 0, '100271', '1', '2021-11-26 13:48:49', 'factura', 'FA01-00001145', 'media/documentos/sin_foto.jpg', '2021-11-14', '', '2021-11-26 13:48:49', 10, '1637952529.1777'),
(319, 0, 10, 10, 62, 4, 3, '---', '2021-11-26 13:57:52', 'Generado por Compra Rapida', 0, '100272', '1', '2021-11-26 13:57:52', 'factura', 'FF08-00000462', 'media/documentos/sin_foto.jpg', '2021-11-13', '', '2021-11-26 13:57:52', 10, '1637953072.2775'),
(320, 0, 10, 10, 95, 4, 3, '---', '2021-11-26 14:06:26', 'Generado por Compra Rapida', 0, '100273', '1', '2021-11-26 14:06:26', 'factura', 'F002-00009510', 'media/documentos/sin_foto.jpg', '2021-11-18', '', '2021-11-26 14:06:26', 10, '1637953586.0576'),
(321, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 14:16:56', 'Generado por Compra Rapida', 0, '100274', '1', '2021-11-26 14:16:56', 'factura', 'F001-00003077', 'media/documentos/sin_foto.jpg', '2021-11-17', '', '2021-11-26 14:16:56', 10, '1637954216.3904'),
(322, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 14:42:00', 'Generado por Compra Rapida', 0, '100275', '1', '2021-11-26 14:42:00', 'factura', 'F001-00003056', 'media/documentos/sin_foto.jpg', '2021-11-15', '', '2021-11-26 14:42:00', 10, '1637955720.8156'),
(323, 0, 10, 10, 16, 4, 3, '---', '2021-11-26 14:44:57', 'Generado por Compra Rapida', 0, '100276', '1', '2021-11-26 14:44:57', 'factura', '0002-00005426', 'media/documentos/sin_foto.jpg', '2021-11-14', '', '2021-11-26 14:44:57', 10, '1637955897.2476'),
(324, 0, 10, 10, 16, 4, 3, '---', '2021-11-26 14:46:04', 'Generado por Compra Rapida', 0, '100277', '1', '2021-11-26 14:46:04', 'factura', '0002-0005433', 'media/documentos/sin_foto.jpg', '2021-11-16', '', '2021-11-26 14:46:04', 10, '1637955964.1061'),
(325, 0, 10, 10, 16, 4, 3, '---', '2021-11-26 14:47:00', 'Generado por Compra Rapida', 0, '100278', '1', '2021-11-26 14:47:00', 'factura', '0002-0005430', 'media/documentos/sin_foto.jpg', '2021-11-15', '', '2021-11-26 14:47:00', 10, '1637956020.8811'),
(326, 0, 10, 10, 15, 4, 3, '---', '2021-11-26 15:45:35', 'Generado por Compra Rapida', 0, '100279', '1', '2021-11-26 15:45:35', 'factura', 'F001-00000182', 'media/documentos/sin_foto.jpg', '2021-11-20', '', '2021-11-26 15:45:35', 10, '1637959535.8651'),
(327, 0, 10, 10, 19, 4, 3, '---', '2021-11-26 15:47:33', 'Generado por Compra Rapida', 0, '100280', '1', '2021-11-26 15:47:33', 'factura', 'FA01-00001188', 'media/documentos/sin_foto.jpg', '2021-11-24', '', '2021-11-26 15:47:33', 10, '1637959653.5214'),
(328, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 15:56:55', 'Generado por Compra Rapida', 0, '100281', '1', '2021-11-26 15:56:55', 'factura', 'F001-00003105', 'media/documentos/sin_foto.jpg', '2021-11-20', '', '2021-11-26 15:56:55', 10, '1637960215.8365'),
(329, 0, 10, 10, 97, 4, 3, '---', '2021-11-26 16:10:05', 'Generado por Compra Rapida', 0, '100282', '1', '2021-11-26 16:10:05', 'factura', '000001', 'media/documentos/sin_foto.jpg', '2021-11-20', '', '2021-11-26 16:10:05', 10, '1637961005.9704'),
(330, 0, 10, 10, 13, 4, 3, '---', '2021-11-26 16:13:09', 'Generado por Compra Rapida', 0, '100283', '1', '2021-11-26 16:13:09', 'factura', 'F001-3366', 'media/documentos/sin_foto.jpg', '2021-11-21', '', '2021-11-26 16:13:09', 10, '1637961189.4067'),
(331, 0, 10, 10, 14, 4, 3, '---', '2021-11-26 16:20:45', 'Generado por Compra Rapida', 0, '100284', '1', '2021-11-26 16:20:45', 'factura', 'F001-00003117', 'media/documentos/sin_foto.jpg', '2021-11-21', '', '2021-11-26 16:20:45', 10, '1637961645.3312'),
(332, 0, 10, 10, 97, 4, 3, '---', '2021-11-26 16:32:31', 'Generado por Compra Rapida', 0, '100285', '1', '2021-11-26 16:32:31', 'guia_remision', 'N°000002', 'media/documentos/sin_foto.jpg', '2021-11-21', '', '2021-11-26 16:32:31', 10, '1637962351.421'),
(333, 0, 10, 10, 27, 4, 3, '---', '2021-11-27 10:30:31', 'Generado por Compra Rapida', 0, '100286', '1', '2021-11-27 10:30:31', 'factura', 'F001-00011627', 'media/documentos/sin_foto.jpg', '2021-11-19', '', '2021-11-27 10:30:31', 10, '1638027031.4731'),
(334, 0, 10, 10, 14, 4, 3, '---', '2021-11-29 12:28:40', 'Generado por Compra Rapida', 0, '100287', '1', '2021-11-29 12:28:40', 'factura', 'F001-00003099', 'media/documentos/sin_foto.jpg', '2021-11-19', '', '2021-11-29 12:28:40', 10, '1638206920.0042'),
(337, 0, 10, 10, 15, 4, 3, '---', '2021-11-29 12:36:48', 'Generado por Compra Rapida', 0, '100288', '1', '2021-11-29 12:36:48', 'factura', 'F001-00000176', 'media/documentos/sin_foto.jpg', '2021-11-19', '', '2021-11-29 12:36:48', 10, '1638207408.6488'),
(338, 0, 10, 10, 19, 4, 3, '---', '2021-11-29 12:43:28', 'Generado por Compra Rapida', 0, '100289', '1', '2021-11-29 12:43:28', 'factura', 'FA01-00001156', 'media/documentos/sin_foto.jpg', '2021-11-18', '', '2021-11-29 12:43:28', 10, '1638207808.2473');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_gratis`
--

CREATE TABLE `pedidos_gratis` (
  `id_pedido_gratis` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pedido_gratis_numero` varchar(200) DEFAULT NULL,
  `pedido_gratis_nombre` varchar(20) DEFAULT NULL,
  `pedido_gratis_direccion` varchar(500) DEFAULT NULL,
  `pedido_gratis_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pedido_gratis_datetime` datetime DEFAULT NULL,
  `pedido_gratis_codigo` varchar(100) DEFAULT NULL,
  `pedido_gratis_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_gratis_detalles`
--

CREATE TABLE `pedidos_gratis_detalles` (
  `id_pedido_gratis_detalle` int(11) NOT NULL,
  `id_pedido_gratis` int(11) NOT NULL,
  `id_comanda_detalle` int(11) NOT NULL,
  `id_pedido_gratis_detalle_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_laboral`
--

CREATE TABLE `periodo_laboral` (
  `id_periodo` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `periodo_fechainicio` date NOT NULL,
  `periodo_fechafin` date NOT NULL,
  `periodo_fechafirma` date DEFAULT NULL,
  `periodo_sueldo` decimal(11,2) NOT NULL,
  `periodo_movilidad` decimal(11,2) DEFAULT NULL,
  `periodo_total` decimal(11,2) NOT NULL,
  `periodo_observa` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_estado` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `periodo_contrato` tinyint(1) DEFAULT NULL,
  `periodo_nro_contrato` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user_creacion` int(11) DEFAULT NULL,
  `id_user_aprobacion` int(11) DEFAULT NULL,
  `periodo_fecha_creacion` date DEFAULT NULL,
  `periodo_hora_creacion` time DEFAULT NULL,
  `periodo_bono` float(10,2) DEFAULT NULL,
  `perioido_ruc_centro_estudio` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_nombre_centro_estudio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_domicilio_centro_estudio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_dni_representante` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_nombre_representante` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_ciclo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_especialidad` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `periodo_laboral`
--

INSERT INTO `periodo_laboral` (`id_periodo`, `id_persona`, `id_contrato`, `id_departamento`, `id_sede`, `id_cargo`, `id_empresa`, `periodo_fechainicio`, `periodo_fechafin`, `periodo_fechafirma`, `periodo_sueldo`, `periodo_movilidad`, `periodo_total`, `periodo_observa`, `periodo_estado`, `periodo_contrato`, `periodo_nro_contrato`, `id_user_creacion`, `id_user_aprobacion`, `periodo_fecha_creacion`, `periodo_hora_creacion`, `periodo_bono`, `perioido_ruc_centro_estudio`, `periodo_nombre_centro_estudio`, `periodo_domicilio_centro_estudio`, `periodo_dni_representante`, `periodo_nombre_representante`, `periodo_ciclo`, `periodo_especialidad`) VALUES
(1, 4, 2, 2, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '12:48:56', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 5, 2, 1, 1, 3, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '12:58:15', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 6, 2, 3, 1, 4, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '13:03:55', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 7, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '13:08:57', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 8, 2, 3, 1, 4, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '13:32:46', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 9, 2, 3, 1, 4, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '14:05:59', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 10, 2, 3, 1, 4, 1, '2021-09-13', '2021-09-30', NULL, '500.00', '0.00', '500.00', NULL, '1', NULL, NULL, 2, 2, '2021-09-14', '14:18:34', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 12, 2, 1, 1, 3, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-15', '15:00:46', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 13, 2, 1, 1, 3, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-16', '12:04:42', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 14, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-01', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-16', '12:12:58', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 15, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-01', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-09-16', '12:16:33', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 16, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-16', '12:23:05', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 17, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-09-16', '12:28:29', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-16', '12:28:32', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 2, 1, 1, 1, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-09-16', '12:34:50', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 2, 1, 1, 3, 1, '2021-09-01', '2021-09-30', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-09-16', '12:43:39', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 11, 2, 3, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:09:48', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 11, 2, 3, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:09:54', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 4, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:10:53', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 4, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:11:08', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 4, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:12:04', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 7, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:14:10', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 7, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:14:54', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 14, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:16:36', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 15, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:18:42', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 16, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:20:29', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 17, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:21:41', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 17, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:21:50', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 18, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:23:40', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 6, 2, 1, 1, 1, 1, '2021-10-01', '2021-10-31', '2021-10-01', '930.00', '0.00', '930.00', NULL, '1', 1, '1', 10, 10, '2021-10-01', '13:25:27', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 8, 2, 3, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:28:40', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 19, 2, 1, 1, 3, 1, '2021-10-01', '2021-10-31', NULL, '900.00', '0.00', '900.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:29:53', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 5, 2, 1, 1, 3, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:31:03', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 13, 2, 1, 1, 3, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:34:17', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 9, 2, 1, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:35:49', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 10, 2, 3, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '500.00', '0.00', '500.00', NULL, '0', NULL, NULL, 10, NULL, '2021-10-01', '13:36:49', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 10, 2, 3, 1, 4, 1, '2021-10-01', '2021-10-31', NULL, '930.00', '0.00', '930.00', NULL, '1', NULL, NULL, 10, 10, '2021-10-01', '13:37:41', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `permiso_accion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permiso_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `id_opcion`, `permiso_accion`, `permiso_estado`) VALUES
(1, 1, 'validar_sesion', 1),
(2, 4, 'guardar_menu', 1),
(3, 6, 'configurar_relacion', 1),
(4, 7, 'guardar_opcion', 1),
(5, 7, 'agregar_permiso', 1),
(6, 7, 'eliminar_permiso', 1),
(7, 7, 'configurar_acceso', 1),
(8, 9, 'guardar_rol', 1),
(9, 10, 'gestionar_acceso_rol', 1),
(10, 12, 'guardar_nuevo_usuario', 1),
(11, 12, 'guardar_edicion_usuario', 1),
(12, 12, 'guardar_edicion_persona', 1),
(13, 12, 'restablecer_contrasenha', 1),
(14, 13, 'guardar_datos', 1),
(15, 14, 'guardar_usuario', 1),
(16, 15, 'guardar_contrasenha', 1),
(17, 16, 'guardar_negocio', 1),
(18, 16, 'editar_negocio', 1),
(19, 17, 'guardar_sucursal', 1),
(20, 17, 'editar_sucursal', 1),
(21, 18, 'guardar_usuario_sucursal', 1),
(22, 19, 'guardar_usuario_negocio', 1),
(23, 16, 'cambiar_estado_negocio', 1),
(24, 17, 'cambiar_estado_sucursal', 1),
(25, 19, 'cambiar_estado_usuario_negocio', 1),
(27, 18, 'cambiar_estado_usuariosucursal', 1),
(28, 20, 'guardar_categoria', 1),
(29, 21, 'guardar_recursos', 1),
(30, 21, 'listar_categoria_por_id', 1),
(31, 22, 'guardar_nuevo_proveedor', 1),
(32, 22, 'guardar_edicion_proveedor', 1),
(33, 22, 'eliminar_proveedor', 1),
(34, 23, 'listar_recursos_x_sucursal', 1),
(35, 23, 'guardar_orden', 1),
(36, 27, 'editar_orden', 1),
(37, 26, 'aprobar_orden', 1),
(38, 24, 'eliminar_orden', 1),
(39, 21, 'cambiar_estado_recurso', 1),
(40, 20, 'cambiar_estado_categoria', 1),
(41, 28, 'actualizar_recepcion', 1),
(42, 29, 'guardar_producto', 1),
(43, 29, 'editar_producto', 1),
(44, 29, 'listar_precios', 1),
(45, 29, 'agregar_nuevo_precio', 1),
(46, 29, 'cambiar_estado_producto', 1),
(47, 31, 'guardar_nuevo_mesa', 1),
(48, 31, 'guardar_edicion_mesa', 1),
(49, 31, 'eliminar_mesa', 1),
(50, 31, 'listar_negocio_por_id', 1),
(51, 32, 'guardar_nuevo_almacen', 1),
(52, 32, 'guardar_edicion_almacen', 1),
(53, 32, 'eliminar_almacen', 1),
(54, 32, 'listar_negocio_por_id', 1),
(55, 30, 'listar_precio_producto', 1),
(56, 33, 'guardar_comanda', 1),
(57, 35, 'cambiar_estado_pedido', 1),
(58, 33, 'ver_productos', 1),
(60, 37, 'guardar_edicion_receta', 1),
(61, 37, 'eliminar_receta', 1),
(62, 38, 'guardar_nuevo_detalle_receta', 1),
(63, 38, 'guardar_edicion_detalle_receta', 1),
(64, 38, 'eliminar_detalle_receta', 1),
(65, 37, 'guardar_nuevo_receta', 1),
(67, 41, 'guardar_cliente', 1),
(68, 41, 'guardar_edicion_cliente', 1),
(69, 41, 'eliminar_cliente', 1),
(70, 40, 'guardar_venta', 1),
(71, 38, 'listar_unidad_precio', 1),
(72, 21, 'jalar_categorias', 1),
(73, 40, 'ver_productos_nuevo', 1),
(74, 40, 'guardar_comanda_nuevo', 1),
(75, 40, 'eliminar_comanda_detalle', 1),
(76, 40, 'cambiar_mesa', 1),
(77, 40, 'buscar_cliente', 1),
(78, 31, 'listar_negocio_por_id_editar', 1),
(79, 40, 'cambiar_cantidad_personas', 1),
(80, 42, 'jalar_recursos', 1),
(81, 42, 'guardar_nueva_conversion', 1),
(82, 38, 'jalar_valor_preparacion', 1),
(83, 38, 'guardar_sub_receta', 1),
(84, 43, 'guardar_egresos', 1),
(85, 43, 'eliminar_egreso', 1),
(86, 43, 'editar_egresos', 1),
(87, 45, 'guardar_insumos', 1),
(88, 45, 'editar_insumos', 1),
(89, 30, 'consultar_serie', 1),
(90, 46, 'guardar_delivery', 1),
(91, 39, 'crear_xml_enviar_sunat', 1),
(92, 53, 'crear_enviar_resumen_sunat', 1),
(93, 40, 'ticket_venta', 1),
(94, 40, 'ticket_pedido', 1),
(95, 34, 'agregar_grupo', 1),
(96, 46, 'buscar_cliente_delivery', 1),
(97, 61, 'buscar_cliente_delivery_pagos', 1),
(98, 52, 'comunicacion_baja', 1),
(99, 39, 'anular_boleta_cambiarestado', 1),
(100, 41, 'guardar_cliente_nuevo', 1),
(101, 48, 'eliminar_comanda_delivery', 1),
(102, 65, 'tipo_nota_descripcion', 1),
(103, 65, 'consultar_serie', 1),
(104, 65, 'guardar_nota', 1),
(105, 52, 'consultar_comprobante', 1),
(106, 41, 'obtener_datos_x_dni', 1),
(107, 41, 'obtener_datos_x_ruc', 1),
(108, 66, 'guardar_categoria', 1),
(109, 66, 'editar_categoria', 1),
(110, 66, 'eliminar_categoria', 1),
(111, 21, 'editar_stock_minimo', 1),
(112, 22, 'obtener_datos_x_dni', 1),
(113, 22, 'obtener_datos_x_ruc', 1),
(114, 42, 'eliminar_conversion', 1),
(115, 38, 'eliminar_sub_receta', 1),
(116, 71, 'guardar_memo', 1),
(117, 73, 'editar_memo', 1),
(118, 73, 'aprobar_memo', 1),
(120, 73, 'eliminar_memo', 1),
(121, 70, 'guardar_personal', 1),
(122, 70, 'eliminar_personal', 1),
(123, 77, 'guardar_periodo', 1),
(124, 78, 'guardar_archivo', 1),
(125, 78, 'eliminar_documento', 1),
(126, 79, 'eliminar_feriado', 1),
(127, 79, 'agregar_feriado', 1),
(128, 80, 'guardar_asistencia_proyectada', 1),
(129, 80, 'registrar_asistencia_proyectad', 1),
(130, 76, 'aprobar_periodo', 1),
(131, 84, 'aprobar_asistencia', 1),
(132, 84, 'guardar_asistencia', 1),
(133, 84, 'registrar_asistencia', 1),
(134, 89, 'generar_contrato', 1),
(135, 76, 'eliminar_periodo', 1),
(137, 12, 'guardar_departamento', 1),
(138, 12, 'eliminar_departamento', 1),
(139, 12, 'eliminar_cargo', 1),
(140, 12, 'guardar_cargo', 1),
(141, 94, 'guardar_turno', 1),
(142, 90, 'guardar_horas', 1),
(143, 93, 'guardar_compra_rapida', 1),
(144, 2, 'guardar_apertura_caja', 1),
(145, 29, 'consultar_datos', 1),
(146, 101, 'agregar_turnos', 1),
(147, 101, 'agregar_turnos_editado', 1),
(148, 84, 'registrar_salida', 1),
(149, 30, 'habilitar_mesa', 1),
(150, 105, 'addproduct', 1),
(151, 105, 'eliminar_producto', 1),
(152, 105, 'search_by_barcode', 1),
(153, 105, 'consultar_serie', 1),
(154, 105, 'tipo_nota_descripcion', 1),
(155, 105, 'ticket_electronico', 1),
(156, 105, 'editar_cantidad_tabla', 1),
(157, 105, 'guardar_venta_market', 1),
(158, 40, 'cambiar_comanda_detalle_cantid', 1),
(159, 30, 'guardar_reserva', 1),
(160, 30, 'habilitar_reserva', 1),
(161, 30, 'eliminar_reserva', 1),
(162, 2, 'guardar_cierre_caja', 1),
(163, 29, 'guardar_familia', 1),
(164, 32, 'guardar_salida', 1),
(165, 29, 'eliminar_familia', 1),
(166, 95, 'eliminar_orden_cr', 1),
(167, 109, 'guardar_recursos', 1),
(168, 109, 'listar_categoria_por_id', 1),
(169, 109, 'cambiar_estado_recurso', 1),
(170, 109, 'jalar_categorias', 1),
(171, 109, 'editar_stock_minimo', 1),
(172, 110, 'guardar_categoria', 1),
(173, 110, 'cambiar_estado_categoria', 1),
(174, 93, 'recargar_recursos', 1),
(175, 55, 'consultar_ticket_resumen', 1),
(176, 40, 'ticket_comanda', 1),
(177, 41, 'guardar_puntos', 1),
(178, 113, 'guardar_comanda', 1),
(179, 113, 'guardar_comanda_nuevo', 1),
(180, 113, 'guardar_delivery', 1),
(181, 113, 'guardar_venta', 1),
(182, 113, 'ticket_pedido', 1),
(183, 113, 'ticket_comanda', 1),
(184, 113, 'ticket_venta', 1),
(185, 113, 'ticket_venta_delivery', 1),
(186, 46, 'guardar_delivery_venta', 1),
(187, 46, 'ver_productos_x_delivery', 1),
(188, 62, 'cambiar_estado_comanda_deliver', 1),
(189, 30, 'guardar_cambio', 1),
(190, 30, 'mesa_visible', 1),
(191, 106, 'ticket_reporte', 1),
(192, 1, 'validar_sesion_app', 1),
(193, 31, 'listar_mesas', 1),
(194, 33, 'listar_familias_productos', 1),
(195, 106, 'ticket_productos', 1),
(196, 40, 'transferir_pedido', 1),
(197, 114, 'guardar_gasto_personal', 1),
(198, 114, 'guardar_personal', 1),
(199, 114, 'guardar_gasto_personal_editado', 1),
(200, 114, 'eliminar_gasto_personal', 1),
(201, 52, 'enviar_venta_correo', 1),
(202, 39, 'enviar_venta_correo', 1),
(203, 29, 'sumar_stock_nuevo', 1),
(204, 103, 'estado_paguito', 1),
(205, 39, 'cambiarestado_enviado', 1),
(206, 40, 'transferir_mesa_x_pedido', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `persona_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `persona_apellido_paterno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `persona_apellido_materno` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_tipo_documento` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_dni` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `persona_nacionalidad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_estado_civil` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_direccion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_discapacidad` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_job` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_nacimiento` date DEFAULT NULL,
  `persona_sexo` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_telefono` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_telefono_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_foto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_hijos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_departamento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_provincia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_distrito` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_adicional` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_afp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_cuspp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_afiliac` date DEFAULT NULL,
  `persona_blacklist` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_bank` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_number_account` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_bank_alt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `persona_number_account_alt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_bank_cts` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_account_cts` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_cv` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persona_empleado` tinyint(1) DEFAULT NULL,
  `persona_creacion` datetime NOT NULL,
  `persona_modificacion` datetime NOT NULL,
  `person_codigo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `persona_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_empresa`, `persona_nombre`, `persona_apellido_paterno`, `persona_apellido_materno`, `persona_email`, `persona_tipo_documento`, `persona_dni`, `persona_nacionalidad`, `persona_estado_civil`, `persona_direccion`, `persona_discapacidad`, `persona_job`, `persona_nacimiento`, `persona_sexo`, `persona_telefono`, `persona_telefono_2`, `persona_foto`, `persona_hijos`, `persona_departamento`, `persona_provincia`, `persona_distrito`, `persona_adicional`, `persona_afp`, `persona_cuspp`, `persona_afiliac`, `persona_blacklist`, `persona_bank`, `persona_number_account`, `persona_bank_alt`, `persona_number_account_alt`, `persona_bank_cts`, `persona_account_cts`, `persona_cv`, `persona_empleado`, `persona_creacion`, `persona_modificacion`, `person_codigo`, `persona_estado`) VALUES
(1, 1, 'César José', 'Ruiz', 'Reategui', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', NULL, 0, '2020-09-17 00:00:00', '2020-09-17 00:00:00', '010101010101', 1),
(2, 1, 'Conchita', 'Admin', 'Restobar', NULL, NULL, '71985648', NULL, NULL, NULL, NULL, NULL, '1996-06-14', NULL, '965874123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', NULL, 1, '2020-10-27 18:29:10', '2020-10-27 18:29:10', '1603841350.1786', 1),
(3, 0, 'Supervisor', 'Restobar', 'Conchita', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-06 10:59:12', '2021-09-06 10:59:12', '1630943952.0856', 0),
(4, 1, 'SERGIO ', 'GONZALES', 'ISUIZA', '', 'DNI', '72772352', 'PERUANA', 'SOLTERO', 'CABO LOPEZ  - PARTICIPACION CUADRA 14', 'NINGUNO', 'Secundaria Completa', '1999-10-03', 'M', '954545318', '929418867', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Belén', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-14 12:46:47', '2021-09-14 12:46:47', '1631641607.2695', 1),
(5, 1, 'LUCIA ', 'NOTENO', 'COQUINCHE', 'LUCIANOTENOCOCHINCHE@GMAIL.COM', 'DNI', '61680502', 'PERUANA', 'SOLTERO', 'JUAN PABLO DE LA LUZ. PSJ LOS PALMITOS MZ:9 LOTE 46', 'NINGUNO', 'Secundaria Completa', '2001-03-17', 'F', '959475012', '918716155', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-14 12:57:27', '2021-09-14 12:57:27', '1631642247.0552', 1),
(6, 1, 'MILAGROS', 'FACHIN ', 'LOZANO', 'MILAGROSFACHINL@GMAIL.COM', 'DNI', '73233549', 'PERUANA', 'SOLTERO', 'CALLE 15 DE JUNIO MZ C LOTE 17 - PUTUMAYO CDRA 25', 'NINGUNO', 'Superior Técnica Completa', '1995-02-23', 'F', '938803190', '968258355', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Punchana', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-09-14 13:02:50', '2021-11-11 15:00:39', '1631642570.0814', 0),
(7, 1, 'ANTONI', 'CACERES', 'GONZALES', 'CACERESGONZALESEFRAINANTONI@GMAIL.COM', 'DNI', '47289016', 'PERUANA', 'SOLTERO', 'PROSPERO CON LIBERTAD', 'NINGUNO', 'Secundaria Completa', '1991-05-21', 'M', '976286921', '901398779', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Belén', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-14 13:08:06', '2021-09-14 13:08:06', '1631642886.4063', 1),
(8, 1, 'JHULEYSI', 'CUMARI', 'VARGAS', '', 'DNI', '70058767', 'PERUANA', 'SOLTERO', 'CALLE 15 DE JUNIO MZ C LOTE 12 - PUTUMAYO CDRA 25', 'NINGUNO', 'Superior Técnica Incompleta', '1993-10-22', 'F', '930901987', '', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Punchana', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-09-14 13:15:37', '2021-11-11 15:01:05', '1631643337.3501', 0),
(9, 1, 'SAUL MARTIN', 'MEDER', 'ACOSTO', 'HOPE_1116@HOTMAIL.COM', 'DNI', '42162617', 'PERUANA', 'CASADO', 'ANGEL BRUSCO N° 692 DPTO N°3', 'NINGUNO', 'Superior Técnica Completa', '1983-12-11', 'M', '', '993451840', 'media/persona/default.png', '2', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-14 14:05:17', '2021-09-14 14:05:17', '1631646317.2779', 1),
(10, 1, 'LUDWING', 'FERNANDEZ', 'PEZO', 'FERNANDEZLUDWING@GMAIL.COM', 'DNI', '72471275', 'PERUANA', 'CASADO', 'GARCIA SAENZ N°558 ENTRE MOORE Y GRAU', 'NINGUNO', 'Superior Técnica Completa', '1998-01-31', 'M', '918763175', '', 'media/persona/72471275.jpg', '0', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', '', 'SCOTIABANK', '', '', '', '', NULL, '2021-09-14 14:14:48', '2021-09-15 11:14:20', '1631646888.646', 1),
(11, 1, 'NEHEMIAS BALTAZAR', 'MANANITA ', 'TANCHIVA', 'NEHEMIAS.MAN@GMAIL.COM', 'DNI', '42195043', 'PERUANA', 'DIVORCIADO', 'CALVO DE ARAUJO N°1672', 'NINGUNO', 'Universitario Completo', '1984-01-08', 'M', '955820174', '', 'media/persona/default.png', '2', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-15 11:20:09', '2021-09-15 11:20:09', '1631722809.943', 1),
(12, 1, 'PATRICIA GIOVANNA', 'GARCIA', 'CARDOZO', 'PATTYDEWONG@GMAIL.COM', 'DNI', '05402399', 'PERUANA', 'CASADO', 'CALLE FANING N°1285', 'NINGUNO', 'Superior Técnica Completa', '1977-03-16', 'F', '996894631', '943956134', 'media/persona/default.png', '2', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-15 14:56:27', '2021-09-15 14:56:27', '1631735787.8188', 1),
(13, 1, 'NOE MESIAS', 'TOVAR', 'SUSANO', 'NTOVAR@GAMIL.COM', 'DNI', '76670350', 'PERUANA', 'SOLTERO', 'PASAJE LIRIOS ', 'NINGUNO', 'Universitario Completo', '1999-08-16', 'M', '929167964', '', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:03:30', '2021-09-16 12:03:30', '1631811810.9873', 1),
(14, 1, 'LEO DAN', 'GUERRA', 'PINCHI', '31DUKE9310@GMAIL.COM', 'DNI', '73174079', 'PERUANA', 'SOLTERO', 'CALLE MIRANUAR N°123 B', 'NINGUNO', 'Superior Técnica Completa', '1993-10-31', 'M', '918745939', '', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'Belén', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:09:01', '2021-09-16 12:09:01', '1631812141.5912', 1),
(15, 1, 'JULIAN', 'CHAVEZ', 'GUELLE', 'CHAVEZGUELLECUARTO@GMAIL.COM', 'DNI', '71739065', 'PERUANA', 'SOLTERO', 'LOS CLAVELES N°216', 'NINGUNO', 'Superior Técnica Incompleta', '1999-02-10', 'M', '920851150', '', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-09-16 12:15:54', '2021-11-11 15:00:14', '1631812554.4247', 1),
(16, 1, 'MIRIAM YVONNE', 'ROJAS', 'AHUANARI', 'MIRIAMIVONNE1104@GMAIL.COM', 'DNI', '76062022', 'PERUANA', 'SOLTERO', 'CALLE CRUZ DEL SUR MZ: 7 LOTE: 15 ', 'NINGUNO', 'Universitario Incompleto', '2000-04-11', 'F', '928222676', '', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:22:25', '2021-09-16 12:22:25', '1631812945.79', 1),
(17, 1, 'HAROLD CHRISTOPPER', 'VARGAS', 'TANCHIVA', 'CHRISVARGASTA@GMAIL.COM', 'DNI', '72242699', 'PERUANA', 'SOLTERO', 'CALLE PROGRESO N°719 // 9 DE OCTUBRE', 'NINGUNO', 'Universitario Incompleto', '2001-06-07', 'M', '980515730', '980515730', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:27:18', '2021-09-16 12:27:18', '1631813238.1073', 1),
(18, 1, 'JULIO JACK OSCAR', 'RODRIGUEZ', 'BARRETO', 'JACKBARRETORODRIGUEZ@GMAIL.COM', 'DNI', '71203776', 'PERUANA', 'SOLTERO', 'MORONA N° 1223', 'NINGUNO', 'Universitario Incompleto', '0000-00-00', 'M', '942095505', '901398792', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:33:41', '2021-09-16 12:33:41', '1631813621.0336', 1),
(19, 1, 'DELCIO', 'ACHO', 'PEÑA', '', 'DNI', '44346064', 'PERUANA', 'SOLTERO', 'TAVARA N° 679', 'NINGUNO', 'Superior Técnica Completa', '1987-06-23', 'M', '98039427', '', 'media/persona/default.png', '2', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-09-16 12:41:34', '2021-09-16 12:41:34', '1631814094.9522', 0),
(20, 1, 'Paul', 'Ramirez ', 'Rodriguez ', 'Paulflavia2015@gmail.com', 'DNI', '71977616', 'PERUANA', 'SOLTERO', 'Calle señor de los milagros 319', '', 'Universitario Incompleto', '1994-06-27', 'M', '972892513', '', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-13 12:31:14', '2021-11-13 12:31:14', '1636824674.8895', 1),
(21, 1, 'RENZO', 'GARCIA', 'RUIZ', '', 'DNI', '72842883', 'Elegir', '', '', '', '', '1998-12-14', 'M', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-29 20:06:53', '2021-11-29 20:06:53', '1638234413.0108', 1),
(22, 1, 'ANGEL', 'TAMANI', 'PIÑA', '', 'DNI', '47329322', 'PERUANA', '', '', '', '', '2000-01-31', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-29 20:14:28', '2021-11-29 20:14:28', '1638234868.4073', 1),
(23, 1, 'CARITO', 'VARGAS', 'CHAVEZ', '', 'DNI', '05862860', 'PERUANA', '', '', '', '', '2000-01-30', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-29 20:19:14', '2021-11-29 20:19:14', '1638235154.0854', 1),
(24, 1, 'KAREN', 'LOPEZ', 'FACHIN', '', 'DNI', '40583350', 'PERUANA', '', '', '', '', '2000-01-31', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-29 20:20:47', '2021-11-29 20:20:47', '1638235247.1072', 1),
(25, 1, 'PILAR', 'URRESTI', 'ESPINOZA', '', 'DNI', '77462662', 'PERUANA', 'SOLTERO', '', '', '', '2000-01-30', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-11-30 09:14:52', '2021-11-30 09:34:28', '1638281692.2883', 1),
(26, 1, 'DANY', 'SIBINA', 'VELA', '', 'DNI', '44351207', 'PERUANA', '', '', '', '', '2000-01-31', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-30 09:18:45', '2021-11-30 09:18:45', '1638281925.2788', 1),
(27, 1, 'PIER', 'CUMARI', 'VARGAS', '', 'DNI', '70058757', 'PERUANA', '', '', '', '', '1991-06-09', 'M', '948289514', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-30 09:20:33', '2023-02-01 11:53:00', '1638282033.1405', 1),
(28, 1, 'SEGUNDO', 'FLORES', 'PADILLA', '', 'DNI', '72167925', 'PERUANA', '', '', '', '', '2000-01-30', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-30 09:22:44', '2021-11-30 09:22:44', '1638282164.4335', 1),
(29, 1, 'RICARDO', 'VIENA', 'VELA', '', 'DNI', '72752802', 'PERUANA', 'SOLTERO', '', '', '', '2000-01-30', '', '922280024', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-11-30 09:27:46', '2023-03-01 12:05:11', '1638282466.6386', 1),
(30, 1, 'MAIKA', 'GOMEZ', 'GUERRA', '', 'DNI', '45040954', 'Elegir', '', '', '', '', '2000-01-30', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2021-11-30 09:33:42', '2021-11-30 09:33:42', '1638282822.4244', 1),
(31, 1, 'MOISES', 'AREVALO', 'VARBOSA', '', 'DNI', '72805009', 'PERUANA', 'SOLTERO', '', '', '', '1993-06-08', 'M', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2021-12-01 16:14:13', '2021-12-01 16:18:57', '1638393253.4228', 1),
(32, 1, 'BRANPIERS', 'PAIMA', 'YAICATE', '', 'DNI', '75586415', 'Elegir', '', '', '', '', '1997-01-04', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2022-01-26 09:29:17', '2022-01-26 09:29:17', '1643207357.9235', 1),
(33, 1, ' LUCIA', 'TAMINCHI', 'SHAPIAMA', '', 'DNI', '73175214', 'Elegir', 'SOLTERO', '', '', '', '1995-05-18', '', '', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2022-01-26 09:36:57', '2022-01-26 10:42:09', '1643207817.2812', 1),
(34, 1, 'FLAVIO ', 'SILVANO ', 'RENGIFO', '', 'DNI', '72560298', 'PERUANA', 'SOLTERO', '', '', '', '1995-09-11', 'M', '', '983744555', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2022-02-19 11:17:16', '2022-02-19 11:17:16', '1645287436.7423', 1),
(35, 1, 'MATEO ', 'MOREY ', 'URRESTI', '', 'DNI', '76315115', 'PERUANA', 'SOLTERO', '', '', '', '2004-06-16', 'M', '901556701', '', 'media/persona/default.png', '0', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2022-02-23 10:10:23', '2022-02-23 10:14:11', '1645629023.2131', 1),
(36, 1, 'BABY', 'CURMAYARI', 'SALAZAR', '', 'DNI', '47605608', 'PERUANA', 'SOLTERO', 'CALLE ESPAÑA MZ A LT 9', '', 'Secundaria Completa', '1990-07-16', 'M', '948326896', '948326896', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2022-11-30 09:24:36', '2022-11-30 09:24:36', '1669818276.733', 1),
(37, 1, 'ERIKA', 'NAPUCHI', 'VASQUEZ', 'NAPUCHIERIKA2002@GMAIL.COM', 'DNI', '71197953', 'PERUANA', 'SOLTERO', '', '', 'Secundaria Completa', '2023-11-01', 'F', '951235140', '', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-02-06 11:49:34', '2023-02-07 11:07:38', '1675702174.4524', 1),
(38, 1, 'PIER MARTIN', 'CUMARI ', 'VARGAS', '', 'DNI', '70058758', 'PERUANA', 'SOLTERO', '15 DE JUNIO', '', 'Secundaria Completa', '1991-06-09', 'M', '948289512', '', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-02-07 10:32:35', '2023-02-07 10:35:06', '1675783955.7474', 1),
(39, 1, 'JANET', 'ARICARI', 'MACUTYAMA', '', 'DNI', '43968308', 'PERUANA', 'SOLTERO', '', '', 'Secundaria Completa', '2023-01-31', 'F', '901556701', '983744555', 'media/persona/default.png', '9', '', '', '', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-02-24 17:08:51', '2023-02-24 17:08:51', '1677276531.2992', 1),
(40, 1, 'MAICO ', 'ROMAINA', 'SHUÑA', '', 'DNI', '44351209', 'PERUANA', 'SOLTERO', '', '', 'Secundaria Completa', '2023-02-02', 'M', '901556701', '983744555', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'Punchana', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-02-24 17:11:39', '2023-02-24 17:11:39', '1677276699.3687', 1),
(41, 1, 'IRIS', 'IBAÑEZ', 'MONGE', 'BHDXF', 'DNI', '75586400', 'PERUANA', 'SOLTERO', 'JFJHFHF', '', 'Secundaria Completa', '2023-02-14', 'F', '582786578', '7678968796', 'media/persona/default.png', '4', 'Loreto', 'Putumayo', '', 'HBDXHBDXHB', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-02-25 18:49:07', '2023-02-25 18:49:07', '1677368947.9018', 1),
(42, 1, 'JAYLANE SILERI', 'CARRION', 'VELA', 'JAELANEVELA@GMAIL.COM', 'DNI', '71005281', 'PERUANA', 'SOLTERO', 'CALLE 3 DE JUNIO Y-23', '', 'Secundaria Completa', '2003-08-20', 'F', '', '947769104', 'media/persona/default.png', '0', 'Loreto', 'Maynas', 'Iquitos', '', NULL, NULL, NULL, 'NO', '', '', '', '', '', '', '', NULL, '2023-03-01 11:39:27', '2023-03-01 11:47:59', '1677688767.5683', 1),
(43, 1, 'EDSON LUIS', 'ROMAINA', 'MOZOMBITE', 'NAPUCHRIKA2002@GMAIL.COM', 'DNI', '70058759', 'PERUANA', 'CASADO', '', '', 'Secundaria Completa', '1969-10-05', 'M', '', '', 'media/persona/default.png', '1', 'Loreto', 'Maynas', 'San Juan Bautista', '', NULL, NULL, NULL, 'NO', '', NULL, '', '', '', '', '', NULL, '2023-03-23 12:50:56', '2023-03-23 12:50:56', '1679593856.0389', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_turno`
--

CREATE TABLE `persona_turno` (
  `id_persona_turno` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `persona_turno_fecha_registro` datetime NOT NULL,
  `persona_estado_turno` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `persona_turno`
--

INSERT INTO `persona_turno` (`id_persona_turno`, `id_persona`, `id_turno`, `persona_turno_fecha_registro`, `persona_estado_turno`) VALUES
(1, 4, 1, '2021-09-14 12:48:56', 1),
(2, 5, 1, '2021-09-14 12:58:15', 1),
(3, 6, 1, '2021-09-14 13:03:55', 1),
(4, 7, 1, '2021-09-14 13:08:57', 1),
(5, 8, 1, '2021-09-14 13:32:46', 1),
(6, 9, 1, '2021-09-14 14:05:59', 1),
(7, 10, 1, '2021-09-14 14:18:34', 0),
(8, 10, 2, '2021-09-15 13:19:58', 1),
(9, 12, 1, '2021-09-15 15:00:46', 1),
(10, 13, 1, '2021-09-16 12:04:42', 1),
(11, 14, 1, '2021-09-16 12:12:58', 1),
(15, 15, 1, '2021-09-16 12:17:00', 1),
(16, 16, 1, '2021-09-16 12:23:05', 1),
(18, 17, 1, '2021-09-16 12:28:32', 1),
(19, 18, 1, '2021-09-16 12:34:50', 1),
(21, 11, 1, '2021-10-01 13:09:54', 1),
(24, 4, 1, '2021-10-01 13:12:04', 1),
(26, 7, 1, '2021-10-01 13:14:54', 1),
(27, 14, 1, '2021-10-01 13:16:36', 1),
(28, 15, 1, '2021-10-01 13:18:42', 1),
(29, 16, 1, '2021-10-01 13:20:29', 1),
(31, 17, 1, '2021-10-01 13:21:50', 1),
(32, 18, 1, '2021-10-01 13:23:40', 1),
(33, 6, 1, '2021-10-01 13:25:27', 1),
(34, 8, 2, '2021-10-01 13:28:40', 1),
(35, 19, 1, '2021-10-01 13:29:53', 1),
(36, 5, 1, '2021-10-01 13:31:03', 1),
(37, 13, 1, '2021-10-01 13:34:17', 1),
(38, 9, 1, '2021-10-01 13:35:49', 1),
(40, 10, 1, '2021-10-01 13:37:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto_familia` int(11) NOT NULL,
  `producto_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `producto_descripcion` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `producto_foto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producto_estado` tinyint(1) NOT NULL,
  `producto_fecha_registro` datetime NOT NULL,
  `producto_codigo` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_receta`, `id_grupo`, `id_usuario`, `id_producto_familia`, `producto_nombre`, `producto_descripcion`, `producto_foto`, `producto_estado`, `producto_fecha_registro`, `producto_codigo`) VALUES
(11, 10, 1, 1, 1, 'Ensalada Mixta', 'Choncha, palta, brócoli, coliflor, repollo, lechuga, tomate, pepino, aceituna, huevo, papa', 'media/producto/default.png', 1, '2021-04-28 23:28:34', '1619670514.4705'),
(12, 132, 2, 1, 1, 'Piqueo de Machas', 'Machas acevichadas y champiñones', 'media/producto/default.png', 1, '2021-05-01 10:41:39', '1619883699.174'),
(13, 9, 1, 1, 1, 'Ensalada de Chonta', 'Palta, lechuga, tomate, pepino', 'media/producto/default.png', 1, '2021-05-01 23:03:21', '1619928201.3687'),
(14, 133, 1, 1, 1, 'Langostino al Panko', 'Langostinos crocantes en salsa Huancaina', 'media/producto/default.png', 1, '2021-05-02 23:17:19', '1620015439.5413'),
(17, 134, 1, 1, 1, 'Choritos a la chalaca', 'Deliciosos choritos acevichados  la conchita', 'media/producto/default.png', 1, '2021-05-02 23:21:14', '1620015674.7521'),
(18, 136, 1, 10, 1, 'Tequeños Clásicos', 'QUESO EDAM + JAMON INGLES + GUACAMOLE', 'media/producto/default.png', 1, '2021-10-04 15:07:06', '1633378026.2277'),
(19, 13, 2, 10, 2, 'Leche Conchita Clásica ', 'Pescado Doncella', 'media/producto/default.png', 1, '2021-10-04 15:11:15', '1633378275.468'),
(20, 14, 2, 10, 2, 'Leche Conchita Mixto', 'Pescado de Doncella y Mariscos.', 'media/producto/default.png', 1, '2021-10-04 15:13:58', '1633378438.2036'),
(21, 15, 2, 10, 2, 'Leche Natural Clásica', 'Pescado Doncella / Puro limón', 'media/producto/default.png', 1, '2021-10-04 15:17:50', '1633378670.9473'),
(22, 16, 2, 10, 2, 'Leche Natural Mixto', 'Pescado Doncella y mariscos / Puro Limón', 'media/producto/default.png', 1, '2021-10-04 15:19:57', '1633378797.5571'),
(23, 17, 2, 10, 2, 'Leche A lo macho', 'Pescado de doncella, rocoto o ají charapita', 'media/producto/default.png', 1, '2021-10-04 15:27:25', '1633379245.5839'),
(24, 137, 2, 10, 2, 'Leche de Colores', 'Variedad de leches de tigre en un solo plato, para satisfacer los paladares mas exigentes', 'media/producto/default.png', 1, '2021-10-04 15:31:54', '1633379514.9408'),
(25, 19, 2, 10, 3, 'Cebiche Conchita Clásica', 'Pescado Doncella', 'media/producto/default.png', 1, '2021-10-04 15:36:36', '1633379796.2818'),
(26, 139, 2, 10, 3, 'Cebiche Conchita Jumbo', 'Pescado Doncella, 1/2 cangrejo', 'media/producto/default.png', 1, '2021-10-04 15:39:44', '1633379984.7366'),
(27, 21, 2, 10, 3, 'Cebiche Natural', 'Pescado Doncella, 1/2 cangrejo // Puro Limón', 'media/producto/default.png', 1, '2021-10-04 15:41:13', '1633380073.3549'),
(28, 22, 2, 10, 3, 'Cebiche Mixto Conchita', 'Pescado Doncella, Mariscos. ', 'media/producto/default.png', 1, '2021-10-04 15:42:55', '1633380175.203'),
(29, 23, 2, 10, 3, 'Cebiche MIxto Natural', 'Pescado Doncella, Mariscos, // Puro Limón', 'media/producto/default.png', 1, '2021-10-04 15:44:17', '1633380257.9254'),
(30, 142, 2, 10, 3, 'Tiradito en salsa de Maracuya', 'Finas laminas de doncella cubiertas en salsa de maracuya', 'media/producto/default.png', 0, '2021-10-05 12:54:34', '1633456474.1048'),
(31, 143, 2, 10, 3, 'Tiradito en salsa de Camu Camu', 'Finas laminas de doncella, cubiertas en salsa de Camu camu', 'media/producto/default.png', 0, '2021-10-05 12:56:23', '1633456583.3352'),
(32, 144, 2, 10, 3, 'Tiradito Clásico', 'Pescado de Doncella con crema conchita', 'media/producto/default.png', 1, '2021-10-05 12:59:39', '1633456779.3914'),
(33, 26, 2, 10, 3, 'Tiradito Especial', 'Pescado doncella con crema conchita, mariscos', 'media/producto/default.png', 0, '2021-10-05 13:02:01', '1633456921.8011'),
(34, 146, 2, 10, 3, 'Tiradito a la Conchita', 'Finas laminas de doncella, cubiertas en salsa de aji amarillo y  rocoto', 'media/producto/default.png', 1, '2021-10-05 13:12:06', '1633457526.9493'),
(35, 27, 1, 10, 4, 'Chicharrón de pollo', 'Patacones + yuca + plátano frito + salsa criolla', 'media/producto/default.png', 1, '2021-10-05 13:13:56', '1633457636.7472'),
(36, 28, 1, 10, 4, 'Chicharrón de Pescado', 'Patacones + yuca + plátano frito + salsa criolla', 'media/producto/default.png', 1, '2021-10-05 13:15:34', '1633457734.1183'),
(37, 29, 1, 10, 4, 'Chicharon de Chancho', 'Yuca sancochada + salsa Criolla', 'media/producto/default.png', 1, '2021-10-05 13:16:43', '1633457803.3866'),
(38, 30, 1, 10, 4, 'Chicharrón Mixto de Pescado y Pollo', 'Pescado + patacones + yuca + salsa criolla', 'media/producto/default.png', 1, '2021-10-05 13:18:27', '1633457907.0965'),
(39, 31, 1, 10, 4, 'Chicharrón mixto pescado y mariscos', 'Pescado + patacones + yuca + salsa criolla', 'media/producto/default.png', 1, '2021-10-05 13:21:36', '1633458096.4209'),
(40, 32, 1, 10, 4, 'Chicharon a la ultima conchita', 'Pescado y mariscos + pollo + patacones + yuca + salsa criolla', 'media/producto/default.png', 1, '2021-10-05 13:23:22', '1633458202.2213'),
(41, 33, 1, 10, 4, 'Jalea Real', '1 filete de pescado + pollo + mariscos + salsa criolla', 'media/producto/default.png', 0, '2021-10-05 13:24:29', '1633458269.4842'),
(42, 147, 2, 10, 5, 'Trio a la Conchita', 'Cebiche conchita + arroz con mariscos + chicharrón de pescado o pollo', 'media/producto/default.png', 1, '2021-10-05 14:07:30', '1633460850.6356'),
(43, 148, 2, 10, 5, 'Trio especial a la conchita', 'Cebiche conchita + arroz con mariscos + chicharrón de pescado o pollo + leche de tigre', 'media/producto/default.png', 1, '2021-10-05 14:09:05', '1633460945.8166'),
(44, 38, 2, 10, 8, 'Combinado Cebiche + chicharrón de Pollo', 'Patacones + yuca', 'media/producto/default.png', 1, '2021-10-05 14:12:52', '1633461172.681'),
(45, 39, 2, 10, 8, 'Combinado Cebiche + Chicharrón de Pescado', 'Patacones + Yuca', 'media/producto/default.png', 1, '2021-10-05 14:14:10', '1633461250.3703'),
(46, 40, 2, 10, 8, 'Combinado Cebiche + Arroz con mariscos', 'Pescado de doncella', 'media/producto/default.png', 1, '2021-10-05 14:34:52', '1633462492.798'),
(47, 41, 2, 10, 8, 'Combinado Cebiche + Chaufa con Pollo', 'Pescado de doncella', 'media/producto/default.png', 1, '2021-10-05 14:43:14', '1633462994.015'),
(48, 42, 2, 10, 8, 'Combinado Cebiche + Chaufa con mariscos', 'Pescado de doncella', 'media/producto/default.png', 1, '2021-10-05 14:58:31', '1633463911.1822'),
(49, 43, 1, 10, 8, 'Combinado Chicharrón de Pescado + Chaufa con Mariscos', 'Pescado +Patacones +Yuca', 'media/producto/default.png', 1, '2021-10-06 13:00:49', '1633543249.5262'),
(50, 44, 1, 10, 8, 'Combinado Chicharrón de Pollo + Chaufa con Mariscos', 'Patacones + Yuca + Salsa criolla', 'media/producto/default.png', 1, '2021-10-06 13:05:05', '1633543505.1123'),
(51, 45, 1, 10, 8, 'Combinado Chicharrón de Pollo + Arroz con Mariscos', 'Patacones + Yuca + Salsa criolla', 'media/producto/default.png', 1, '2021-10-06 14:23:53', '1633548233.0878'),
(52, 46, 1, 10, 8, 'Combinado Chicharrón de Pescado + Arroz con Mariscos', 'Patacones + Yuca + Salsa criolla', 'media/producto/default.png', 1, '2021-10-06 14:27:26', '1633548446.0953'),
(53, 47, 1, 10, 8, 'Combinado Chicharrón de Pollo + Chaufa con Pollo', 'Patacones + Yuca + Salsa Criolla', 'media/producto/default.png', 1, '2021-10-06 14:48:55', '1633549735.7853'),
(54, 48, 1, 10, 8, 'Combinado Chicarrón de Pescado + Chaufa con Pollo', 'Patacones + Yuca + Salsa Criolla', 'media/producto/default.png', 1, '2021-10-06 14:51:00', '1633549860.9379'),
(55, 50, 2, 10, 8, 'Combinado Cebiche Mixto + Chaufa con Pollo', 'Pescado y Mariscos', 'media/producto/default.png', 1, '2021-10-06 14:53:50', '1633550030.993'),
(56, 49, 2, 10, 8, 'Combinado Cebiche mixto + Chaufa con Mariscos', 'Pescado y Mariscos', 'media/producto/default.png', 1, '2021-10-06 15:00:15', '1633550415.6772'),
(57, 51, 2, 10, 8, 'Combinado Cebiche mixto + Arroz con Mariscos', 'Pescado y Mariscos ', 'media/producto/default.png', 1, '2021-10-06 15:01:29', '1633550489.4701'),
(58, 52, 2, 10, 8, 'Combinado Chicarrón de Pollo + Cebiche Mixto', 'Pescado y Mariscos + Patacones + Yuca', 'media/producto/default.png', 1, '2021-10-06 15:01:29', '1633550489.8118'),
(59, 53, 2, 10, 8, 'Combinado Chicarrón de Pescado + Cebiche Mixto', 'Pescado y Mariscos + Patacones + Yuca', 'media/producto/default.png', 1, '2021-10-06 15:16:32', '1633551392.9374'),
(60, 57, 1, 10, 9, 'Sopa a la Minuta', 'Trozos de lomo fino, fideos, huevo, verduras y leche', 'media/producto/default.png', 1, '2021-10-06 15:32:35', '1633552355.4204'),
(61, 58, 1, 10, 9, 'Sopa Dieta de Pollo', 'Trozos de Pollo, Fideos, Papa, Brócoli, Coliflor y Zanahoria', 'media/producto/default.png', 1, '2021-10-06 15:34:23', '1633552463.7783'),
(62, 59, 1, 10, 9, 'Parihuela', 'Filete de Doncella, Mariscos, Arroz Blanco con Yuca', 'media/producto/default.png', 1, '2021-10-06 15:35:43', '1633552543.602'),
(63, 60, 1, 10, 9, 'Chupe de Camarones', 'Fideos, huevos, Verduras, y leche', 'media/producto/default.png', 1, '2021-10-06 15:38:37', '1633552717.7889'),
(64, 61, 1, 10, 10, 'Sudado de Corvina', 'Arroz blanco + Yuca', 'media/producto/default.png', 1, '2021-10-06 15:41:07', '1633552867.9655'),
(65, 62, 1, 10, 10, 'Sudado de Doncella', 'Arroz Blanco + Yuca Sancochada', 'media/producto/default.png', 1, '2021-10-06 15:57:42', '1633553862.4111'),
(66, 63, 1, 10, 10, 'Sudado de Mariscos', 'Arroz Blanco + Yuca Sancochada', 'media/producto/default.png', 1, '2021-10-06 15:59:17', '1633553957.8369'),
(67, 64, 1, 10, 10, 'Sudado mixto (Mariscos y Pescado Doncella)', 'Arroz blanco + Yuca Sancochada', 'media/producto/default.png', 1, '2021-10-06 16:00:45', '1633554045.3872'),
(68, 65, 1, 10, 10, 'Sudado Picante de Mariscos', 'Arroz blanco + Yuca sancochada', 'media/producto/default.png', 1, '2021-10-06 16:11:31', '1633554691.2263'),
(69, 149, 1, 10, 11, 'Alitas en salsa de Cocona', 'Jugosas y crocantes alitas bañadas en salsa de cocona', 'media/producto/default.png', 0, '2021-10-07 11:15:20', '1633623320.1857'),
(70, 150, 1, 10, 11, 'Alitas en salsa de Camu camu', 'Jugosas y crocantes alitas bañadas en salsa de Camu camu', 'media/producto/default.png', 0, '2021-10-07 11:16:32', '1633623392.6181'),
(71, 151, 1, 10, 11, 'Alitas en salsa de Maracuyá', 'Jugosas y crocantes alitas bañadas en salsa de Maracuyá', 'media/producto/default.png', 0, '2021-10-07 11:17:55', '1633623475.5612'),
(72, 152, 1, 10, 11, 'Alitas a la BBQ', 'Jugosas y crocantes alitas bañadas en salsa BBQ', 'media/producto/default.png', 1, '2021-10-07 11:19:04', '1633623544.0758'),
(73, 153, 1, 10, 11, 'Alitas Orientales', 'Jugosas y crocantes alitas bañadas en salsa oriental', 'media/producto/default.png', 0, '2021-10-07 11:20:06', '1633623606.4587'),
(74, 66, 1, 10, 12, 'Arroz con MAriscos', 'Salsa criolla + Yuca sancochada', 'media/producto/default.png', 1, '2021-10-07 11:24:07', '1633623847.7097'),
(75, 67, 1, 10, 12, 'Lomo fino con salsa de champiñones', 'Fino corte de lomo + champiñones + arroz blanco + trozos de carne + yuca frita', 'media/producto/default.png', 1, '2021-10-07 11:27:14', '1633624034.9561'),
(76, 68, 1, 10, 12, 'Lomo fino al jugo', 'Fino corte de lomo + arroz blanco + trozos de carne + yuca frita', 'media/producto/default.png', 1, '2021-10-07 11:30:24', '1633624224.6123'),
(77, 69, 1, 10, 12, 'Pescado a la Macho', 'Arroz blanco + filete de doncella + mariscos + yuca frita', 'media/producto/default.png', 1, '2021-10-07 11:40:50', '1633624850.3983'),
(78, 70, 1, 10, 12, 'Pescado al Ajo', 'Arroz blanco + filete de doncella + crema de ajos + yuca', 'media/producto/default.png', 1, '2021-10-07 11:55:58', '1633625758.7554'),
(79, 154, 1, 10, 12, 'Pollo al Ajo', 'Arroz blanco + filete de pollo + crema de ajos + yuca', 'media/producto/default.png', 1, '2021-10-07 12:01:49', '1633626109.4683'),
(80, 71, 1, 10, 12, 'Corvina Frita', 'Arroz blanco + plátano frito + ensalada', 'media/producto/default.png', 0, '2021-10-07 12:04:03', '1633626243.3821'),
(81, 72, 1, 10, 12, 'Pescado Enrrollado', 'Arroz blanco + crema blanca', 'media/producto/default.png', 0, '2021-10-07 12:05:19', '1633626319.6497'),
(82, 73, 1, 10, 12, 'Seco de Cabrito', 'Arroz blanco + frejol + yuca sancochada + salsa criolla', 'media/producto/default.png', 1, '2021-10-07 12:12:48', '1633626768.8491'),
(83, 155, 1, 10, 12, 'Arroz con Pulpo y Chorizo', 'Pulpo en arroz amazónico con chorizo', 'media/producto/default.png', 0, '2021-10-07 12:15:27', '1633626927.5471'),
(84, 156, 1, 10, 12, 'Fetuccini con Cecina', 'Cecina salteada en salsa blanca con deliciosa pasta', 'media/producto/default.png', 0, '2021-10-07 12:21:34', '1633627294.5463'),
(85, 157, 1, 10, 12, 'Arrisotado con Medallón', 'Medallones de cecina y pescado en arroz humedo', 'media/producto/default.png', 0, '2021-10-07 12:23:45', '1633627425.1728'),
(86, 158, 1, 10, 12, 'Pescado Enrollado en salsa de Guisador', 'Pescado doncella enrollado en legumbres acompañado en salsa', 'media/producto/default.png', 0, '2021-10-07 12:26:36', '1633627596.5295'),
(87, 159, 1, 10, 12, 'Lomo al Grill', 'Fino corte de lomo con papa doradas y legumbres', 'media/producto/default.png', 1, '2021-10-07 12:28:33', '1633627713.8685'),
(88, 160, 1, 10, 12, 'Jamón de Paiche a la Loretana', 'Acompañado con ensalada, maduro y salsa de aji dulce', 'media/producto/default.png', 0, '2021-10-07 12:30:40', '1633627840.0602'),
(89, 161, 1, 10, 13, 'Pulpo al Olivo acevichado', 'Delicioso pulpo acevichado en salsa de olivo con mousse de palta', 'media/producto/default.png', 1, '2021-10-07 12:38:54', '1633628334.5128'),
(90, 162, 1, 10, 13, 'Pulpo al Grill en salsa Anticuchera', 'Delicioso Pulpo marinado en vino, aromatizado con finas hiervas', 'media/producto/default.png', 1, '2021-10-07 12:43:18', '1633628598.1354'),
(91, 163, 1, 10, 13, 'Pulpo al Grill Con Yuca', 'Exquisito pulpo, langostino y doncella envuelto en hoja, marinado con especias amazónicas', 'media/producto/default.png', 1, '2021-10-07 12:44:59', '1633628699.1773'),
(92, 164, 1, 10, 13, 'Ensalada de Pulpo', 'Fresca ensalada con rolls de pepino y mosusse de palta y olivo', 'media/producto/default.png', 0, '2021-10-07 12:46:34', '1633628794.6244'),
(93, 74, 1, 10, 14, 'Chaufa de Pollo', 'Trozos de Pollo + ensalada + maduro frito', 'media/producto/default.png', 0, '2021-10-07 13:34:16', '1633631656.71'),
(94, 75, 1, 10, 14, 'Chaufa con Carne', 'Trozos de lomo fino frito + ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:35:39', '1633631739.0726'),
(95, 76, 1, 10, 14, 'Chaufa con Mariscos', 'Mariscos + ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:36:51', '1633631811.278'),
(96, 77, 1, 10, 14, 'Chaufa Especial', 'Pollo + cecina + langostino + ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:38:37', '1633631917.3634'),
(97, 78, 1, 10, 14, 'Chaufa Regional', 'Chorizo + cecina + ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:42:05', '1633632125.1335'),
(98, 79, 1, 10, 14, 'Chaufa con Pescado', 'Pescado + ensalada + huevo frito + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:43:08', '1633632188.6368'),
(99, 80, 1, 10, 14, 'Chaufa Mixto (Pollo y carne)', 'Trozos de lomo fino + pollo + ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 13:47:37', '1633632457.2546'),
(100, 81, 1, 10, 15, 'Lomo fino a la Plancha', 'Arroz blanco + papa sancochada + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:49:11', '1633632551.5722'),
(101, 82, 1, 10, 15, 'Pollo a la Plancha', 'Arroz blanco + papa sancochada + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:50:09', '1633632609.308'),
(102, 83, 1, 10, 15, 'Pescado a la Plancha', 'Arroz blanco + papa sancochada + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:51:18', '1633632678.9968'),
(103, 84, 1, 10, 16, 'Bisteck a lo Pobre', 'Lomo fino + chaufa + maduro frito + huevo frito + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:52:57', '1633632777.6334'),
(104, 85, 1, 10, 16, 'Pollo a lo Pobre', 'Filete de pechuga + chaufa + maduro frito + huevo frito + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:54:30', '1633632870.8187'),
(105, 86, 1, 10, 16, 'Pescado a lo Pobre', 'Pescado doncella + chufa + maduro frito + huevo frito + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:56:11', '1633632971.4754'),
(106, 87, 1, 10, 16, 'Mixto (Lomo y Pollo) a lo Pobre', 'Chaufa + huevo frito + maduro frito + ensalada', 'media/producto/default.png', 1, '2021-10-07 13:58:05', '1633633085.323'),
(107, 88, 1, 10, 17, 'Filete de pescado a la plancha en crema blanca', 'Pescado doncella + arroz blanco + queso mozzarella + yuca frita', 'media/producto/default.png', 1, '2021-10-07 14:01:45', '1633633305.5266'),
(108, 89, 1, 10, 17, 'Filete de Pollo en crema blanca', 'Arroz blanco + queso mozzarella + yuca frita', 'media/producto/default.png', 1, '2021-10-07 14:04:48', '1633633488.3079'),
(109, 90, 1, 10, 17, 'Filete de Lomo fino en crema banca', 'Filete de carne + arroz blanco + queso mozzarella, yuca frita', 'media/producto/default.png', 1, '2021-10-07 14:06:36', '1633633596.7407'),
(110, 91, 1, 10, 18, 'Tacu tacu de pollo', 'Ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-07 14:10:26', '1633633826.1589'),
(111, 92, 1, 10, 18, 'Tacu tacu de lomo fino', 'Ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-08 12:39:16', '1633714756.1441'),
(112, 93, 1, 10, 18, 'Tacu tacu de Mariscos', 'Ensalada + maduro frito', 'media/producto/default.png', 1, '2021-10-08 12:42:11', '1633714931.9814'),
(113, 94, 1, 10, 18, 'Tacu tacu de filete de Pescado', 'Ensalada + Maduro frito', 'media/producto/default.png', 1, '2021-10-08 12:43:58', '1633715038.7688'),
(114, 95, 1, 10, 18, 'Tacu tacu de Lomo saltado', 'Maduro frito + huevo', 'media/producto/default.png', 1, '2021-10-08 12:49:58', '1633715398.0676'),
(115, 96, 1, 10, 18, 'Tacu tacu de pollo saltado', 'Maduro frito + huevo', 'media/producto/default.png', 1, '2021-10-08 12:54:09', '1633715649.6009'),
(116, 97, 1, 10, 19, 'Pollo Saltado', 'Arroz blanco + Maduro frito', 'media/producto/default.png', 1, '2021-10-08 12:57:55', '1633715875.0138'),
(117, 98, 1, 10, 19, 'Lomo Saltado', 'Trozos de lomo fino + arroz blanco + maduro frito', 'media/producto/default.png', 1, '2021-10-08 12:59:05', '1633715945.967'),
(118, 99, 1, 10, 19, 'Pescado Saltado', 'Trozos de doncella + arroz blanco + maduro frito', 'media/producto/default.png', 1, '2021-10-08 13:00:23', '1633716023.9121'),
(119, 100, 1, 10, 19, 'Cecino Saltado', 'Arroz blanco + maduro frito', 'media/producto/default.png', 1, '2021-10-08 13:01:15', '1633716075.4333'),
(120, 101, 1, 10, 19, 'Saltado Mixto (Pollo y Lomo)', 'Arroz mixto + maduro frito', 'media/producto/default.png', 1, '2021-10-08 13:02:18', '1633716138.1856'),
(121, 111, 1, 10, 20, 'Pescado a la Pimienta', 'Arroz blanco + yuca frita', 'media/producto/default.png', 1, '2021-10-08 13:03:29', '1633716209.7092'),
(122, 106, 1, 10, 20, 'Cecina Loretana', 'Patacones + yuca + maduro frito + ensalada de chonta', 'media/producto/default.png', 1, '2021-10-08 13:06:38', '1633716398.0475'),
(123, 107, 1, 10, 20, 'Cecina con tacacho', 'Ensalada de chonta', 'media/producto/default.png', 1, '2021-10-08 13:08:07', '1633716487.7684'),
(124, 108, 1, 10, 20, 'Pescado a la Loretana ', 'Patacones + yuca + maduro frito + ensalada de chonta', 'media/producto/default.png', 1, '2021-10-08 13:09:27', '1633716567.4091'),
(125, 105, 1, 10, 20, 'Cecina con Patacones', 'Patacones + ensalada de chonta', 'media/producto/default.png', 1, '2021-10-08 13:11:45', '1633716705.3296'),
(126, 114, 1, 10, 21, 'Arroz con Pato', 'Salsa criolla + papa a la huancaina', 'media/producto/default.png', 1, '2021-10-08 13:12:42', '1633716762.6052'),
(127, 115, 1, 10, 21, 'Seco de Pato', 'Arroz blanco + frejol + salsa criolla', 'media/producto/default.png', 1, '2021-10-08 13:13:08', '1633716788.1034'),
(128, 116, 1, 10, 21, 'Guiso de Pato', 'Arroz blanco + frejol + yuca + salsa criolla', 'media/producto/default.png', 1, '2021-10-08 13:14:47', '1633716887.5155'),
(129, 117, 1, 10, 21, 'Aguadito de Pato', 'Yuca', 'media/producto/default.png', 1, '2021-10-08 13:15:24', '1633716924.8183'),
(130, 118, 1, 10, 22, 'Guiso de Motelo', 'Arroz blanco + yuca', 'media/producto/default.png', 1, '2021-10-08 13:17:25', '1633717045.0845'),
(131, 119, 1, 10, 22, 'Motelo al Kion', 'Arroz blanco', 'media/producto/default.png', 1, '2021-10-08 13:18:29', '1633717109.8097'),
(132, 120, 2, 10, 23, 'Fuente de cebiche conchita simple', '', 'media/producto/default.png', 1, '2021-10-08 13:19:35', '1633717175.5028'),
(133, 121, 2, 10, 23, 'Fuente de cebiche conchita Mixto', '', 'media/producto/default.png', 1, '2021-10-08 13:20:19', '1633717219.3315'),
(134, 122, 2, 10, 23, 'Fuente de Cebiche Natural', '', 'media/producto/default.png', 1, '2021-10-08 13:21:25', '1633717285.5946'),
(135, 123, 2, 10, 23, 'Fuente de Cebiche natural Mixto', '', 'media/producto/default.png', 1, '2021-10-08 13:22:24', '1633717344.7906'),
(136, 124, 1, 10, 23, 'Fuente de arroz con mariscos', '', 'media/producto/default.png', 1, '2021-10-08 13:23:31', '1633717411.3422'),
(137, 125, 1, 10, 23, 'Fuente de Chaufa Simple', '', 'media/producto/default.png', 1, '2021-10-08 13:24:05', '1633717445.4981'),
(138, 126, 1, 10, 23, 'Fuente de Chaufa de Pollo', '', 'media/producto/default.png', 1, '2021-10-08 13:24:51', '1633717491.283'),
(139, 127, 1, 10, 23, 'Fuente de Chaufa de Mariscos', '', 'media/producto/default.png', 1, '2021-10-08 13:25:36', '1633717536.7886'),
(140, 128, 1, 10, 23, 'Fuente de Chicharrón de Pollo', '', 'media/producto/default.png', 1, '2021-10-08 13:27:00', '1633717620.9617'),
(141, 129, 1, 10, 23, 'Fuente de Chicharrón de Pescado', '', 'media/producto/default.png', 1, '2021-10-08 13:27:53', '1633717673.678'),
(142, 130, 1, 10, 23, 'Fuente de sudado de Corvina', '', 'media/producto/default.png', 0, '2021-10-08 13:28:26', '1633717706.2633'),
(143, 165, 1, 10, 24, 'Plátano Frito', '', 'media/producto/default.png', 1, '2021-10-08 13:33:02', '1633717982.7218'),
(144, 166, 1, 10, 24, 'Arroz Blanco', '', 'media/producto/default.png', 1, '2021-10-08 13:33:49', '1633718029.2448'),
(145, 167, 1, 10, 24, 'Yuca sancochada', '', 'media/producto/default.png', 1, '2021-10-08 13:34:13', '1633718053.1529'),
(146, 168, 1, 10, 24, 'Camote Sancochado', '', 'media/producto/default.png', 1, '2021-10-08 13:34:54', '1633718094.4672'),
(147, 170, 1, 10, 24, 'Porción de Maduro frito', '', 'media/producto/default.png', 1, '2021-10-08 13:35:35', '1633718135.4351'),
(148, 171, 1, 10, 24, 'Tacacho', '', 'media/producto/default.png', 1, '2021-10-08 13:35:54', '1633718154.9153'),
(149, 171, 1, 10, 24, 'Tacacho', '', 'media/producto/default.png', 0, '2021-10-08 13:35:55', '1633718155.2687'),
(150, 172, 1, 10, 24, 'Papa Sancochada', '', 'media/producto/default.png', 1, '2021-10-08 13:36:16', '1633718176.7065'),
(151, 173, 1, 10, 24, 'Porción de Papa frita', '', 'media/producto/default.png', 1, '2021-10-08 13:36:46', '1633718206.4435'),
(152, 174, 1, 10, 24, 'Porción de Chaufa', '', 'media/producto/default.png', 1, '2021-10-08 13:37:18', '1633718238.9593'),
(153, 175, 4, 10, 25, 'Vaso de refresco Chicha', '', 'media/producto/default.png', 1, '2021-10-08 13:38:59', '1633718339.4452'),
(154, 176, 4, 10, 25, 'Jarra de Refresco Chicha', '', 'media/producto/default.png', 1, '2021-10-08 13:39:50', '1633718390.6652'),
(155, 177, 4, 10, 25, 'Agua San Luis S/G', '', 'media/producto/default.png', 1, '2021-10-08 13:40:22', '1633718422.486'),
(156, 178, 4, 10, 26, 'Sprite', '', 'media/producto/default.png', 1, '2021-10-08 13:46:05', '1633718765.3265'),
(157, 179, 4, 10, 26, 'Fanta', '', 'media/producto/default.png', 1, '2021-10-08 13:46:35', '1633718795.9758'),
(158, 180, 4, 10, 26, 'Inca Kola 500 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:47:19', '1633718839.9'),
(159, 183, 4, 10, 26, 'Inca Kola de 1 1/2  lt', '', 'media/producto/default.png', 1, '2021-10-08 13:48:48', '1633718928.8855'),
(160, 181, 4, 10, 26, 'Inca Kola 1 Lt', '', 'media/producto/default.png', 1, '2021-10-08 13:49:37', '1633718977.4299'),
(161, 184, 4, 10, 27, 'Pilsen 310 ml', '', 'media/producto/default.png', 0, '2021-10-08 13:50:20', '1633719020.3917'),
(162, 185, 4, 10, 27, 'Cristal 330 ml', '', 'media/producto/default.png', 0, '2021-10-08 13:51:02', '1633719062.0745'),
(163, 186, 4, 10, 27, 'Cusqueña Trigo 330 ml', '', 'media/producto/default.png', 0, '2021-10-08 13:51:50', '1633719110.1329'),
(164, 187, 4, 10, 27, 'Cusqueña Malta 330 ml', '', 'media/producto/default.png', 0, '2021-10-08 13:52:40', '1633719160.788'),
(165, 188, 4, 10, 27, 'Corona 355 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:53:19', '1633719199.6463'),
(166, 189, 4, 10, 27, 'Stella Artois 330 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:54:04', '1633719244.4959'),
(167, 190, 4, 10, 27, 'Cusqueña Trigo 620 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:54:42', '1633719282.9232'),
(168, 191, 4, 10, 27, 'Cusqueña Malta 620 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:55:16', '1633719316.7792'),
(169, 192, 4, 10, 27, 'Pilsen 630 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:55:56', '1633719356.8088'),
(170, 193, 4, 10, 27, 'Cristal 650 ml', '', 'media/producto/default.png', 1, '2021-10-08 13:56:29', '1633719389.8625'),
(171, 195, 4, 10, 25, 'Vaso de refresco Maracuya', '', 'media/producto/default.png', 1, '2021-11-11 14:11:09', '1636657869.1185'),
(172, 196, 4, 10, 25, 'Jarra de Refresco Maracuya', '', 'media/producto/default.png', 1, '2021-11-11 14:13:24', '1636658004.4661'),
(173, 194, 4, 10, 33, 'DELIVERY', '', 'media/producto/default.png', 1, '2021-11-11 14:17:00', '1636658220.3351'),
(174, 197, 4, 10, 33, 'PROMOLA', '', 'media/producto/default.png', 1, '2021-11-11 14:26:23', '1636658783.7457'),
(175, 11, 1, 10, 1, 'Papa a la Huancaina', '', 'media/producto/default.png', 1, '2021-11-11 14:39:52', '1636659592.6388'),
(176, 180, 4, 10, 26, 'Coca Cola 500 ml', '', 'media/producto/default.png', 1, '2021-11-11 14:46:08', '1636659968.3449'),
(177, 199, 4, 10, 25, 'Agua San Luis C/G', '', 'media/producto/default.png', 1, '2021-11-11 14:48:24', '1636660104.7645'),
(178, 200, 2, 10, 25, 'Agua Cielo C/G', '', 'media/producto/default.png', 0, '2021-11-11 14:49:13', '1636660153.3498'),
(179, 201, 2, 10, 25, 'Agua Cielo S/G', '', 'media/producto/default.png', 0, '2021-11-11 14:49:37', '1636660177.4679'),
(180, 202, 4, 10, 26, 'Coca Cola 1 Lt', '', 'media/producto/default.png', 1, '2021-11-11 14:52:30', '1636660350.6804'),
(181, 203, 4, 10, 26, 'Coca Cola de 1 1/2  Lt', '', 'media/producto/default.png', 1, '2021-11-11 14:53:31', '1636660411.7351'),
(182, 204, 2, 10, 27, 'Cusqueña Trigo 310 ml', '', 'media/producto/default.png', 0, '2021-11-11 15:20:52', '1636662052.7907'),
(183, 205, 2, 10, 27, 'Cusqueña Malta 310 ml', '', 'media/producto/default.png', 0, '2021-11-11 15:21:43', '1636662103.5978'),
(184, 206, 2, 10, 27, 'Pilsen de 305 ml', '', 'media/producto/default.png', 0, '2021-11-11 15:22:43', '1636662163.5016'),
(185, 207, 2, 10, 27, 'Amstel 473 ml ', '', 'media/producto/default.png', 0, '2021-11-11 15:54:57', '1636664097.6112'),
(186, 208, 2, 10, 27, 'Heineken Lata 330 ml', '', 'media/producto/default.png', 0, '2021-11-11 15:56:02', '1636664162.3367'),
(187, 209, 2, 10, 27, 'Heineken Botella 330 ml', '', 'media/producto/default.png', 0, '2021-11-11 15:56:35', '1636664195.0913'),
(188, 210, 4, 10, 27, 'Corona x 6 und ', '', 'media/producto/default.png', 1, '2021-11-11 16:04:43', '1636664683.0267'),
(189, 211, 2, 10, 26, 'Sporade 500 ml', '', 'media/producto/default.png', 0, '2021-11-11 16:05:26', '1636664726.6036'),
(190, 212, 4, 10, 28, 'Pisco Sour', '', 'media/producto/default.png', 1, '2021-11-11 16:11:43', '1636665103.2002'),
(191, 213, 4, 10, 28, 'Piña Colada', '', 'media/producto/default.png', 1, '2021-11-11 16:12:14', '1636665134.0022'),
(192, 214, 4, 10, 28, 'Chilcano', '', 'media/producto/default.png', 1, '2021-11-11 16:12:58', '1636665178.9096'),
(193, 215, 4, 10, 28, 'Algarrobina', '', 'media/producto/default.png', 1, '2021-11-11 16:13:38', '1636665218.0474'),
(194, 216, 4, 10, 28, 'Gin Tonic', '', 'media/producto/default.png', 1, '2021-11-11 16:14:13', '1636665253.8109'),
(195, 217, 4, 10, 28, 'Tom Collins', '', 'media/producto/default.png', 1, '2021-11-11 16:14:58', '1636665298.9129'),
(196, 218, 4, 10, 28, 'Margarita Clasica', '', 'media/producto/default.png', 1, '2021-11-11 16:15:42', '1636665342.6765'),
(197, 219, 4, 10, 28, 'Margarita Blue', '', 'media/producto/default.png', 1, '2021-11-11 16:16:12', '1636665372.8768'),
(198, 220, 4, 10, 28, 'Tequila Sonrrisse', '', 'media/producto/default.png', 1, '2021-11-11 16:16:56', '1636665416.7239'),
(199, 221, 4, 10, 28, 'Caipiroska', '', 'media/producto/default.png', 1, '2021-11-11 16:19:38', '1636665578.2831'),
(200, 222, 4, 10, 28, 'Destornillador', '', 'media/producto/default.png', 1, '2021-11-11 16:20:29', '1636665629.3205'),
(201, 223, 4, 10, 29, 'RON MEDILLIN 8 AÑOS', '', 'media/producto/default.png', 0, '2021-11-12 14:00:09', '1636743609.285'),
(203, 224, 4, 10, 26, 'COCA COLA 2.25 LT', '', 'media/producto/default.png', 1, '2021-11-14 12:22:38', '1636910558.0209'),
(204, 225, 4, 10, 26, 'INCA KOLA 2.25', '', 'media/producto/default.png', 1, '2021-11-14 12:23:11', '1636910591.9662'),
(205, 226, 4, 2, 27, 'PILSEN 305 ML ( BALDE X 6 UNID)', '', 'media/producto/default.png', 1, '2021-11-14 13:49:32', '1636915772.5314'),
(206, 227, 4, 2, 29, 'CHAPO', '', 'media/producto/default.png', 1, '2021-11-14 14:03:50', '1636916630.9867'),
(207, 228, 4, 2, 29, 'RON CAPITAN MORGAN', '', 'media/producto/default.png', 0, '2021-11-14 14:05:51', '1636916751.3075'),
(208, 229, 4, 2, 29, 'OMBO MORGAN', '', 'media/producto/default.png', 0, '2021-11-14 14:07:04', '1636916824.887'),
(210, 230, 4, 10, 33, 'CIGARRILLO X 10UND LUCKY', '', 'media/producto/default.png', 1, '2021-11-16 17:11:58', '1637100718.4403'),
(211, 231, 3, 10, 24, 'Adicional Cambio de plato', '', 'media/producto/default.png', 0, '2021-11-17 12:28:31', '1637170111.7568'),
(212, 232, 3, 10, 24, 'Adicional Cambio de plato S/7.00', '', 'media/producto/default.png', 1, '2021-11-17 12:29:39', '1637170179.5613'),
(213, 233, 3, 10, 24, 'Adicional Cambio de plato S/10.00', '', 'media/producto/default.png', 1, '2021-11-17 12:31:14', '1637170274.39'),
(214, 47, 3, 10, 8, 'Combinado Chicharon de pollo + Chaufa con Mariscos', 'pescado + patacones + yuca', 'media/producto/default.png', 0, '2021-11-18 13:05:06', '1637258706.9958'),
(215, 235, 1, 10, 23, '1/2  FUENTE DE CHICHARRON ', '', 'media/producto/default.png', 0, '2021-11-21 12:31:31', '1637515891.332'),
(216, 237, 2, 10, 24, '1/2  CANGREJO', '', 'media/producto/default.png', 1, '2021-11-21 12:36:56', '1637516216.8128'),
(217, 236, 2, 10, 24, 'CANGREJO', '', 'media/producto/default.png', 1, '2021-11-21 12:37:30', '1637516250.3213'),
(218, 238, 4, 10, 28, 'MACHU PICHU', '', 'media/producto/default.png', 1, '2021-11-21 16:44:22', '1637531062.0678'),
(219, 239, 1, 10, 1, 'ENSALADA DE PALTA', 'REPOLLO, LECHUGA, TOMATE, PEPINO Y ACEITUNA', 'media/producto/default.png', 1, '2021-11-22 10:30:10', '1637595010.8589'),
(220, 240, 4, 10, 28, 'Apple Martini', '', 'media/producto/default.png', 1, '2021-11-22 10:51:34', '1637596294.4633'),
(221, 242, 4, 10, 28, 'Cuba Libre', '', 'media/producto/default.png', 1, '2021-11-22 15:07:55', '1637611675.7888'),
(222, 243, 4, 10, 28, 'Mojito', '', 'media/producto/default.png', 1, '2021-11-22 15:14:03', '1637612043.9727'),
(223, 241, 4, 10, 28, 'Caipirinha', '', 'media/producto/default.png', 1, '2021-11-22 15:17:36', '1637612256.7441'),
(224, 249, 4, 10, 28, 'Cielo y el Infierno', '', 'media/producto/default.png', 1, '2021-11-22 15:21:23', '1637612483.3329'),
(225, 250, 4, 10, 28, 'Amor en Llamas', '', 'media/producto/default.png', 1, '2021-11-22 15:22:26', '1637612546.459'),
(226, 251, 4, 10, 28, 'Rompe Corazones', '', 'media/producto/default.png', 1, '2021-11-22 15:23:28', '1637612608.0467'),
(227, 252, 4, 10, 28, 'Orgasmo', '', 'media/producto/default.png', 1, '2021-11-22 15:24:24', '1637612664.7633'),
(228, 253, 4, 10, 28, 'Pantera Rosa', '', 'media/producto/default.png', 1, '2021-11-22 15:26:40', '1637612800.5473'),
(229, 244, 4, 10, 28, 'Martiny Clasico', '', 'media/producto/default.png', 1, '2021-11-22 15:41:07', '1637613667.9001'),
(230, 246, 4, 10, 28, 'Daikiri', '', 'media/producto/default.png', 1, '2021-11-22 15:48:32', '1637614112.441'),
(231, 247, 4, 10, 28, 'Shive', '', 'media/producto/default.png', 1, '2021-11-22 15:49:04', '1637614144.2467'),
(232, 248, 4, 10, 28, 'Shot Tequila', '', 'media/producto/default.png', 1, '2021-11-22 15:49:41', '1637614181.8303'),
(233, 254, 4, 10, 28, 'Vaso Whisky', '', 'media/producto/default.png', 1, '2021-11-22 15:51:06', '1637614266.9325'),
(234, 29, 1, 10, 15, 'Chicharron de Chancho', '', 'media/producto/default.png', 0, '2021-11-27 14:02:25', '1638039745.7621'),
(235, 139, 2, 10, 36, 'M.N CEVICHE JUMBO ', '', 'media/producto/default.png', 0, '2021-11-27 14:36:39', '1638041799.1087'),
(236, 21, 2, 10, 36, 'M.N CEVICHE NATURAL', '', 'media/producto/default.png', 0, '2021-11-27 14:37:49', '1638041869.6627'),
(237, 22, 2, 10, 36, 'M.N CEVICHE MIXTO CONCHITA', '', 'media/producto/default.png', 0, '2021-11-27 14:39:12', '1638041952.5749'),
(238, 23, 2, 10, 36, 'M.N CEVICHE MIXTO NATURAL', '', 'media/producto/default.png', 0, '2021-11-27 14:40:04', '1638042004.5476'),
(239, 27, 1, 10, 36, 'M.N CHICHARRON DE POLLO', '', 'media/producto/default.png', 0, '2021-11-27 14:41:01', '1638042061.9466'),
(240, 136, 1, 10, 36, 'M.N TEQUEÑOS CLÁSICOS', '', 'media/producto/default.png', 0, '2021-11-27 14:41:45', '1638042105.9469'),
(241, 82, 1, 10, 36, 'M.N POLLO A LA PLANCHA', '', 'media/producto/default.png', 0, '2021-11-27 14:42:20', '1638042140.2418'),
(242, 83, 1, 10, 36, 'M.N PESCADO A LA PLANCHA', '', 'media/producto/default.png', 0, '2021-11-27 14:43:00', '1638042180.6107'),
(243, 210, 4, 10, 36, 'M.N CORONA X6 ', '', 'media/producto/default.png', 0, '2021-11-27 14:45:38', '1638042338.6416'),
(244, 104, 1, 10, 36, 'M.N PIQUEO REGIONAL ', '', 'media/producto/default.png', 1, '2021-11-27 14:56:33', '1638042993.2253'),
(245, 188, 4, 10, 36, 'M.N CORONA 335 ML', '', 'media/producto/default.png', 0, '2021-11-27 14:57:37', '1638043057.1046'),
(246, 255, 4, 10, 33, 'Vino Borgoña', '', 'media/producto/default.png', 1, '2021-11-27 15:55:59', '1638046559.2129'),
(247, 131, 2, 1, 33, 'Bolsa Plastica', '', 'media/producto/default.png', 1, '2021-12-06 09:24:47', '1638800687.5079'),
(248, 132, 2, 21, 1, 'PIQUEO DE MACHAS', 'MACHAS ACEBICHADAS  TY CHAMPINIONES', 'media/producto/default.png', 1, '2021-12-24 12:50:37', '1640368237.6996'),
(249, 47, 1, 21, 8, 'Combinado de chicharron de pollo + chaufa con pollo', 'patacones + yuca  + salsa criolla', 'media/producto/default.png', 1, '2022-01-15 11:40:45', '1642264845.5979'),
(250, 257, 1, 21, 24, 'PORCION DE PATACON', '', 'media/producto/default.png', 1, '2022-01-21 10:33:41', '1642779221.1636'),
(251, 258, 2, 21, 37, 'CEBICHE CONCHITA', 'Pescado Doncella', 'media/producto/default.png', 1, '2022-02-12 12:20:24', '1644686424.9971'),
(252, 258, 2, 21, 37, 'CEBICHE NATURAL', 'Pescado doncella, Puro limon', 'media/producto/default.png', 1, '2022-02-12 12:21:24', '1644686484.1739'),
(253, 259, 1, 21, 38, 'ALITAS BBQ 8 UNID', 'Envuelto en salsa clasica BBQ, Papas Fritas', 'media/producto/default.png', 1, '2022-02-12 12:23:13', '1644686593.5016'),
(254, 259, 1, 21, 38, 'ALITAS BUFALO', 'Envuelto en Salsa picosa + papas fritas ', 'media/producto/default.png', 1, '2022-02-12 12:24:32', '1644686672.445'),
(255, 259, 1, 21, 38, 'ALITAS BROSTER 2 PIEZAS', 'Deliciosas alitas crocantes + papas fritas  + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:25:36', '1644686736.385'),
(256, 260, 1, 21, 39, 'SALCHIPAPA CLASICA ', 'Salchicha frankfur + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:26:48', '1644686808.4656'),
(257, 260, 1, 21, 39, 'SALCHIPAPA EXTREMA ', 'Salchicha frankfur + pollo + huevo + tosino + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:27:55', '1644686875.8012'),
(258, 261, 1, 21, 40, 'HAMBURGUESA CLASICA', 'Carne o pollo desilachado + papa frita + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:29:01', '1644686941.1918'),
(259, 261, 1, 21, 40, 'HAMBURGUESA ROYAL ', 'Carne o pollo desilachado + papa fritas  + huevo + jamon +queso + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:30:22', '1644687022.7422'),
(260, 261, 1, 21, 40, 'HAMBURGUESA HAWAIANA', 'Carne o pollo desilachado + papas fritas + jamon + queso + piña + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:31:44', '1644687104.5633'),
(261, 262, 2, 21, 41, 'CALIFORNIA 10 UNID', 'Pescado o pollo al mpanko  + queso crema  + palta ', 'media/producto/default.png', 1, '2022-02-12 12:36:19', '1644687379.2949'),
(262, 262, 2, 21, 41, 'ACEBICHADO 10 UNID', 'Pescado o pollo al panko  + queso crema +palta + salsa acebichado', 'media/producto/default.png', 1, '2022-02-12 12:38:07', '1644687487.7569'),
(263, 262, 2, 21, 41, 'FURAY', 'Pescado o pollo al panko crocante + queso crema + palta + salga de anguilla', 'media/producto/default.png', 1, '2022-02-12 12:40:31', '1644687631.8069'),
(264, 263, 1, 21, 42, 'PIQUEO REGIONAL ', 'Mini tacachos coronados con troso de cecina + chorizo + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:42:19', '1644687739.9666'),
(265, 263, 1, 21, 42, 'CHICHARRON DE POLLO', 'Patacones + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:43:05', '1644687785.2522'),
(266, 263, 1, 21, 42, 'CHICHARRON DE PESCADO', 'Patacones + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:43:44', '1644687824.7672'),
(267, 264, 1, 21, 43, 'ANTICUCHO', 'Papa sancochada + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:44:23', '1644687863.0015'),
(268, 264, 1, 21, 43, 'POLLO A LA PARRILLA ', 'Papa sancochada + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:45:19', '1644687919.0193'),
(269, 264, 1, 21, 43, 'POLLO A LA PLANCHA ', 'Papa sancochada + ensalada ', 'media/producto/default.png', 1, '2022-02-12 12:46:38', '1644687998.7299'),
(270, 264, 1, 21, 43, 'BROCHETAS DE POLLOS', 'Papas doradas + ensalada', 'media/producto/default.png', 1, '2022-02-12 12:47:30', '1644688050.4309'),
(271, 264, 1, 21, 43, 'BROCHETA REGIONAL ', 'Cecina+ chorizo + ensalda', 'media/producto/default.png', 1, '2022-02-12 12:48:15', '1644688095.5987'),
(272, 265, 1, 21, 44, 'PIQUEO 1 ', 'Mani tostado + canchita cebichera', 'media/producto/default.png', 1, '2022-02-12 12:50:21', '1644688221.7768'),
(273, 265, 1, 21, 44, 'PIQUEO 2', 'CHICLES + CONCHITA CEBICHERA', 'media/producto/default.png', 1, '2022-02-12 12:50:58', '1644688258.2089'),
(274, 189, 4, 21, 27, 'STELLA ARTOIS X 6 UND', '', 'media/producto/default.png', 1, '2022-02-12 13:07:55', '1644689275.7726'),
(275, 266, 4, 21, 29, 'PIÑA COLADA ', 'Piña, ron , crema de coco , leche', 'media/producto/default.png', 1, '2022-02-12 13:18:17', '1644689897.9462'),
(276, 267, 4, 21, 29, 'DAIQUIRI', 'Frozen fresa  o durazno ', 'media/producto/default.png', 1, '2022-02-12 13:19:21', '1644689961.2676'),
(277, 268, 4, 21, 29, 'MOJITO CLASICO', 'Hierva buena , ron , limon , soda', 'media/producto/default.png', 1, '2022-02-12 13:20:15', '1644690015.2359'),
(278, 269, 4, 21, 29, 'MOJITO FRUTADO', 'FRESA O MARCUYA', 'media/producto/default.png', 1, '2022-02-12 13:24:26', '1644690266.8289'),
(279, 270, 4, 21, 29, 'CUBA LIBRE', 'Ron , coca cola , limon', 'media/producto/default.png', 1, '2022-02-12 13:25:21', '1644690321.8269'),
(280, 212, 4, 21, 35, 'PISCO SOUR', 'PIS, JUGO DE LIMON', 'media/producto/default.png', 1, '2022-02-12 13:28:58', '1644690538.842'),
(281, 212, 4, 21, 35, 'SOUR DE FRUTA', 'MARACUYA, CAMU CAMU , ARAZA', 'media/producto/default.png', 1, '2022-02-12 13:29:50', '1644690590.6679'),
(282, 212, 4, 21, 35, 'CHILCANO', 'MARACUYA , CAMU CAMU  O CLASICO', 'media/producto/default.png', 1, '2022-02-12 13:30:39', '1644690639.8873'),
(283, 212, 4, 21, 35, 'PISCO PUNCH CONCHITA', 'PISCO , LIMON', 'media/producto/default.png', 1, '2022-02-12 13:31:24', '1644690684.2698'),
(284, 212, 4, 21, 35, 'MACHU PICHU', 'VARIOS', 'media/producto/default.png', 1, '2022-02-12 13:32:08', '1644690728.5221'),
(285, 212, 4, 21, 35, 'ALGARROBINA', 'ALGARROBINA , PISCO  , HUEVO', 'media/producto/default.png', 1, '2022-02-12 13:33:06', '1644690786.3864'),
(286, 254, 4, 21, 30, 'SHIVE', 'WISKY , LIMON', 'media/producto/default.png', 1, '2022-02-12 13:34:30', '1644690870.3781'),
(287, 254, 4, 21, 30, 'WHISKY BOM', 'Wisky , red bull', 'media/producto/default.png', 1, '2022-02-12 13:35:26', '1644690926.3078'),
(288, 254, 4, 21, 30, 'WHISKY SOUR', ' WHISKY , LIMON , JARABE DE GOMA', 'media/producto/default.png', 1, '2022-02-12 13:37:02', '1644691022.3661'),
(289, 216, 4, 21, 31, 'GIN TONIC', 'GINEBRA AGUA TONICA', 'media/producto/default.png', 1, '2022-02-12 13:40:10', '1644691210.3558'),
(290, 216, 4, 21, 31, 'GIN CON GIN', 'GINEBRA , GINGGER ALE', 'media/producto/default.png', 1, '2022-02-12 13:40:59', '1644691259.7647'),
(291, 216, 4, 21, 31, 'TOM COLLINS ', 'GINEBRA , GOMA', 'media/producto/default.png', 1, '2022-02-12 13:41:35', '1644691295.5535'),
(292, 216, 4, 21, 31, 'NEGRONIC', 'GINEBRA', 'media/producto/default.png', 1, '2022-02-12 13:42:58', '1644691378.8215'),
(293, 216, 4, 21, 31, 'MARTINI', 'GINEBRA', 'media/producto/default.png', 1, '2022-02-12 13:43:24', '1644691404.7621'),
(294, 220, 4, 21, 32, 'TEQUILLA SONRRISE', 'TEQUILA , GRANADINA', 'media/producto/default.png', 1, '2022-02-12 13:45:34', '1644691534.8808'),
(295, 218, 4, 21, 32, 'MARGARITA', 'TEQUILA', 'media/producto/default.png', 1, '2022-02-12 13:46:34', '1644691594.065'),
(296, 219, 4, 21, 32, 'BLUE MARGARITA', 'TEQUILA , ', 'media/producto/default.png', 1, '2022-02-12 13:47:17', '1644691637.5068'),
(297, 248, 4, 21, 32, 'MARGARITA BULLDOG', 'TEQUILA , LIMON', 'media/producto/default.png', 1, '2022-02-12 13:48:25', '1644691705.9552'),
(298, 222, 4, 21, 45, 'DESTORNILLADOR ', 'VODKA , JUGO DE NARANJA', 'media/producto/default.png', 1, '2022-02-12 13:49:48', '1644691788.1698'),
(299, 245, 4, 21, 45, 'COSMOPOLITAN', 'VODKA', 'media/producto/default.png', 1, '2022-02-12 13:50:38', '1644691838.9851'),
(300, 240, 4, 21, 45, 'APPLE MARTINI', 'VODKA', 'media/producto/default.png', 1, '2022-02-12 13:51:16', '1644691876.9731'),
(301, 241, 4, 21, 45, 'RUSO ( BLANCO O NEGRO) ', 'KALUHA , VODKA', 'media/producto/default.png', 1, '2022-02-12 13:52:31', '1644691951.2684'),
(302, 221, 4, 21, 45, 'CAIPIROSKA', 'VODKA , LIMA , AZUCAR', 'media/producto/default.png', 1, '2022-02-12 13:53:05', '1644691985.6978'),
(303, 252, 4, 21, 45, 'ORGASMO', 'VODKA , BAYLIS', 'media/producto/default.png', 1, '2022-02-12 13:53:40', '1644692020.8676'),
(304, 241, 4, 21, 46, 'CAIPIRINHA', 'CACHACA', 'media/producto/default.png', 1, '2022-02-12 13:55:08', '1644692108.1225'),
(305, 228, 4, 21, 46, 'DR. MELON', 'LICOR DE MELON', 'media/producto/default.png', 1, '2022-02-12 13:56:21', '1644692181.7074'),
(306, 248, 4, 21, 46, 'LA PISCINA', 'RON , TEQUILA', 'media/producto/default.png', 1, '2022-02-12 13:56:57', '1644692217.2106'),
(307, 228, 4, 21, 46, 'BAYLIS COLADO ', 'BAYLIS , RON', 'media/producto/default.png', 1, '2022-02-12 13:57:43', '1644692263.361'),
(308, 250, 4, 21, 46, 'AMARETTO SOUR', 'LIMON , CLARA DE HUEVO', 'media/producto/default.png', 1, '2022-02-12 13:58:25', '1644692305.398'),
(309, 251, 4, 21, 46, 'CARIBEÑO', 'RON DE COCO', 'media/producto/default.png', 1, '2022-02-12 13:59:06', '1644692346.8803'),
(310, 271, 4, 21, 48, 'CONCHITA ARDIENTE', 'AZUCAR HUAYO', 'media/producto/default.png', 1, '2022-02-12 14:03:51', '1644692631.9932'),
(311, 272, 4, 21, 48, 'COMO TE GUSTA', 'AGUA TONICA', 'media/producto/default.png', 1, '2022-02-12 14:04:30', '1644692670.9154'),
(312, 273, 4, 21, 48, 'PAL COVID', 'WITOCHADO', 'media/producto/default.png', 1, '2022-02-12 14:05:02', '1644692702.0111'),
(313, 274, 4, 21, 47, 'WHISKY JOHNNIE W. BLACK LABEL 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:17:05', '1644693425.2311'),
(314, 274, 4, 21, 47, 'WHISKY JOHNNIE W. DOBLE BLACK L 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:17:40', '1644693460.7159'),
(315, 274, 4, 21, 47, 'WHISKY JOHNNIE W. SWING 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:18:22', '1644693502.8734'),
(316, 274, 4, 21, 47, 'WHISKY CHIVAS12 AÑOS 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:19:17', '1644693557.8247'),
(317, 274, 4, 21, 47, 'WHISKY CHIVAS GOLD 18 AÑOS 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:20:17', '1644693617.6328'),
(318, 274, 4, 21, 47, 'WHISKY OLD PARR 12 AÑOS 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:20:57', '1644693657.0656'),
(319, 248, 4, 21, 47, 'TEQUILA JOSE CUERVO SILVER 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:22:41', '1644693761.9872'),
(320, 248, 4, 21, 47, 'TEQUILA JOSE CUERVO REPOSADO  750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:23:15', '1644693795.9378'),
(321, 248, 4, 21, 47, 'VODKA ABSOLUT CLASICO 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:24:33', '1644693873.8464'),
(322, 275, 4, 21, 47, 'JAGERMEISTER LICOR JAGER 700 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:30:19', '1644694219.573'),
(323, 276, 4, 21, 47, 'RICCADONA RUBY 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:31:07', '1644694267.4189'),
(324, 276, 4, 21, 47, 'RICCADONA MOSCATO 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:31:50', '1644694310.419'),
(325, 276, 4, 21, 47, 'VINO GRAN ROSE TABERNERO 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:32:30', '1644694350.6635'),
(326, 276, 4, 21, 47, 'VINO BORGOÑA TABERNERO 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:33:15', '1644694395.9402'),
(327, 276, 4, 21, 47, 'AGUARDIENTE ANTIOQUEÑO 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:33:55', '1644694435.1806'),
(328, 228, 4, 21, 47, 'RON HAVANA CLUB 750 ML ', '', 'media/producto/default.png', 1, '2022-02-12 14:37:06', '1644694626.331'),
(329, 223, 4, 21, 47, 'RON MEDELLIN 8 AÑOS 750 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:38:00', '1644694680.2815'),
(330, 228, 4, 21, 47, 'RON CAPITAN MORGAN 700 ML', '', 'media/producto/default.png', 1, '2022-02-12 14:38:29', '1644694709.2335'),
(331, 254, 4, 21, 47, 'VASO DE WHISKY ', '', 'media/producto/default.png', 1, '2022-02-12 14:39:03', '1644694743.2613'),
(332, 248, 4, 21, 47, 'SHOT DE TEQUILA', '', 'media/producto/default.png', 1, '2022-02-12 14:39:33', '1644694773.1492'),
(333, 248, 4, 21, 47, 'SHOT AGUARDIENTE ANTIOQUEÑO', '', 'media/producto/default.png', 1, '2022-02-12 14:40:12', '1644694812.6996'),
(334, 248, 4, 21, 47, 'SHOT JAGER', '', 'media/producto/default.png', 1, '2022-02-12 14:40:41', '1644694841.4956'),
(335, 256, 4, 21, 47, 'RED BULL CLASICO ', '', 'media/producto/default.png', 1, '2022-02-12 14:41:12', '1644694872.3841'),
(336, 215, 4, 21, 49, ' JARRA ALGARROBINA', '', 'media/producto/default.png', 1, '2022-02-12 14:42:25', '1644694945.9166'),
(337, 213, 2, 21, 49, ' JARRA PIÑA COLADA ', '', 'media/producto/default.png', 1, '2022-02-12 14:42:56', '1644694976.6844'),
(338, 246, 2, 21, 49, ' JARRA DAIQUIRI', '', 'media/producto/default.png', 1, '2022-02-12 14:43:24', '1644695004.0247'),
(339, 212, 4, 21, 49, ' JARRA PISCO', '', 'media/producto/default.png', 1, '2022-02-12 14:43:45', '1644695025.4639'),
(340, 266, 4, 21, 49, 'JARRA PIÑA COLADA', '', 'media/producto/default.png', 1, '2022-02-14 19:34:56', '1644885296.871'),
(341, 267, 4, 21, 49, 'JARRA DAIKIRI', '', 'media/producto/default.png', 1, '2022-02-14 19:49:03', '1644886143.6451'),
(342, 185, 4, 21, 27, 'BUDWEISER', '', 'media/producto/default.png', 0, '2022-02-20 17:11:25', '1645395085.5628'),
(343, 185, 4, 21, 27, 'TRIGO (BALDE X 6 UNID)', '', 'media/producto/default.png', 0, '2022-02-20 17:11:57', '1645395117.432'),
(344, 278, 1, 27, 50, 'PROMO SECO DE CABRITO', '', 'media/producto/default.png', 1, '2022-06-03 13:40:12', '1654281612.0055'),
(345, 278, 1, 27, 50, 'PROMO TACU TACU C/ LOMO FINO', '', 'media/producto/default.png', 1, '2022-06-03 13:40:53', '1654281653.4878'),
(346, 278, 2, 27, 50, 'PROMO CEBICHE', '', 'media/producto/default.png', 1, '2022-06-03 13:41:33', '1654281693.7086'),
(347, 278, 4, 27, 50, 'BUCKET CUZQUEÑA ', '', 'media/producto/default.png', 1, '2022-06-03 13:42:49', '1654281769.7797'),
(348, 278, 4, 27, 50, 'BUCKET PILSEN', '', 'media/producto/default.png', 1, '2022-06-03 13:43:15', '1654281795.6829'),
(349, 278, 4, 27, 50, 'CUZQUEÑA 310 ML', '', 'media/producto/default.png', 1, '2022-06-03 13:43:59', '1654281839.2145'),
(350, 278, 4, 27, 50, 'PILSEN 310 ML', '', 'media/producto/default.png', 1, '2022-06-03 13:44:28', '1654281868.2731'),
(351, 278, 4, 27, 50, 'UNI CUZQUEÑA 310 ML', '', 'media/producto/default.png', 1, '2022-06-03 13:45:42', '1654281942.3628'),
(352, 278, 4, 27, 50, 'UNI PILSEN 310 ML', '', 'media/producto/default.png', 1, '2022-06-03 13:46:09', '1654281969.7632'),
(353, 279, 4, 27, 27, 'CORONA X 6 UND', '', 'media/producto/default.png', 0, '2022-06-13 10:24:38', '1655133878.305'),
(354, 278, 4, 27, 47, 'STELLA X  6 UND', '', 'media/producto/default.png', 0, '2022-06-13 10:27:13', '1655134033.1807'),
(355, 10, 1, 27, 33, 'Sandwich de Pollo', '', 'media/producto/default.png', 1, '2022-09-24 00:23:27', '1663997007.5712'),
(356, 10, 1, 27, 33, 'Sandwich de Chancho', '', 'media/producto/default.png', 1, '2022-09-24 00:24:10', '1663997050.923'),
(357, 10, 2, 27, 33, 'Refresco', '', 'media/producto/default.png', 1, '2022-09-24 00:24:44', '1663997084.1249'),
(358, 10, 1, 27, 23, 'Fuente Chicharron Mixto', '', 'media/producto/default.png', 1, '2022-10-31 10:12:05', '1667229125.1577'),
(359, 10, 2, 27, 29, 'Chapito 2x1', '', 'media/producto/default.png', 1, '2022-10-31 10:14:40', '1667229280.184'),
(360, 10, 2, 27, 23, '1/2 Fuente cebiche conchita Mixto', '', 'media/producto/default.png', 0, '2022-11-11 14:46:23', '1668195983.2797'),
(361, 10, 4, 27, 33, 'PROMOLITA', '', 'media/producto/default.png', 1, '2022-11-11 14:51:41', '1668196301.338'),
(362, 10, 2, 27, 1, 'Causa acevichadda', '', 'media/producto/default.png', 1, '2022-12-16 08:18:24', '1671196704.8453'),
(363, 10, 1, 27, 1, 'Ensalada Cesar', '', 'media/producto/default.png', 1, '2022-12-16 08:18:52', '1671196732.9984'),
(364, 10, 2, 27, 1, 'Trio de Causas', '', 'media/producto/default.png', 1, '2022-12-16 08:19:29', '1671196769.8554'),
(365, 10, 1, 27, 1, 'Conchitas a la parmesana', '', 'media/producto/default.png', 1, '2022-12-16 08:20:04', '1671196804.8087');
INSERT INTO `productos` (`id_producto`, `id_receta`, `id_grupo`, `id_usuario`, `id_producto_familia`, `producto_nombre`, `producto_descripcion`, `producto_foto`, `producto_estado`, `producto_fecha_registro`, `producto_codigo`) VALUES
(366, 10, 2, 27, 2, 'Leche conchita afrodisiaco', '', 'media/producto/default.png', 1, '2022-12-16 08:24:57', '1671197097.9758'),
(367, 11, 2, 27, 3, 'Cebiche Conchita Ardiente', '', 'media/producto/default.png', 1, '2022-12-16 08:27:03', '1671197223.1604'),
(368, 10, 2, 27, 3, 'Cebiche de Conchas Negras', '', 'media/producto/default.png', 1, '2022-12-16 08:27:48', '1671197268.0274'),
(369, 10, 2, 27, 3, 'Cebiche de Pulpo', '', 'media/producto/default.png', 1, '2022-12-16 08:28:13', '1671197293.3681'),
(370, 11, 2, 27, 3, 'Cebiche de Pulpo', '', 'media/producto/default.png', 1, '2022-12-16 08:28:27', '1671197307.5596'),
(371, 11, 2, 27, 3, 'Cebiche Loretano', '', 'media/producto/default.png', 1, '2022-12-16 08:28:57', '1671197337.8893'),
(372, 10, 2, 27, 3, 'Cebiche de la Negra su Concha', '', 'media/producto/default.png', 1, '2022-12-16 08:29:35', '1671197375.1217'),
(373, 11, 1, 27, 4, 'Jalea de Paiche', '', 'media/producto/default.png', 0, '2022-12-16 08:33:04', '1671197584.3362'),
(374, 10, 1, 27, 4, 'Jalea de Corvina', '', 'media/producto/default.png', 0, '2022-12-16 08:33:36', '1671197616.24'),
(375, 10, 1, 27, 4, 'Jalea de Acarahuazu', '', 'media/producto/default.png', 0, '2022-12-16 08:34:05', '1671197645.9992'),
(376, 11, 1, 27, 4, 'jalea de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 08:34:27', '1671197667.9695'),
(377, 10, 1, 27, 4, 'Jalea de Chita', '', 'media/producto/default.png', 1, '2022-12-16 08:34:45', '1671197685.5282'),
(378, 10, 1, 27, 4, 'Jalea de Cabrilla', '', 'media/producto/default.png', 1, '2022-12-16 08:35:06', '1671197706.5026'),
(379, 10, 1, 27, 51, 'Jalea Real', '', 'media/producto/default.png', 1, '2022-12-16 08:37:31', '1671197851.5515'),
(380, 10, 1, 27, 51, 'Jalea de Paiche', '', 'media/producto/default.png', 1, '2022-12-16 08:38:03', '1671197883.7226'),
(381, 10, 1, 27, 51, 'Jalea de Corvina', '', 'media/producto/default.png', 1, '2022-12-16 08:39:10', '1671197950.9635'),
(382, 10, 1, 27, 51, 'Jalea de Acarahuazú', '', 'media/producto/default.png', 1, '2022-12-16 08:39:40', '1671197980.9893'),
(383, 10, 1, 27, 51, 'Jalea de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 08:40:13', '1671198013.5018'),
(384, 11, 1, 27, 51, 'Jalea de Chita', '', 'media/producto/default.png', 1, '2022-12-16 08:40:35', '1671198035.1261'),
(385, 11, 1, 27, 51, 'Jalea de Cabrilla', '', 'media/producto/default.png', 1, '2022-12-16 08:41:00', '1671198060.2147'),
(386, 11, 1, 27, 51, 'Jalea de Tromboyo', '', 'media/producto/default.png', 1, '2022-12-16 08:41:38', '1671198098.0782'),
(387, 11, 3, 27, 8, 'Chicharron de Pollo + Chaufa con Pollo', '', 'media/producto/default.png', 1, '2022-12-16 08:44:59', '1671198299.2101'),
(388, 10, 3, 27, 8, 'Cebichancho', '', 'media/producto/default.png', 1, '2022-12-16 08:48:51', '1671198531.2971'),
(389, 11, 1, 27, 8, 'Chaufa + cecina o Chorizo', '', 'media/producto/default.png', 1, '2022-12-16 08:49:27', '1671198567.2322'),
(390, 11, 3, 27, 52, 'Duo a la Conchita', '', 'media/producto/default.png', 1, '2022-12-16 08:50:51', '1671198651.1335'),
(391, 11, 3, 27, 52, 'Duo Mixto', '', 'media/producto/default.png', 1, '2022-12-16 08:51:21', '1671198681.793'),
(392, 11, 1, 27, 9, 'Chupe de Cangrejos', '', 'media/producto/default.png', 1, '2022-12-16 08:57:10', '1671199030.7175'),
(393, 12, 1, 27, 9, 'Chupe de Choro', '', 'media/producto/default.png', 1, '2022-12-16 08:57:32', '1671199052.9896'),
(394, 11, 1, 27, 53, 'Chilicano de Doncella', '', 'media/producto/default.png', 1, '2022-12-16 08:58:46', '1671199126.2273'),
(395, 11, 1, 27, 53, 'Chilicano de Paiche', '', 'media/producto/default.png', 1, '2022-12-16 08:58:46', '1671199126.7336'),
(396, 11, 1, 27, 53, 'Chilicano de Doncella', '', 'media/producto/default.png', 0, '2022-12-16 08:58:46', '1671199126.8561'),
(397, 11, 1, 27, 53, 'Chilicano de Doncella', '', 'media/producto/default.png', 0, '2022-12-16 08:58:46', '1671199126.9908'),
(398, 11, 1, 27, 53, 'Chilicano de Paiche', '', 'media/producto/default.png', 1, '2022-12-16 09:00:03', '1671199203.0892'),
(399, 12, 1, 27, 53, 'Chilicano de Corvina', '', 'media/producto/default.png', 1, '2022-12-16 09:00:30', '1671199230.9844'),
(400, 12, 1, 27, 53, 'Chilicano de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 09:01:01', '1671199261.5453'),
(401, 12, 1, 27, 53, 'Chilicano de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 09:01:02', '1671199262.0374'),
(402, 12, 1, 27, 53, 'Chilicano de Acarahuazú', '', 'media/producto/default.png', 1, '2022-12-16 09:01:26', '1671199286.6438'),
(403, 10, 1, 27, 54, 'Parihuela de Doncella', '', 'media/producto/default.png', 1, '2022-12-16 09:02:38', '1671199358.9534'),
(404, 10, 1, 27, 54, 'Parihuela de Paiche', '', 'media/producto/default.png', 1, '2022-12-16 09:02:57', '1671199377.5518'),
(405, 11, 1, 27, 54, 'Parihuela de Corvina', '', 'media/producto/default.png', 1, '2022-12-16 09:03:21', '1671199401.9055'),
(406, 10, 1, 27, 54, 'Parihuela de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 09:03:51', '1671199431.8352'),
(407, 10, 1, 27, 54, 'Parihuela de Acarahuazú', '', 'media/producto/default.png', 1, '2022-12-16 09:04:32', '1671199472.1453'),
(408, 11, 1, 27, 54, 'Parihuela de Chita', '', 'media/producto/default.png', 1, '2022-12-16 09:04:55', '1671199495.1206'),
(409, 11, 1, 27, 54, 'Parihuela de Cabrilla', '', 'media/producto/default.png', 1, '2022-12-16 09:05:56', '1671199556.5484'),
(410, 11, 1, 27, 54, 'Parihuela de Tromboyo', '', 'media/producto/default.png', 1, '2022-12-16 09:06:32', '1671199592.5511'),
(411, 10, 1, 27, 10, 'Sudado de Paiche', '', 'media/producto/default.png', 1, '2022-12-16 09:07:47', '1671199667.9136'),
(412, 10, 1, 27, 10, 'Sudado de Gamitana', '', 'media/producto/default.png', 1, '2022-12-16 09:08:13', '1671199693.9381'),
(413, 11, 1, 27, 10, 'Sudado de Tucunaré', '', 'media/producto/default.png', 1, '2022-12-16 09:08:36', '1671199716.9481'),
(414, 11, 1, 27, 10, 'Sudado de Acarahuazú', '', 'media/producto/default.png', 1, '2022-12-16 09:08:58', '1671199738.7855'),
(415, 11, 1, 27, 10, 'Sudado de Chita', '', 'media/producto/default.png', 1, '2022-12-16 09:09:33', '1671199773.285'),
(416, 11, 1, 27, 10, 'Sudado de Cabrilla', '', 'media/producto/default.png', 1, '2022-12-16 09:10:00', '1671199800.1521'),
(417, 10, 1, 27, 10, 'Sudado de Tromboyo', '', 'media/producto/default.png', 1, '2022-12-16 09:10:24', '1671199824.8011'),
(418, 11, 1, 27, 10, 'Sudado de Mariscos', '', 'media/producto/default.png', 1, '2022-12-16 09:10:54', '1671199854.8112'),
(419, 11, 1, 27, 10, 'Sudado Mixto ', '', 'media/producto/default.png', 1, '2022-12-16 09:12:03', '1671199923.6995'),
(420, 10, 1, 27, 10, 'Picante de Mariscos', '', 'media/producto/default.png', 1, '2022-12-16 09:13:05', '1671199985.8355'),
(421, 11, 1, 27, 12, 'Pescado a la Menier', '', 'media/producto/default.png', 1, '2022-12-16 09:18:39', '1671200319.8443'),
(422, 11, 1, 27, 12, 'Lomo al Grill Con Puré', '', 'media/producto/default.png', 1, '2022-12-16 09:19:05', '1671200345.9851'),
(423, 11, 1, 27, 12, 'Corvina en salsa a lo Macho', '', 'media/producto/default.png', 1, '2022-12-16 09:20:07', '1671200407.0501'),
(424, 11, 1, 27, 12, 'Tucunaré a lo Macho', '', 'media/producto/default.png', 1, '2022-12-16 09:20:36', '1671200436.999'),
(425, 11, 1, 27, 55, 'Aeropuerto Salvaje', '', 'media/producto/default.png', 1, '2022-12-16 09:31:03', '1671201063.6195'),
(426, 10, 1, 27, 55, 'Aeropuerto de Langostinos', '', 'media/producto/default.png', 1, '2022-12-16 09:31:42', '1671201102.5848'),
(427, 10, 1, 27, 55, 'Aeropuerto de Pollo', '', 'media/producto/default.png', 1, '2022-12-16 09:32:21', '1671201141.9039'),
(428, 11, 1, 27, 55, 'Aeropuerto de Carne', '', 'media/producto/default.png', 1, '2022-12-16 09:32:44', '1671201164.1462'),
(429, 11, 1, 27, 14, 'Chaufa de Langostinos', '', 'media/producto/default.png', 1, '2022-12-16 09:33:29', '1671201209.9523'),
(430, 12, 1, 27, 55, 'Chaufa de Pollo', '', 'media/producto/default.png', 0, '2022-12-16 09:34:35', '1671201275.2'),
(431, 10, 1, 27, 14, 'Chaufa de Pollo', '', 'media/producto/default.png', 1, '2022-12-16 09:35:54', '1671201354.0784'),
(432, 11, 1, 27, 56, 'Corvina Frita', '', 'media/producto/default.png', 1, '2022-12-16 09:43:07', '1671201787.5125'),
(433, 11, 1, 27, 56, 'Acarahuazú Frito', '', 'media/producto/default.png', 1, '2022-12-16 09:43:54', '1671201834.4625'),
(434, 10, 1, 27, 56, 'Chita Frito', '', 'media/producto/default.png', 1, '2022-12-16 09:44:37', '1671201877.699'),
(435, 11, 1, 27, 56, 'Tucunaré Frito', '', 'media/producto/default.png', 1, '2022-12-16 09:45:22', '1671201922.5053'),
(436, 11, 1, 27, 56, 'Tromboyo Frito', '', 'media/producto/default.png', 1, '2022-12-16 09:45:51', '1671201951.4883'),
(437, 10, 1, 27, 56, 'Cabrilla Frita', '', 'media/producto/default.png', 1, '2022-12-16 09:46:13', '1671201973.9518'),
(438, 10, 1, 27, 18, 'Tacu Tacu en Salsa de Camarones', '', 'media/producto/default.png', 1, '2022-12-16 09:51:04', '1671202264.032'),
(439, 11, 1, 27, 18, 'Tacu tacu Con Langostino', '', 'media/producto/default.png', 1, '2022-12-16 09:51:35', '1671202295.9616'),
(440, 11, 1, 27, 18, 'Tacu Tacu con Seco de Cabrito', '', 'media/producto/default.png', 1, '2022-12-16 09:51:59', '1671202319.6504'),
(441, 10, 1, 27, 19, 'Saltado Oriental de Pollo o Lomo', '', 'media/producto/default.png', 1, '2022-12-16 09:55:30', '1671202530.9688'),
(442, 11, 1, 27, 19, 'Saltado de Cecina', '', 'media/producto/default.png', 1, '2022-12-16 09:56:18', '1671202578.2155'),
(443, 10, 1, 27, 20, 'Chorizo con Tacacho', '', 'media/producto/default.png', 1, '2022-12-16 09:57:53', '1671202673.2485'),
(444, 11, 1, 27, 20, 'Pechuga con Tacacho', '', 'media/producto/default.png', 1, '2022-12-16 09:58:18', '1671202698.2486'),
(445, 11, 1, 27, 20, 'Mixto Regional', '', 'media/producto/default.png', 1, '2022-12-16 09:58:44', '1671202724.4076'),
(446, 11, 1, 27, 21, 'Asado de Pato', '', 'media/producto/default.png', 1, '2022-12-16 10:21:32', '1671204092.8186'),
(447, 10, 1, 27, 22, 'Motelo con Tallarin', '', 'media/producto/default.png', 1, '2022-12-16 10:22:32', '1671204152.1756'),
(448, 10, 1, 27, 57, 'Ronda Marina', '', 'media/producto/default.png', 1, '2022-12-16 10:23:32', '1671204212.6157'),
(449, 10, 1, 27, 57, 'Ronda Regional', '', 'media/producto/default.png', 1, '2022-12-16 10:24:13', '1671204253.321'),
(450, 11, 1, 27, 11, 'Alitas Bufalo', '', 'media/producto/default.png', 1, '2022-12-16 10:24:58', '1671204298.3753'),
(451, 10, 1, 27, 11, 'Alitas Anticucheras', '', 'media/producto/default.png', 1, '2022-12-16 10:25:22', '1671204322.0645'),
(452, 11, 1, 27, 58, 'Fetuccini con cecina', '', 'media/producto/default.png', 1, '2022-12-16 10:26:30', '1671204390.8483'),
(453, 11, 1, 27, 58, 'Fetuccini a la Huancaina Con Lomo Saltado', '', 'media/producto/default.png', 1, '2022-12-16 10:26:59', '1671204419.8319'),
(454, 12, 1, 27, 58, 'Fetuccini con Frutos del mar', '', 'media/producto/default.png', 1, '2022-12-16 10:27:26', '1671204446.5282'),
(455, 10, 1, 27, 58, 'Fetuccini con Langostinos', '', 'media/producto/default.png', 1, '2022-12-16 10:27:51', '1671204471.3617'),
(456, 10, 1, 27, 58, 'Fetuccini Saltado con cecina', '', 'media/producto/default.png', 1, '2022-12-16 10:28:19', '1671204499.3866'),
(457, 11, 1, 27, 24, 'Porcion de Platano frito', '', 'media/producto/default.png', 1, '2022-12-16 10:31:26', '1671204686.3146'),
(458, 11, 4, 27, 27, 'Trigo (Balde x 6und)', '', 'media/producto/default.png', 1, '2022-12-16 10:36:34', '1671204994.2898'),
(459, 10, 4, 27, 27, 'Pilsen (Balde x 6 und)', '', 'media/producto/default.png', 0, '2022-12-16 10:37:20', '1671205040.136'),
(460, 226, 4, 2, 47, 'TRIGO 310ML', '', 'media/producto/default.png', 1, '2023-03-04 11:54:11', '1677948851.0823'),
(461, 186, 4, 2, 47, 'Trigo 310ml', '', 'media/producto/default.png', 0, '2023-03-04 12:03:29', '1677949409.9631'),
(462, 204, 4, 2, 27, 'Trigo 310ml', '', 'media/producto/default.png', 0, '2023-03-04 12:23:59', '1677950639.0972'),
(463, 204, 4, 2, 27, 'Trigo 305ml', '', 'media/producto/default.png', 1, '2023-03-04 12:34:04', '1677951244.2802'),
(464, 185, 4, 2, 27, 'Cristal 305ml', '', 'media/producto/default.png', 1, '2023-03-04 12:36:08', '1677951368.7651'),
(465, 185, 4, 2, 27, 'Cristal 305ml (Balde x 6 unid)', '', 'media/producto/default.png', 1, '2023-03-04 12:39:09', '1677951549.1088');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_familia`
--

CREATE TABLE `producto_familia` (
  `id_producto_familia` int(11) NOT NULL,
  `producto_familia_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `producto_familia_fecha_registro` datetime NOT NULL,
  `producto_familia_estado` tinyint(2) NOT NULL,
  `producto_orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto_familia`
--

INSERT INTO `producto_familia` (`id_producto_familia`, `producto_familia_nombre`, `producto_familia_fecha_registro`, `producto_familia_estado`, `producto_orden`) VALUES
(1, 'Entradas', '2021-09-15 12:41:55', 1, 1),
(2, 'Leches', '2021-09-15 12:42:32', 1, 2),
(3, 'Cebiches', '2021-09-15 12:42:42', 1, 3),
(4, 'Chicharrones', '2021-09-15 12:42:53', 1, 4),
(5, 'Tríos', '2021-09-15 12:44:14', 1, 8),
(8, 'Combinados', '2021-10-04 14:57:38', 1, 6),
(9, 'Sopa', '2021-10-04 14:57:50', 1, 9),
(10, 'Sudados', '2021-10-04 14:58:04', 1, 12),
(11, 'Alitas', '2021-10-04 14:58:29', 1, 27),
(12, 'Platos a la Carta', '2021-10-04 14:58:53', 1, 13),
(13, 'Pulpo', '2021-10-04 14:59:08', 1, 14),
(14, 'Chaufas', '2021-10-04 14:59:19', 1, 16),
(15, 'A la Plancha', '2021-10-04 14:59:41', 1, 18),
(16, 'A lo Pobre', '2021-10-04 14:59:56', 1, 19),
(17, 'En crema blanca', '2021-10-04 15:00:14', 1, 20),
(18, 'Tacu Tacu', '2021-10-04 15:00:38', 1, 21),
(19, 'Saltados', '2021-10-04 15:00:50', 1, 22),
(20, 'Platos Regionales', '2021-10-04 15:01:08', 1, 23),
(21, 'Pato', '2021-10-04 15:01:30', 1, 24),
(22, 'Motelo', '2021-10-04 15:01:51', 1, 25),
(23, 'Fuentes', '2021-10-04 15:02:25', 1, 29),
(24, 'Guarniciones', '2021-10-04 15:02:44', 1, 30),
(25, 'Refresco', '2021-10-04 15:03:01', 1, 31),
(26, 'Gaseosas', '2021-10-04 15:03:19', 1, 32),
(27, 'Cerveza', '2021-10-04 15:03:39', 1, 33),
(28, 'Cocteles', '2021-11-11 16:03:01', 1, 28),
(29, 'Ron', '2021-11-11 16:03:24', 1, 29),
(30, 'Whisky', '2021-11-11 16:04:00', 1, 30),
(31, 'GIN', '2021-11-11 16:05:37', 1, 31),
(32, 'Tequila', '2021-11-11 16:05:50', 1, 32),
(33, 'Otros', '2021-11-11 14:13:55', 1, 33),
(35, 'Pisco', '2021-11-11 16:22:25', 1, 35),
(36, 'MARCELA  NAVARRO', '2021-11-27 14:32:34', 0, 36),
(37, 'COMO TE GUSTA', '2022-02-12 12:11:55', 1, 37),
(38, 'ALITAS NOCTURNAS', '2022-02-12 12:12:16', 1, 38),
(39, 'SALCHIPAPAS', '2022-02-12 12:12:27', 1, 39),
(40, 'HAMBURGUESAS', '2022-02-12 12:12:51', 1, 40),
(41, 'MAKIS', '2022-02-12 12:12:58', 1, 41),
(42, 'PIQUEOS CALIENTES', '2022-02-12 12:13:09', 1, 42),
(43, 'PA PICAR', '2022-02-12 12:13:49', 1, 43),
(44, 'PIQUEOS RAPIDOS', '2022-02-12 12:14:06', 1, 44),
(45, 'VODKA', '2022-02-12 13:49:00', 1, 45),
(46, 'OTROS TRAGOS', '2022-02-12 13:54:08', 1, 46),
(47, 'BOTELLAS', '2022-02-12 13:59:33', 1, 47),
(48, 'AFRODISIACO', '2022-02-12 14:03:10', 1, 48),
(49, 'JARRAS', '2022-02-12 14:41:45', 1, 49),
(50, 'PROMOCION ', '2022-06-03 13:39:15', 1, 50),
(51, 'Jaleas', '2022-12-16 08:36:35', 1, 5),
(52, 'Duos', '2022-12-16 08:49:45', 1, 7),
(53, 'Chilicanos', '2022-12-16 08:58:08', 1, 10),
(54, 'Parihuelas', '2022-12-16 09:01:58', 1, 11),
(55, 'Aeropuertos', '2022-12-16 09:26:23', 1, 15),
(56, 'Fritos', '2022-12-16 09:41:30', 1, 17),
(57, 'Ronda pa´ Picar', '2022-12-16 10:23:11', 1, 26),
(58, 'PASTAS', '2022-12-16 10:26:03', 1, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_precio`
--

CREATE TABLE `producto_precio` (
  `id_producto_precio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_unidad_medida` int(11) NOT NULL,
  `producto_precio_codigoafectacion` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '20',
  `producto_precio_venta` decimal(10,2) NOT NULL,
  `producto_precio_fecha_registro` datetime NOT NULL,
  `producto_precio_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto_precio`
--

INSERT INTO `producto_precio` (`id_producto_precio`, `id_producto`, `id_unidad_medida`, `producto_precio_codigoafectacion`, `producto_precio_venta`, `producto_precio_fecha_registro`, `producto_precio_estado`) VALUES
(12, 9, 59, '20', '25.00', '2021-04-27 14:21:28', 0),
(13, 10, 59, '20', '10.00', '2021-04-27 14:21:44', 0),
(14, 11, 59, '20', '10.00', '2021-04-28 23:28:34', 0),
(15, 12, 59, '20', '28.00', '2021-05-01 10:41:39', 0),
(16, 13, 59, '20', '5.00', '2021-05-01 23:03:21', 0),
(17, 14, 59, '20', '0.10', '2021-05-02 23:17:19', 0),
(18, 17, 59, '20', '0.20', '2021-05-02 23:21:14', 0),
(19, 14, 59, '20', '0.20', '2021-05-24 13:55:22', 0),
(20, 17, 59, '20', '0.30', '2021-05-24 13:56:01', 0),
(21, 14, 59, '20', '0.10', '2021-05-24 13:59:34', 0),
(22, 9, 59, '20', '25.00', '2021-07-14 13:34:27', 0),
(23, 9, 59, '20', '28.00', '2021-08-09 10:43:10', 0),
(26, 9, 59, '20', '30.00', '2021-08-12 11:56:00', 0),
(27, 9, 59, '20', '35.00', '2021-09-13 12:06:07', 0),
(28, 9, 59, '20', '15.00', '2021-09-14 15:15:14', 1),
(29, 11, 59, '20', '18.00', '2021-09-14 15:18:45', 0),
(30, 13, 59, '20', '15.00', '2021-09-14 15:19:15', 0),
(31, 10, 59, '20', '15.00', '2021-09-14 15:21:17', 1),
(32, 12, 59, '20', '25.00', '2021-09-14 15:26:36', 0),
(33, 14, 59, '20', '25.00', '2021-09-14 15:32:21', 0),
(34, 17, 59, '20', '23.00', '2021-09-14 15:35:22', 0),
(35, 18, 59, '20', '25.00', '2021-10-04 15:07:06', 1),
(36, 19, 59, '20', '18.00', '2021-10-04 15:11:15', 0),
(37, 20, 59, '20', '20.00', '2021-10-04 15:13:58', 0),
(38, 21, 59, '20', '18.00', '2021-10-04 15:17:50', 0),
(39, 22, 59, '20', '20.00', '2021-10-04 15:19:57', 0),
(40, 23, 59, '20', '18.00', '2021-10-04 15:27:25', 0),
(41, 24, 59, '20', '35.00', '2021-10-04 15:31:54', 0),
(42, 25, 59, '20', '23.00', '2021-10-04 15:36:36', 0),
(43, 26, 59, '20', '29.00', '2021-10-04 15:39:44', 0),
(44, 27, 59, '20', '29.00', '2021-10-04 15:41:13', 0),
(45, 28, 59, '20', '35.00', '2021-10-04 15:42:55', 0),
(46, 29, 59, '20', '35.00', '2021-10-04 15:44:17', 0),
(47, 30, 59, '20', '33.00', '2021-10-05 12:54:34', 0),
(48, 31, 59, '20', '33.00', '2021-10-05 12:56:23', 0),
(49, 32, 59, '20', '33.00', '2021-10-05 12:59:39', 0),
(50, 33, 59, '20', '39.00', '2021-10-05 13:02:01', 1),
(51, 34, 59, '20', '39.00', '2021-10-05 13:12:06', 0),
(52, 35, 59, '20', '33.00', '2021-10-05 13:13:56', 0),
(53, 36, 59, '20', '33.00', '2021-10-05 13:15:34', 0),
(54, 37, 59, '20', '35.00', '2021-10-05 13:16:43', 0),
(55, 38, 59, '20', '35.00', '2021-10-05 13:18:27', 0),
(56, 39, 59, '20', '35.00', '2021-10-05 13:21:36', 0),
(57, 40, 59, '20', '37.00', '2021-10-05 13:23:22', 0),
(58, 41, 59, '20', '39.00', '2021-10-05 13:24:29', 0),
(59, 42, 59, '20', '40.00', '2021-10-05 14:07:30', 0),
(60, 43, 59, '20', '43.00', '2021-10-05 14:09:05', 0),
(61, 44, 59, '20', '33.00', '2021-10-05 14:12:52', 0),
(62, 45, 59, '20', '33.00', '2021-10-05 14:14:10', 0),
(63, 46, 59, '20', '33.00', '2021-10-05 14:34:52', 0),
(64, 47, 59, '20', '33.00', '2021-10-05 14:43:14', 0),
(65, 48, 59, '20', '33.00', '2021-10-05 14:58:31', 0),
(66, 49, 59, '20', '33.00', '2021-10-06 13:00:49', 0),
(67, 50, 59, '20', '33.00', '2021-10-06 13:05:05', 0),
(68, 51, 59, '20', '33.00', '2021-10-06 14:23:53', 0),
(69, 52, 59, '20', '33.00', '2021-10-06 14:27:26', 0),
(70, 53, 59, '20', '33.00', '2021-10-06 14:48:55', 0),
(71, 54, 59, '20', '33.00', '2021-10-06 14:51:00', 0),
(72, 55, 59, '20', '37.00', '2021-10-06 14:53:50', 0),
(73, 56, 59, '20', '37.00', '2021-10-06 15:00:15', 0),
(74, 57, 59, '20', '37.00', '2021-10-06 15:01:29', 0),
(75, 58, 59, '20', '37.00', '2021-10-06 15:01:29', 0),
(76, 58, 59, '20', '37.00', '2021-10-06 15:04:15', 0),
(77, 59, 59, '20', '37.00', '2021-10-06 15:16:32', 0),
(78, 60, 59, '20', '20.00', '2021-10-06 15:32:35', 0),
(79, 61, 59, '20', '25.00', '2021-10-06 15:34:23', 0),
(80, 62, 59, '20', '35.00', '2021-10-06 15:35:43', 0),
(81, 63, 59, '20', '35.00', '2021-10-06 15:38:37', 0),
(82, 64, 59, '20', '33.00', '2021-10-06 15:41:07', 0),
(83, 65, 59, '20', '33.00', '2021-10-06 15:57:42', 0),
(84, 66, 59, '20', '35.00', '2021-10-06 15:59:17', 0),
(85, 67, 59, '20', '35.00', '2021-10-06 16:00:45', 0),
(86, 68, 59, '20', '35.00', '2021-10-06 16:11:31', 0),
(87, 69, 59, '20', '30.00', '2021-10-07 11:15:20', 1),
(88, 70, 59, '20', '30.00', '2021-10-07 11:16:32', 1),
(89, 71, 59, '20', '30.00', '2021-10-07 11:17:55', 1),
(90, 72, 59, '20', '25.00', '2021-10-07 11:19:04', 1),
(91, 73, 59, '20', '25.00', '2021-10-07 11:20:06', 1),
(92, 74, 59, '20', '33.00', '2021-10-07 11:24:07', 0),
(93, 75, 59, '20', '38.00', '2021-10-07 11:27:14', 0),
(94, 76, 59, '20', '33.00', '2021-10-07 11:30:24', 0),
(95, 77, 59, '20', '33.00', '2021-10-07 11:40:50', 0),
(96, 78, 59, '20', '33.00', '2021-10-07 11:55:58', 0),
(97, 79, 59, '20', '33.00', '2021-10-07 12:01:49', 0),
(98, 80, 59, '20', '33.00', '2021-10-07 12:04:03', 0),
(99, 81, 59, '20', '35.00', '2021-10-07 12:05:19', 0),
(100, 82, 59, '20', '35.00', '2021-10-07 12:12:48', 0),
(101, 83, 59, '20', '35.00', '2021-10-07 12:15:27', 0),
(102, 84, 59, '20', '30.00', '2021-10-07 12:21:34', 0),
(103, 85, 59, '20', '30.00', '2021-10-07 12:23:45', 0),
(104, 86, 59, '20', '30.00', '2021-10-07 12:26:36', 0),
(105, 87, 59, '20', '35.00', '2021-10-07 12:28:33', 0),
(106, 88, 59, '20', '35.00', '2021-10-07 12:30:40', 1),
(107, 89, 59, '20', '33.00', '2021-10-07 12:38:54', 0),
(108, 90, 59, '20', '35.00', '2021-10-07 12:43:18', 0),
(109, 91, 59, '20', '35.00', '2021-10-07 12:44:59', 0),
(110, 92, 59, '20', '29.00', '2021-10-07 12:46:34', 0),
(111, 93, 59, '20', '33.00', '2021-10-07 13:34:16', 0),
(112, 94, 59, '20', '38.00', '2021-10-07 13:35:39', 0),
(113, 95, 59, '20', '38.00', '2021-10-07 13:36:51', 0),
(114, 96, 59, '20', '38.00', '2021-10-07 13:38:37', 0),
(115, 97, 59, '20', '35.00', '2021-10-07 13:42:05', 0),
(116, 98, 59, '20', '35.00', '2021-10-07 13:43:08', 0),
(117, 99, 59, '20', '38.00', '2021-10-07 13:47:37', 0),
(118, 100, 59, '20', '35.00', '2021-10-07 13:49:11', 0),
(119, 101, 59, '20', '33.00', '2021-10-07 13:50:09', 0),
(120, 102, 59, '20', '33.00', '2021-10-07 13:51:18', 0),
(121, 103, 59, '20', '38.00', '2021-10-07 13:52:57', 0),
(122, 104, 59, '20', '35.00', '2021-10-07 13:54:30', 0),
(123, 105, 59, '20', '35.00', '2021-10-07 13:56:11', 0),
(124, 106, 59, '20', '35.00', '2021-10-07 13:58:05', 0),
(125, 107, 59, '20', '35.00', '2021-10-07 14:01:45', 0),
(126, 108, 59, '20', '35.00', '2021-10-07 14:04:48', 1),
(127, 109, 59, '20', '38.00', '2021-10-07 14:06:36', 0),
(128, 110, 59, '20', '35.00', '2021-10-07 14:10:26', 0),
(129, 111, 59, '20', '38.00', '2021-10-08 12:39:16', 0),
(130, 112, 59, '20', '38.00', '2021-10-08 12:42:11', 0),
(131, 113, 59, '20', '35.00', '2021-10-08 12:43:58', 0),
(132, 114, 59, '20', '38.00', '2021-10-08 12:49:58', 0),
(133, 115, 59, '20', '35.00', '2021-10-08 12:54:09', 0),
(134, 116, 59, '20', '30.00', '2021-10-08 12:57:55', 0),
(135, 117, 59, '20', '38.00', '2021-10-08 12:59:05', 0),
(136, 118, 59, '20', '35.00', '2021-10-08 13:00:23', 0),
(137, 119, 59, '20', '35.00', '2021-10-08 13:01:15', 0),
(138, 120, 59, '20', '38.00', '2021-10-08 13:02:18', 0),
(139, 121, 59, '20', '35.00', '2021-10-08 13:03:29', 0),
(140, 122, 59, '20', '35.00', '2021-10-08 13:06:38', 0),
(141, 123, 59, '20', '35.00', '2021-10-08 13:08:07', 0),
(142, 124, 59, '20', '35.00', '2021-10-08 13:09:27', 0),
(143, 125, 59, '20', '35.00', '2021-10-08 13:11:45', 0),
(144, 126, 59, '20', '40.00', '2021-10-08 13:12:42', 0),
(145, 127, 59, '20', '40.00', '2021-10-08 13:13:08', 0),
(146, 128, 59, '20', '40.00', '2021-10-08 13:14:47', 0),
(147, 129, 59, '20', '40.00', '2021-10-08 13:15:24', 0),
(148, 130, 59, '20', '40.00', '2021-10-08 13:17:25', 0),
(149, 131, 59, '20', '40.00', '2021-10-08 13:18:29', 0),
(150, 132, 59, '20', '70.00', '2021-10-08 13:19:35', 0),
(151, 133, 59, '20', '90.00', '2021-10-08 13:20:19', 0),
(152, 134, 59, '20', '80.00', '2021-10-08 13:21:25', 0),
(153, 135, 59, '20', '90.00', '2021-10-08 13:22:24', 0),
(154, 136, 59, '20', '100.00', '2021-10-08 13:23:31', 0),
(155, 137, 59, '20', '70.00', '2021-10-08 13:24:05', 1),
(156, 138, 59, '20', '90.00', '2021-10-08 13:24:51', 0),
(157, 139, 59, '20', '100.00', '2021-10-08 13:25:36', 0),
(158, 140, 59, '20', '75.00', '2021-10-08 13:27:00', 0),
(159, 141, 59, '20', '75.00', '2021-10-08 13:27:53', 0),
(160, 142, 59, '20', '90.00', '2021-10-08 13:28:26', 1),
(161, 143, 59, '20', '8.00', '2021-10-08 13:33:02', 1),
(162, 144, 59, '20', '8.00', '2021-10-08 13:33:49', 1),
(163, 145, 59, '20', '8.00', '2021-10-08 13:34:13', 1),
(164, 146, 59, '20', '8.00', '2021-10-08 13:34:54', 1),
(165, 147, 59, '20', '8.00', '2021-10-08 13:35:35', 1),
(166, 148, 59, '20', '10.00', '2021-10-08 13:35:54', 0),
(167, 149, 59, '20', '10.00', '2021-10-08 13:35:55', 1),
(168, 150, 59, '20', '8.00', '2021-10-08 13:36:16', 1),
(169, 151, 59, '20', '8.00', '2021-10-08 13:36:46', 1),
(170, 152, 59, '20', '13.00', '2021-10-08 13:37:18', 0),
(171, 153, 59, '20', '6.00', '2021-10-08 13:38:59', 0),
(172, 154, 59, '20', '15.00', '2021-10-08 13:39:50', 0),
(173, 155, 59, '20', '4.00', '2021-10-08 13:40:22', 1),
(174, 156, 59, '20', '4.00', '2021-10-08 13:46:05', 0),
(175, 157, 59, '20', '4.00', '2021-10-08 13:46:35', 0),
(176, 158, 59, '20', '5.00', '2021-10-08 13:47:19', 0),
(177, 159, 59, '20', '15.00', '2021-10-08 13:48:48', 0),
(178, 160, 59, '20', '10.00', '2021-10-08 13:49:37', 0),
(179, 161, 59, '20', '8.00', '2021-10-08 13:50:20', 1),
(180, 162, 59, '20', '8.00', '2021-10-08 13:51:02', 0),
(181, 163, 59, '20', '10.00', '2021-10-08 13:51:50', 0),
(182, 164, 59, '20', '10.00', '2021-10-08 13:52:40', 1),
(183, 165, 59, '20', '10.00', '2021-10-08 13:53:19', 1),
(184, 166, 59, '20', '12.00', '2021-10-08 13:54:04', 0),
(185, 167, 59, '20', '12.00', '2021-10-08 13:54:42', 0),
(186, 168, 59, '20', '12.00', '2021-10-08 13:55:16', 0),
(187, 169, 59, '20', '10.00', '2021-10-08 13:55:56', 0),
(188, 170, 59, '20', '10.00', '2021-10-08 13:56:29', 0),
(189, 49, 59, '20', '0.00', '2021-10-25 17:26:39', 0),
(190, 171, 59, '20', '6.00', '2021-11-11 14:11:09', 0),
(191, 172, 59, '20', '15.00', '2021-11-11 14:13:24', 0),
(192, 173, 59, '20', '3.00', '2021-11-11 14:17:00', 1),
(193, 174, 59, '20', '1.00', '2021-11-11 14:26:23', 0),
(194, 175, 59, '20', '15.00', '2021-11-11 14:39:52', 0),
(195, 176, 59, '20', '5.00', '2021-11-11 14:46:08', 0),
(196, 177, 59, '20', '4.00', '2021-11-11 14:48:24', 0),
(197, 178, 59, '20', '4.00', '2021-11-11 14:49:13', 1),
(198, 179, 59, '20', '4.00', '2021-11-11 14:49:37', 1),
(199, 180, 59, '20', '10.00', '2021-11-11 14:52:30', 0),
(200, 181, 59, '20', '15.00', '2021-11-11 14:53:31', 0),
(201, 163, 59, '20', '9.00', '2021-11-11 15:17:16', 0),
(202, 163, 59, '20', '10.00', '2021-11-11 15:17:48', 1),
(203, 182, 59, '20', '9.00', '2021-11-11 15:20:52', 0),
(204, 183, 59, '20', '9.00', '2021-11-11 15:21:43', 1),
(205, 184, 59, '20', '8.00', '2021-11-11 15:22:43', 1),
(206, 185, 59, '20', '7.00', '2021-11-11 15:54:57', 1),
(207, 186, 59, '20', '10.00', '2021-11-11 15:56:02', 1),
(208, 187, 59, '20', '10.00', '2021-11-11 15:56:35', 1),
(209, 188, 59, '20', '55.00', '2021-11-11 16:04:43', 0),
(210, 189, 59, '20', '5.00', '2021-11-11 16:05:26', 1),
(211, 190, 59, '20', '18.00', '2021-11-11 16:11:43', 1),
(212, 191, 59, '20', '20.00', '2021-11-11 16:12:14', 1),
(213, 192, 59, '20', '18.00', '2021-11-11 16:12:58', 1),
(214, 193, 59, '20', '20.00', '2021-11-11 16:13:38', 1),
(215, 194, 59, '20', '18.00', '2021-11-11 16:14:13', 1),
(216, 195, 59, '20', '18.00', '2021-11-11 16:14:58', 1),
(217, 196, 59, '20', '20.00', '2021-11-11 16:15:42', 1),
(218, 197, 59, '20', '20.00', '2021-11-11 16:16:12', 1),
(219, 198, 59, '20', '18.00', '2021-11-11 16:16:56', 1),
(220, 199, 59, '20', '18.00', '2021-11-11 16:19:38', 1),
(221, 200, 59, '20', '16.00', '2021-11-11 16:20:29', 1),
(222, 201, 59, '20', '140.00', '2021-11-12 14:00:09', 1),
(223, 203, 59, '20', '20.00', '2021-11-14 12:22:38', 0),
(224, 204, 59, '20', '20.00', '2021-11-14 12:23:11', 0),
(225, 205, 59, '20', '55.00', '2021-11-14 13:49:32', 0),
(226, 205, 59, '20', '45.00', '2021-11-14 13:52:27', 0),
(227, 206, 59, '20', '15.00', '2021-11-14 14:03:50', 0),
(228, 207, 59, '20', '85.00', '2021-11-14 14:05:51', 1),
(229, 208, 59, '20', '100.00', '2021-11-14 14:07:04', 1),
(230, 210, 59, '20', '18.00', '2021-11-16 17:11:58', 0),
(231, 211, 59, '20', '5.00', '2021-11-17 12:28:31', 1),
(232, 212, 59, '20', '7.00', '2021-11-17 12:29:39', 1),
(233, 213, 59, '20', '10.00', '2021-11-17 12:31:14', 1),
(234, 214, 59, '20', '33.00', '2021-11-18 13:05:06', 0),
(235, 49, 59, '20', '33.00', '2021-11-18 13:07:00', 0),
(236, 215, 59, '20', '40.00', '2021-11-21 12:31:31', 1),
(237, 216, 59, '20', '3.00', '2021-11-21 12:36:56', 0),
(238, 217, 59, '20', '6.00', '2021-11-21 12:37:30', 0),
(239, 216, 59, '20', '4.00', '2021-11-21 13:00:15', 1),
(240, 217, 59, '20', '7.00', '2021-11-21 13:00:51', 1),
(241, 218, 59, '20', '20.00', '2021-11-21 16:44:22', 1),
(242, 219, 59, '20', '15.00', '2021-11-22 10:30:10', 0),
(243, 220, 59, '20', '20.00', '2021-11-22 10:51:34', 1),
(244, 221, 59, '20', '16.00', '2021-11-22 15:07:55', 1),
(245, 222, 59, '20', '20.00', '2021-11-22 15:14:03', 1),
(246, 223, 59, '20', '18.00', '2021-11-22 15:17:36', 1),
(247, 224, 59, '20', '20.00', '2021-11-22 15:21:23', 1),
(248, 225, 59, '20', '20.00', '2021-11-22 15:22:26', 1),
(249, 226, 59, '20', '20.00', '2021-11-22 15:23:28', 1),
(250, 227, 59, '20', '20.00', '2021-11-22 15:24:24', 1),
(251, 228, 59, '20', '20.00', '2021-11-22 15:26:40', 1),
(252, 229, 59, '20', '20.00', '2021-11-22 15:41:07', 1),
(253, 230, 59, '20', '20.00', '2021-11-22 15:48:32', 1),
(254, 231, 59, '20', '18.00', '2021-11-22 15:49:04', 1),
(255, 232, 59, '20', '13.00', '2021-11-22 15:49:41', 1),
(256, 233, 59, '20', '20.00', '2021-11-22 15:51:06', 1),
(257, 234, 59, '20', '35.00', '2021-11-27 14:02:25', 1),
(258, 235, 59, '20', '29.00', '2021-11-27 14:36:39', 1),
(259, 236, 59, '20', '29.00', '2021-11-27 14:37:49', 1),
(260, 237, 59, '20', '35.00', '2021-11-27 14:39:12', 1),
(261, 238, 59, '20', '35.00', '2021-11-27 14:40:04', 1),
(262, 239, 59, '20', '33.00', '2021-11-27 14:41:01', 1),
(263, 240, 59, '20', '25.00', '2021-11-27 14:41:45', 1),
(264, 241, 59, '20', '33.00', '2021-11-27 14:42:20', 1),
(265, 242, 59, '20', '33.00', '2021-11-27 14:43:00', 1),
(266, 243, 59, '20', '60.00', '2021-11-27 14:45:38', 1),
(267, 244, 59, '20', '35.00', '2021-11-27 14:56:33', 1),
(268, 245, 59, '20', '12.00', '2021-11-27 14:57:37', 1),
(269, 246, 59, '20', '45.00', '2021-11-27 15:55:59', 0),
(270, 247, 59, '20', '0.20', '2021-12-06 09:24:47', 1),
(271, 248, 59, '20', '25.00', '2021-12-24 12:50:37', 1),
(272, 11, 59, '20', '25.00', '2022-01-15 10:59:43', 1),
(273, 13, 59, '20', '20.00', '2022-01-15 11:00:02', 0),
(274, 13, 59, '20', '20.00', '2022-01-15 11:00:10', 0),
(275, 13, 59, '20', '20.00', '2022-01-15 11:00:19', 1),
(276, 14, 59, '20', '30.00', '2022-01-15 11:00:45', 0),
(277, 17, 59, '20', '28.00', '2022-01-15 11:01:02', 1),
(278, 219, 59, '20', '20.00', '2022-01-15 11:01:40', 1),
(279, 175, 59, '20', '18.00', '2022-01-15 11:02:04', 1),
(280, 19, 59, '20', '23.00', '2022-01-15 11:03:38', 0),
(281, 20, 59, '20', '25.00', '2022-01-15 11:03:55', 0),
(282, 21, 59, '20', '23.00', '2022-01-15 11:04:05', 0),
(283, 22, 59, '20', '25.00', '2022-01-15 11:04:17', 0),
(284, 23, 59, '20', '23.00', '2022-01-15 11:04:28', 1),
(285, 24, 59, '20', '40.00', '2022-01-15 11:04:37', 1),
(286, 25, 59, '20', '28.00', '2022-01-15 11:04:56', 0),
(287, 26, 59, '20', '35.00', '2022-01-15 11:05:07', 0),
(288, 27, 59, '20', '35.00', '2022-01-15 11:05:13', 0),
(289, 28, 59, '20', '40.00', '2022-01-15 11:05:28', 0),
(290, 29, 59, '20', '40.00', '2022-01-15 11:05:36', 0),
(291, 30, 59, '20', '36.00', '2022-01-15 11:05:49', 1),
(292, 31, 59, '20', '36.00', '2022-01-15 11:05:59', 1),
(293, 32, 59, '20', '36.00', '2022-01-15 11:06:09', 0),
(294, 35, 59, '20', '38.00', '2022-01-15 11:06:32', 0),
(295, 36, 59, '20', '39.00', '2022-01-15 11:06:42', 0),
(296, 37, 59, '20', '43.00', '2022-01-15 11:07:08', 0),
(297, 38, 59, '20', '40.00', '2022-01-15 11:07:20', 0),
(298, 39, 59, '20', '40.00', '2022-01-15 11:07:27', 0),
(299, 40, 59, '20', '43.00', '2022-01-15 11:07:38', 0),
(300, 41, 59, '20', '49.00', '2022-01-15 11:07:45', 0),
(301, 44, 59, '20', '36.00', '2022-01-15 11:08:18', 0),
(302, 45, 59, '20', '36.00', '2022-01-15 11:08:24', 0),
(303, 46, 59, '20', '36.00', '2022-01-15 11:08:30', 0),
(304, 47, 59, '20', '36.00', '2022-01-15 11:08:37', 0),
(305, 48, 59, '20', '36.00', '2022-01-15 11:08:44', 0),
(306, 49, 59, '20', '37.00', '2022-01-15 11:09:07', 1),
(307, 50, 59, '20', '37.00', '2022-01-15 11:09:17', 1),
(308, 51, 59, '20', '37.00', '2022-01-15 11:09:26', 1),
(309, 52, 59, '20', '37.00', '2022-01-15 11:09:53', 1),
(310, 54, 59, '20', '37.00', '2022-01-15 11:10:38', 0),
(311, 54, 59, '20', '36.00', '2022-01-15 11:11:36', 1),
(312, 55, 59, '20', '40.00', '2022-01-15 11:12:46', 0),
(313, 56, 59, '20', '40.00', '2022-01-15 11:13:07', 0),
(314, 57, 59, '20', '40.00', '2022-01-15 11:13:38', 0),
(315, 58, 59, '20', '40.00', '2022-01-15 11:13:55', 0),
(316, 59, 59, '20', '40.00', '2022-01-15 11:14:03', 0),
(317, 214, 59, '20', '36.00', '2022-01-15 11:15:11', 0),
(318, 214, 59, '20', '36.00', '2022-01-15 11:16:36', 1),
(319, 60, 59, '20', '38.00', '2022-01-15 11:18:02', 0),
(320, 61, 59, '20', '30.00', '2022-01-15 11:18:11', 0),
(321, 62, 59, '20', '40.00', '2022-01-15 11:18:19', 1),
(322, 63, 59, '20', '40.00', '2022-01-15 11:18:26', 0),
(323, 64, 59, '20', '40.00', '2022-01-15 11:18:43', 0),
(324, 65, 59, '20', '40.00', '2022-01-15 11:18:49', 0),
(325, 66, 59, '20', '45.00', '2022-01-15 11:19:03', 1),
(326, 67, 59, '20', '45.00', '2022-01-15 11:19:10', 1),
(327, 68, 59, '20', '40.00', '2022-01-15 11:19:18', 1),
(328, 74, 59, '20', '38.00', '2022-01-15 11:20:34', 1),
(329, 75, 59, '20', '43.00', '2022-01-15 11:20:46', 1),
(330, 76, 59, '20', '43.00', '2022-01-15 11:21:08', 1),
(331, 77, 59, '20', '40.00', '2022-01-15 11:21:23', 1),
(332, 78, 59, '20', '40.00', '2022-01-15 11:21:47', 1),
(333, 79, 59, '20', '38.00', '2022-01-15 11:21:59', 0),
(334, 80, 59, '20', '40.00', '2022-01-15 11:22:10', 1),
(335, 81, 59, '20', '40.00', '2022-01-15 11:22:19', 1),
(336, 82, 59, '20', '40.00', '2022-01-15 11:22:28', 1),
(337, 83, 59, '20', '40.00', '2022-01-15 11:22:40', 1),
(338, 84, 59, '20', '38.00', '2022-01-15 11:22:54', 1),
(339, 85, 59, '20', '38.00', '2022-01-15 11:23:07', 1),
(340, 86, 59, '20', '38.00', '2022-01-15 11:23:22', 1),
(341, 87, 59, '20', '43.00', '2022-01-15 11:23:32', 0),
(342, 89, 59, '20', '38.00', '2022-01-15 11:23:47', 0),
(343, 90, 59, '20', '40.00', '2022-01-15 11:23:57', 0),
(344, 91, 59, '20', '40.00', '2022-01-15 11:24:06', 0),
(345, 92, 59, '20', '35.00', '2022-01-15 11:24:17', 1),
(346, 93, 59, '20', '36.00', '2022-01-15 11:24:32', 0),
(347, 93, 59, '20', '36.00', '2022-01-15 11:25:35', 0),
(348, 94, 59, '20', '43.00', '2022-01-15 11:25:45', 0),
(349, 95, 59, '20', '40.00', '2022-01-15 11:25:52', 1),
(350, 96, 59, '20', '43.00', '2022-01-15 11:25:59', 0),
(351, 97, 59, '20', '40.00', '2022-01-15 11:26:08', 1),
(352, 98, 59, '20', '40.00', '2022-01-15 11:26:17', 1),
(353, 99, 59, '20', '45.00', '2022-01-15 11:26:32', 0),
(354, 100, 59, '20', '40.00', '2022-01-15 11:27:01', 1),
(355, 101, 59, '20', '35.00', '2022-01-15 11:27:10', 0),
(356, 102, 59, '20', '38.00', '2022-01-15 11:27:23', 0),
(357, 103, 59, '20', '43.00', '2022-01-15 11:29:32', 0),
(358, 104, 59, '20', '40.00', '2022-01-15 11:29:38', 0),
(359, 105, 59, '20', '40.00', '2022-01-15 11:29:44', 0),
(360, 106, 59, '20', '45.00', '2022-01-15 11:29:53', 0),
(361, 107, 59, '20', '38.00', '2022-01-15 11:30:13', 1),
(362, 109, 59, '20', '45.00', '2022-01-15 11:30:22', 0),
(363, 110, 59, '20', '38.00', '2022-01-15 11:30:34', 1),
(364, 111, 59, '20', '43.00', '2022-01-15 11:30:55', 0),
(365, 112, 59, '20', '43.00', '2022-01-15 11:31:02', 0),
(366, 113, 59, '20', '40.00', '2022-01-15 11:31:10', 0),
(367, 114, 59, '20', '45.00', '2022-01-15 11:31:19', 0),
(368, 115, 59, '20', '43.00', '2022-01-15 11:31:29', 0),
(369, 116, 59, '20', '38.00', '2022-01-15 11:31:48', 1),
(370, 117, 59, '20', '43.00', '2022-01-15 11:31:54', 0),
(371, 118, 59, '20', '40.00', '2022-01-15 11:32:03', 0),
(372, 119, 59, '20', '38.00', '2022-01-15 11:32:10', 1),
(373, 120, 59, '20', '45.00', '2022-01-15 11:32:17', 0),
(374, 121, 59, '20', '40.00', '2022-01-15 11:32:34', 0),
(375, 122, 59, '20', '40.00', '2022-01-15 11:32:39', 1),
(376, 123, 59, '20', '40.00', '2022-01-15 11:32:49', 0),
(377, 124, 59, '20', '40.00', '2022-01-15 11:32:55', 0),
(378, 125, 59, '20', '38.00', '2022-01-15 11:33:05', 1),
(379, 126, 59, '20', '45.00', '2022-01-15 11:33:20', 1),
(380, 127, 59, '20', '45.00', '2022-01-15 11:33:29', 1),
(381, 128, 59, '20', '45.00', '2022-01-15 11:33:34', 1),
(382, 129, 59, '20', '45.00', '2022-01-15 11:33:41', 1),
(383, 130, 59, '20', '45.00', '2022-01-15 11:33:55', 1),
(384, 131, 59, '20', '45.00', '2022-01-15 11:34:01', 1),
(385, 132, 59, '20', '90.00', '2022-01-15 11:34:22', 1),
(386, 133, 59, '20', '120.00', '2022-01-15 11:34:32', 1),
(387, 134, 59, '20', '90.00', '2022-01-15 11:34:43', 1),
(388, 135, 59, '20', '120.00', '2022-01-15 11:34:53', 1),
(389, 136, 59, '20', '120.00', '2022-01-15 11:35:03', 1),
(390, 138, 59, '20', '100.00', '2022-01-15 11:35:18', 1),
(391, 139, 59, '20', '120.00', '2022-01-15 11:35:33', 1),
(392, 140, 59, '20', '100.00', '2022-01-15 11:36:09', 1),
(393, 141, 59, '20', '120.00', '2022-01-15 11:36:21', 1),
(394, 148, 59, '20', '12.00', '2022-01-15 11:36:54', 1),
(395, 152, 59, '20', '18.00', '2022-01-15 11:37:04', 1),
(396, 159, 59, '20', '10.00', '2022-01-15 11:37:21', 0),
(397, 160, 59, '20', '8.00', '2022-01-15 11:37:28', 0),
(398, 167, 59, '20', '10.00', '2022-01-15 11:37:58', 0),
(399, 168, 59, '20', '10.00', '2022-01-15 11:38:08', 0),
(400, 169, 59, '20', '8.00', '2022-01-15 11:38:17', 0),
(401, 170, 59, '20', '8.00', '2022-01-15 11:38:23', 0),
(402, 249, 23, '20', '36.00', '2022-01-15 11:40:45', 1),
(403, 203, 59, '20', '15.00', '2022-01-15 13:33:18', 0),
(404, 181, 59, '20', '10.00', '2022-01-15 14:37:52', 0),
(405, 204, 59, '20', '15.00', '2022-01-15 14:38:06', 0),
(406, 180, 59, '20', '8.00', '2022-01-18 09:25:29', 0),
(407, 19, 59, '20', '20.00', '2022-01-21 10:29:55', 0),
(408, 42, 59, '20', '43.00', '2022-01-21 10:30:11', 1),
(409, 43, 59, '20', '48.00', '2022-01-21 10:30:21', 0),
(410, 250, 23, '20', '10.00', '2022-01-21 10:33:41', 1),
(411, 251, 23, '20', '30.00', '2022-02-12 12:20:24', 1),
(412, 252, 23, '20', '30.00', '2022-02-12 12:21:24', 1),
(413, 253, 23, '20', '25.00', '2022-02-12 12:23:13', 1),
(414, 254, 23, '20', '25.00', '2022-02-12 12:24:32', 1),
(415, 255, 23, '20', '18.00', '2022-02-12 12:25:36', 1),
(416, 256, 23, '20', '12.00', '2022-02-12 12:26:48', 1),
(417, 257, 23, '20', '18.00', '2022-02-12 12:27:55', 1),
(418, 258, 23, '20', '10.00', '2022-02-12 12:29:01', 1),
(419, 259, 23, '20', '13.00', '2022-02-12 12:30:22', 1),
(420, 260, 23, '20', '13.00', '2022-02-12 12:31:44', 1),
(421, 261, 59, '20', '20.00', '2022-02-12 12:36:19', 1),
(422, 262, 59, '20', '20.00', '2022-02-12 12:38:07', 1),
(423, 263, 59, '20', '20.00', '2022-02-12 12:40:31', 1),
(424, 264, 59, '20', '30.00', '2022-02-12 12:42:19', 1),
(425, 265, 59, '20', '38.00', '2022-02-12 12:43:05', 1),
(426, 266, 59, '20', '38.00', '2022-02-12 12:43:44', 1),
(427, 267, 59, '20', '15.00', '2022-02-12 12:44:23', 1),
(428, 268, 59, '20', '35.00', '2022-02-12 12:45:19', 1),
(429, 269, 59, '20', '35.00', '2022-02-12 12:46:38', 1),
(430, 270, 59, '20', '25.00', '2022-02-12 12:47:30', 1),
(431, 271, 59, '20', '28.00', '2022-02-12 12:48:15', 1),
(432, 272, 59, '20', '20.00', '2022-02-12 12:50:21', 1),
(433, 273, 59, '20', '20.00', '2022-02-12 12:50:58', 0),
(434, 273, 59, '20', '20.00', '2022-02-12 12:51:49', 1),
(435, 205, 59, '20', '40.00', '2022-02-12 13:05:26', 0),
(436, 166, 59, '20', '10.00', '2022-02-12 13:06:13', 0),
(437, 274, 59, '20', '55.00', '2022-02-12 13:07:55', 0),
(438, 206, 59, '20', '13.00', '2022-02-12 13:09:10', 0),
(439, 206, 59, '20', '13.00', '2022-02-12 13:14:42', 0),
(440, 275, 59, '20', '18.00', '2022-02-12 13:18:17', 0),
(441, 276, 59, '20', '18.00', '2022-02-12 13:19:21', 0),
(442, 277, 59, '20', '16.00', '2022-02-12 13:20:15', 0),
(443, 278, 59, '20', '18.00', '2022-02-12 13:24:26', 0),
(444, 279, 59, '20', '13.00', '2022-02-12 13:25:21', 0),
(445, 280, 59, '20', '16.00', '2022-02-12 13:28:58', 0),
(446, 281, 59, '20', '18.00', '2022-02-12 13:29:50', 0),
(447, 282, 59, '20', '16.00', '2022-02-12 13:30:39', 0),
(448, 283, 59, '20', '20.00', '2022-02-12 13:31:24', 0),
(449, 284, 59, '20', '18.00', '2022-02-12 13:32:08', 0),
(450, 285, 59, '20', '18.00', '2022-02-12 13:33:06', 0),
(451, 286, 59, '20', '16.00', '2022-02-12 13:34:30', 0),
(452, 287, 59, '20', '18.00', '2022-02-12 13:35:26', 0),
(453, 288, 59, '20', '16.00', '2022-02-12 13:37:02', 0),
(454, 289, 59, '20', '16.00', '2022-02-12 13:40:10', 0),
(455, 290, 59, '20', '16.00', '2022-02-12 13:40:59', 0),
(456, 291, 59, '20', '16.00', '2022-02-12 13:41:35', 0),
(457, 292, 59, '20', '18.00', '2022-02-12 13:42:58', 0),
(458, 293, 59, '20', '18.00', '2022-02-12 13:43:24', 0),
(459, 294, 29, '20', '16.00', '2022-02-12 13:45:34', 0),
(460, 295, 59, '20', '18.00', '2022-02-12 13:46:34', 0),
(461, 296, 29, '20', '18.00', '2022-02-12 13:47:17', 0),
(462, 297, 59, '20', '20.00', '2022-02-12 13:48:25', 0),
(463, 298, 59, '20', '13.00', '2022-02-12 13:49:48', 0),
(464, 299, 29, '20', '18.00', '2022-02-12 13:50:38', 0),
(465, 300, 59, '20', '18.00', '2022-02-12 13:51:16', 0),
(466, 301, 59, '20', '18.00', '2022-02-12 13:52:31', 0),
(467, 302, 59, '20', '16.00', '2022-02-12 13:53:05', 0),
(468, 303, 59, '20', '18.00', '2022-02-12 13:53:40', 0),
(469, 304, 29, '20', '16.00', '2022-02-12 13:55:08', 0),
(470, 305, 59, '20', '16.00', '2022-02-12 13:56:21', 0),
(471, 306, 59, '20', '18.00', '2022-02-12 13:56:57', 0),
(472, 307, 59, '20', '18.00', '2022-02-12 13:57:43', 0),
(473, 308, 59, '20', '16.00', '2022-02-12 13:58:25', 0),
(474, 309, 29, '20', '18.00', '2022-02-12 13:59:06', 0),
(475, 310, 29, '20', '15.00', '2022-02-12 14:03:51', 0),
(476, 311, 59, '20', '15.00', '2022-02-12 14:04:30', 0),
(477, 312, 59, '20', '15.00', '2022-02-12 14:05:02', 0),
(478, 313, 59, '20', '240.00', '2022-02-12 14:17:05', 0),
(479, 314, 59, '20', '310.00', '2022-02-12 14:17:40', 0),
(480, 315, 59, '20', '330.00', '2022-02-12 14:18:22', 0),
(481, 316, 59, '20', '180.00', '2022-02-12 14:19:17', 0),
(482, 317, 29, '20', '450.00', '2022-02-12 14:20:17', 0),
(483, 318, 59, '20', '210.00', '2022-02-12 14:20:57', 0),
(484, 319, 59, '20', '150.00', '2022-02-12 14:22:41', 0),
(485, 320, 59, '20', '150.00', '2022-02-12 14:23:15', 0),
(486, 321, 59, '20', '150.00', '2022-02-12 14:24:33', 0),
(487, 322, 59, '20', '180.00', '2022-02-12 14:30:19', 0),
(488, 323, 59, '20', '120.00', '2022-02-12 14:31:07', 0),
(489, 324, 59, '20', '120.00', '2022-02-12 14:31:50', 0),
(490, 325, 59, '20', '65.00', '2022-02-12 14:32:30', 0),
(491, 326, 59, '20', '65.00', '2022-02-12 14:33:15', 0),
(492, 327, 59, '20', '80.00', '2022-02-12 14:33:55', 0),
(493, 328, 59, '20', '180.00', '2022-02-12 14:37:06', 0),
(494, 329, 59, '20', '150.00', '2022-02-12 14:38:00', 0),
(495, 330, 59, '20', '100.00', '2022-02-12 14:38:29', 0),
(496, 331, 59, '20', '18.00', '2022-02-12 14:39:03', 0),
(497, 332, 59, '20', '13.00', '2022-02-12 14:39:33', 0),
(498, 333, 59, '20', '10.00', '2022-02-12 14:40:12', 0),
(499, 334, 59, '20', '15.00', '2022-02-12 14:40:41', 0),
(500, 335, 59, '20', '15.00', '2022-02-12 14:41:12', 0),
(501, 336, 59, '20', '35.00', '2022-02-12 14:42:25', 0),
(502, 337, 59, '20', '35.00', '2022-02-12 14:42:56', 0),
(503, 338, 29, '20', '35.00', '2022-02-12 14:43:24', 0),
(504, 339, 29, '20', '35.00', '2022-02-12 14:43:45', 0),
(505, 338, 29, '20', '35.00', '2022-02-12 20:57:29', 0),
(506, 339, 29, '20', '35.00', '2022-02-12 20:57:46', 0),
(507, 340, 29, '20', '35.00', '2022-02-14 19:34:56', 0),
(508, 341, 59, '20', '35.00', '2022-02-14 19:49:03', 0),
(509, 206, 59, '20', '13.00', '2022-02-14 20:21:47', 0),
(510, 310, 29, '20', '15.00', '2022-02-16 14:16:02', 1),
(511, 311, 59, '20', '15.00', '2022-02-16 14:16:17', 1),
(512, 312, 59, '20', '15.00', '2022-02-16 14:16:27', 1),
(513, 280, 59, '20', '16.00', '2022-02-16 14:16:55', 1),
(514, 281, 59, '20', '18.00', '2022-02-16 14:17:39', 1),
(515, 282, 59, '20', '16.00', '2022-02-16 14:17:52', 1),
(516, 283, 59, '20', '20.00', '2022-02-16 14:18:09', 1),
(517, 284, 59, '20', '18.00', '2022-02-16 14:18:34', 1),
(518, 285, 59, '20', '18.00', '2022-02-16 14:18:44', 1),
(519, 206, 59, '20', '13.00', '2022-02-16 14:19:52', 1),
(520, 275, 59, '20', '18.00', '2022-02-16 14:20:40', 1),
(521, 276, 59, '20', '18.00', '2022-02-16 14:20:52', 1),
(522, 277, 59, '20', '16.00', '2022-02-16 14:21:05', 1),
(523, 278, 59, '20', '18.00', '2022-02-16 14:21:23', 1),
(524, 279, 59, '20', '13.00', '2022-02-16 14:21:34', 1),
(525, 289, 59, '20', '16.00', '2022-02-16 14:22:01', 1),
(526, 290, 59, '20', '16.00', '2022-02-16 14:22:10', 1),
(527, 291, 59, '20', '16.00', '2022-02-16 14:22:22', 1),
(528, 292, 59, '20', '18.00', '2022-02-16 14:22:34', 1),
(529, 293, 59, '20', '18.00', '2022-02-16 14:22:44', 1),
(530, 286, 59, '20', '16.00', '2022-02-16 14:23:05', 1),
(531, 287, 59, '20', '18.00', '2022-02-16 14:23:15', 1),
(532, 288, 59, '20', '16.00', '2022-02-16 14:23:26', 1),
(533, 294, 29, '20', '16.00', '2022-02-16 14:23:52', 1),
(534, 295, 59, '20', '18.00', '2022-02-16 14:24:09', 1),
(535, 296, 29, '20', '18.00', '2022-02-16 14:24:20', 1),
(536, 297, 59, '20', '20.00', '2022-02-16 14:24:29', 1),
(537, 298, 59, '20', '13.00', '2022-02-16 14:25:40', 1),
(538, 299, 29, '20', '18.00', '2022-02-16 14:25:49', 1),
(539, 300, 59, '20', '18.00', '2022-02-16 14:26:03', 1),
(540, 301, 59, '20', '18.00', '2022-02-16 14:26:13', 1),
(541, 302, 59, '20', '16.00', '2022-02-16 14:28:28', 1),
(542, 303, 59, '20', '18.00', '2022-02-16 14:28:37', 1),
(543, 304, 29, '20', '16.00', '2022-02-16 14:31:07', 1),
(544, 305, 59, '20', '16.00', '2022-02-16 14:31:32', 1),
(545, 306, 59, '20', '18.00', '2022-02-16 14:31:42', 1),
(546, 307, 59, '20', '18.00', '2022-02-16 14:31:57', 1),
(547, 308, 59, '20', '16.00', '2022-02-16 14:32:07', 1),
(548, 309, 29, '20', '18.00', '2022-02-16 14:32:19', 1),
(549, 162, 59, '20', '8.00', '2022-02-16 14:32:50', 0),
(550, 166, 59, '20', '10.00', '2022-02-16 14:33:22', 1),
(551, 167, 59, '20', '10.00', '2022-02-16 14:33:45', 0),
(552, 168, 59, '20', '10.00', '2022-02-16 14:33:55', 0),
(553, 169, 59, '20', '8.00', '2022-02-16 14:34:05', 0),
(554, 170, 59, '20', '8.00', '2022-02-16 14:34:15', 0),
(555, 188, 59, '20', '55.00', '2022-02-16 14:34:34', 1),
(556, 205, 59, '20', '50.00', '2022-02-16 14:34:47', 0),
(557, 205, 59, '20', '50.00', '2022-02-16 14:34:47', 0),
(558, 205, 59, '20', '40.00', '2022-02-16 14:34:56', 0),
(559, 274, 59, '20', '55.00', '2022-02-16 14:35:06', 1),
(560, 313, 59, '20', '240.00', '2022-02-16 14:35:28', 1),
(561, 314, 59, '20', '310.00', '2022-02-16 14:35:45', 1),
(562, 315, 59, '20', '330.00', '2022-02-16 14:36:01', 1),
(563, 316, 59, '20', '180.00', '2022-02-16 14:36:12', 1),
(564, 317, 29, '20', '450.00', '2022-02-16 14:36:22', 1),
(565, 318, 59, '20', '210.00', '2022-02-16 14:36:33', 1),
(566, 319, 59, '20', '150.00', '2022-02-16 14:36:45', 1),
(567, 320, 59, '20', '150.00', '2022-02-16 14:36:56', 1),
(568, 321, 59, '20', '150.00', '2022-02-16 14:37:22', 1),
(569, 322, 59, '20', '180.00', '2022-02-16 14:37:50', 1),
(570, 323, 59, '20', '120.00', '2022-02-16 14:38:02', 1),
(571, 324, 59, '20', '120.00', '2022-02-16 14:38:18', 1),
(572, 325, 59, '20', '65.00', '2022-02-16 14:38:29', 1),
(573, 326, 59, '20', '65.00', '2022-02-16 14:38:43', 1),
(574, 327, 59, '20', '80.00', '2022-02-16 14:39:05', 1),
(575, 328, 59, '20', '180.00', '2022-02-16 14:39:21', 1),
(576, 329, 59, '20', '150.00', '2022-02-16 14:39:45', 1),
(577, 330, 59, '20', '100.00', '2022-02-16 14:39:57', 1),
(578, 331, 59, '20', '18.00', '2022-02-16 14:40:13', 1),
(579, 332, 59, '20', '13.00', '2022-02-16 14:40:22', 1),
(580, 333, 59, '20', '10.00', '2022-02-16 14:40:36', 1),
(581, 334, 59, '20', '15.00', '2022-02-16 14:40:49', 1),
(582, 335, 59, '20', '15.00', '2022-02-16 14:40:59', 1),
(583, 336, 59, '20', '35.00', '2022-02-16 14:41:14', 1),
(584, 339, 29, '20', '35.00', '2022-02-16 14:41:23', 1),
(585, 340, 29, '20', '35.00', '2022-02-16 14:42:06', 1),
(586, 341, 59, '20', '35.00', '2022-02-16 14:42:14', 1),
(587, 153, 59, '20', '6.00', '2022-02-16 14:45:00', 1),
(588, 154, 59, '20', '15.00', '2022-02-16 14:45:09', 1),
(589, 171, 59, '20', '6.00', '2022-02-16 14:45:24', 1),
(590, 172, 59, '20', '15.00', '2022-02-16 14:45:33', 1),
(591, 177, 59, '20', '4.00', '2022-02-16 14:46:02', 1),
(592, 156, 59, '20', '4.00', '2022-02-16 14:46:19', 1),
(593, 157, 59, '20', '4.00', '2022-02-16 14:46:26', 1),
(594, 158, 59, '20', '5.00', '2022-02-16 14:46:34', 1),
(595, 159, 59, '20', '10.00', '2022-02-16 14:46:44', 1),
(596, 160, 59, '20', '8.00', '2022-02-16 14:46:53', 1),
(597, 176, 59, '20', '5.00', '2022-02-16 14:47:06', 1),
(598, 180, 59, '20', '8.00', '2022-02-16 14:48:04', 1),
(599, 181, 59, '20', '10.00', '2022-02-16 14:48:17', 1),
(600, 203, 59, '20', '15.00', '2022-02-16 14:48:39', 1),
(601, 204, 59, '20', '15.00', '2022-02-16 14:48:49', 1),
(602, 342, 29, '20', '10.00', '2022-02-20 17:11:25', 1),
(603, 343, 59, '20', '55.00', '2022-02-20 17:11:57', 0),
(604, 162, 59, '20', '10.00', '2022-03-03 18:01:36', 0),
(605, 205, 59, '20', '55.00', '2022-03-03 18:01:54', 0),
(606, 210, 59, '20', '20.00', '2022-03-03 19:43:47', 1),
(607, 162, 59, '20', '8.00', '2022-04-03 12:22:50', 1),
(608, 344, 23, '20', '46.00', '2022-06-03 13:40:12', 1),
(609, 345, 23, '20', '46.00', '2022-06-03 13:40:53', 1),
(610, 346, 59, '20', '38.00', '2022-06-03 13:41:33', 1),
(611, 347, 59, '20', '35.00', '2022-06-03 13:42:49', 1),
(612, 348, 59, '20', '35.00', '2022-06-03 13:43:15', 1),
(613, 349, 59, '20', '3.00', '2022-06-03 13:43:59', 1),
(614, 350, 59, '20', '3.00', '2022-06-03 13:44:28', 1),
(615, 351, 59, '20', '6.00', '2022-06-03 13:45:42', 1),
(616, 352, 59, '20', '6.00', '2022-06-03 13:46:09', 0),
(617, 353, 2, '20', '45.00', '2022-06-13 10:24:38', 1),
(618, 354, 5, '20', '45.00', '2022-06-13 10:27:13', 1),
(619, 246, 59, '20', '40.00', '2022-07-17 19:10:31', 1),
(620, 355, 59, '20', '5.00', '2022-09-24 00:23:27', 1),
(621, 356, 59, '20', '5.00', '2022-09-24 00:24:10', 1),
(622, 357, 59, '20', '3.00', '2022-09-24 00:24:44', 1),
(623, 358, 59, '20', '150.00', '2022-10-31 10:12:05', 0),
(624, 359, 59, '20', '20.00', '2022-10-31 10:14:40', 1),
(625, 360, 59, '20', '70.00', '2022-11-11 14:46:23', 1),
(626, 205, 59, '20', '32.00', '2022-11-11 14:49:04', 1),
(627, 343, 59, '20', '32.00', '2022-11-11 14:49:49', 1),
(628, 174, 59, '20', '2.00', '2022-11-11 14:50:59', 1),
(629, 361, 59, '20', '1.00', '2022-11-11 14:51:41', 1),
(630, 14, 59, '20', '28.00', '2022-12-16 08:17:15', 1),
(631, 362, 59, '20', '33.00', '2022-12-16 08:18:24', 1),
(632, 363, 59, '20', '28.00', '2022-12-16 08:18:52', 1),
(633, 364, 59, '20', '35.00', '2022-12-16 08:19:29', 1),
(634, 365, 59, '20', '35.00', '2022-12-16 08:20:04', 1),
(635, 19, 59, '20', '18.00', '2022-12-16 08:20:32', 1),
(636, 20, 59, '20', '23.00', '2022-12-16 08:20:46', 1),
(637, 21, 59, '20', '20.00', '2022-12-16 08:23:48', 1),
(638, 22, 59, '20', '23.00', '2022-12-16 08:23:58', 1),
(639, 366, 59, '20', '28.00', '2022-12-16 08:24:57', 1),
(640, 25, 59, '20', '28.00', '2022-12-16 08:25:17', 1),
(641, 26, 59, '20', '33.00', '2022-12-16 08:25:26', 1),
(642, 27, 59, '20', '33.00', '2022-12-16 08:25:36', 1),
(643, 28, 59, '20', '38.00', '2022-12-16 08:25:44', 1),
(644, 29, 59, '20', '38.00', '2022-12-16 08:25:55', 1),
(645, 367, 59, '20', '48.00', '2022-12-16 08:27:03', 1),
(646, 368, 59, '20', '38.00', '2022-12-16 08:27:48', 1),
(647, 370, 59, '20', '40.00', '2022-12-16 08:28:27', 1),
(648, 371, 59, '20', '30.00', '2022-12-16 08:28:57', 1),
(649, 372, 59, '20', '40.00', '2022-12-16 08:29:35', 1),
(650, 32, 59, '20', '36.00', '2022-12-16 08:29:50', 1),
(651, 34, 59, '20', '38.00', '2022-12-16 08:30:05', 1),
(652, 35, 59, '20', '36.00', '2022-12-16 08:31:24', 1),
(653, 36, 59, '20', '36.00', '2022-12-16 08:31:32', 1),
(654, 37, 59, '20', '40.00', '2022-12-16 08:31:41', 1),
(655, 38, 59, '20', '38.00', '2022-12-16 08:31:57', 1),
(656, 39, 59, '20', '40.00', '2022-12-16 08:32:07', 1),
(657, 40, 59, '20', '40.00', '2022-12-16 08:32:17', 1),
(658, 41, 59, '20', '50.00', '2022-12-16 08:32:33', 1),
(659, 373, 59, '20', '45.00', '2022-12-16 08:33:04', 1),
(660, 374, 59, '20', '45.00', '2022-12-16 08:33:36', 1),
(661, 375, 59, '20', '45.00', '2022-12-16 08:34:05', 1),
(662, 376, 59, '20', '45.00', '2022-12-16 08:34:27', 1),
(663, 377, 59, '20', '45.00', '2022-12-16 08:34:45', 1),
(664, 378, 59, '20', '45.00', '2022-12-16 08:35:06', 1),
(665, 379, 59, '20', '50.00', '2022-12-16 08:37:31', 1),
(666, 380, 59, '20', '45.00', '2022-12-16 08:38:03', 1),
(667, 381, 59, '20', '45.00', '2022-12-16 08:39:10', 1),
(668, 382, 59, '20', '45.00', '2022-12-16 08:39:40', 1),
(669, 383, 59, '20', '45.00', '2022-12-16 08:40:13', 1),
(670, 384, 59, '20', '45.00', '2022-12-16 08:40:35', 1),
(671, 385, 59, '20', '45.00', '2022-12-16 08:41:00', 1),
(672, 386, 59, '20', '45.00', '2022-12-16 08:41:38', 1),
(673, 44, 59, '20', '36.00', '2022-12-16 08:42:36', 1),
(674, 45, 59, '20', '36.00', '2022-12-16 08:42:47', 1),
(675, 46, 59, '20', '36.00', '2022-12-16 08:42:58', 1),
(676, 47, 59, '20', '36.00', '2022-12-16 08:43:08', 1),
(677, 48, 59, '20', '37.00', '2022-12-16 08:43:20', 0),
(678, 48, 59, '20', '36.00', '2022-12-16 08:43:34', 1),
(679, 387, 59, '20', '36.00', '2022-12-16 08:44:59', 1),
(680, 55, 59, '20', '39.00', '2022-12-16 08:45:44', 1),
(681, 56, 59, '20', '39.00', '2022-12-16 08:45:56', 1),
(682, 57, 59, '20', '39.00', '2022-12-16 08:47:27', 1),
(683, 58, 59, '20', '39.00', '2022-12-16 08:47:48', 1),
(684, 59, 59, '20', '39.00', '2022-12-16 08:48:12', 1),
(685, 388, 59, '20', '38.00', '2022-12-16 08:48:51', 1),
(686, 389, 59, '20', '36.00', '2022-12-16 08:49:27', 1),
(687, 390, 59, '20', '40.00', '2022-12-16 08:50:51', 1),
(688, 391, 59, '20', '43.00', '2022-12-16 08:51:21', 1),
(689, 43, 59, '20', '45.00', '2022-12-16 08:51:56', 1),
(690, 61, 59, '20', '28.00', '2022-12-16 08:52:18', 1),
(691, 60, 59, '20', '36.00', '2022-12-16 08:56:33', 1),
(692, 63, 59, '20', '38.00', '2022-12-16 08:56:45', 1),
(693, 392, 59, '20', '38.00', '2022-12-16 08:57:10', 1),
(694, 393, 59, '20', '33.00', '2022-12-16 08:57:32', 1),
(695, 394, 59, '20', '28.00', '2022-12-16 08:58:46', 1),
(696, 395, 59, '20', '28.00', '2022-12-16 08:58:46', 0),
(697, 396, 59, '20', '28.00', '2022-12-16 08:58:46', 1),
(698, 397, 59, '20', '28.00', '2022-12-16 08:58:46', 1),
(699, 398, 59, '20', '28.00', '2022-12-16 09:00:03', 1),
(700, 399, 59, '20', '33.00', '2022-12-16 09:00:30', 1),
(701, 400, 59, '20', '33.00', '2022-12-16 09:01:01', 1),
(702, 401, 59, '20', '33.00', '2022-12-16 09:01:02', 1),
(703, 402, 59, '20', '33.00', '2022-12-16 09:01:26', 1),
(704, 403, 59, '20', '38.00', '2022-12-16 09:02:38', 1),
(705, 404, 59, '20', '38.00', '2022-12-16 09:02:57', 1),
(706, 405, 59, '20', '38.00', '2022-12-16 09:03:21', 1),
(707, 406, 59, '20', '40.00', '2022-12-16 09:03:51', 1),
(708, 407, 59, '20', '40.00', '2022-12-16 09:04:32', 1),
(709, 408, 59, '20', '43.00', '2022-12-16 09:04:55', 1),
(710, 409, 59, '20', '43.00', '2022-12-16 09:05:56', 1),
(711, 410, 59, '20', '43.00', '2022-12-16 09:06:32', 1),
(712, 64, 59, '20', '38.00', '2022-12-16 09:07:12', 1),
(713, 65, 59, '20', '38.00', '2022-12-16 09:07:23', 1),
(714, 411, 59, '20', '38.00', '2022-12-16 09:07:47', 1),
(715, 412, 59, '20', '40.00', '2022-12-16 09:08:13', 1),
(716, 413, 59, '20', '40.00', '2022-12-16 09:08:36', 1),
(717, 414, 59, '20', '40.00', '2022-12-16 09:08:58', 1),
(718, 415, 59, '20', '43.00', '2022-12-16 09:09:33', 1),
(719, 416, 59, '20', '43.00', '2022-12-16 09:10:00', 1),
(720, 417, 59, '20', '43.00', '2022-12-16 09:10:24', 1),
(721, 418, 59, '20', '43.00', '2022-12-16 09:10:54', 1),
(722, 419, 59, '20', '48.00', '2022-12-16 09:12:03', 1),
(723, 420, 59, '20', '38.00', '2022-12-16 09:13:05', 1),
(724, 79, 59, '20', '40.00', '2022-12-16 09:17:52', 1),
(725, 87, 59, '20', '40.00', '2022-12-16 09:18:17', 1),
(726, 421, 59, '20', '40.00', '2022-12-16 09:18:39', 1),
(727, 422, 59, '20', '45.00', '2022-12-16 09:19:05', 1),
(728, 423, 59, '20', '40.00', '2022-12-16 09:20:07', 1),
(729, 424, 59, '20', '40.00', '2022-12-16 09:20:36', 1),
(730, 90, 59, '20', '40.00', '2022-12-16 09:24:12', 1),
(731, 91, 59, '20', '40.00', '2022-12-16 09:24:50', 1),
(732, 89, 59, '20', '40.00', '2022-12-16 09:25:37', 1),
(733, 425, 59, '20', '40.00', '2022-12-16 09:31:03', 1),
(734, 426, 59, '20', '38.00', '2022-12-16 09:31:42', 1),
(735, 427, 59, '20', '38.00', '2022-12-16 09:32:21', 1),
(736, 428, 59, '20', '38.00', '2022-12-16 09:32:44', 1),
(737, 429, 59, '20', '40.00', '2022-12-16 09:33:29', 1),
(738, 430, 59, '20', '38.00', '2022-12-16 09:34:35', 1),
(739, 431, 59, '20', '38.00', '2022-12-16 09:35:54', 1),
(740, 94, 59, '20', '40.00', '2022-12-16 09:36:13', 1),
(741, 96, 59, '20', '42.00', '2022-12-16 09:36:35', 1),
(742, 99, 59, '20', '43.00', '2022-12-16 09:36:58', 1),
(743, 432, 59, '20', '38.00', '2022-12-16 09:43:07', 1),
(744, 433, 59, '20', '38.00', '2022-12-16 09:43:54', 1),
(745, 434, 59, '20', '40.00', '2022-12-16 09:44:37', 1),
(746, 435, 59, '20', '38.00', '2022-12-16 09:45:22', 1),
(747, 436, 59, '20', '40.00', '2022-12-16 09:45:51', 1),
(748, 437, 59, '20', '40.00', '2022-12-16 09:46:13', 1),
(749, 101, 59, '20', '36.00', '2022-12-16 09:47:03', 1),
(750, 102, 59, '20', '36.00', '2022-12-16 09:47:10', 1),
(751, 103, 59, '20', '40.00', '2022-12-16 09:47:35', 1),
(752, 104, 59, '20', '38.00', '2022-12-16 09:47:46', 1),
(753, 105, 59, '20', '38.00', '2022-12-16 09:47:55', 1),
(754, 106, 59, '20', '42.00', '2022-12-16 09:48:20', 1),
(755, 109, 59, '20', '40.00', '2022-12-16 09:50:12', 1),
(756, 438, 59, '20', '42.00', '2022-12-16 09:51:04', 1),
(757, 439, 59, '20', '42.00', '2022-12-16 09:51:35', 1),
(758, 440, 59, '20', '42.00', '2022-12-16 09:51:59', 1),
(759, 111, 59, '20', '42.00', '2022-12-16 09:52:42', 1),
(760, 112, 59, '20', '42.00', '2022-12-16 09:52:50', 1),
(761, 113, 59, '20', '38.00', '2022-12-16 09:53:06', 1),
(762, 114, 59, '20', '42.00', '2022-12-16 09:53:15', 1),
(763, 115, 59, '20', '40.00', '2022-12-16 09:53:30', 1),
(764, 117, 59, '20', '42.00', '2022-12-16 09:54:32', 1),
(765, 441, 59, '20', '40.00', '2022-12-16 09:55:30', 1),
(766, 118, 59, '20', '38.00', '2022-12-16 09:55:48', 1),
(767, 442, 59, '20', '38.00', '2022-12-16 09:56:18', 1),
(768, 120, 59, '20', '42.00', '2022-12-16 09:56:32', 1),
(769, 124, 59, '20', '38.00', '2022-12-16 09:57:06', 1),
(770, 123, 59, '20', '38.00', '2022-12-16 09:57:14', 1),
(771, 121, 59, '20', '38.00', '2022-12-16 09:57:30', 1),
(772, 443, 59, '20', '35.00', '2022-12-16 09:57:53', 1),
(773, 444, 59, '20', '38.00', '2022-12-16 09:58:18', 1),
(774, 445, 59, '20', '40.00', '2022-12-16 09:58:44', 1),
(775, 446, 59, '20', '45.00', '2022-12-16 10:21:32', 1),
(776, 447, 59, '20', '45.00', '2022-12-16 10:22:32', 1),
(777, 448, 59, '20', '55.00', '2022-12-16 10:23:32', 1),
(778, 449, 59, '20', '55.00', '2022-12-16 10:24:13', 1),
(779, 450, 59, '20', '25.00', '2022-12-16 10:24:58', 1),
(780, 451, 59, '20', '25.00', '2022-12-16 10:25:22', 1),
(781, 452, 59, '20', '38.00', '2022-12-16 10:26:30', 1),
(782, 453, 59, '20', '40.00', '2022-12-16 10:26:59', 1),
(783, 454, 59, '20', '40.00', '2022-12-16 10:27:26', 1),
(784, 455, 59, '20', '40.00', '2022-12-16 10:27:51', 1),
(785, 456, 59, '20', '38.00', '2022-12-16 10:28:19', 1),
(786, 457, 59, '20', '8.00', '2022-12-16 10:31:26', 1),
(787, 458, 59, '20', '32.00', '2022-12-16 10:36:34', 1),
(788, 459, 59, '20', '32.00', '2022-12-16 10:37:20', 1),
(789, 170, 59, '20', '10.00', '2022-12-16 11:05:08', 1),
(790, 167, 59, '20', '12.00', '2022-12-16 11:05:32', 1),
(791, 168, 59, '20', '12.00', '2023-01-04 08:30:39', 1),
(792, 169, 59, '20', '10.00', '2023-02-21 13:25:06', 0),
(793, 169, 59, '20', '10.00', '2023-02-21 13:25:08', 1),
(794, 352, 59, '20', '6.00', '2023-03-04 11:50:36', 0),
(795, 352, 59, '20', '6.00', '2023-03-04 11:51:02', 0),
(796, 352, 59, '20', '6.00', '2023-03-04 11:51:20', 0),
(797, 352, 59, '20', '6.00', '2023-03-04 11:51:53', 1),
(798, 460, 59, '20', '6.00', '2023-03-04 11:54:11', 0),
(799, 461, 59, '20', '6.00', '2023-03-04 12:03:29', 0),
(800, 182, 59, '20', '6.00', '2023-03-04 12:07:25', 0),
(801, 182, 59, '20', '6.00', '2023-03-04 12:07:51', 0),
(802, 182, 59, '20', '6.00', '2023-03-04 12:17:46', 0),
(803, 182, 59, '20', '6.00', '2023-03-04 12:18:26', 1),
(804, 462, 59, '20', '6.00', '2023-03-04 12:23:59', 0),
(805, 462, 59, '20', '6.00', '2023-03-04 12:32:43', 1),
(806, 463, 59, '20', '6.00', '2023-03-04 12:34:04', 1),
(807, 464, 59, '20', '6.00', '2023-03-04 12:36:08', 1),
(808, 465, 59, '20', '32.00', '2023-03-04 12:39:09', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_tipodocumento` int(11) NOT NULL,
  `proveedor_nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_ruc` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_direccion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_nombre_contacto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proveedor_cargo_persona` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proveedor_numero` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_estado` int(4) NOT NULL,
  `proveedor_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `id_negocio`, `id_tipodocumento`, `proveedor_nombre`, `proveedor_ruc`, `proveedor_direccion`, `proveedor_nombre_contacto`, `proveedor_cargo_persona`, `proveedor_numero`, `proveedor_estado`, `proveedor_codigo`) VALUES
(13, 3, 4, 'RIOS NAVA LEYCITH', '10103394835', 'JR. ARICA N° 1179', 'LEYCITH', 'DUEÑA', '953542383', 1, 1631559654),
(14, 3, 4, 'MALPARTIDA VENTURA EDIS GISELA', '10473725342', 'CALLE RAMIREZ HURTADO N° 960', 'EDIS', 'DUEÑA', '942031445', 1, 1631559844),
(15, 3, 4, 'MULTISERVICIOS ARGOMEDO E.I.R.L.', '20567254233', 'JR. RAMIREZ HURTADO N° 978', '', '', '931152715', 1, 1631559923),
(16, 3, 4, 'ROJAS PEREYRA ELMER', '10053109395', 'CALLE LOS NOGALES N° 334', 'ELMER', 'DUEÑO', '965820084', 1, 1631560025),
(17, 3, 4, 'COMPAÑIA OPERADORA DE LA SELVA S.A.', '20602544002', 'AV. JOSE ABELARDO QUIÑONES  N° 1480', '', '', '999999999', 1, 1631560704),
(18, 3, 4, 'IMPORTACIONES ISABEL S.A.C.', '20451039190', 'CALLE 9 DE DICIEMBRE N°332', '', '', '999999999', 1, 1631560865),
(19, 3, 4, 'CHANAME FLORES JAVIER', '10401168902', 'LA CASANO MERCADO BELEN', 'JAVIER', 'DUEÑO', '921916460', 1, 1631560976),
(20, 3, 4, 'COLD HOT E.I.R.L.', '20493498585', 'CALLE LETICIA N°480', 'COLD HOT', '', '999999999', 1, 1632334736),
(21, 3, 4, 'MULTINEGOCIOS INFORMATICOS SA.C.', '20523832850', 'AV, LA MAR 882 URB. SANTA CRUZ// LIMA-MIRAFLORES', '', '', '999999999', 1, 1632427267),
(22, 3, 4, 'XIOMY REPRESENTACIONES E.I.R.L.', '20602140793', 'CALLE RAMIREZ HURTADO 1035', 'XIOMY', 'DUEÑA', '985746618', 1, 1632515247),
(23, 3, 4, 'NEGOCIOS FELIX &#38; KIARA', '20602819974', 'ARICA N° 1179', '', '', '953542383', 1, 1632942981),
(24, 3, 4, 'KEVIN &#38; ELIANI E.I.R.L.', '2049353962', 'AV. 28 DE JULIO N°588', '', '', '065-25273', 1, 1633110318),
(25, 3, 4, 'DAVILA MARTINENGUE PRICILA ESTEFANI', '10469369451', 'PJ. QUIÑONES NRO. 17 - IQUITOS - MAYNAS - LORETO', '', '', '969323909', 1, 1633550164),
(26, 3, 4, 'REPRESENTACIONES MONTERO S.R.L', '20393138808', 'JR. TARAPACA NRO. 458 - CALLERIA - CORONEL PORTILLO - UCAYALI', 'Vendedor', 'Vendedor', '065241861', 1, 1633552868),
(27, 3, 4, 'INVERSIONES COLOSAL S.R.L.', '20528223606', 'CALLE RAMIREZ HURTADO N°1095', '', '', '999999999', 1, 1633977962),
(28, 3, 4, 'AHUMADOS MISHVA E.I.R.L.', '20601529191', 'JR. TACNA N° 220 P.J. SERAFIN FILOMENO - LORETO - MAYNAS - IQUITOS', '', '', '967975113', 1, 1634227859),
(29, 3, 4, 'COMERCIO Y SERVICIOS VEGA S.R.L.', '20602634061', 'CALLE ELIAS AGUIRRE N°1495', '', '', '976934248', 1, 1634229174),
(30, 3, 4, 'ECOCELL INVERSIONES SRL', '20567111718', 'JR. PROSPERO N° 541', '', '', '954676666', 1, 1634232141),
(31, 3, 4, 'CORPORACION EL HUEQUITO EIRL', '20493156439', 'CALLE CONDAMINE N° 529 LORETO-MAYNAS-IQUITOS', '', '', '943871693', 1, 1634233766),
(32, 3, 4, 'D&#39;TODO FERRETERA S.A.C.', '20493580591', 'CALLE SARGENTO LORES N° 516', '', '', '954900942', 1, 1634407526),
(33, 3, 4, 'RENGIFO MANIHUARI SILDA', '10053817110', 'CAL. PALCAZU S/N', 'RENGIFO MANIHUARI SILDA', 'VENDEDOR', '964790317', 1, 1634842135),
(34, 3, 4, 'DANA S.A.C.', '20528230483', 'AV. LA MARINA 1872 - FRENTE A LA PUERTA PRINCIPAL DEL LICEO NAVAL', 'DANA', 'VENDEDOR', '965883015', 1, 1634842643),
(35, 3, 4, 'SUMINISTRO Y SERVICIOS ELECTRICOS SELVA S.R.L.', '20603085290', 'AV. PARTICIPACION N° 637 BELEN - MAYNAS - LORETO', 'SUMTSEL SRL', 'DUEÑO', '999999999', 1, 1635191850),
(36, 3, 4, 'FERRETERIA SALDIAS LA SOLUCION E.I.R.L.', '20567142435', 'CALLE SARGENTO LORES N° 569', 'LA SOLUCION', 'DUEÑO', '965024364', 1, 1635274301),
(37, 3, 4, 'CREAZIONI S.A.', '20103892598', 'CALLE NAUTA N° 396', 'PERNOS MOSQUERA', '.', '065241049', 1, 1635366535),
(38, 3, 4, 'AREVALO REATEGUI JULIO CESAR', '10052268481', 'CALLE CONDAMINE N° 384 IQUITOS-MAYNAS-LORETO', 'PERNO CENTER - JC AREVALO', 'DUEÑO', '965804100', 1, 1635524768),
(39, 3, 4, 'LA CASA PLAST E.I.R.L.', '20601529361', 'CALLE ELIAS AGUIRRE N° 989', '', '', '999999999', 1, 1635526648),
(40, 3, 4, 'NEGOCIOS E INVERSIONES EL SAN MARTINENSE EIRL', '20607904155', 'CALLE ALFONSO UGARTE N° 695', '', '', '948470380', 1, 1635535339),
(41, 3, 4, 'COMERCIAL DISTRIBUIDORA VICKAR S.A.C.', '20601008611', 'CALLE ELIAS AGUIRRE N°1211', '', '', '965663986', 1, 1635535669),
(42, 3, 4, 'TIENDAS MAYORISTAS LA CANASTA', '20602557139', 'CALLE ELIAS AGUIRRE N° 1209', 'LA CANASTA', 'TIENDA', '065263877', 1, 1635537438),
(43, 3, 4, 'DISTRIBUIDORA ALVAGA EIRL', '20567105238', 'CALLE AMAZONAS N° 429 //SAN ANTONIO', 'EL HUEQUITO DE LAS CHELAS', '', '999999999', 1, 1635539248),
(44, 3, 4, 'BAZAR CISNE S.R.L.', '20601615151', 'CALLE ARICA N° 1059', '', '', '065234375', 1, 1635871930),
(45, 3, 4, 'CERVECERIA SAN JUAN S.A.', '20128915711', 'FEDERICO BASADRE KM.13', '', '', '999999999', 1, 1635878161),
(46, 3, 4, 'AREQUIPA EXPRESO MARVISUR EIRL', '20498189637', 'CALLE ANGEL BRUSCO N°580 IQUITOS-MAYNAS--LORETO', 'MARVISUR', '065504567', '065504567', 1, 1636642318),
(47, 3, 4, 'BARTRA FREYRE JOSE LUIS', '10428983535', 'CALLE LA FLORIDA N°15 - SUC: A.H SECADA VIGNETA - CALLE LA FLORIDA 116 (MZ 1 LT.15-B)', 'DEPOSITO FOX LUCKY', 'DUEÑO', '925737190', 1, 1636643251),
(48, 3, 4, 'INVERSIONES HOGAZA S.A.C.', '20602092152', 'PRINCIPAL CA. LOS AGUANOS MZ.A LT.8 - LORETO - MAYNAS - SAN JUAN BAUTISTA', '', 'DUEÑO', '998776241', 1, 1636646211),
(49, 3, 4, 'BEGASA NEGOCIOS S.R.L.', '20600592794', 'Av. La participación mz: J lote: 11 progreso ', '', '', '999999999', 1, 1636646399),
(50, 3, 4, 'VILLENA ISUIZA HECTOR LUIS', '10422274770', 'Av. Augusto Freyre 1035 iquitos-Maynas-loreto', '', '', '941915507', 1, 1636646920),
(51, 3, 4, 'MULTICENTRO ARICA S.A.C.', '20493784162', 'Calle San Martin N°325', '', '', '065243215', 1, 1636647928),
(52, 3, 4, 'ELGEGREN LAO EDGAR', '10052269496', 'CAL. CHICLAYO 181 PUNCHANA- MAYNAS- LORETO', 'DISTRIBUIDORA JOEL ELGEGREN LAO EDGAR', 'DUEÑO', '999999999', 1, 1636648310),
(53, 3, 4, 'EMBOTELLADORA ROMA S.A.C.', '20606653973', 'AV. QUIÑONES KM 1.7 CON CALLE SAN LORENZO SAN JUAN BAUTISTA-MAYNAS -LORETO', '', 'DUEÑO', '999999999', 1, 1636651538),
(54, 3, 4, 'DISTRIBUIDORA CSM E.I.R.L.', '20601538165', 'CA. LAS PALMERAS N°161', '', 'DUEÑO', '065231818', 1, 1636651867),
(55, 3, 4, 'EMBOTELLADORA LA SELVA SA', '20114050025', 'ESQ. PUTUMAYO/ALZAMORA N°207 IQUITOS-MAYNAS-LORETO', '', 'DUEÑO', '999999999', 1, 1636652128),
(56, 3, 4, 'SERVICENTRO VILUSSA S.A.C', '20103818860', 'AV. JOSE ABELARDO QUIÑONES - COMUN. CAMPESINA SN JUAN DE MIRAFLORES - SAN JUN BAUTISTA', '', 'DUEÑO', '065260401', 1, 1636653853),
(57, 3, 4, 'PRISCILLYA E.I.R.L.', '20603842261', 'CALLE GARCIA SAENZ N°327 IQUITOS-MAYNAS-LORETO', '', 'DUEÑO', '943216843', 1, 1636660732),
(58, 3, 4, 'THE LORD COMPANY SOCIEDAD ANONIMA CERRADA', '20602263267', 'AV. ELIAS AGUIRRE N°1245 BELEN- MAYNAS-LORETO', 'ALFA MART', 'DUEÑO', '065269040', 1, 1636661162),
(59, 3, 4, 'ALONDRITA GAS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', '20606700041', 'AV. ABELARDO QUIÑONES MZ. B LT.1 LORETO- MAYNAS- SAN JUAN BAUTISTA', 'DISTRIBUIDOR AUTORIZADO DE LLAMAGAS', 'DUEÑO', '999999999', 1, 1636662818),
(60, 3, 4, 'COMERCIAL IRMITA S.A.C.', '20493201329', 'AV. ELIAS AGUIRRE #1290 LORETO-MAYNAS-IQUITOS', '', 'DUEÑO', '902707769', 1, 1636730226),
(61, 3, 4, 'SANJURJO TANG ANTONIO MARTIN', '10079576765', 'JR. AGUIRRE N°977 IQUITOIS- MAYNAS- LORETO', 'CASA ESPAÑA', 'DUEÑO', '065222413', 1, 1636730892),
(62, 3, 4, 'GRUPO BENDEZU E.I.R.L.', '20601666040', 'AV. QUIÑONES KM. 4 S/N', '', 'DUEÑO', '999999999', 1, 1636741128),
(63, 3, 4, 'INVERSIONES SIRIUS SELVA S.A.C.', '20603983883', 'AV. ABELARDO QUIÑONES KM.3.5 LORETO-MAYNAS-SAN JUAN BAUTISTA', 'HOPE MARKET', 'DUEÑO', '999999999', 1, 1636741433),
(64, 3, 4, 'SERVICIOS GENERALES L &#38; L EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '20600180976', 'CAL.YAVARI N°467 LORETO- MAYNAS-IQUITOS', 'SERVICIOS GENERALES L & L E.I.R.L.', 'DUEÑO', '965004060', 1, 1636743889),
(65, 3, 4, 'COMERCIALIZADORA LA RESTINGA E.I.R.L.', '20528346864', 'ELIAS AGUIRRE N°1157 BELEN- MAYNAS- LORETO', '', 'DUEÑO', '999999999', 1, 1636749107),
(66, 3, 4, 'AGROPECUARIA LA CHACRA S.R.L.', '20528195475', 'CALLE TACNA N°351 IQUITOS- MAYNAS -LORETO', '', 'DUEÑO', '065222294', 1, 1636819544),
(67, 3, 4, 'INVERSIONES DORITA E.I.R.L.', '20493390385', 'JR. ARICA N°342', '', 'DUEÑO', '065264379', 1, 1636820202),
(68, 3, 4, 'HAO YUN VALU S.A.C', '20607695891', 'JR. CUSCO N°677 LIMA-LIMA-LIMA', '', 'DUEÑO', '014273642', 1, 1636821552),
(69, 3, 4, 'COMERCIAL GAVIOTA E.I.R.L.', '20493490924', 'JR PROSPERO N°202 IQUITOS-MAYNAS.LORETO', '', 'DUEÑO', '999999999', 1, 1636824506),
(70, 3, 4, 'PAREDES PEREA SANDY PALMIR', '10053244331', 'AV. ABELARDO QUIÑONES N°2237 SAN JUAN BAUTISTA- MAYNAS- LORETO', 'CRI CRI PERNOS ', 'DUEÑO', '965768233', 1, 1636824942),
(71, 3, 4, 'TAPULLIMA SALDAÑA RENINGER', '10404784426', 'CALLE SAMANEZ OCAMPO N°789 PUNCHANA-MAYNAS-LORETO', 'ELECTRONICA R.& R.', 'DUEÑO', '953635890', 1, 1636990647),
(72, 3, 4, 'SILVA MOTOR 29 EIRL', '20607631108', 'CALL.PANTOJA N°19 PASAJE LA PAZ LORETO-MAYNAS-IQUITOS', '', 'DUEÑO', '932528713', 1, 1636991757),
(73, 3, 4, 'COMERCIALIZADORA LOS TULIPANES S.A.C.', '20493380827', 'AV. ABELARDO QUIÑONES KM 5.5 (C.C SAN JUAN DE MIRAFLORES) LORETO-MAYNAS-SAN JUAN', '', 'DUEÑO', '999999999', 1, 1636996195),
(74, 3, 4, 'CENTRO COMERCIAL RIVERA E.I.R.L.', '20567168159', 'CALLE ABTAO N°339 IQUITOS- MAYNAS-LORETO', '', 'DUEÑO', '989462722', 1, 1637002855),
(75, 3, 4, 'AREVALO TORRES ENMA', '10010801341', 'CALLE LAS AZUCENAS N°438 IQUITOS- MAYNAS- LORETO', 'BODEGA DEPOSITO \"ENMA\"', 'DUEÑO', '065798024', 1, 1637003612),
(76, 3, 4, 'IMPORTADORA YCOMERCIALIZADORA IQUITOS S.R.L', '20608478338', 'AV.ABELARDO QUIÑONES N°4033 LORETO-MAYNAS-SAN JUAN', '', 'DUEÑO', '930624091', 1, 1637005883),
(77, 3, 4, 'COMERCIAL FERRETERIA JK E.I.R.L.', '20607039811', 'CALLE DE LEON 393 - IQUITOS', '', 'DUEÑO', '928765547', 1, 1637076631),
(78, 3, 4, 'MULTINEGOCIOS Y SERVICIOS ASIA E.I.R.L.', '20567261957', 'AV. JOSE ABELARDO QUIÑONES KM. 4.5 SAN JUAN BAUTISTA-MAYNAS-LORETO.', 'DON BIGOTE POLLOS Y PARRILLAS', 'DUEÑO', '065228372', 1, 1637077101),
(79, 3, 4, 'CETP S.A.C.', '20541235150', 'JR. RAMON CASTILLA  676', '', '', '999999999', 1, 1637079616),
(80, 3, 4, 'JORSA DE LA SELVA S.A.C.', '20531502508', 'JR. ARICA N°800', 'INKAFARMA', 'DUEÑO', '2130760', 1, 1637079716),
(81, 3, 4, 'TRAPECIO FERRETERA E.I.R.L.', '20601008786', 'AV. GRAU N°4757', '', '', '943984324', 1, 1637084516),
(82, 3, 4, 'BOTICA MEDISEL E I R LTDA', '20219330660', 'JR. ARICA 795 LORETO- MAYNAS- IQUITOS', '', 'DUEÑO', '965672522', 1, 1637084652),
(83, 3, 4, 'VIETTEL PERU S.A.C.', '20543254798', 'CALLE BERMUDEZ N°486-487 IQUITOS- MAYNAS- LORETO', '', 'DUEÑO', '999999999', 1, 1637090372),
(84, 3, 4, 'MATIZADOS Y PINTURAS EL MORENO F &#38; L EIRL.', '20493360800', 'JR. ARICA N°852 - IQUITOS-MAYNAS-LORETO', '', 'DUEÑO', '065236047', 1, 1637160753),
(85, 3, 4, 'MR INGENIEROS CONSULTORIA Y SERV. SCRL', '20408730156', 'CALVO DE ARAUJO N°536-A IQUITOS-MAYNAS-LORETO', '', 'DUEÑO', '065231992', 1, 1637161675),
(86, 3, 4, 'D´TODO CERAMICA J &#38; L S.A.C.', '20603463472', 'AV.GRAU N°1170 IQUITOS-MAYNAS-LORETO', '', 'DUEÑO', '065264511', 1, 1637162560),
(87, 3, 4, 'TPP LOGISTIC E.I.R.L.', '20604792364', 'PJ.BERMUDEZ CAL MOORE N°1254 - AGENCIA IQUITOS', '', 'DUEÑO', '999999999', 1, 1637165937),
(88, 3, 4, 'RUIZ LOPEZ FREDY WILLY', '10451780471', 'PJ. CRUZEIRO MZ: B LOTE: 22 SAN JUAN-MAYNAS-LORETO', 'MULTISERVICIOS RULO', '', '365615908', 1, 1637166014),
(89, 3, 4, 'COMERCIAL DENISAM S.R.L.', '20531369743', 'AV. GRAU N°1513 LORETO-MAYNAS IQUITOS', '', 'DUEÑO', '065265367', 1, 1637171223),
(90, 3, 4, 'FLAM COLD &#38; FICER E.I.R.L.', '20602066011', 'AV, FREYRE N°1301 PUNCHANA-MAYNAS-LORETO', '', 'DUEÑO', '265252617', 1, 1637173291),
(91, 3, 4, 'BREANIZ E.I.R.L.', '20600430395', 'AV. LA PARTICIPACION MZ: B LOTE: 21', '', '', '965962414', 1, 1637174236),
(92, 3, 4, 'FRIOSELVA LOGISTICA S.R.L.', '20606355832', 'CALLE SARGERTO LORES N° 752', '', '', '065222603', 1, 1637176858),
(93, 3, 4, 'VASQUEZ RODRIGUEZ OSCAR ALEJANDRO', '10255876576', 'JR. ARICA N° 851-857 LORETO-MAYNAS-IQUITOS', '', '', '965024792', 1, 1637177471),
(94, 3, 4, 'HIPERMERCADOS TOTTUS ORIENTE S.A.C.', '20393864886', 'AV. LA MARINA 377 MAYNAS-LORETO', '', '', '999999999', 1, 1637268956),
(95, 3, 4, 'PC VENTAS SERVICIOS &#38; TRANSPORTE E.I.RL.', '20600345924', 'AV. ELIAS AGUIRRE N° 1280', 'CARMEN', 'GERENTE', '977231810', 1, 1637354145),
(96, 3, 2, 'GRULAC EIRL', '20600726898', 'CALLE RAMIREZ HURTADO N° 1021', '', '', '999999999', 1, 1637696600),
(97, 3, 4, 'MERCADO', '00000000000', '0000', 'MERCADO', 'MERCADO', '99999999', 1, 1637960368);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `id_puntos` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `puntos_cantidad` decimal(10,2) NOT NULL,
  `puntos_cantidad_soles` decimal(10,2) NOT NULL,
  `puntos_fecha_registro` datetime NOT NULL,
  `puntos_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_cliente`
--

CREATE TABLE `puntos_cliente` (
  `id_punto_cliente` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_puntos` int(11) NOT NULL,
  `puntos_cliente_acumulado` decimal(10,2) NOT NULL,
  `puntos_cliente_fecha_registro` datetime NOT NULL,
  `puntos_cliente_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `receta_nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receta_fecha` datetime NOT NULL,
  `receta_estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_receta`, `id_usuario`, `receta_nombre`, `receta_fecha`, `receta_estado`) VALUES
(10, 1, 'Ensalada Mixta', '2021-04-07 17:03:38', 1),
(11, 1, 'Papa a la Huancaina', '2021-04-07 17:04:17', 1),
(12, 1, 'Causa en Pulpa de Cangrejo Acevichada', '2021-04-07 17:04:43', 1),
(13, 1, 'Conchita Clásica', '2021-04-07 17:10:56', 1),
(14, 1, 'Conchita Mixta', '2021-04-07 17:11:02', 1),
(15, 1, 'Natural Simple', '2021-04-07 17:11:10', 1),
(16, 1, 'Natural Mixto', '2021-04-07 17:11:17', 1),
(17, 1, 'A lo Macho', '2021-04-07 17:11:32', 1),
(18, 1, 'Afrodisiaco', '2021-04-07 17:33:13', 1),
(19, 1, 'Cebiche Conchita', '2021-04-07 17:35:54', 1),
(20, 1, 'Cebiche Conchita + 1/2 Cangrejo', '2021-04-07 17:36:03', 1),
(21, 1, 'Cebiche Natural', '2021-04-07 17:36:16', 1),
(22, 1, 'Cebiche Mixto Conchita', '2021-04-07 17:36:29', 1),
(23, 1, 'Cebiche Mixto Natural', '2021-04-07 17:36:40', 1),
(24, 1, 'Cebiche de Conchas Negras', '2021-04-07 17:36:50', 1),
(25, 1, 'Tiradito Simple', '2021-04-07 17:37:48', 1),
(26, 1, 'Tiradito Especial', '2021-04-07 17:39:17', 1),
(27, 1, 'Chicharron de Pollo', '2021-04-07 17:41:55', 1),
(28, 1, 'Chicharron de Pescado', '2021-04-07 17:42:05', 1),
(29, 1, 'Chicharron de Chancho', '2021-04-07 17:42:17', 1),
(30, 1, 'Chicharron mixto de Pescado y Pollo', '2021-04-07 17:42:56', 1),
(31, 1, 'Chicharron Mixto de Pescado y Mariscos', '2021-04-07 17:43:05', 1),
(32, 1, 'Chicharron a la Última Conchita', '2021-04-07 17:43:15', 1),
(33, 1, 'Jalea', '2021-04-07 17:43:25', 1),
(34, 1, 'Chicharron de Calamar', '2021-04-07 17:43:36', 1),
(35, 1, 'Chicharron de Pota', '2021-04-07 17:43:44', 1),
(36, 1, 'Dúo a la Conchita', '2021-04-07 17:44:31', 1),
(37, 1, 'Dúo Mixto a la Conchita', '2021-04-07 17:44:42', 1),
(38, 1, 'Cebiche + Chicharron de Pollo', '2021-04-07 17:46:06', 1),
(39, 1, 'Cebiche + Chicharron de Pescado', '2021-04-07 17:46:20', 1),
(40, 1, 'Cebiche + Arroz con Mariscos', '2021-04-07 17:46:31', 1),
(41, 1, 'Cebiche + Chaufa con Pollo', '2021-04-07 17:46:41', 1),
(42, 1, 'Cebiche + Chaufa con Mariscos', '2021-04-07 17:46:50', 1),
(43, 1, 'Chicharron de Pescado + Chaufa con Mariscos', '2021-04-07 17:46:59', 1),
(44, 1, 'Chicharron de Pollo + Chaufa con Mariscos', '2021-04-07 17:47:09', 1),
(45, 1, 'Chicharron de Pollo + Arroz con Mariscos', '2021-04-07 17:47:19', 1),
(46, 1, 'Chicharron de Pescado + Arroz con Mariscos', '2021-04-07 17:49:22', 1),
(47, 1, 'Chicharron de Pollo + Chaufa con Pollo', '2021-04-07 17:49:41', 1),
(48, 1, 'Chicharron de Pescado + Chaufa con Pollo', '2021-04-07 17:49:53', 1),
(49, 1, 'Cebiche Mixto + Chaufa con Mariscos', '2021-04-07 17:50:02', 1),
(50, 1, 'Cebiche Mixto + Chaufa con Pollo', '2021-04-07 17:50:13', 1),
(51, 1, 'Cebiche Mixto + Arroz con Mariscos', '2021-04-07 17:50:22', 1),
(52, 1, 'Chicharron de Pollo + Cebiche Mixto', '2021-04-07 17:50:32', 1),
(53, 1, 'Chicharron de Pescado + Cebiche Mixto', '2021-04-07 17:50:43', 1),
(54, 1, 'A la Conchita', '2021-04-07 17:50:53', 1),
(55, 1, 'Especial a la Conchita', '2021-04-07 17:51:03', 1),
(56, 1, 'Regional', '2021-04-07 17:51:14', 1),
(57, 1, 'Sopa a la Minuta', '2021-04-07 17:58:16', 1),
(58, 1, 'Sopa Dieta de Pollo', '2021-04-07 17:58:29', 1),
(59, 1, 'Parihuela', '2021-04-07 17:58:38', 1),
(60, 1, 'Chupe de Camarones', '2021-04-07 17:58:45', 1),
(61, 1, 'Sudado de Corvina', '2021-04-07 18:02:29', 1),
(62, 1, 'Sudado de Doncella', '2021-04-07 18:02:44', 1),
(63, 1, 'Sudado de Mariscos', '2021-04-07 18:02:56', 1),
(64, 1, 'Sudado Mixto (Mariscos y Pescado Doncella)', '2021-04-07 18:03:09', 1),
(65, 1, 'Picante de Mariscos', '2021-04-07 18:03:18', 1),
(66, 1, 'Arroz con Mariscos', '2021-04-07 18:03:28', 1),
(67, 1, 'Lomo Fino con Salsa de Champiñones', '2021-04-07 18:03:36', 1),
(68, 1, 'Lomo Fino al Jugo', '2021-04-07 18:03:45', 1),
(69, 1, 'Pescado a lo Macho', '2021-04-07 18:06:28', 1),
(70, 1, 'Pescado al Ajo', '2021-04-07 18:06:36', 1),
(71, 1, 'Corvina Frita', '2021-04-07 18:06:44', 1),
(72, 1, 'Pescado Enrollado', '2021-04-07 18:06:53', 1),
(73, 1, 'Seco de Cabrito', '2021-04-07 18:07:01', 1),
(74, 1, 'Chaufa con Pollo', '2021-04-07 18:09:09', 1),
(75, 1, 'Chaufa con Carnes', '2021-04-07 18:09:22', 1),
(76, 1, 'Chaufa con Mariscos', '2021-04-07 18:09:36', 1),
(77, 1, 'Chaufa Especial', '2021-04-07 18:09:49', 1),
(78, 1, 'Chaufa Regional', '2021-04-07 18:10:03', 1),
(79, 1, 'Chaufa con Pescado', '2021-04-07 18:10:17', 1),
(80, 1, 'Chaufa Mixto (Pollo y Carne)', '2021-04-07 18:10:30', 1),
(81, 1, 'Lomo Fino a la Plancha', '2021-04-07 18:20:18', 1),
(82, 1, 'Pollo a la Plancha', '2021-04-07 18:20:30', 1),
(83, 1, 'Pescado a la Plancha', '2021-04-07 18:22:39', 1),
(84, 1, 'Bisteck a lo Pobre', '2021-04-07 18:23:01', 1),
(85, 1, 'Pollo a lo Pobre', '2021-04-07 18:23:12', 1),
(86, 1, 'Pescado a lo Pobre', '2021-04-07 18:23:21', 1),
(87, 1, 'Mixto (Lomo y Pollo) a lo Pobre', '2021-04-07 18:27:48', 1),
(88, 1, 'Filete de Pescado a la Plancha en crema blanca', '2021-04-07 18:34:33', 1),
(89, 1, 'Filete de Pollo en crema blanca', '2021-04-07 18:34:54', 1),
(90, 1, 'Filete de Lomo Fino en crema blanca', '2021-04-07 18:35:15', 1),
(91, 1, 'Tacu tacu de Pollo', '2021-04-07 18:36:43', 1),
(92, 1, 'Tacu tacu de Lomo Fino', '2021-04-07 18:36:59', 1),
(93, 1, 'Tacu Tacu de Mariscos', '2021-04-07 18:37:16', 1),
(94, 1, 'Tacu tacu de Filete de Pescado', '2021-04-07 18:37:28', 1),
(95, 1, 'Tacu tacu de Lomo Saltado', '2021-04-07 18:37:44', 1),
(96, 1, 'Tacu tacu de Pollo Saltado', '2021-04-07 18:37:53', 1),
(97, 1, 'Pollo Saltado', '2021-04-07 18:49:49', 1),
(98, 1, 'Lomo Saltado', '2021-04-07 18:50:04', 1),
(99, 1, 'Pescado saltado', '2021-04-07 18:50:19', 1),
(100, 1, 'Cecina Saltado', '2021-04-07 18:50:39', 1),
(101, 1, 'Saltado Mixto (Pollo y Lomo)', '2021-04-07 18:50:52', 1),
(102, 1, 'Alitas Picantes', '2021-04-07 18:54:38', 1),
(103, 1, 'Tequeños Rellenos', '2021-04-07 18:54:47', 1),
(104, 1, 'Piqueo Regional a la Conchita', '2021-04-07 18:54:54', 1),
(105, 1, 'Cecina con Patacones', '2021-04-07 18:55:05', 1),
(106, 1, 'Cecina Loretana', '2021-04-07 18:55:11', 1),
(107, 1, 'Cecina con Tacacho', '2021-04-07 18:55:20', 1),
(108, 1, 'Pescado a la Loretana', '2021-04-07 18:55:31', 1),
(109, 1, 'Pescado en Salsa de Cocona o Camu Camu', '2021-04-07 18:58:55', 1),
(110, 1, 'Pescado Envuelto en Hoja', '2021-04-07 18:59:04', 1),
(111, 1, 'Pescado a la Pimienta', '2021-04-07 18:59:13', 1),
(112, 1, 'Pollo a la Plancha Regional', '2021-04-07 18:59:22', 1),
(113, 1, 'Parrilla Mixta a la Conchita', '2021-04-07 18:59:32', 1),
(114, 1, 'Arroz con Pato', '2021-04-07 18:59:41', 1),
(115, 1, 'Seco de Pato', '2021-04-07 18:59:50', 1),
(116, 1, 'Guiso de Pato', '2021-04-07 19:00:00', 1),
(117, 1, 'Aguadito de Pato', '2021-04-07 19:00:31', 1),
(118, 1, 'Guiso de Motelo', '2021-04-07 19:00:40', 1),
(119, 1, 'Motelo al Kion', '2021-04-07 19:00:51', 1),
(120, 1, 'Fuente de Ceviche Conchita simple', '2021-04-07 19:01:14', 1),
(121, 1, 'Fuente de Ceviche Conchita Mixto', '2021-04-07 19:01:26', 1),
(122, 1, 'Fuente de Ceviche Natural', '2021-04-07 19:01:43', 1),
(123, 1, 'Fuente de Ceviche Natural Mixto', '2021-04-07 19:02:59', 1),
(124, 1, 'Fuente de Arroz con Mariscos', '2021-04-07 19:03:12', 1),
(125, 1, 'Fuente de Chaufa Simple', '2021-04-07 19:03:24', 1),
(126, 1, 'Fuente de Chaufa con Pollo', '2021-04-07 19:03:37', 1),
(127, 1, 'Fuente de Chaufa con Mariscos', '2021-04-07 19:03:49', 1),
(128, 1, 'Fuente de Chicharron de Pollo', '2021-04-07 19:04:01', 1),
(129, 1, 'Fuente de Chicharron de Pescado', '2021-04-07 19:04:13', 1),
(130, 1, 'Fuente de Sudado de Corvina', '2021-04-07 19:04:24', 1),
(131, 1, 'Bolsa Plástica', '2021-05-02 23:13:49', 1),
(132, 2, 'Piqueo de Machas', '2021-09-14 15:22:56', 1),
(133, 2, 'Langostinos al Panko', '2021-09-14 15:28:32', 1),
(134, 2, 'Choritos a la Chalaca', '2021-09-14 15:33:38', 1),
(135, 2, 'Choritos a la Chalaca', '2021-09-14 15:33:38', 1),
(136, 2, 'Tequeños Clásicos', '2021-09-14 15:43:34', 1),
(137, 10, 'Leche de Colores', '2021-10-04 15:29:59', 1),
(139, 10, 'Cebiche Conchita Jumbo', '2021-10-04 15:37:28', 1),
(140, 10, 'Cebiche Natural', '2021-10-04 15:37:45', 1),
(141, 10, 'Cebiche Mixto Conchita', '2021-10-04 15:38:11', 1),
(142, 10, 'Tiradito en salsa de Maracuya', '2021-10-05 12:47:53', 1),
(143, 10, 'Tiradito en salsa de Camu Camu', '2021-10-05 12:49:52', 1),
(144, 10, 'Tiradito Clásico', '2021-10-05 12:50:16', 1),
(145, 10, 'Tiradito Especial', '2021-10-05 12:50:34', 1),
(146, 10, 'Tiradito a la Conchita', '2021-10-05 12:50:57', 1),
(147, 10, 'Trio a la conchita', '2021-10-05 14:05:38', 1),
(148, 10, 'Trio especial a la Conchita', '2021-10-05 14:06:03', 1),
(149, 10, 'Alitas en salsa de Cocona', '2021-10-07 11:12:20', 1),
(150, 10, 'Alitas en salsa de Camu camu', '2021-10-07 11:12:38', 1),
(151, 10, 'Alitas en salsa de Maracuya', '2021-10-07 11:12:55', 1),
(152, 10, 'Alitas a la BBQ', '2021-10-07 11:13:24', 1),
(153, 10, 'Alitas Orientales', '2021-10-07 11:13:35', 1),
(154, 10, 'Pollo al Ajo', '2021-10-07 11:57:37', 1),
(155, 10, 'Arroz con Pulpo y Chorizo', '2021-10-07 12:14:05', 1),
(156, 10, 'Fetuccini con cecina ', '2021-10-07 12:17:55', 1),
(157, 10, 'Arrisotado con Medallón ', '2021-10-07 12:22:24', 1),
(158, 10, 'Pescado enrollado en salsa de guisador ', '2021-10-07 12:24:55', 1),
(159, 10, 'Lomo al Grill', '2021-10-07 12:27:18', 1),
(160, 10, 'Jamón de paiche a la loretana', '2021-10-07 12:29:19', 1),
(161, 10, 'Pulpo al olivo acevichado', '2021-10-07 12:35:41', 1),
(162, 10, 'Pulpo al Grill con Yuca', '2021-10-07 12:40:58', 1),
(163, 10, 'Patarashca de Pulpo', '2021-10-07 12:41:23', 1),
(164, 10, 'Ensalada de Pulpo', '2021-10-07 12:41:41', 1),
(165, 10, 'Plátano Frito', '2021-10-08 13:29:42', 1),
(166, 10, 'Arroz blanco', '2021-10-08 13:29:51', 1),
(167, 10, 'Yuca sancochada', '2021-10-08 13:30:06', 1),
(168, 10, 'Camote sancochada', '2021-10-08 13:30:19', 1),
(169, 10, 'Porción de Patacón', '2021-10-08 13:30:41', 1),
(170, 10, 'Porción Maduro Frito', '2021-10-08 13:30:56', 1),
(171, 10, 'Tacacho', '2021-10-08 13:31:04', 1),
(172, 10, 'Papa sancochada', '2021-10-08 13:31:20', 1),
(173, 10, 'Porción de papa frita', '2021-10-08 13:31:31', 1),
(174, 10, 'Porción de Chaufa', '2021-10-08 13:32:04', 1),
(175, 10, 'Vaso de refresco', '2021-10-08 13:37:42', 1),
(176, 10, 'Refresco de temporada 1 lt', '2021-10-08 13:38:01', 1),
(177, 10, 'Agua mineral', '2021-10-08 13:38:09', 1),
(178, 10, 'Sprite', '2021-10-08 13:40:53', 1),
(179, 10, 'Fanta', '2021-10-08 13:41:08', 1),
(180, 10, 'Inca/Coca 500 ml', '2021-10-08 13:41:34', 1),
(181, 10, 'inca/Coca 1.lt', '2021-10-08 13:42:07', 1),
(182, 10, 'inca/Coca 1.lt', '2021-10-08 13:42:08', 1),
(183, 10, 'Inca/Coca 1.5 lt', '2021-10-08 13:42:22', 1),
(184, 10, 'Pilsen 310 ml', '2021-10-08 13:42:54', 1),
(185, 10, 'Cristal 330 ml', '2021-10-08 13:43:05', 1),
(186, 10, 'Trigo 330 ml', '2021-10-08 13:43:20', 1),
(187, 10, 'Malta 330 ml', '2021-10-08 13:43:33', 1),
(188, 10, 'Corona 355 ml', '2021-10-08 13:43:45', 1),
(189, 10, 'Stella Artois 330 ml', '2021-10-08 13:44:06', 1),
(190, 10, 'Trigo 620 ml', '2021-10-08 13:44:34', 1),
(191, 10, 'Malta 620 ml', '2021-10-08 13:44:49', 1),
(192, 10, 'Pilsen 630 ml', '2021-10-08 13:45:06', 1),
(193, 10, 'Cristal 650 ml', '2021-10-08 13:45:24', 1),
(194, 10, 'Delivery', '2021-11-11 14:08:51', 1),
(195, 10, 'Vaso de refresco Maracuya', '2021-11-11 14:10:45', 1),
(196, 10, 'Jarra de Refresco Maracuya', '2021-11-11 14:12:48', 1),
(197, 10, 'Promola', '2021-11-11 14:26:00', 1),
(198, 10, 'Papa a la Huancaina', '2021-11-11 14:39:22', 1),
(199, 10, 'Agua San Luis C/G', '2021-11-11 14:48:05', 1),
(200, 10, 'Agua Cielo C/G', '2021-11-11 14:48:42', 1),
(201, 10, 'Agua Cielo S/G', '2021-11-11 14:48:53', 1),
(202, 10, 'Coca Cola 1 Lt', '2021-11-11 14:52:09', 1),
(203, 10, 'Coca Cola de 1 1/2  Lt', '2021-11-11 14:53:12', 1),
(204, 10, 'Cusqueña Trigo 310 ml', '2021-11-11 15:19:45', 1),
(205, 10, 'Cusqueña Malta 310 ml', '2021-11-11 15:21:21', 1),
(206, 10, 'Pilsen de 305 ml', '2021-11-11 15:22:17', 1),
(207, 10, 'Amstel 473 ml ', '2021-11-11 15:54:37', 1),
(208, 10, 'Heineken Lata 330 ml', '2021-11-11 15:55:41', 1),
(209, 10, 'Heineken Botella 330 ml', '2021-11-11 15:56:16', 1),
(210, 10, 'Corona x 6 und ', '2021-11-11 16:04:24', 1),
(211, 10, 'Sporade 500 ml', '2021-11-11 16:05:07', 1),
(212, 10, 'Pisco Sour', '2021-11-11 16:11:23', 1),
(213, 10, 'Piña Colada', '2021-11-11 16:11:54', 1),
(214, 10, 'Chilcano', '2021-11-11 16:12:38', 1),
(215, 10, 'Algarrobina', '2021-11-11 16:13:16', 1),
(216, 10, 'Gin Tonic', '2021-11-11 16:13:53', 1),
(217, 10, 'Tom Collins', '2021-11-11 16:14:39', 1),
(218, 10, 'Margarita Clasica', '2021-11-11 16:15:24', 1),
(219, 10, 'Margarita Blue', '2021-11-11 16:15:53', 1),
(220, 10, 'Tequila Sonrrisse', '2021-11-11 16:16:39', 1),
(221, 10, 'Caipiroska', '2021-11-11 16:19:11', 1),
(222, 10, 'Destornillador', '2021-11-11 16:19:51', 1),
(223, 10, 'RON MEDILLIN 8 AÑOS', '2021-11-12 13:59:06', 1),
(224, 10, 'COCA COLA 2.25 LT', '2021-11-14 12:21:25', 1),
(225, 10, 'INCA KOLA 2.25 LT', '2021-11-14 12:21:44', 1),
(226, 2, 'CRISTAL 330 ML X 6 UNID', '2021-11-14 13:48:36', 1),
(227, 2, 'CHAPO', '2021-11-14 14:02:49', 1),
(228, 2, 'RON CAPITAN MORGAN', '2021-11-14 14:04:43', 1),
(229, 2, 'COMBO MORGAN', '2021-11-14 14:06:23', 1),
(230, 10, 'CIGARRO LUCKY', '2021-11-16 17:11:18', 1),
(231, 10, 'Adicional Cambio de plato', '2021-11-17 12:27:10', 1),
(232, 10, 'Adicional Cambio de plato S/7.00', '2021-11-17 12:28:57', 1),
(233, 10, 'Adicional Cambio de plato S/10.00', '2021-11-17 12:30:01', 1),
(234, 10, 'Combinado Chicharon de pescado + Chaufa con Mariscos', '2021-11-18 13:03:49', 1),
(235, 10, '1/2  FUENTE DE CHICHARRON ', '2021-11-21 12:30:43', 1),
(236, 10, 'CANGREJO', '2021-11-21 12:35:37', 1),
(237, 10, '1/2 CANGREJO', '2021-11-21 12:35:58', 1),
(238, 10, 'MACHU PICHU', '2021-11-21 16:43:02', 1),
(239, 10, 'ENSALADA DE PALTA ', '2021-11-22 10:28:01', 1),
(240, 10, 'Apple Martini', '2021-11-22 10:50:39', 1),
(241, 10, 'Caipirinha', '2021-11-22 14:24:50', 1),
(242, 10, 'cuba Libre', '2021-11-22 14:25:13', 1),
(243, 10, 'Mojito', '2021-11-22 14:25:31', 1),
(244, 10, 'Martiny Clasico', '2021-11-22 14:26:00', 1),
(245, 10, 'Cosmopolitan', '2021-11-22 14:26:23', 1),
(246, 10, 'Daikiri', '2021-11-22 14:26:42', 1),
(247, 10, 'Shive', '2021-11-22 14:27:02', 1),
(248, 10, 'Shot Tequila', '2021-11-22 14:28:14', 1),
(249, 10, 'Cielo y el Infierno', '2021-11-22 15:20:44', 1),
(250, 10, 'Amor en Llamas', '2021-11-22 15:21:42', 1),
(251, 10, 'Rompe Carozanes', '2021-11-22 15:22:57', 1),
(252, 10, 'Orgasmos', '2021-11-22 15:23:42', 1),
(253, 10, 'Pantera Rosa', '2021-11-22 15:26:12', 1),
(254, 10, 'Vaso Whisky', '2021-11-22 15:50:29', 1),
(255, 10, 'VINO BORGOÑA', '2021-11-27 15:54:41', 1),
(256, 21, 'GASEOSA 2.25', '2022-01-15 13:32:26', 1),
(257, 21, 'PATACON', '2022-01-21 10:31:44', 1),
(258, 21, 'COMO TE GUSTA', '2022-02-12 12:09:09', 1),
(259, 21, 'ALITAS NOCTURNAS', '2022-02-12 12:09:38', 1),
(260, 21, 'SALCHIPAPAS', '2022-02-12 12:09:48', 1),
(261, 21, 'HAMBURGUESAS', '2022-02-12 12:09:58', 1),
(262, 21, 'MAKIS', '2022-02-12 12:10:05', 1),
(263, 21, 'PIQUEO CALIENTES', '2022-02-12 12:10:24', 1),
(264, 21, 'PA PICAR', '2022-02-12 12:10:46', 1),
(265, 21, 'PIQUEOS RAPIDOS', '2022-02-12 12:10:55', 1),
(266, 21, 'PIÑA COLADA', '2022-02-12 13:16:06', 1),
(267, 21, 'DAIQUIRI', '2022-02-12 13:16:16', 1),
(268, 21, 'MOJITO CLASICO', '2022-02-12 13:16:27', 1),
(269, 21, 'MOJITO FRUTADO', '2022-02-12 13:16:43', 1),
(270, 21, 'CUBA LIBRE', '2022-02-12 13:16:50', 1),
(271, 21, 'CONCHITA ARDIENTE', '2022-02-12 14:00:31', 1),
(272, 21, 'COMO TE GUSTA', '2022-02-12 14:00:39', 1),
(273, 21, 'PAL COVID', '2022-02-12 14:00:47', 1),
(274, 21, 'WHISKY', '2022-02-12 14:01:09', 1),
(275, 21, 'JAGER', '2022-02-12 14:01:23', 1),
(276, 21, 'VINO', '2022-02-12 14:01:37', 1),
(277, 21, 'JARRAS', '2022-02-12 14:02:39', 1),
(278, 21, 'PROMO ', '2022-06-03 12:55:16', 1),
(279, 27, 'BALDE CORONA ', '2022-06-13 10:22:26', 1),
(280, 21, 'BORGOÑA', '2022-07-17 19:04:53', 1),
(281, 2, 'Chaufa con Huevo', '2023-01-30 11:33:31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `recurso_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `recurso_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recurso`, `id_categoria`, `recurso_nombre`, `recurso_estado`) VALUES
(1, 6, 'ACEITE NOR CHEF 18LT', 1),
(2, 6, 'ACEITE PALMEROLA 18LT', 1),
(3, 6, 'ACEITE PALMEROLA 4LT', 1),
(4, 6, 'ACEITE TONDERO 900ML', 1),
(5, 6, 'ACEITUNAS', 1),
(6, 6, 'AGUA CRISTAL 500ML', 1),
(7, 6, 'AGUA DE MESA 20LT', 1),
(8, 6, 'AGUA SAN LUIS CON GAS 625ML', 1),
(9, 6, 'AGUA SAN LUIS SIN GAS 625ML', 1),
(10, 6, 'AGUA SAN MATEO 600ML', 1),
(11, 6, 'AGUA SAN MATEO SIN GAS 600ML', 1),
(12, 6, 'AJI LIMO', 1),
(13, 6, 'AJI MIRASOL', 1),
(14, 6, 'AJI ROCOTO', 1),
(15, 6, 'AJINO MOTO 1KG', 1),
(16, 6, 'AJONJOLI 250ML', 1),
(17, 6, 'AJOS PELADO', 1),
(18, 6, 'ALKA ICE X PACK', 1),
(19, 6, 'ALVERJA', 1),
(20, 6, 'APIO', 1),
(21, 6, 'ARROZ DORADO', 1),
(22, 6, 'AYUDIN LIMON 300GR', 1),
(23, 6, 'AYUDIN REPUESTO 130GR', 1),
(24, 6, 'AZUCAR RUBIA', 1),
(25, 6, 'BOLSA 10X15', 1),
(26, 6, 'BOLSA 16X19', 1),
(27, 6, 'BOLSA 19X20', 1),
(28, 6, 'BOLSA 21X24', 1),
(29, 6, 'BOLSA 3X8', 1),
(30, 6, 'BOLSA 75LT', 1),
(31, 6, 'BOLSA CRISTAL 3X10', 1),
(32, 6, 'BOLSA DE DESPACHO', 1),
(33, 6, 'BOLSA ROLLO 10X15', 1),
(34, 6, 'BOMBRILL X 24UND', 1),
(35, 6, 'BRILLADOR TORA X 12UND', 1),
(36, 6, 'BROCOLI', 1),
(37, 6, 'CAMARON', 1),
(38, 6, 'CAMOTE', 1),
(39, 6, 'CANCHAN CHULPI', 1),
(40, 6, 'CANELA ENTERA X BLISTER', 1),
(41, 6, 'CANELA ENTERA X KG', 1),
(42, 6, 'CANGREJO', 1),
(43, 6, 'CEBOLLA', 1),
(44, 6, 'CECINA SELLADA', 1),
(45, 6, 'CERVEZA CRISTAL', 1),
(46, 6, 'CERVEZA CRISTAL 650ML', 1),
(47, 6, 'CERVEZA MALTA 620ML', 1),
(48, 6, 'CERVEZA TRIGO 620ML', 1),
(49, 6, 'CHAMPI?ONES 180GR', 1),
(50, 6, 'CHICA VERANO', 1),
(51, 6, 'CHOCLO', 1),
(52, 6, 'CHORIZO REGIONAL', 1),
(53, 6, 'CHORO', 1),
(54, 6, 'CHU?O', 1),
(55, 6, 'CLAVO DE OLOR X BOLSA', 1),
(56, 6, 'CLAVO DE OLOR X KG', 1),
(57, 6, 'COCA COLA 1.5LT', 1),
(58, 6, 'COCA COLA 1LT', 1),
(59, 6, 'COCA COLA 2.5LT', 1),
(60, 6, 'COCA COLA 237ML', 1),
(61, 6, 'COCA COLA 500ML', 1),
(62, 6, 'COLIFLOR', 1),
(63, 6, 'CONTENEDOR CT-3', 1),
(64, 6, 'CONTENEDOR CT-5', 1),
(65, 6, 'DETERGENTE AYUDIN 140GR', 1),
(66, 6, 'DETERGENTE PATITO 150GR', 1),
(67, 6, 'DONCELLA', 1),
(68, 6, 'DO?A GUSTA PESCADO X 10UND', 1),
(69, 6, 'ENVASE 08 OZ', 1),
(70, 6, 'ENVASE 1/2 LT', 1),
(71, 6, 'FOCH TAMARINDO ', 1),
(72, 6, 'FRIJOL CANARIO', 1),
(73, 6, 'GASEOSA 1LT', 1),
(74, 6, 'GASEOSA GORDITA', 1),
(75, 6, 'GASOLINA 84OCT', 1),
(76, 6, 'GLORIA LATA CHICA 170GR', 1),
(77, 6, 'GLP 10KG', 1),
(78, 6, 'GOLDEN 620ML', 1),
(79, 6, 'GORRO', 1),
(80, 6, 'GUANTES DE VINILO', 1),
(81, 6, 'GUISADOR X BOLSA', 1),
(82, 6, 'HARINA MOLINO X KG', 1),
(83, 6, 'HIELO SUPER ICE 3.5KG', 1),
(84, 6, 'HUEVOS', 1),
(85, 6, 'IMPUESTO DE BOLSA', 1),
(86, 6, 'INCA COLA 1LT', 1),
(87, 6, 'INCA COLA 500ML', 1),
(88, 6, 'INCA KOLA 1.5LT', 1),
(89, 6, 'INCA KOLA 2.25LT', 1),
(90, 6, 'INCA KOLA 237ML', 1),
(91, 6, 'INCA KOLA GORDITA', 1),
(92, 6, 'JABON POPEYE AMARILLO 230GR', 1),
(93, 6, 'KETCHUP ALPESA 8GR ', 1),
(94, 6, 'KION', 1),
(95, 6, 'LA DANESA X KG', 1),
(96, 6, 'LANGOSTA', 1),
(97, 6, 'LANGOSTINO', 1),
(98, 6, 'LANGOSTINO 31-36', 1),
(99, 6, 'LAUREL ESPA?OL (BLISTER)', 1),
(100, 6, 'LAVAGGI CABELLO DE ANGEL 250GR', 1),
(101, 6, 'LEJIA MARGOT COJIN', 1),
(102, 6, 'LIMON', 1),
(103, 6, 'LOMO FINO', 1),
(104, 6, 'MACHA', 1),
(105, 6, 'MAIZ MORADO', 1),
(106, 6, 'MALTA 620ML', 1),
(107, 6, 'MARACUYA', 1),
(108, 6, 'MASCARILLA', 1),
(109, 6, 'MAYONESA ALA CENA 475GR', 1),
(110, 6, 'MAYONESA ALA CENA 8GR', 1),
(111, 6, 'MAYONESA RICASA 100CC', 1),
(112, 6, 'MIXTO', 1),
(113, 6, 'MOSTAZA BYD BALDE 4KG', 1),
(114, 6, 'OREGANO BLISTER', 1),
(115, 6, 'OSTION 730GR', 1),
(116, 6, 'PANCO X 1KG', 1),
(117, 6, 'PAPA BLANCA', 1),
(118, 6, 'PAPA CANCHAN', 1),
(119, 6, 'PAPEL HIGIENICO NOVA', 1),
(120, 6, 'PAPEL TOALLA NOVA MEGARROLLO X2', 1),
(121, 6, 'PECHUGA COPACOL SIN HUESO', 1),
(122, 6, 'PECHUGA DE POLLO', 1),
(123, 6, 'PECHUGA DE POLLO CON HUESO', 1),
(124, 6, 'PILSEN 630ML', 1),
(125, 6, 'PIMENTON ROJO', 1),
(126, 6, 'PIMENTON ROJO BLISTER', 1),
(127, 6, 'POTA', 1),
(128, 6, 'QUESO MOZARELLA', 1),
(129, 6, 'REPOLLO', 1),
(130, 6, 'SAL YODADA SALINA 500GR', 1),
(131, 6, 'SERVILLETA ELITE CORTADA 200UND X 18PAQ', 1),
(132, 6, 'SERVILLETA ELITE CORTADA 200UND X 400UND', 1),
(133, 6, 'SILLAO RIVER CLARO 500ML', 1),
(134, 6, 'SODA FIELD X 6UND', 1),
(135, 6, 'SPAGUETI LAVAGGI 500GR', 1),
(136, 6, 'TEMPLE VELSA BLANCO X 5KG', 1),
(137, 6, 'TIZA EN POLVO X 1KG', 1),
(138, 6, 'TOMATE', 1),
(139, 6, 'VAINITA', 1),
(140, 6, 'VINAGRE BLANCO MARQUEZ 1LT', 1),
(141, 6, 'WANTAN', 1),
(142, 6, 'YUYO', 1),
(143, 6, 'ZANAHORIA', 1),
(144, 6, 'PALTA', 1),
(152, 9, 'GASOLINA 90', 1),
(153, 9, 'FELPA COLORES VARIOS', 1),
(154, 6, 'CREMA DE LECHE NESTLE 300 GR.', 1),
(155, 6, 'DOÑA GUSTA PESCADO TIRA X 10 UNI', 1),
(156, 6, 'DOÑA GUSTA POLLO TIRAS X 10 UN', 1),
(157, 6, 'DOÑA GUSTA RES TIRA X 10 UNI', 1),
(158, 6, 'CABRITO', 1),
(159, 6, 'ARROZ DANES NEGRO PREMIUN 49KG', 1),
(160, 9, 'VALVULAS ALTA', 1),
(161, 9, 'ABRAZADERAS', 1),
(162, 9, 'LLAVE GABINETE', 1),
(163, 9, 'MANGUERA INDUSTRIAL', 1),
(164, 9, 'NOTEBOOK LENOVO 82C50034LM', 1),
(165, 9, 'ANTIVIDRUS NOD 32 POE UNAÑO', 1),
(166, 9, 'TAB A8 GALAXY SM T290 2GBRAM-32GM 8 SAMSUNG SN R9WR30DYCDJ', 1),
(167, 9, 'TAB A7 LITE 8.7 WIFI 3GB RAM- 32GB SAMSUNG. SN R9JR802SKSP', 1),
(168, 9, 'TAB S6 LITE 10.4 WI FI 4GB RAM-64GB SAMSUNG, SN R52R602LGAD', 1),
(169, 9, 'NOTEBOOK HP 15GW0012LA RYZEN5-3500U 12GB,256GB SSD,W10 ROJO Y PLOMO SN. CND1119KGK', 1),
(170, 9, 'SUMAC - BALDE 23 LT TRANSP', 1),
(171, 9, 'KUSKA BALDE #8', 1),
(172, 9, 'COLADOR', 1),
(173, 6, 'ANIS GRANEL', 1),
(174, 6, 'CEBADA QUEMADA', 1),
(175, 6, 'AJI PANCA SECA', 1),
(176, 9, 'BOLSA DE 140 LITROS NEGRO', 1),
(177, 9, 'LESLYE DE UVA 1KG (LAVA VAJILLA)', 1),
(178, 6, 'VINO BLANCO BORGOÑA SEMI SECO', 1),
(179, 6, 'FREJOL CANARIO ', 1),
(180, 6, 'PAPA AMARILA', 1),
(181, 6, 'ARROZ CORRIENTE ', 1),
(182, 6, 'REPOLLO', 1),
(183, 6, 'PULPO', 1),
(184, 6, 'CUSQUEÑA 310 ML', 1),
(185, 9, 'LAVATORIO 02 POZAS BN-S08', 1),
(186, 6, 'SILLAO CLARO ZHONG BANG 1.63 LT', 1),
(187, 6, 'FOSFORO INTI X 10 PQT', 1),
(188, 6, 'DOÑA GUSTA GALLINA X 10UND', 1),
(189, 6, 'ARROZ DORITA', 1),
(190, 6, 'CRISTAL330 ML', 1),
(191, 6, 'CUSQUEÑA TRIGO 310 ML', 1),
(192, 6, 'CORONA EXTRA 355 ML', 1),
(193, 11, 'MEMORIA USB 32GB DTX 3.2 NEGRO KINSGTON', 1),
(194, 9, 'SPRAY KNAUF NEGRO BRILLANTE', 1),
(195, 9, 'INTERRUPTOR TRIPLE P', 1),
(196, 9, 'INTERRUPTOR TRIPLE P', 1),
(197, 9, 'TOBO PVC LUZ SAP 3/4 26.5MM', 1),
(198, 9, 'CURVA PVC LUZ SAP 3/4 X 90°', 1),
(199, 9, 'CURVA PVC LUZ SAP 3/4 X 90°', 1),
(200, 9, 'PINTURA SPRAY NEGRO', 1),
(201, 9, 'PINTURA SPRAY NEGRO', 1),
(202, 9, 'TUBO PVC LUZ SAP 3/4 26.5MM', 1),
(203, 9, 'ENCHUFE 15AMP 125V', 1),
(204, 9, 'CANALETA 10*20 CV ACHESIVO', 1),
(205, 9, 'TAPA CIEGA RECTANGULAR BLANCO', 1),
(206, 9, 'FOCO LED A80 18W-6500K', 1),
(207, 9, 'CABLE THW 14 INDECO VARIOS COLORES', 1),
(208, 9, 'TARAGU TRIKA M-5 TORNILLO N°6', 1),
(209, 9, 'APP 8X1  CAB PAN PALETA ESTRELLA', 1),
(210, 9, 'CAJA RECTANGULAR METAL', 1),
(211, 9, 'TOMACORRIENTE DOBLE 2X15', 1),
(212, 9, 'TOMACORRIENTE DOBLE 2X15', 1),
(213, 9, 'PLACA DECORA NYLON MARFIL LEVITON', 1),
(214, 9, 'CABLE THW 14AWG', 1),
(215, 9, 'CABLE THW 14AWG BLANCO INDECO', 1),
(216, 9, 'AMARRA CABLE COLOR NEGRO X100UND', 1),
(217, 9, 'ABRAZ. U BOLTS 3/4 C/ESPESOR 1/4 METELSA', 1),
(218, 9, 'MACHOS PULGADAS NC 1/8', 1),
(219, 9, 'STOVE BOLST PAN/FLAT 1/8 3/4 2 DOC', 1),
(220, 9, 'PERNOS HEXAGONALES NC-GRADO-2 1/4', 1),
(221, 9, 'FOCO BOLA 9W LED 3 EN 1 WELLMAX', 1),
(222, 9, 'ENVASE PS 01 LT BLANCO C/T SAN GABRIEL-X CIENTO', 1),
(223, 9, 'ENVASE 02 OZ TRANS. C/T ', 1),
(224, 9, 'PAPEL TOALLA LIZ PREMIUN PRECORTADO PQT X 6', 1),
(225, 9, 'ENVASE DELI 1/2 LT SUPER FAST PAMOLSA-X1/4 MLL', 1),
(226, 9, 'PH LAMINADO LIZ PQT X 6 ', 1),
(227, 9, 'ENVASE DELI  1LT SUPER FAST PAMOLSA ', 1),
(228, 6, 'CECINA LOMO 1/2 KILO', 1),
(229, 6, 'CECINA LOMO 1/2 KILO', 1),
(230, 6, 'CONFITECA GLOBO POP FRESA 30B*24 UNI', 1),
(231, 6, 'CONFITECA GLOBO POP SURTIDO 30*24', 1),
(232, 6, 'CREMA DE COCO FRASCO BAR CLAN 280GR', 1),
(233, 6, 'PIÑA EN RODAJA EN ALMIBAR FANNY 565G', 1),
(234, 6, 'GUANTE CORRUGADO', 1),
(235, 6, 'GUANTE DE COCINA XS CREATIVA VIRUTEX', 1),
(236, 6, 'GUANTES COCINA XS CREATIVA VIRUTEX', 1),
(237, 6, 'STELLA ARTOIS', 1),
(238, 6, 'CUSQUEÑA MALTA', 1),
(239, 6, 'PILSEN 305ML', 1),
(240, 6, 'POTA CABEZA', 1),
(241, 6, 'POTA CUERPO', 1),
(242, 6, 'VINO TABERNERO BLANCA FINA', 1),
(243, 6, 'ESPONJA AMARILLO Y VERDE  12 UNI', 1),
(244, 6, 'MIEL DE ABEJA ', 1),
(245, 14, 'TRANSPORTE DE CARGA POR CARRETERA', 1),
(246, 6, 'INKA COLA 1 LT', 1),
(247, 6, 'INKA COLA 2.25 LT', 1),
(248, 6, 'SERVILLETA NOBLE X 15', 1),
(249, 9, 'OCRE AZUL ULTRAMAR KG BAYER', 1),
(250, 9, 'CEMENTO  AMAZÓNICO TIPO ISO', 1),
(251, 9, 'CEMENTO APU 42.50 KG', 1),
(252, 9, 'CABLE THW 14 AWG INDECO NEGRO', 1),
(253, 9, 'CABLE THW 14 AWG INDECO ROJO', 1),
(254, 9, 'CABLE THW 12 AWG INDECO BLANCO ', 1),
(255, 6, 'ENVASE 06 OZ', 1),
(256, 6, 'FRIJOL UCAYALINO', 1),
(257, 6, 'PAPEL TOALLA NOVA CLASICO ', 1),
(258, 9, 'STAND GRIS 3 PISOS', 1),
(259, 9, 'PAÑO SCOTCH BRITE SUPER ABSORBENTE', 1),
(260, 9, 'JABON LIQUIDO 5LT', 1),
(261, 9, 'JABON LIQUIDO 1LT', 1),
(262, 9, 'ALCOHOL GEL 70° 1LT', 1),
(263, 9, 'ALCOHOL MEDICINAL', 1),
(264, 9, 'ALCOHOL MEDICINAL 70° 1LT', 1),
(265, 9, 'CRONOMETRO TERMICO', 1),
(266, 6, 'CONTENEDOR CT-4', 1),
(267, 6, 'ENVASE PARA SOPA DE 1LT C/ TAPA', 1),
(268, 6, 'FILETE DE TILAPIA', 1),
(269, 6, 'BOTELLA TEQUILA BLANCO', 1),
(270, 6, 'HARINA GRANEL', 1),
(271, 6, 'HARINA A GRANEL', 1),
(272, 6, 'VINO BORGOÑA OCUCAJE', 1),
(273, 6, 'VINO BORGOÑA OCUCAJE', 1),
(276, 6, 'BOTELLA HAVANA CLUB 3 AÑOS', 1),
(277, 6, 'AJINO SILLAO 1LT', 1),
(278, 6, 'NUEZ MOSCADA', 1),
(279, 6, 'CEBOLLA CHINA ', 1),
(280, 9, 'PAPEL HIG SUP.ECON 4X550 MTS', 1),
(281, 9, 'PAPEL TOALLA BASIC 1X4X200 MTS BLANCO', 1),
(282, 9, 'PAPEL TOALLA BASIC 1X4X200 MTS BLANCO', 1),
(283, 6, 'KETCHUP BYD BALDE 4 KG', 1),
(284, 6, 'BONLE QUESO PARMESANO X35GR SCH', 1),
(285, 6, 'GLORIA CREMA DE LECHE X200ML X 24UND', 1),
(286, 6, 'PAPEL TOALLA NATURAL AIRFLEX 4X1X400 MTS', 1),
(287, 6, 'CREMA AMBIANTE TOPPING 1LT', 1),
(288, 6, 'ESENCIA CONCENTRADA X30ML NARANJA ELY MAR', 1),
(289, 6, 'BASE DE TORTA REDONDO 30CM MARMOLEADO', 1),
(290, 6, 'BASE DE TORTA REDONDO 33CM MARMOLEADO', 1),
(291, 6, 'BOQUILLA ACERO DISEÑO SURTIDO CHICO', 1),
(292, 6, 'GRAJEAS PERLAS NACARADAS', 1),
(293, 6, 'COBERTURA BLANCA ESPECIAL 600GR', 1),
(294, 6, 'COBERTURA BLANCA ESPECIAL 600GR', 1),
(295, 6, 'LAVA VAJILLA LESLY LIMON 1KG', 1),
(296, 6, 'CUBETAS PORTA HUEVOS ', 1),
(297, 6, 'BOLSA ROLLO 8X12 ', 1),
(298, 6, 'GALLETA SODA DIA 10UND', 1),
(299, 9, 'CABLE THW 12 INDECO ROJO', 1),
(300, 9, 'LLAVE TERMICA 2X50A TICINO 761180', 1),
(301, 9, 'LLAVE TERMICA 2X32A TICINO 38660', 1),
(302, 9, 'LLAVE TERMICA 2X20A TICINO  761176', 1),
(303, 9, 'LLAVE TERMICA 2X40A TICINO 38661', 1),
(304, 6, 'GRAPA  P/CABLE REDONDO #16 PLOMO OPALUX CC-6416', 1),
(305, 9, 'LUZ CASCADA CA 100G AMBAR (X1)', 1),
(306, 9, 'INT. DIFERENCIAL  2X40A G.E./ABB 230234', 1),
(307, 6, 'LUCKY CLICK X10 KRE SQ PER LEP', 1),
(308, 6, 'LUCKY 2 CAPS X10 WILD RESHA PE', 1),
(309, 9, 'GARRUCHA INDUSTRIAL GIRATORIO 3\" S/FRENO NARANJA M/VALENCIA ', 1),
(310, 9, 'TORNILLO SPACK 6X30', 1),
(311, 6, 'FANTA NARANJA 3LT', 1),
(312, 6, 'FANTA NARANJA 3LT', 1),
(313, 6, 'SPRITE 3LT', 1),
(314, 9, 'CABLE DE PODER 2X18AWG ', 1),
(315, 14, 'PORTA FARO', 1),
(316, 14, 'MOVILIDAD', 1),
(317, 6, 'GLORIA EVAP.ENTERA 400GR X 24 LATAS', 1),
(318, 14, 'SERVICIO DE MANTENIMIENTO GENERAL', 1),
(319, 14, 'ACEITE MOVILIDAD', 1),
(320, 6, 'AGUA CIELO S/G 625 ML', 1),
(321, 6, 'HEINEKEN CERVEZA LATA 330ML 6 MC', 1),
(322, 6, 'AMSTEL CERVEZA LATA 473 ML X 6 MC', 1),
(323, 6, 'ARROZ FLOR DE MARGARITA 49KG', 1),
(324, 9, 'BOLSA DE BASURA PQ.100UND ', 1),
(325, 6, 'BALDE REAL 12LT TRANSP.C/TAPA', 1),
(326, 6, 'JALADOR DE AGUA X40  CM', 1),
(327, 9, 'SOLDADURA 6011 1/8\" 15460 TRUPER', 1),
(328, 9, 'JABON LIQUIDO MARTELL ROSAS 3785ML', 1),
(329, 9, 'AMBIENTADOR SAPOLIO LAVANDA 360ML', 1),
(330, 12, 'ALCANCIA CHANCHITO MINI CHICO CERAMICO', 1),
(331, 6, 'HARINA MOLITALIA PREPARADA 1KG', 1),
(332, 6, 'BOLSA 2X8X2', 1),
(333, 6, 'MANTEQUILLA DANESA X KG', 1),
(334, 6, 'GLUCOSA 1/4 FRATELLO', 1),
(335, 6, 'CAJA P/TORTA DUPLEX  35X35X35', 1),
(336, 6, 'MANTECA HIDROGENADA 100GR FRATELLO', 1),
(337, 6, 'PASTA DE GOMA 1/2 KG', 1),
(338, 6, 'GLORIA UHT ENTERA 1LT', 1),
(339, 6, 'QUESO CREMA GLORIA BARRA 227GR ', 1),
(340, 6, 'AZUCAR PULVERIZADA FLEISCHMAN 1KG IMPALPABLE', 1),
(341, 12, 'POLLO/CHAUFA/PAPA 1/4 PECHO', 1),
(342, 12, 'POLLO/CHAUFA/PAPA 1/4 PIERNA', 1),
(343, 12, 'TAPER PARA DESPACHO', 1),
(344, 6, 'CULANTRO LIMEÑO', 1),
(345, 6, 'RABANITO', 1),
(346, 12, 'VICK VAPORUB 50G', 1),
(347, 6, 'DIESEL B5 S50 UV', 1),
(348, 12, 'CURITAS FARMAPRECIO', 1),
(349, 6, 'OSTION GALON', 1),
(350, 6, 'OSTION GALON', 1),
(351, 6, 'ESPINACA', 1),
(352, 12, 'PAINFLEX 550MG TABL', 1),
(353, 9, 'CERRADURA INTERIOR D/ACERO INOXIDABLE. FORTE', 1),
(354, 12, 'PARACETAMOL TBL', 1),
(355, 12, 'EUROCOR 2.5 MG COMPRIMIDO', 1),
(356, 12, 'VENDIBAND COOLDESIVOS', 1),
(357, 12, 'ALGODON FARMA', 1),
(358, 12, 'CLORURO DE SODIO', 1),
(359, 12, 'GASA ESTERIL 10CMX10CM', 1),
(360, 12, 'DOLOCORT GEL 1% TOP 30G', 1),
(361, 11, 'SIM MOBILE 4G', 1),
(362, 11, 'ADVANCE PAYMENT', 1),
(363, 11, 'SERVICIOS DE BITEL', 1),
(364, 9, 'PINTURA TEKNO PARA TRAFICO AMARILLO 1 GL', 1),
(365, 9, 'DISOLVENTE PARA TRAFICO BICOLOR', 1),
(366, 9, 'CINTA MASKING TAPE PEGAFAB 3/4', 1),
(367, 12, 'SODA ACUSTICA MRO16', 1),
(368, 12, 'SULFATO DE ALUMINIO TIPO \"A\" MRO17', 1),
(369, 12, 'HIPOCLORITO DE CALCIO AL 70% MRO12', 1),
(370, 12, 'BICARBONATO DE SODIO MRO004', 1),
(371, 12, 'PORCELANATO YIN YANG BLANCO 60X60', 1),
(372, 12, 'PEGAMENTO RHINOPEG EXTRAFUERTE', 1),
(373, 12, 'PEGAMENTO RHINOPEG EXTRAFUERTE', 1),
(374, 9, 'OCRE VERDE - BAYER', 1),
(375, 9, 'SOPORTE TV P/PARED DE 32\" A \"65', 1),
(376, 12, 'LATEX KORAL BLANCO', 1),
(377, 12, 'BROCHA TUMI 4\"', 1),
(378, 12, 'RODILLO TORO AMARILLO 9\"', 1),
(379, 12, 'LIJA ASA FIERRO 100', 1),
(380, 12, 'LIJA ASA FIERRO 120', 1),
(381, 12, 'ENCOMIENDA', 1),
(382, 12, 'BASE AL ACEITE INTER GRIS', 1),
(383, 12, 'BASE AL ACEITE AUTOMOTRIZ BLANCO ANYPSA', 1),
(384, 12, 'THINNER ACRILICO A GRANEL ACL-305 BICOLOR (NO FISC)', 1),
(385, 12, 'TEMPLE VELSALIT BLANCO BLANCO 5KG', 1),
(386, 12, 'RODILLO TORO BLANCO 9\"', 1),
(387, 12, 'MASKING PROFESIONAL 550 2\" X 40 YD', 1),
(388, 9, 'OCRE ROJO 1KG BAYER', 1),
(389, 12, 'CEMENTO INKA PORTLAND TIPO I 42.5KG', 1),
(390, 9, 'OCRE AZUL ELECTRICO - BAYER', 1),
(391, 9, 'OCRE AMARRILLO - BAYER', 1),
(392, 12, 'LAVATORIO DE UNA POSA C/ ESCURRIDOR', 1),
(393, 12, 'BASE AL ACEITE INTER NEGRO', 1),
(394, 12, 'MAESTRO THINNER ACRILICO AUT.ANYPSA (NO FISC)', 1),
(395, 12, 'REDUCCION 6\" A 4\" P/DES', 1),
(396, 12, 'CODO 4\"X90 PESADO-TUBOPLAST', 1),
(397, 12, 'PEGAMENTO 16 ONZ, AZUL - OATEY', 1),
(398, 9, 'BASE AL ACEITE AUTOMOTRIZ BLANCO GLUCOM', 1),
(399, 9, 'TOMC.   INTERR. 2X10A 250V.', 1),
(400, 9, 'ENCHUFE UNIVERSAL MULTIPLE MEGA LUZ ', 1),
(401, 9, 'TOMAC.   INTERR. 2X10A 250V', 1),
(402, 9, 'TEMPLE VELSALIT BLANCO 5KG', 1),
(403, 9, 'SELLADOR PARA PARED MARTELL', 1),
(404, 9, 'COLA SINTETICA MARTELL', 1),
(405, 12, 'TUBO P/DES PESADO 4\" - TUBOPLAST', 1),
(406, 6, 'CUSQUEÑA MALTA  310 ML', 1),
(407, 6, 'DON VITTORIO FETUCCINI 500GR', 1),
(408, 6, 'RUDA H/M', 1),
(409, 6, 'ACEITE OLIVA 500ML', 1),
(410, 6, 'PIMIENTON  ROJO', 1),
(411, 6, 'ALFA BRILLO OSITO PQTX10', 1),
(412, 6, 'WANTAN DRAGON 500GR', 1),
(413, 6, 'PEREJIL', 1),
(414, 6, 'BETERRAGA', 1),
(415, 6, 'PASTOR QUESO EDAM', 1),
(416, 6, 'CERDEÑA JAMON PIZZA (JAMON INGLES CERDEÑA)', 1),
(417, 6, 'GORDITO JAMONADA AMARRILLA DE POLLOX 6KG', 1),
(418, 6, 'YUCA', 1),
(419, 6, 'CORVINA', 1),
(420, 6, 'CULANTRO', 1),
(421, 6, 'LECHUGA', 1),
(422, 6, 'CHONTA', 1),
(423, 6, 'PALTA', 1),
(424, 6, 'PEPINO ', 1),
(425, 6, 'PLATANO', 1),
(426, 6, 'PIÑA', 1),
(427, 6, 'TOCINO', 1),
(428, 6, 'INCIENSO GRANDE CAJA X 6UNI', 1),
(429, 6, 'JABON JUMBO FLORAL 230 GR', 1),
(430, 6, 'AJONJOLI  GALON', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos_sede`
--

CREATE TABLE `recursos_sede` (
  `id_recurso_sede` int(11) NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_recurso` int(11) NOT NULL,
  `id_medida` int(11) NOT NULL,
  `recurso_sede_factor_unidad` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_cantidad` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_precio_unit` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_precio_total` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_peso_inicial` decimal(10,2) DEFAULT NULL,
  `recurso_sede_peso_final` decimal(10,2) DEFAULT NULL,
  `recurso_sede_merma` decimal(10,2) DEFAULT NULL,
  `recurso_sede_precio` decimal(10,2) NOT NULL,
  `recurso_sede_stock` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_stock_minimo` decimal(10,2) DEFAULT '0.00',
  `recurso_sede_estado` tinyint(1) NOT NULL,
  `recurso_sede_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recursos_sede`
--

INSERT INTO `recursos_sede` (`id_recurso_sede`, `id_usuario_creacion`, `id_sucursal`, `id_recurso`, `id_medida`, `recurso_sede_factor_unidad`, `recurso_sede_cantidad`, `recurso_sede_precio_unit`, `recurso_sede_precio_total`, `recurso_sede_peso_inicial`, `recurso_sede_peso_final`, `recurso_sede_merma`, `recurso_sede_precio`, `recurso_sede_stock`, `recurso_sede_stock_minimo`, `recurso_sede_estado`, `recurso_sede_fecha`) VALUES
(1, 1, 4, 1, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '8.89', '18.00', '10.00', 1, '2021-04-06 00:00:00'),
(2, 1, 4, 2, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.00', '15.00', 1, '2021-04-06 00:00:00'),
(3, 1, 4, 3, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '20.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(4, 1, 4, 4, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(5, 1, 4, 5, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '10.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(6, 1, 4, 6, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.02', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(7, 1, 4, 7, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(8, 1, 4, 8, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(9, 1, 4, 9, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(10, 1, 4, 10, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(11, 1, 4, 11, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.20', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(12, 1, 4, 12, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '16.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(13, 1, 4, 13, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '12.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(14, 1, 4, 14, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '12.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(15, 1, 4, 15, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '13.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(16, 1, 4, 16, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(17, 1, 4, 17, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '10.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(18, 1, 4, 18, 43, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '8.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(19, 1, 4, 19, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '20.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(20, 1, 4, 20, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '7.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(21, 1, 4, 21, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '100.00', '6.00', '-120.00', '0.00', 1, '2021-04-06 00:00:00'),
(22, 1, 4, 22, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(23, 1, 4, 23, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.98', '50.00', '0.00', 1, '2021-04-06 00:00:00'),
(24, 1, 4, 24, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '3.00', '404.00', '0.00', 1, '2021-04-06 00:00:00'),
(25, 1, 4, 25, 43, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '10.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(26, 1, 4, 26, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(27, 1, 4, 27, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(28, 1, 4, 28, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(29, 1, 4, 29, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(30, 1, 4, 30, 43, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '35.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(31, 1, 4, 31, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(32, 1, 4, 32, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.20', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(33, 1, 4, 33, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '13.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(34, 1, 4, 34, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(35, 1, 4, 35, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.42', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(36, 1, 4, 36, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '10.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(37, 1, 4, 37, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '70.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(38, 1, 4, 38, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(39, 1, 4, 39, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '7.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(40, 1, 4, 40, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(41, 1, 4, 41, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(42, 1, 4, 42, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(43, 1, 4, 43, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(44, 1, 4, 44, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(45, 1, 4, 45, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.38', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(46, 1, 4, 46, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.38', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(47, 1, 4, 47, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.92', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(48, 1, 4, 48, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.82', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(49, 1, 4, 49, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '5.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(50, 1, 4, 50, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '107.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(51, 1, 4, 51, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '14.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(52, 1, 4, 52, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '36.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(53, 1, 4, 53, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '26.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(54, 1, 4, 54, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '6.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(55, 1, 4, 55, 4, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(56, 1, 4, 56, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(57, 1, 4, 57, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(58, 1, 4, 58, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(59, 1, 4, 59, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(60, 1, 4, 60, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.86', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(61, 1, 4, 61, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(62, 1, 4, 62, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '12.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(63, 1, 4, 63, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(64, 1, 4, 64, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(65, 1, 4, 65, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.83', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(66, 1, 4, 66, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.83', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(67, 1, 4, 67, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '38.00', NULL, '12.00', 1, '2021-04-06 00:00:00'),
(68, 1, 4, 68, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(69, 1, 4, 69, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.20', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(70, 1, 4, 70, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(71, 1, 4, 71, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '4.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(72, 1, 4, 72, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(73, 1, 4, 73, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2.75', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(74, 1, 4, 74, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2.33', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(75, 1, 4, 75, 17, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '14.90', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(76, 1, 4, 76, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(77, 1, 4, 77, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(78, 1, 4, 78, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '3.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(79, 1, 4, 79, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '30.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(80, 1, 4, 80, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '35.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(81, 1, 4, 81, 4, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(82, 1, 4, 82, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.60', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(83, 1, 4, 83, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(84, 1, 4, 84, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.32', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(85, 1, 4, 85, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.30', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(86, 1, 4, 86, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(87, 1, 4, 87, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(88, 1, 4, 88, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(89, 1, 4, 89, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(90, 1, 4, 90, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.86', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(91, 1, 4, 91, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2.30', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(92, 1, 4, 92, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(93, 1, 4, 93, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.09', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(94, 1, 4, 94, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '7.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(95, 1, 4, 95, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(96, 1, 4, 96, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '26.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(97, 1, 4, 97, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '45.00', '-8.68', '0.00', 1, '2021-04-06 00:00:00'),
(98, 1, 4, 98, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '33.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(99, 1, 4, 99, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(100, 1, 4, 100, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.30', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(101, 1, 4, 101, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.32', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(102, 1, 4, 102, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(103, 1, 4, 103, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '45.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(104, 1, 4, 104, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '35.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(105, 1, 4, 105, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '7.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(106, 1, 4, 106, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.92', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(107, 1, 4, 107, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '3.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(108, 1, 4, 108, 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(109, 1, 4, 109, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '9.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(110, 1, 4, 110, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.23', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(111, 1, 4, 111, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '0.56', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(112, 1, 4, 112, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '30.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(113, 1, 4, 113, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '18.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(114, 1, 4, 114, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(115, 1, 4, 115, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(116, 1, 4, 116, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '24.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(117, 1, 4, 117, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(118, 1, 4, 118, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(119, 1, 4, 119, 43, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '22.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(120, 1, 4, 120, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '5.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(121, 1, 4, 121, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '11.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(122, 1, 4, 122, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '18.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(123, 1, 4, 123, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '10.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(124, 1, 4, 124, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '4.29', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(125, 1, 4, 125, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '12.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(126, 1, 4, 126, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '1.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(127, 1, 4, 127, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '15.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(128, 1, 4, 128, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '35.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(129, 1, 4, 129, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.50', '56.62', '0.00', 1, '2021-04-06 00:00:00'),
(130, 1, 4, 130, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '20.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(131, 1, 4, 131, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.39', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(132, 1, 4, 132, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '3.70', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(133, 1, 4, 133, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '7.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(134, 1, 4, 134, 43, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(135, 1, 4, 135, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(136, 1, 4, 136, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '8.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(137, 1, 4, 137, 23, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '6.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(138, 1, 4, 138, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '4.00', '64.85', '0.00', 1, '2021-04-06 00:00:00'),
(139, 1, 4, 139, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '10.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(140, 1, 4, 140, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '2.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(141, 1, 4, 141, 58, '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '5.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(142, 1, 4, 142, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '20.00', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(143, 1, 4, 143, 23, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '3.50', NULL, '0.00', 1, '2021-04-06 00:00:00'),
(151, 10, 4, 152, 29, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '100.00', '16.80', '2.65', '0.00', 1, '2021-09-15 11:43:48'),
(152, 10, 4, 153, 31, '0.00', '0.00', '0.00', '39.00', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 1, '2021-09-16 13:34:42'),
(153, 10, 4, 154, 58, '0.00', '0.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '26.50', '0.00', 1, '2021-09-16 14:42:37'),
(154, 10, 4, 155, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.80', '164.00', '0.00', 1, '2021-09-16 14:45:01'),
(155, 10, 4, 156, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-09-16 14:45:50'),
(156, 10, 4, 157, 58, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '1.70', '56.00', '0.00', 1, '2021-09-16 14:46:30'),
(157, 10, 4, 158, 58, '1.00', '1.00', '40.00', '40.00', '0.00', '0.00', '0.00', '0.00', '6.13', '0.00', 1, '2021-09-20 13:05:16'),
(158, 10, 4, 159, 23, '1.00', '1.00', '3.50', '3.50', '0.00', '0.00', '0.00', '0.00', '46.57', '0.00', 1, '2021-09-20 13:47:00'),
(159, 10, 4, 160, 58, '1.00', '1.00', '0.00', '18.00', '0.00', '0.00', '100.00', '18.00', '3.00', '0.00', 1, '2021-09-22 13:04:22'),
(160, 10, 4, 161, 58, '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '100.00', '1.00', '7.00', '0.00', 1, '2021-09-22 13:05:10'),
(161, 10, 4, 162, 58, '1.00', '1.00', '0.00', '15.00', '0.00', '0.00', '100.00', '15.00', '7.00', '0.00', 1, '2021-09-22 13:06:51'),
(162, 10, 4, 163, 31, '1.00', '1.00', '0.00', '1.50', '0.00', '0.00', '100.00', '15.06', '4.85', '0.00', 1, '2021-09-22 13:09:34'),
(163, 10, 4, 164, 58, '1.00', '1.00', '0.00', '2984.55', '0.00', '0.00', '0.00', '2.00', '2.00', '0.00', 1, '2021-09-23 14:47:25'),
(164, 10, 4, 165, 58, '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.01', '0.00', 1, '2021-09-23 14:49:47'),
(165, 10, 4, 166, 58, '1.00', '1.00', '0.00', '625.00', '0.00', '0.00', '0.00', '625.00', '2.00', '0.00', 1, '2021-09-23 15:58:32'),
(166, 10, 4, 167, 58, '1.00', '1.00', '0.00', '761.17', '0.00', '0.00', '0.00', '761.17', '2.00', '0.00', 1, '2021-09-23 16:08:15'),
(167, 10, 4, 168, 58, '1.00', '1.00', '0.00', '1483.90', '0.00', '0.00', '0.00', '1483.90', '2.00', '1.00', 1, '2021-09-24 13:03:19'),
(168, 10, 4, 169, 58, '1.00', '1.00', '0.00', '2671.04', '0.00', '0.00', '0.00', '2671.04', '2.00', '0.00', 1, '2021-09-24 13:06:53'),
(169, 10, 4, 170, 2, '1.00', '1.00', '0.00', '25.00', '0.00', '0.00', '0.00', '25.00', '2.00', '0.00', 1, '2021-09-27 13:12:13'),
(170, 10, 4, 171, 2, '1.00', '1.00', '0.00', '12.00', '0.00', '0.00', '0.00', '12.00', '2.00', '0.00', 1, '2021-09-27 13:19:56'),
(171, 10, 4, 172, 58, '1.00', '1.00', '0.00', '20.00', '0.00', '0.00', '0.00', '20.00', '2.00', '0.00', 1, '2021-09-27 13:22:15'),
(172, 10, 4, 173, 23, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '100.00', '1.00', '16.00', '0.00', 1, '2021-09-28 10:42:08'),
(173, 10, 4, 174, 23, '1.00', '1.00', '4.00', '4.00', '0.00', '0.00', '0.00', '4.00', '1.75', '0.00', 1, '2021-09-28 10:43:13'),
(174, 10, 4, 175, 23, '1.00', '1.00', '16.00', '16.00', '0.00', '0.00', '100.00', '20.00', '1.81', '0.00', 1, '2021-09-28 11:03:29'),
(175, 10, 4, 176, 58, '1.00', '1.00', '0.00', '40.00', '0.00', '0.00', '100.00', '42.00', '8.00', '0.00', 1, '2021-09-28 11:05:02'),
(176, 10, 4, 177, 58, '1.00', '1.00', '0.00', '5.50', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 1, '2021-09-28 11:45:36'),
(177, 10, 4, 178, 58, '1.00', '1.00', '0.00', '18.00', '0.00', '0.00', '100.00', '15.00', '9.00', '0.00', 1, '2021-09-28 14:03:54'),
(178, 10, 4, 179, 23, '1.00', '1.00', '0.00', '8.00', '0.00', '0.00', '0.00', '0.00', '6.50', '0.00', 1, '2021-09-28 14:04:53'),
(179, 10, 4, 180, 23, '1.00', '1.00', '0.00', '3.50', '0.00', '0.00', '100.00', '3.50', '7.27', '0.00', 1, '2021-09-28 14:06:38'),
(180, 10, 4, 181, 23, '1.00', '1.00', '0.00', '2.00', '0.00', '0.00', '100.00', '2.00', '71.00', '0.00', 1, '2021-09-28 14:13:20'),
(181, 10, 4, 182, 23, '1.00', '1.00', '0.00', '2.50', '1.00', '0.00', '0.00', '0.00', '1.00', '0.00', 1, '2021-09-28 14:14:52'),
(182, 10, 4, 183, 23, '1.00', '1.00', '0.00', '40.00', '0.00', '0.00', '100.00', '50.00', '10.60', '0.00', 1, '2021-09-29 14:35:18'),
(183, 10, 4, 184, 58, '1.00', '1.00', '0.00', '3.50', '0.00', '0.00', '0.00', '3.50', '361.00', '0.00', 1, '2021-10-04 14:48:10'),
(184, 2, 4, 185, 58, '1.00', '1.00', '1480.00', '1480.00', '0.00', '0.00', '0.00', '1480.00', '1.00', '0.00', 1, '2021-10-06 15:44:20'),
(185, 10, 4, 186, 58, '1.00', '1.00', '0.00', '25.00', '0.00', '0.00', '0.00', '0.00', '3.00', '1.00', 1, '2021-10-11 13:50:48'),
(186, 10, 4, 187, 58, '1.00', '1.00', '0.00', '1.80', '0.00', '0.00', '0.00', '0.00', '31.00', '0.00', 1, '2021-10-13 10:53:54'),
(187, 10, 4, 188, 58, '1.00', '1.00', '0.00', '5.40', '0.00', '0.00', '0.00', '0.00', '76.00', '0.00', 1, '2021-10-13 11:29:38'),
(188, 10, 4, 189, 23, '1.00', '1.00', '0.00', '3.50', '0.00', '0.00', '100.00', '3.50', '23.85', '0.00', 1, '2021-10-13 12:30:30'),
(189, 10, 4, 190, 58, '1.00', '1.00', '0.00', '3.13', '0.00', '0.00', '0.00', '0.00', '331.00', '0.00', 1, '2021-10-14 12:10:23'),
(190, 10, 4, 191, 58, '1.00', '1.00', '0.00', '3.50', '0.00', '0.00', '0.00', '3.65', '529.00', '0.00', 1, '2021-10-14 12:13:37'),
(191, 10, 4, 192, 58, '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '289.00', '1.00', 1, '2021-10-14 12:16:14'),
(192, 10, 4, 193, 58, '1.00', '1.00', '0.00', '30.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-14 12:26:33'),
(193, 10, 4, 194, 58, '1.00', '1.00', '0.00', '7.00', '0.00', '0.00', '100.00', '7.00', '4.00', '0.00', 1, '2021-10-14 12:51:22'),
(194, 10, 4, 195, 58, '1.00', '1.00', '22.10', '22.10', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-25 14:40:01'),
(195, 10, 4, 196, 58, '1.00', '1.00', '22.10', '22.10', '0.00', '0.00', '0.00', '22.10', '1.00', '0.00', 1, '2021-10-25 14:40:04'),
(196, 10, 4, 197, 58, '1.00', '1.00', '9.50', '9.50', '0.00', '0.00', '0.00', '9.50', '1.00', '0.00', 1, '2021-10-25 15:58:06'),
(197, 10, 4, 198, 58, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '0.00', '6.00', '1.00', '0.00', 1, '2021-10-25 15:59:36'),
(198, 10, 4, 199, 58, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '0.00', '7.00', '1.00', '0.00', 1, '2021-10-25 15:59:38'),
(199, 10, 4, 200, 58, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-25 16:02:50'),
(200, 10, 4, 201, 58, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '0.00', '7.00', '1.00', '0.00', 1, '2021-10-25 16:02:53'),
(201, 10, 4, 202, 58, '1.00', '1.00', '9.50', '9.50', '0.00', '0.00', '0.00', '7.00', '1.00', '0.00', 1, '2021-10-25 16:05:18'),
(202, 10, 4, 203, 58, '1.00', '1.00', '13.00', '13.00', '0.00', '0.00', '0.00', '4.00', '1.00', '0.00', 1, '2021-10-26 14:45:18'),
(203, 10, 4, 204, 58, '1.00', '1.00', '2.40', '2.40', '0.00', '0.00', '0.00', '2.00', '1.00', '0.00', 1, '2021-10-26 14:47:59'),
(204, 10, 4, 205, 58, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '4.00', '1.00', '0.00', 1, '2021-10-26 14:50:34'),
(205, 10, 4, 206, 58, '1.00', '1.00', '19.20', '19.20', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-26 14:51:44'),
(206, 10, 4, 207, 58, '1.00', '1.00', '1.80', '1.80', '0.00', '0.00', '0.00', '20.00', '1.00', '0.00', 1, '2021-10-26 14:53:55'),
(207, 10, 4, 208, 11, '1.00', '1.00', '45.00', '45.00', '0.00', '0.00', '0.00', '45.00', '1.00', '0.00', 1, '2021-10-26 15:32:12'),
(208, 10, 4, 209, 58, '1.00', '1.00', '0.00', '0.12', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', 1, '2021-10-27 15:37:22'),
(209, 10, 4, 210, 58, '1.00', '1.00', '17.50', '17.50', '0.00', '0.00', '0.00', '8.00', '1.00', '0.00', 1, '2021-10-27 16:05:19'),
(210, 10, 4, 211, 58, '1.00', '1.00', '17.50', '17.50', '0.00', '0.00', '0.00', '17.50', '1.00', '0.00', 1, '2021-10-29 11:08:13'),
(211, 10, 4, 212, 58, '1.00', '1.00', '17.50', '17.50', '0.00', '0.00', '0.00', '4.00', '1.00', '0.00', 1, '2021-10-29 11:08:15'),
(212, 10, 4, 213, 58, '1.00', '1.00', '3.30', '3.30', '0.00', '0.00', '0.00', '4.00', '1.00', '0.00', 1, '2021-10-29 11:10:36'),
(213, 10, 4, 214, 58, '1.00', '1.00', '1.70', '1.70', '0.00', '0.00', '0.00', '100.00', '1.00', '0.00', 1, '2021-10-29 11:12:54'),
(214, 10, 4, 215, 31, '1.00', '1.00', '1.70', '1.70', '0.00', '0.00', '0.00', '188.00', '2.00', '0.00', 1, '2021-10-29 11:15:21'),
(215, 10, 4, 216, 58, '1.00', '1.00', '0.17', '0.17', '0.00', '0.00', '0.00', '100.00', '1.00', '0.00', 1, '2021-10-29 11:17:58'),
(216, 10, 4, 217, 58, '1.00', '1.00', '3.50', '3.50', '0.00', '0.00', '0.00', '8.00', '1.00', '0.00', 1, '2021-10-29 11:20:23'),
(217, 10, 4, 218, 58, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-29 11:38:19'),
(218, 10, 4, 219, 58, '1.00', '1.00', '0.16', '0.16', '0.00', '0.00', '0.00', '24.00', '1.00', '0.00', 1, '2021-10-29 11:39:52'),
(219, 10, 4, 220, 58, '1.00', '1.00', '3.00', '3.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', 1, '2021-10-29 11:41:06'),
(220, 10, 4, 221, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '4.00', '1.00', '0.00', 1, '2021-10-29 11:48:08'),
(221, 10, 4, 222, 58, '1.00', '1.00', '0.58', '0.57', '0.00', '0.00', '0.00', '100.00', '1.00', '0.00', 1, '2021-10-29 12:14:17'),
(222, 10, 4, 223, 58, '1.00', '1.00', '0.16', '0.16', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-10-29 12:15:56'),
(223, 10, 4, 224, 58, '1.00', '1.00', '11.16', '11.16', '0.00', '0.00', '0.00', '6.00', '1.00', '0.00', 1, '2021-10-29 12:17:52'),
(224, 10, 4, 225, 58, '1.00', '1.00', '0.12', '0.12', '0.00', '0.00', '0.00', '1000.00', '1.00', '0.00', 1, '2021-10-29 12:20:27'),
(225, 10, 4, 226, 58, '1.00', '1.00', '10.26', '10.26', '0.00', '0.00', '0.00', '6.00', '1.00', '0.00', 1, '2021-10-29 12:21:38'),
(226, 10, 4, 227, 58, '1.00', '1.00', '0.19', '0.19', '0.00', '0.00', '0.00', '1000.00', '1.00', '0.00', 1, '2021-10-29 12:23:17'),
(227, 10, 4, 228, 23, '1.00', '1.00', '20.00', '20.00', '4.00', '4.00', '100.00', '20.00', '5.00', '0.00', 1, '2021-10-29 14:23:57'),
(228, 10, 4, 229, 23, '1.00', '1.00', '20.00', '20.00', '1.00', '0.00', '0.00', '20.00', '1.00', '0.00', 1, '2021-10-29 14:24:01'),
(229, 10, 4, 230, 58, '1.00', '1.00', '0.25', '0.25', '1.00', '0.00', '0.00', '24.00', '1.00', '1.00', 1, '2021-10-29 15:07:04'),
(230, 10, 4, 231, 58, '1.00', '1.00', '0.25', '0.25', '1.00', '0.00', '0.00', '24.00', '1.00', '1.00', 1, '2021-10-29 15:09:57'),
(231, 10, 4, 232, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '0.00', '9.00', '0.00', 1, '2021-11-02 12:18:48'),
(232, 10, 4, 233, 58, '1.00', '1.00', '90.00', '90.00', '0.00', '0.00', '100.00', '90.00', '1.50', '0.00', 1, '2021-11-02 12:20:33'),
(233, 10, 4, 234, 59, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '100.00', '7.00', '2.00', '0.00', 1, '2021-11-02 12:32:01'),
(234, 10, 4, 236, 58, '1.00', '1.00', '8.50', '8.50', '0.00', '0.00', '100.00', '8.50', '2.00', '0.00', 1, '2021-11-02 13:16:52'),
(235, 10, 4, 237, 58, '1.00', '1.00', '1.04', '1.04', '0.00', '0.00', '100.00', '4.16', '25.00', '0.00', 1, '2021-11-02 13:56:13'),
(236, 10, 4, 238, 58, '1.00', '1.00', '3.32', '3.32', '0.00', '0.00', '0.00', '0.00', '61.00', '0.00', 0, '2021-11-02 14:12:08'),
(237, 10, 4, 239, 58, '1.00', '1.00', '2.93', '2.93', '0.00', '0.00', '0.00', '0.00', '217.00', '0.00', 1, '2021-11-02 14:26:00'),
(238, 10, 4, 240, 23, '1.00', '1.00', '3.33', '3.33', '0.00', '0.00', '100.00', '15.00', '26.03', '0.00', 1, '2021-11-02 14:51:41'),
(239, 10, 4, 241, 23, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '100.00', '15.00', '19.33', '0.00', 1, '2021-11-02 14:52:13'),
(240, 10, 4, 242, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '100.00', '17.00', '4.00', '0.00', 1, '2021-11-03 13:01:40'),
(241, 10, 4, 243, 58, '1.00', '1.00', '0.08', '0.08', '0.00', '0.00', '100.00', '0.75', '73.00', '0.00', 1, '2021-11-03 14:00:18'),
(242, 10, 4, 244, 58, '1.00', '1.00', '4.50', '4.50', '0.00', '0.00', '100.00', '4.50', '3.00', '0.00', 1, '2021-11-04 14:05:48'),
(243, 2, 4, 245, 59, '1.00', '1.00', '101.69', '101.69', '0.00', '0.00', '0.00', '101.69', '2.00', '0.00', 1, '2021-11-11 09:56:23'),
(244, 2, 4, 246, 5, '1.00', '1.00', '2.34', '2.34', '0.00', '0.00', '0.00', '0.00', '109.00', '0.00', 1, '2021-11-11 10:11:29'),
(245, 2, 4, 247, 5, '1.00', '1.00', '4.68', '4.68', '0.00', '0.00', '0.00', '0.00', '25.00', '0.00', 1, '2021-11-11 10:16:21'),
(246, 2, 4, 248, 43, '1.00', '1.00', '1.06', '1.06', '0.00', '0.00', '0.00', '0.00', '16.00', '0.00', 1, '2021-11-11 11:01:08'),
(247, 10, 4, 249, 59, '1.00', '1.00', '12.00', '12.00', '0.00', '0.00', '0.00', '10.00', '10.00', '0.00', 1, '2021-11-11 11:03:03'),
(248, 10, 4, 250, 59, '1.00', '1.00', '32.00', '32.00', '0.00', '0.00', '0.00', '32.00', '9.00', '0.00', 1, '2021-11-11 11:10:35'),
(249, 10, 4, 251, 59, '1.00', '1.00', '30.00', '30.00', '0.00', '0.00', '0.00', '31.00', '7.00', '0.00', 1, '2021-11-11 11:11:30'),
(250, 10, 4, 252, 43, '1.00', '1.00', '188.00', '188.00', '0.00', '0.00', '0.00', '188.00', '2.00', '0.00', 1, '2021-11-11 11:28:27'),
(251, 10, 4, 253, 43, '1.00', '1.00', '188.00', '188.00', '0.00', '0.00', '0.00', '188.00', '2.00', '0.00', 1, '2021-11-11 11:29:29'),
(252, 10, 4, 254, 43, '1.00', '1.00', '292.00', '292.00', '0.00', '0.00', '0.00', '292.00', '2.00', '0.00', 1, '2021-11-11 11:31:42'),
(253, 2, 4, 255, 11, '1.00', '1.00', '0.28', '0.28', '0.00', '0.00', '0.00', '0.00', '351.00', '0.00', 1, '2021-11-11 12:18:34'),
(254, 2, 4, 256, 23, '1.00', '1.00', '7.50', '7.50', '0.00', '0.00', '0.00', '0.00', '1.80', '0.00', 1, '2021-11-11 13:37:30'),
(255, 2, 4, 257, 43, '1.00', '1.00', '1.91', '1.91', '0.00', '0.00', '100.00', '1.92', '14.00', '0.00', 1, '2021-11-11 14:38:04'),
(256, 2, 4, 258, 58, '1.00', '1.00', '150.00', '150.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-11 15:01:10'),
(257, 2, 4, 259, 58, '1.00', '1.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-11 15:08:27'),
(258, 2, 4, 260, 29, '1.00', '1.00', '22.00', '22.00', '0.00', '0.00', '0.00', '22.00', '1.00', '0.00', 1, '2021-11-11 15:12:19'),
(259, 2, 4, 261, 29, '1.00', '1.00', '4.40', '4.40', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 1, '2021-11-11 15:15:43'),
(260, 2, 4, 262, 29, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-11 15:19:51'),
(261, 2, 4, 263, 29, '1.00', '1.00', '14.00', '14.00', '0.00', '0.00', '0.00', '14.00', '1.00', '0.00', 1, '2021-11-11 15:21:46'),
(262, 2, 4, 264, 29, '1.00', '1.00', '14.00', '14.00', '0.00', '0.00', '0.00', '0.00', '8.00', '0.00', 1, '2021-11-11 15:22:48'),
(263, 2, 4, 265, 58, '1.00', '1.00', '5.00', '5.00', '0.00', '0.00', '0.00', '0.00', '21.00', '0.00', 1, '2021-11-11 15:43:33'),
(264, 2, 4, 266, 11, '1.00', '1.00', '0.34', '0.34', '0.00', '0.00', '0.00', '0.00', '301.00', '0.00', 1, '2021-11-11 15:46:40'),
(265, 2, 4, 267, 11, '1.00', '1.00', '0.60', '0.60', '0.00', '0.00', '0.00', '0.00', '151.00', '0.00', 1, '2021-11-11 15:49:49'),
(266, 2, 4, 268, 23, '1.00', '1.00', '18.50', '18.50', '0.00', '0.00', '0.00', '0.00', '121.00', '0.00', 1, '2021-11-12 10:19:50'),
(267, 2, 4, 269, 5, '1.00', '1.00', '65.00', '65.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 10:53:13'),
(268, 2, 4, 270, 23, '1.00', '1.00', '6.50', '6.50', '0.00', '0.00', '100.00', '3.30', '10.03', '0.00', 1, '2021-11-12 11:27:21'),
(269, 2, 4, 271, 23, '1.00', '1.00', '3.00', '3.00', '0.00', '0.00', '100.00', '3.20', '12.12', '0.00', 1, '2021-11-12 11:29:24'),
(270, 2, 4, 272, 6, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-12 11:31:39'),
(271, 2, 4, 273, 5, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 11:34:48'),
(272, 2, 4, 276, 5, '1.00', '1.00', '32.50', '32.50', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-12 12:41:20'),
(273, 2, 4, 277, 5, '1.00', '1.00', '6.00', '6.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 13:39:30'),
(274, 2, 4, 278, 23, '1.00', '1.00', '100.00', '100.00', '0.00', '0.00', '0.00', '0.00', '1.04', '0.00', 1, '2021-11-12 13:56:47'),
(275, 2, 4, 279, 23, '1.00', '1.00', '15.01', '15.01', '0.00', '0.00', '100.00', '1.00', '6.76', '0.00', 1, '2021-11-12 13:59:32'),
(276, 2, 4, 280, 31, '1.00', '1.00', '49.10', '49.10', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-12 14:09:27'),
(277, 2, 4, 281, 31, '1.00', '1.00', '92.40', '92.40', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 14:10:44'),
(278, 2, 4, 282, 31, '1.00', '1.00', '92.40', '92.40', '0.00', '0.00', '0.00', '92.40', '1.00', '0.00', 1, '2021-11-12 14:10:46'),
(279, 2, 4, 283, 2, '1.00', '1.00', '19.00', '19.00', '0.00', '0.00', '0.00', '0.00', '-6.00', '0.00', 1, '2021-11-12 14:32:11'),
(280, 2, 4, 284, 58, '1.00', '1.00', '3.03', '3.03', '0.00', '0.00', '100.00', '4.00', '9.25', '0.00', 1, '2021-11-12 15:03:11'),
(281, 2, 4, 285, 58, '1.00', '1.00', '4.10', '4.10', '0.00', '0.00', '0.00', '0.00', '13.00', '0.00', 1, '2021-11-12 15:09:36'),
(282, 2, 4, 286, 31, '1.00', '1.00', '179.60', '179.60', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 15:21:20'),
(283, 2, 4, 287, 29, '1.00', '1.00', '17.00', '17.00', '0.00', '0.00', '0.00', '18.50', '5.00', '0.00', 1, '2021-11-12 15:34:44'),
(284, 2, 4, 288, 29, '1.00', '1.00', '3.50', '3.50', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-12 15:36:07'),
(285, 2, 4, 289, 58, '1.00', '1.00', '2.50', '2.50', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 1, '2021-11-13 09:51:59'),
(286, 2, 4, 290, 58, '1.00', '1.00', '2.70', '2.70', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-13 09:53:39'),
(287, 2, 4, 291, 58, '1.00', '1.00', '3.50', '3.50', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 1, '2021-11-13 09:54:54'),
(288, 2, 4, 292, 18, '1.00', '1.00', '0.35', '0.35', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-13 09:57:24'),
(289, 2, 4, 293, 6, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '1.00', '0.00', 1, '2021-11-13 10:48:30'),
(290, 2, 4, 294, 6, '1.00', '1.00', '10.80', '10.80', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-13 10:49:17'),
(291, 2, 4, 295, 23, '1.00', '1.00', '5.50', '5.50', '0.00', '0.00', '100.00', '5.50', '9.00', '0.00', 1, '2021-11-13 11:01:03'),
(292, 2, 4, 296, 58, '1.00', '1.00', '0.35', '0.35', '0.00', '0.00', '0.00', '0.00', '13.00', '0.00', 1, '2021-11-13 11:08:14'),
(293, 2, 4, 297, 58, '1.00', '1.00', '12.50', '12.50', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-13 11:28:07'),
(294, 2, 4, 298, 43, '1.00', '1.00', '2.80', '2.80', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-13 11:30:59'),
(295, 10, 4, 299, 43, '1.00', '1.00', '292.00', '292.00', '0.00', '0.00', '0.00', '292.00', '2.00', '0.00', 1, '2021-11-13 11:33:44'),
(296, 10, 4, 300, 58, '1.00', '1.00', '64.50', '64.50', '0.00', '0.00', '0.00', '64.50', '2.00', '0.00', 1, '2021-11-13 11:35:00'),
(297, 10, 4, 301, 58, '1.00', '1.00', '45.00', '45.00', '0.00', '0.00', '0.00', '45.00', '2.00', '0.00', 1, '2021-11-13 11:36:05'),
(298, 10, 4, 302, 58, '1.00', '1.00', '45.00', '45.00', '0.00', '0.00', '0.00', '62.00', '3.00', '0.00', 1, '2021-11-13 11:37:08'),
(299, 10, 4, 303, 58, '1.00', '1.00', '62.00', '62.00', '0.00', '0.00', '0.00', '45.00', '3.00', '0.00', 1, '2021-11-13 11:39:32'),
(300, 10, 4, 304, 58, '1.00', '1.00', '14.00', '14.00', '1.00', '0.00', '0.00', '14.00', '2.00', '0.00', 1, '2021-11-13 11:42:01'),
(301, 2, 4, 305, 58, '1.00', '1.00', '17.00', '17.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 1, '2021-11-13 11:42:38'),
(302, 10, 4, 306, 58, '1.00', '1.00', '102.00', '102.00', '0.00', '0.00', '0.00', '102.00', '3.00', '0.00', 1, '2021-11-13 11:43:18'),
(303, 2, 4, 307, 58, '1.00', '1.00', '13.00', '13.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 1, '2021-11-13 12:19:10'),
(304, 2, 4, 308, 58, '1.00', '1.00', '14.50', '14.50', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-13 12:20:01'),
(305, 2, 4, 309, 58, '1.00', '1.00', '9.00', '9.00', '0.00', '0.00', '0.00', '9.00', '19.00', '0.00', 1, '2021-11-13 12:31:13'),
(306, 2, 4, 310, 11, '1.00', '1.00', '16.00', '16.00', '0.00', '0.00', '0.00', '12.00', '2.00', '0.00', 1, '2021-11-13 12:40:32'),
(307, 2, 4, 311, 5, '1.00', '1.00', '6.71', '6.71', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 1, '2021-11-13 13:17:30'),
(308, 2, 4, 312, 5, '1.00', '1.00', '6.71', '6.71', '0.00', '0.00', '0.00', '6.71', '1.00', '0.00', 1, '2021-11-13 13:17:32'),
(309, 2, 4, 313, 5, '1.00', '1.00', '6.72', '6.72', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 1, '2021-11-13 13:21:02'),
(310, 2, 4, 314, 31, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '10.00', '2.80', '0.00', 1, '2021-11-15 10:43:16'),
(311, 2, 4, 315, 58, '1.00', '1.00', '240.00', '240.00', '0.00', '0.00', '0.00', '240.00', '2.00', '0.00', 1, '2021-11-15 10:57:17'),
(312, 2, 4, 316, 59, '1.00', '1.00', '20.00', '20.00', '0.00', '0.00', '0.00', '10.00', '3.00', '0.00', 1, '2021-11-15 10:59:04'),
(313, 2, 4, 317, 58, '1.00', '1.00', '2.92', '2.92', '0.00', '0.00', '0.00', '0.00', '25.00', '0.00', 1, '2021-11-15 11:04:48'),
(314, 2, 4, 318, 59, '1.00', '1.00', '50.00', '50.00', '0.00', '0.00', '0.00', '50.00', '2.00', '0.00', 1, '2021-11-15 12:03:14'),
(315, 2, 4, 319, 58, '1.00', '1.00', '25.00', '25.00', '0.00', '0.00', '0.00', '25.00', '2.00', '0.00', 1, '2021-11-15 12:04:53'),
(316, 2, 4, 320, 58, '1.00', '1.00', '0.78', '0.78', '0.00', '0.00', '0.00', '0.00', '31.00', '0.00', 1, '2021-11-15 12:14:09'),
(317, 2, 4, 321, 43, '1.00', '1.00', '3.71', '3.71', '0.00', '0.00', '0.00', '0.00', '25.00', '0.00', 1, '2021-11-15 12:17:35'),
(318, 2, 4, 322, 43, '1.00', '1.00', '3.71', '3.71', '0.00', '0.00', '0.00', '0.00', '25.00', '0.00', 1, '2021-11-15 12:22:50'),
(319, 2, 4, 323, 23, '1.00', '1.00', '160.00', '160.00', '0.00', '0.00', '100.00', '3.50', '179.11', '0.00', 1, '2021-11-15 12:55:29'),
(320, 2, 4, 324, 43, '1.00', '1.00', '45.00', '45.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-15 13:53:08'),
(321, 2, 4, 325, 58, '1.00', '1.00', '12.00', '12.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-15 14:03:04'),
(322, 2, 4, 326, 58, '1.00', '1.00', '10.50', '10.50', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-15 14:04:42'),
(323, 2, 4, 327, 23, '1.00', '1.00', '14.00', '14.00', '0.00', '0.00', '0.00', '14.00', '1.50', '0.00', 1, '2021-11-15 14:53:56'),
(324, 2, 4, 328, 58, '1.00', '1.00', '19.00', '19.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 09:56:17'),
(325, 2, 4, 329, 58, '1.00', '1.00', '6.50', '6.50', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-16 09:58:20'),
(326, 2, 4, 330, 58, '1.00', '1.00', '6.50', '6.50', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 10:01:10'),
(327, 10, 4, 331, 58, '1.00', '1.00', '5.70', '5.70', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-16 10:19:20'),
(328, 2, 4, 332, 43, '1.00', '1.00', '1.90', '1.90', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 1, '2021-11-16 10:20:24'),
(329, 10, 4, 333, 23, '1.00', '1.00', '10.50', '10.50', '0.00', '0.00', '0.00', '10.50', '2.00', '0.00', 1, '2021-11-16 10:20:26'),
(330, 10, 4, 334, 58, '1.00', '1.00', '5.00', '5.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 10:24:16'),
(331, 10, 4, 335, 58, '1.00', '1.00', '20.00', '20.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 1, '2021-11-16 10:26:22'),
(332, 10, 4, 336, 58, '1.00', '1.00', '4.30', '4.30', '0.00', '0.00', '0.00', '4.30', '2.00', '0.00', 1, '2021-11-16 10:27:57'),
(333, 10, 4, 337, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '2.00', '0.00', 1, '2021-11-16 10:29:14'),
(334, 10, 4, 338, 58, '1.00', '1.00', '4.20', '4.20', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 10:31:48'),
(335, 10, 4, 339, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '2.00', '0.00', 1, '2021-11-16 10:33:35'),
(336, 10, 4, 340, 58, '1.00', '1.00', '9.50', '9.50', '0.00', '0.00', '0.00', '9.50', '2.00', '0.00', 1, '2021-11-16 10:37:34'),
(337, 2, 4, 341, 58, '1.00', '1.00', '22.00', '22.00', '0.00', '0.00', '0.00', '22.00', '3.00', '0.00', 1, '2021-11-16 10:41:31'),
(338, 2, 4, 342, 58, '1.00', '1.00', '21.00', '21.00', '0.00', '0.00', '0.00', '21.00', '3.00', '0.00', 1, '2021-11-16 10:42:42'),
(339, 2, 4, 343, 58, '1.00', '1.00', '0.30', '0.30', '0.00', '0.00', '0.00', '0.30', '2.00', '0.00', 1, '2021-11-16 10:48:28'),
(340, 2, 4, 344, 23, '1.00', '1.00', '14.00', '14.00', '0.00', '0.00', '0.00', '0.00', '2.43', '0.00', 1, '2021-11-16 10:56:39'),
(341, 2, 4, 345, 23, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '100.00', '10.00', '2.50', '0.00', 1, '2021-11-16 10:58:57'),
(342, 2, 4, 346, 58, '1.00', '1.00', '10.50', '10.50', '0.00', '0.00', '0.00', '10.50', '2.00', '0.00', 1, '2021-11-16 11:23:32'),
(343, 10, 4, 347, 17, '1.00', '1.00', '15.70', '15.70', '1.00', '0.00', '0.00', '15.70', '13.74', '0.00', 1, '2021-11-16 11:24:06'),
(344, 2, 4, 348, 6, '1.00', '1.00', '5.50', '5.50', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 1, '2021-11-16 11:25:13'),
(345, 2, 4, 349, 17, '1.00', '1.00', '23.00', '23.00', '0.00', '0.00', '100.00', '23.00', '3.00', '0.00', 1, '2021-11-16 11:29:28'),
(346, 2, 4, 350, 17, '1.00', '1.00', '23.00', '23.00', '0.00', '0.00', '0.00', '23.00', '1.00', '0.00', 1, '2021-11-16 11:30:04'),
(347, 2, 4, 351, 23, '1.00', '1.00', '13.00', '13.00', '0.00', '0.00', '100.00', '10.00', '2.09', '0.00', 1, '2021-11-16 11:41:30'),
(348, 2, 4, 352, 58, '1.00', '1.00', '4.80', '4.80', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 1, '2021-11-16 12:31:01'),
(349, 10, 4, 353, 58, '1.00', '1.00', '30.00', '30.00', '0.00', '0.00', '0.00', '30.00', '2.00', '0.00', 1, '2021-11-16 12:31:34'),
(350, 2, 4, 354, 58, '1.00', '1.00', '7.70', '7.70', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 12:32:01'),
(351, 2, 4, 355, 58, '1.00', '1.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 1, '2021-11-16 12:32:54'),
(352, 2, 4, 356, 6, '1.00', '1.00', '9.00', '9.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 12:33:42'),
(353, 2, 4, 357, 18, '1.00', '1.00', '1.70', '1.70', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 12:34:39'),
(354, 2, 4, 358, 29, '1.00', '1.00', '5.40', '5.40', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 12:35:40'),
(355, 2, 4, 359, 58, '1.00', '1.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', 1, '2021-11-16 12:45:40'),
(356, 2, 4, 360, 58, '1.00', '1.00', '13.00', '13.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 1, '2021-11-16 12:48:15'),
(357, 2, 4, 361, 58, '1.00', '1.00', '2.54', '2.54', '0.00', '0.00', '0.00', '2.54', '1.00', '0.00', 1, '2021-11-16 14:21:43'),
(358, 2, 4, 362, 58, '1.00', '1.00', '39.09', '39.09', '0.00', '0.00', '0.00', '39.09', '1.00', '0.00', 1, '2021-11-16 14:33:57'),
(359, 2, 4, 363, 59, '1.00', '1.00', '46.10', '46.10', '0.00', '0.00', '0.00', '46.10', '1.00', '0.00', 1, '2021-11-16 14:48:18'),
(360, 2, 4, 364, 17, '1.00', '1.00', '70.00', '70.00', '0.00', '0.00', '0.00', '70.00', '3.00', '0.00', 1, '2021-11-17 09:56:45'),
(361, 2, 4, 365, 17, '1.00', '1.00', '42.00', '42.00', '0.00', '0.00', '0.00', '42.00', '2.00', '0.00', 1, '2021-11-17 09:58:42'),
(362, 2, 4, 366, 58, '1.00', '1.00', '4.00', '4.00', '0.00', '0.00', '0.00', '10.00', '5.00', '0.00', 1, '2021-11-17 09:59:42'),
(363, 2, 4, 367, 23, '1.00', '1.00', '11.00', '11.00', '0.00', '0.00', '0.00', '11.00', '3.00', '0.00', 1, '2021-11-17 10:10:35'),
(364, 2, 4, 368, 23, '1.00', '1.00', '3.80', '3.80', '0.00', '0.00', '0.00', '3.80', '11.00', '0.00', 1, '2021-11-17 10:12:32'),
(365, 2, 4, 369, 23, '1.00', '1.00', '13.00', '13.00', '0.00', '0.00', '0.00', '13.00', '5.00', '0.00', 1, '2021-11-17 10:13:35'),
(366, 2, 4, 370, 23, '1.00', '1.00', '7.00', '7.00', '0.00', '0.00', '0.00', '7.00', '5.00', '0.00', 1, '2021-11-17 10:14:36'),
(367, 2, 4, 371, 31, '1.00', '1.00', '78.00', '78.00', '0.00', '0.00', '0.00', '78.00', '3.16', '0.00', 1, '2021-11-17 10:26:13'),
(368, 2, 4, 372, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '18.00', '3.00', '0.00', 1, '2021-11-17 10:27:17'),
(369, 2, 4, 373, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '18.00', '1.00', '0.00', 1, '2021-11-17 10:27:20'),
(370, 10, 4, 374, 23, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '33.00', '0.00', 1, '2021-11-17 10:28:59'),
(371, 10, 4, 375, 58, '1.00', '1.00', '60.00', '60.00', '0.00', '0.00', '0.00', '60.00', '2.00', '0.00', 1, '2021-11-17 10:54:23'),
(372, 2, 4, 376, 17, '1.00', '1.00', '32.00', '32.00', '0.00', '0.00', '0.00', '160.00', '6.00', '0.00', 1, '2021-11-17 11:00:11'),
(373, 2, 4, 377, 58, '1.00', '1.00', '38.00', '38.00', '0.00', '0.00', '0.00', '38.00', '2.00', '0.00', 1, '2021-11-17 11:01:25'),
(374, 2, 4, 378, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '18.00', '2.00', '0.00', 1, '2021-11-17 11:02:17'),
(375, 2, 4, 379, 58, '1.00', '1.00', '3.00', '3.00', '0.00', '0.00', '0.00', '3.00', '3.00', '0.00', 1, '2021-11-17 11:03:53'),
(376, 2, 4, 380, 58, '1.00', '1.00', '3.00', '3.00', '0.00', '0.00', '0.00', '3.00', '3.00', '0.00', 1, '2021-11-17 11:05:25'),
(377, 2, 4, 381, 59, '1.00', '1.00', '54.00', '54.00', '0.00', '0.00', '0.00', '15.00', '3.00', '0.00', 1, '2021-11-17 11:23:31'),
(378, 2, 4, 382, 17, '1.00', '1.00', '70.00', '70.00', '0.00', '0.00', '0.00', '70.00', '12.00', '0.00', 1, '2021-11-17 11:28:45'),
(379, 2, 4, 383, 17, '1.00', '1.00', '70.00', '70.00', '0.00', '0.00', '0.00', '70.00', '2.00', '0.00', 1, '2021-11-17 11:30:45'),
(380, 2, 4, 384, 17, '1.00', '1.00', '26.00', '26.00', '0.00', '0.00', '0.00', '26.00', '6.00', '0.00', 1, '2021-11-17 12:34:26'),
(381, 2, 4, 385, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '6.00', '0.00', 1, '2021-11-17 12:36:31'),
(382, 2, 4, 386, 58, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '0.00', '18.00', '2.00', '0.00', 1, '2021-11-17 12:37:32'),
(383, 2, 4, 387, 58, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '2.00', '0.00', 1, '2021-11-17 12:39:06'),
(384, 10, 4, 388, 23, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '0.00', '8.00', '13.00', '0.00', 1, '2021-11-17 12:47:21'),
(385, 2, 4, 389, 43, '1.00', '1.00', '31.00', '31.00', '0.00', '0.00', '0.00', '31.00', '51.00', '0.00', 1, '2021-11-17 12:54:21'),
(386, 10, 4, 390, 23, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '4.00', '0.00', 1, '2021-11-17 13:16:34'),
(387, 10, 4, 391, 23, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '3.00', '0.00', 1, '2021-11-17 13:19:10'),
(388, 2, 4, 392, 58, '1.00', '1.00', '1595.00', '1595.00', '0.00', '0.00', '0.00', '1595.00', '1.00', '0.00', 1, '2021-11-17 13:48:43'),
(389, 2, 4, 393, 17, '1.00', '1.00', '70.00', '70.00', '0.00', '0.00', '0.00', '70.00', '3.00', '0.00', 1, '2021-11-17 13:53:40'),
(390, 2, 4, 394, 17, '1.00', '1.00', '26.00', '26.00', '0.00', '0.00', '0.00', '26.00', '13.00', '0.00', 1, '2021-11-17 13:55:51'),
(391, 2, 4, 395, 58, '1.00', '1.00', '14.00', '14.00', '0.00', '0.00', '0.00', '14.00', '3.00', '0.00', 1, '2021-11-17 14:00:41'),
(392, 2, 4, 396, 58, '1.00', '1.00', '9.00', '9.00', '0.00', '0.00', '0.00', '9.00', '7.00', '0.00', 1, '2021-11-17 14:02:05'),
(393, 2, 4, 397, 58, '1.00', '1.00', '32.00', '32.00', '0.00', '0.00', '0.00', '32.00', '2.00', '0.00', 1, '2021-11-17 14:03:45'),
(394, 10, 4, 398, 17, '1.00', '1.00', '70.00', '70.00', '0.00', '0.00', '0.00', '70.00', '3.00', '0.00', 1, '2021-11-17 14:38:08'),
(395, 10, 4, 399, 58, '1.00', '1.00', '16.80', '16.80', '0.00', '0.00', '0.00', '16.80', '2.00', '0.00', 1, '2021-11-17 14:46:41'),
(396, 10, 4, 400, 58, '1.00', '1.00', '2.46', '2.46', '0.00', '0.00', '0.00', '2.46', '2.00', '0.00', 1, '2021-11-17 14:47:41'),
(397, 10, 4, 401, 58, '1.00', '1.00', '16.80', '16.80', '0.00', '0.00', '0.00', '16.80', '1.00', '0.00', 1, '2021-11-17 14:49:18'),
(398, 10, 4, 402, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '0.00', '8.00', '1.00', '0.00', 1, '2021-11-17 15:15:20'),
(399, 10, 4, 403, 17, '1.00', '1.00', '22.00', '22.00', '0.00', '0.00', '0.00', '22.00', '6.00', '0.00', 1, '2021-11-17 15:16:13'),
(400, 10, 4, 404, 17, '1.00', '1.00', '22.00', '22.00', '0.00', '0.00', '0.00', '22.00', '4.00', '0.00', 1, '2021-11-17 15:17:31');
INSERT INTO `recursos_sede` (`id_recurso_sede`, `id_usuario_creacion`, `id_sucursal`, `id_recurso`, `id_medida`, `recurso_sede_factor_unidad`, `recurso_sede_cantidad`, `recurso_sede_precio_unit`, `recurso_sede_precio_total`, `recurso_sede_peso_inicial`, `recurso_sede_peso_final`, `recurso_sede_merma`, `recurso_sede_precio`, `recurso_sede_stock`, `recurso_sede_stock_minimo`, `recurso_sede_estado`, `recurso_sede_fecha`) VALUES
(401, 2, 4, 405, 58, '1.00', '1.00', '34.00', '34.00', '0.00', '0.00', '0.00', '34.00', '5.00', '0.00', 1, '2021-11-18 13:01:52'),
(402, 10, 4, 406, 58, '1.00', '1.00', '3.65', '3.65', '0.00', '0.00', '0.00', '3.65', '13.00', '0.00', 1, '2021-11-19 11:35:59'),
(403, 2, 4, 407, 58, '1.00', '1.00', '3.80', '3.80', '0.00', '0.00', '100.00', '3.80', '3.00', '0.00', 1, '2021-11-24 12:05:05'),
(404, 2, 4, 408, 23, '1.00', '0.75', '20.00', '15.00', '0.00', '0.00', '100.00', '20.00', '1.50', '0.00', 1, '2021-11-24 13:00:07'),
(405, 2, 4, 409, 58, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '100.00', '15.00', '2.00', '0.00', 1, '2021-11-24 14:46:51'),
(406, 2, 4, 410, 23, '1.00', '1.00', '12.00', '12.00', '0.00', '0.00', '0.00', '0.00', '2.09', '0.00', 1, '2021-11-24 15:09:59'),
(407, 2, 4, 411, 58, '1.00', '1.00', '2.50', '2.50', '0.00', '0.00', '100.00', '2.25', '11.00', '0.00', 1, '2021-11-24 15:21:19'),
(408, 2, 4, 412, 58, '1.00', '1.00', '5.00', '5.00', '0.00', '0.00', '100.00', '5.00', '5.00', '0.00', 1, '2021-11-24 15:56:15'),
(409, 10, 4, 413, 23, '1.00', '1.00', '20.00', '20.00', '0.00', '0.00', '100.00', '12.00', '2.25', '0.00', 1, '2021-11-26 13:21:57'),
(410, 10, 4, 414, 23, '1.00', '1.00', '5.00', '5.00', '0.00', '0.00', '100.00', '5.00', '2.00', '0.00', 1, '2021-11-26 13:51:14'),
(411, 10, 4, 415, 23, '1.00', '1.00', '38.00', '38.00', '0.00', '0.00', '100.00', '38.00', '1.28', '0.00', 1, '2021-11-26 13:59:42'),
(412, 10, 4, 416, 23, '1.00', '1.00', '18.00', '18.00', '0.00', '0.00', '100.00', '18.00', '1.62', '0.00', 1, '2021-11-26 14:01:59'),
(413, 10, 4, 417, 58, '1.00', '1.00', '10.00', '10.00', '0.00', '0.00', '100.00', '10.00', '1.10', '0.00', 1, '2021-11-26 14:05:10'),
(414, 10, 4, 418, 43, '1.00', '1.00', '60.00', '60.00', '0.00', '0.00', '100.00', '60.00', '2.00', '0.00', 1, '2021-11-26 16:00:32'),
(415, 10, 4, 419, 23, '1.00', '1.00', '40.00', '40.00', '0.00', '0.00', '100.00', '40.00', '2.00', '0.00', 1, '2021-11-26 16:01:46'),
(416, 10, 4, 420, 23, '1.00', '1.00', '15.00', '15.00', '0.00', '0.00', '100.00', '15.00', '3.00', '0.00', 1, '2021-11-26 16:02:47'),
(417, 10, 4, 421, 23, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '100.00', '1.00', '31.00', '0.00', 1, '2021-11-26 16:04:29'),
(418, 10, 4, 422, 23, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '100.00', '1.00', '36.00', '0.00', 1, '2021-11-26 16:05:29'),
(419, 10, 4, 423, 23, '1.00', '1.00', '7.50', '7.50', '0.00', '0.00', '100.00', '20.00', '3.00', '0.00', 1, '2021-11-26 16:06:35'),
(420, 10, 4, 424, 58, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '100.00', '1.00', '6.00', '0.00', 1, '2021-11-26 16:07:46'),
(421, 10, 4, 425, 43, '1.00', '1.00', '35.00', '35.00', '0.00', '0.00', '100.00', '35.00', '2.00', '0.00', 1, '2021-11-26 16:22:30'),
(422, 10, 4, 426, 58, '1.00', '1.00', '8.00', '8.00', '0.00', '0.00', '100.00', '8.00', '2.00', '0.00', 1, '2021-11-26 16:23:39'),
(423, 10, 4, 427, 23, '1.00', '1.00', '30.00', '30.00', '0.00', '0.00', '100.00', '30.00', '2.00', '0.00', 1, '2021-11-26 16:25:03'),
(424, 10, 4, 428, 6, '1.00', '1.00', '4.50', '4.50', '0.00', '0.00', '100.00', '4.50', '2.00', '0.00', 1, '2021-11-26 16:37:58'),
(425, 10, 4, 429, 58, '1.00', '1.00', '1.20', '1.20', '0.00', '0.00', '100.00', '1.25', '7.00', '0.00', 1, '2021-11-29 12:11:49'),
(426, 10, 4, 430, 58, '1.00', '1.00', '42.00', '42.00', '0.00', '0.00', '100.00', '42.00', '2.00', '0.00', 1, '2021-11-29 12:14:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_asistencias`
--

CREATE TABLE `registro_asistencias` (
  `id_registro` int(11) NOT NULL,
  `id_persona_turno` int(11) NOT NULL,
  `asistencia_fecha` date NOT NULL,
  `asistencia_valor` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `asistencia_cambio_fecha` date NOT NULL,
  `asistencia_cambio_hora` time NOT NULL,
  `asistencia_comentarios` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `registro_asistencias`
--

INSERT INTO `registro_asistencias` (`id_registro`, `id_persona_turno`, `asistencia_fecha`, `asistencia_valor`, `id_user`, `asistencia_cambio_fecha`, `asistencia_cambio_hora`, `asistencia_comentarios`) VALUES
(19, 15, '2021-07-16', 2, 1, '2021-07-17', '20:40:57', 'ASISTENCIA GENERAL'),
(20, 14, '2021-07-16', 2, 1, '2021-07-17', '20:40:57', 'ASISTENCIA GENERAL'),
(21, 15, '2021-07-17', 1, 1, '2021-07-18', '00:03:09', 'ASISTENCIA GENERAL'),
(22, 14, '2021-07-17', 1, 1, '2021-07-18', '00:03:09', 'ASISTENCIA GENERAL'),
(23, 15, '2021-07-18', 1, 1, '2021-07-18', '20:30:01', 'ASISTENCIA GENERAL'),
(24, 14, '2021-07-18', 10, 1, '2021-07-18', '20:30:01', 'ASISTENCIA GENERAL'),
(25, 15, '2021-07-18', 1, 1, '2021-07-18', '20:32:54', 'ASISTENCIA GENERAL'),
(26, 14, '2021-07-18', 10, 1, '2021-07-18', '20:32:54', 'ASISTENCIA GENERAL'),
(27, 14, '2021-07-19', 10, 1, '2021-07-19', '09:05:01', 'ASISTENCIA GENERAL'),
(28, 15, '2021-08-04', 10, 1, '2021-08-04', '11:04:22', 'ASISTENCIA GENERAL'),
(29, 14, '2021-08-04', 10, 1, '2021-08-04', '11:04:22', 'ASISTENCIA GENERAL'),
(30, 20, '2021-08-24', 1, 1, '2021-08-24', '16:19:33', 'ASISTENCIA GENERAL'),
(31, 20, '2021-08-24', 1, 1, '2021-08-24', '16:30:29', 'ASISTENCIA GENERAL'),
(32, 20, '2021-08-24', 1, 1, '2021-08-24', '16:30:38', 'ASISTENCIA GENERAL'),
(33, 20, '2021-08-24', 1, 1, '2021-08-24', '16:47:04', 'ASISTENCIA GENERAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `reserva_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `reserva_cantidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `reserva_fecha` date NOT NULL,
  `reserva_hora` time NOT NULL,
  `reserva_contacto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reserva_fecha_registro` datetime NOT NULL,
  `reserva_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restricciones`
--

CREATE TABLE `restricciones` (
  `id_restriccion` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `restricciones`
--

INSERT INTO `restricciones` (`id_restriccion`, `id_rol`, `id_opcion`) VALUES
(1, 5, 80),
(2, 6, 80),
(3, 4, 80),
(4, 4, 70),
(6, 6, 70),
(7, 4, 67),
(9, 6, 67),
(10, 4, 71),
(11, 5, 71),
(12, 6, 71),
(13, 4, 46),
(14, 4, 111),
(15, 4, 48),
(16, 5, 112),
(18, 6, 103),
(19, 4, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `rol_nombre` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `rol_descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rol_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES
(1, 'Libre', 'Accesos sin inicio de sesión', 1),
(2, 'SuperAdmin', 'Tiene acceso a la gestión total del sistema', 1),
(3, 'Admin', 'Gestión del sistema', 1),
(4, 'Mesero', 'Atencion al publico', 1),
(5, 'Cajero', 'Encargado de estar en caja', 1),
(6, 'Cocinero', 'Encargado de la preparación del pedido', 1),
(7, 'Supervisor', 'Supervisar todo el negocio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_menus`
--

CREATE TABLE `roles_menus` (
  `id_rol_menu` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles_menus`
--

INSERT INTO `roles_menus` (`id_rol_menu`, `id_rol`, `id_menu`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 2),
(7, 3, 5),
(8, 2, 6),
(9, 3, 6),
(10, 2, 7),
(11, 2, 8),
(12, 2, 9),
(13, 2, 10),
(14, 2, 11),
(15, 2, 12),
(16, 2, 13),
(17, 2, 14),
(18, 2, 15),
(19, 2, 16),
(20, 2, 17),
(21, 2, 18),
(22, 2, 19),
(23, 2, 20),
(24, 2, 21),
(25, 4, 2),
(26, 4, 12),
(28, 4, 17),
(29, 5, 2),
(30, 5, 16),
(31, 5, 12),
(32, 2, 22),
(33, 3, 8),
(34, 3, 9),
(35, 3, 10),
(36, 3, 11),
(37, 3, 12),
(38, 3, 13),
(39, 3, 14),
(40, 3, 15),
(41, 3, 16),
(42, 3, 17),
(43, 3, 18),
(44, 3, 19),
(45, 3, 20),
(46, 3, 21),
(47, 3, 7),
(48, 4, 13),
(50, 5, 13),
(51, 5, 17),
(52, 5, 19),
(53, 5, 20),
(54, 6, 2),
(55, 6, 12),
(56, 6, 13),
(57, 3, 22),
(58, 2, 23),
(59, 3, 23),
(60, 7, 2),
(61, 7, 5),
(62, 7, 7),
(63, 7, 8),
(64, 7, 9),
(66, 7, 11),
(67, 7, 12),
(68, 7, 13),
(69, 7, 17),
(70, 7, 16),
(71, 7, 15),
(72, 7, 18),
(73, 7, 19),
(74, 7, 20),
(75, 7, 21),
(76, 7, 22),
(77, 4, 23),
(78, 1, 24),
(79, 2, 24),
(80, 3, 24),
(81, 4, 24),
(82, 5, 24),
(83, 6, 24),
(84, 7, 24),
(85, 5, 15),
(87, 5, 5),
(88, 5, 23),
(89, 5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `id_caja_numero` int(11) DEFAULT NULL,
  `tipocomp` char(2) DEFAULT NULL,
  `serie` varchar(8) DEFAULT NULL,
  `correlativo` int(11) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`id_serie`, `id_caja_numero`, `tipocomp`, `serie`, `correlativo`, `estado`) VALUES
(1, 1, '01', 'FFF1', 2, 1),
(2, 2, '01', 'FFF2', 0, 1),
(3, 1, '03', 'BBB1', 13, 1),
(5, 1, '07', 'FN02', 0, 1),
(6, 1, '07', 'BN02', 0, 1),
(7, 1, '08', 'FD02', 0, 1),
(8, 1, '08', 'BD02', 0, 1),
(9, 1, 'RC', '20230323', 1, 1),
(10, 1, 'RA', '20220308', 0, 1),
(4, 2, '03', 'BBB2', 0, 1),
(13, 1, '20', 'NV01', 0, 1),
(14, 2, '20', 'NV02', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_recetas`
--

CREATE TABLE `sub_recetas` (
  `id_sub_receta` int(11) NOT NULL,
  `id_medida` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `id_receta_2` int(11) NOT NULL,
  `sub_receta_cantidad` decimal(10,2) NOT NULL,
  `sub_receta_total` decimal(10,2) NOT NULL,
  `sub_receta_fecha_registro` datetime NOT NULL,
  `sub_receta_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sub_recetas`
--

INSERT INTO `sub_recetas` (`id_sub_receta`, `id_medida`, `id_receta`, `id_receta_2`, `sub_receta_cantidad`, `sub_receta_total`, `sub_receta_fecha_registro`, `sub_receta_estado`) VALUES
(1, 58, 40, 21, '1.00', '7.18', '2021-04-14 13:05:45', 1),
(5, 58, 40, 66, '1.00', '2.06', '2021-05-27 11:40:02', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `sucursal_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_direccion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_ruc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_foto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sucursal_telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_estado` tinyint(1) NOT NULL,
  `sucursal_fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `id_ciudad`, `id_negocio`, `sucursal_nombre`, `sucursal_direccion`, `sucursal_ruc`, `sucursal_foto`, `sucursal_telefono`, `sucursal_estado`, `sucursal_fecha_registro`) VALUES
(4, 1, 3, 'La ultima conchita San Juan', 'Av. Quiñones 4757', '20602247687', 'media/sucursal/default.png', '987100215', 0, '2021-03-24 14:23:50'),
(5, 1, 3, 'La Ultima Conchita Punchana', 'Borja 641', '20602247687', 'media/sucursal/default.png', '987654321', 1, '2021-09-30 09:38:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoadjuntos`
--

CREATE TABLE `tipoadjuntos` (
  `id_adjunto` int(11) NOT NULL,
  `adjunto_nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `adjunto_ext` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipoadjuntos`
--

INSERT INTO `tipoadjuntos` (`id_adjunto`, `adjunto_nombre`, `adjunto_ext`) VALUES
(1, 'Boleta de Pago', 'BolPago'),
(2, 'Contrato firmado', 'ContrFirma'),
(3, 'Alta de PDT', 'AltaPDT'),
(4, 'Baja de PDT', 'BajaPDT'),
(5, 'Memorandum - Vacaciones', 'MemoVacac'),
(6, 'Memorandum - Sanciones', 'MemoSanc'),
(7, 'Memorandum - Cambio de Puesto', 'MemoCambP'),
(8, 'Memorandum - Varios', 'MemoVar'),
(9, 'Antecedentes Penales', 'AntPen'),
(10, 'Antecedentes Policiales', 'AntPol'),
(11, 'Otros Documentos y/o Solicitudes', 'Otros'),
(12, 'Renuncia', 'Renun'),
(13, 'Liquidación de Beneficios Sociales', 'LBS'),
(14, 'Carta de No Adeudo', 'CartNAd'),
(15, 'Licencia por Maternidad y/o Paternidad', 'LicMatPat'),
(16, 'Declaración Jurada', 'DeclJur'),
(17, 'Boleta de Pago - Vacaciones', 'BolPagVac'),
(18, 'Examen Medico', 'ExamMed'),
(19, 'Vacunas', 'Vac'),
(20, 'Certificado de Trabajo', 'CerTrab'),
(21, 'Boleta - Gratificación', 'BolGrat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocargo`
--

CREATE TABLE `tipocargo` (
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `cargo_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipocargo`
--

INSERT INTO `tipocargo` (`id_cargo`, `id_departamento`, `cargo_nombre`) VALUES
(1, 1, 'MESERO'),
(2, 2, 'PERSONAL LIMPIEZA'),
(3, 1, 'COCINERO'),
(4, 3, 'AUXILIAR CONTABLE'),
(5, 1, 'AYUDANTE'),
(6, 0, 'Prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocontrato`
--

CREATE TABLE `tipocontrato` (
  `id_contrato` int(11) NOT NULL,
  `contrato_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipocontrato`
--

INSERT INTO `tipocontrato` (`id_contrato`, `contrato_nombre`) VALUES
(0, '--'),
(1, 'INDETERMINADO'),
(2, 'SUJETO A MODALIDAD'),
(3, 'POR OBRA DETERMINADA O SERVICIO ESPECIFICO'),
(7, 'DE PERSONAL EXTRANJERO A PLAZO DETERMINADO'),
(8, 'LOCACION DE SERVICIOS'),
(9, 'A TIEMPO PARCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodepartamento`
--

CREATE TABLE `tipodepartamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento_nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipodepartamento`
--

INSERT INTO `tipodepartamento` (`id_departamento`, `departamento_nombre`) VALUES
(0, '--'),
(1, 'COCINA'),
(2, 'LIMPIEZA Y ASEO'),
(3, 'CONTABILIDAD Y FINANZAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposede`
--

CREATE TABLE `tiposede` (
  `id_sede` int(11) NOT NULL,
  `sede_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tiposede`
--

INSERT INTO `tiposede` (`id_sede`, `sede_nombre`) VALUES
(0, '--'),
(1, 'Sede San Juan'),
(2, 'Sede Punchana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_afectacion`
--

CREATE TABLE `tipo_afectacion` (
  `id_tipo_afectacion` int(11) NOT NULL,
  `codigo` char(2) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `codigo_afectacion` char(4) DEFAULT NULL,
  `nombre_afectacion` char(3) DEFAULT NULL,
  `tipo_afectacion` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `tipo_afectacion`
--

INSERT INTO `tipo_afectacion` (`id_tipo_afectacion`, `codigo`, `descripcion`, `codigo_afectacion`, `nombre_afectacion`, `tipo_afectacion`) VALUES
(1, '10', 'OP. GRAVADAS', '1000', 'IGV', 'VAT'),
(2, '20', 'OP. EXONERADAS', '9997', 'EXO', 'VAT'),
(3, '30', 'OP. INAFECTAS', '9998', 'INA', 'FRE'),
(4, '21', 'OP. GRATUITAS', '9996', 'GRA', 'FRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE `tipo_documentos` (
  `id_tipodocumento` int(11) NOT NULL,
  `tipodocumento_codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipodocumento_identidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipodocumento_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`id_tipodocumento`, `tipodocumento_codigo`, `tipodocumento_identidad`, `tipodocumento_estado`) VALUES
(1, '0', 'DOC.TRIB.NO.DOM.SIN.RUC', 0),
(2, '1', 'Documento Nacional de Identidad', 1),
(3, '4', 'Carnet de extranjería', 0),
(4, '6', 'Registro Unico de Contributentes', 1),
(5, '7', 'Pasaporte', 0),
(6, 'A', 'Cédula Diplomática de identidad', 0),
(7, 'B', 'DOC.IDENT.PAIS.RESIDENCIA-NO.D', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ncreditos`
--

CREATE TABLE `tipo_ncreditos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_nota_descripcion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_ncreditos`
--

INSERT INTO `tipo_ncreditos` (`id`, `codigo`, `tipo_nota_descripcion`, `estado`) VALUES
(1, '01', 'Anulación de la operacion', 0),
(2, '02', 'Anulación por error en el RUC', 0),
(3, '03', 'Corrección por error en la descripcion', 0),
(4, '04', 'Descuento Global', 0),
(5, '05', 'Descuento por ítem', 0),
(6, '06', 'Devolución total', 0),
(7, '07', 'Devolución por ítem', 0),
(8, '08', 'Bonificación', 0),
(9, '09', 'Disminición en el valor', 0),
(10, '10', 'Otros conceptos', 0),
(11, '11', 'Ajustes de operaciones de exportacion', 0),
(12, '12', 'Ajustes afectos al IVAP', 0),
(13, '13', 'Corrección del monto neto pendiente de pago y/o la(s) fechas(s) de vencimiento del pago \r\núnico o de las cuotas y/o los montos correspondientes a cada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ndebitos`
--

CREATE TABLE `tipo_ndebitos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_nota_descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_ndebitos`
--

INSERT INTO `tipo_ndebitos` (`id`, `codigo`, `tipo_nota_descripcion`, `estado`) VALUES
(1, '01', 'Intereses por mora', 0),
(2, '02', 'Aumento en el valor', 0),
(3, '03', 'Penalidades / Otros conceptos', 0),
(4, '10', 'Ajustes de operaciones de exportación', 0),
(5, '11', 'Ajustes afectos al IVAP', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `tipo_pago_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_pago_estado` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_tipo_pago`, `tipo_pago_nombre`, `tipo_pago_estado`) VALUES
(1, 'TARJETA', 1),
(2, 'SIN MODALIDAD', 0),
(3, 'EFECTIVO', 1),
(4, 'TRANSFERENCIA YAPE', 1),
(5, 'TRANSFERENCIA PLIN', 1),
(6, 'TRANSFERENCIA OTROS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `turno_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `turno_hora_entrada` time NOT NULL,
  `turno_hora_tolerancia` time NOT NULL,
  `turno_hora_salida` time NOT NULL,
  `turno_estado` tinyint(2) NOT NULL,
  `turno_fecha_registro` datetime NOT NULL,
  `turno_usuario_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `turno_nombre`, `turno_hora_entrada`, `turno_hora_tolerancia`, `turno_hora_salida`, `turno_estado`, `turno_fecha_registro`, `turno_usuario_registro`) VALUES
(1, 'Turno 1', '08:00:00', '08:10:00', '16:00:00', 1, '0000-00-00 00:00:00', 1),
(2, 'Turno 2', '13:15:00', '13:25:00', '19:00:00', 1, '0000-00-00 00:00:00', 1),
(3, 'Turno 3', '18:30:00', '18:40:00', '23:35:00', 1, '2021-08-09 22:15:29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id_medida` int(11) NOT NULL,
  `medida_codigo_unidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `medida_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `medida_activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id_medida`, `medida_codigo_unidad`, `medida_nombre`, `medida_activo`) VALUES
(1, '4A', 'BOBINAS                                           ', 0),
(2, 'BJ', 'BALDE                                             ', 1),
(3, 'BLL', 'BARRILES                                          ', 0),
(4, 'BG', 'BOLSA                                             ', 1),
(5, 'BO', 'BOTELLA                                      ', 1),
(6, 'BX', 'CAJA                                              ', 1),
(7, 'CT', 'CARTONES                                          ', 0),
(8, 'CMK', 'CENTIMETRO CUADRADO                               ', 0),
(9, 'CMQ', 'CENTIMETRO CUBICO                                 ', 0),
(10, 'CMT', 'CENTIMETRO LINEAL                                 ', 0),
(11, 'CEN', 'CIENTO DE UNIDADES                                ', 1),
(12, 'CY', 'CILINDRO                                          ', 0),
(13, 'CJ', 'CONOS                                             ', 0),
(14, 'DZN', 'DOCENA                                            ', 1),
(15, 'DZP', 'DOCENA POR 10**6                                  ', 0),
(16, 'BE', 'FARDO                                             ', 0),
(17, 'GLI', 'GALON INGLES (4,545956L)', 1),
(18, 'GRM', 'GRAMO                                             ', 1),
(19, 'GRO', 'GRUESA                                            ', 0),
(20, 'HLT', 'HECTOLITRO                                        ', 0),
(21, 'LEF', 'HOJA                                              ', 0),
(22, 'SET', 'JUEGO                                             ', 0),
(23, 'KGM', 'KILOGRAMO                                         ', 1),
(24, 'KTM', 'KILOMETRO                                         ', 0),
(25, 'KWH', 'KILOVATIO HORA                                    ', 0),
(26, 'KT', 'KIT                                               ', 0),
(27, 'CA', 'LATAS                                             ', 0),
(28, 'LBR', 'LIBRAS                                            ', 0),
(29, 'LTR', 'LITRO                                             ', 1),
(30, 'MWH', 'MEGAWATT HORA                                     ', 0),
(31, 'MTR', 'METRO                                             ', 1),
(32, 'MTK', 'METRO CUADRADO                                    ', 0),
(33, 'MTQ', 'METRO CUBICO                                      ', 0),
(34, 'MGM', 'MILIGRAMOS                                        ', 0),
(35, 'MLT', 'MILILITRO                                         ', 0),
(36, 'MMT', 'MILIMETRO                                         ', 0),
(37, 'MMK', 'MILIMETRO CUADRADO                                ', 0),
(38, 'MMQ', 'MILIMETRO CUBICO                                  ', 0),
(39, 'MLL', 'MILLARES                                          ', 0),
(40, 'UM', 'MILLON DE UNIDADES                                ', 0),
(41, 'ONZ', 'ONZAS                                             ', 0),
(42, 'PF', 'PALETAS                                           ', 0),
(43, 'PK', 'PAQUETE                                           ', 1),
(44, 'PR', 'PAR                                               ', 0),
(45, 'FOT', 'PIES                                              ', 0),
(46, 'FTK', 'PIES CUADRADOS                                    ', 0),
(47, 'FTQ', 'PIES CUBICOS                                      ', 0),
(48, 'C62', 'PIEZAS                                            ', 0),
(49, 'PG', 'PLACAS                                            ', 0),
(50, 'ST', 'PLIEGO                                            ', 0),
(51, 'INH', 'PULGADAS                                          ', 0),
(52, 'RM', 'RESMA                                             ', 0),
(53, 'DR', 'TAMBOR                                            ', 0),
(54, 'STN', 'TONELADA CORTA                                    ', 0),
(55, 'LTN', 'TONELADA LARGA                                    ', 0),
(56, 'TNE', 'TONELADAS                                         ', 0),
(57, 'TU', 'TUBOS                                             ', 0),
(58, 'NIU', 'UNIDAD (BIENES)                                   ', 1),
(59, 'ZZ', 'UNIDAD (SERVICIOS) ', 1),
(60, 'GLL', 'US GALON (3,7843 L)', 0),
(61, 'YRD', 'YARDA                                             ', 0),
(62, 'YDK', 'YARDA CUADRADA                                    ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `usuario_nickname` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_contrasenha` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_imagen` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_estado` tinyint(1) NOT NULL,
  `usuario_creacion` datetime NOT NULL,
  `usuario_ultimo_login` datetime NOT NULL,
  `usuario_ultima_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `id_rol`, `usuario_nickname`, `usuario_contrasenha`, `usuario_email`, `usuario_imagen`, `usuario_estado`, `usuario_creacion`, `usuario_ultimo_login`, `usuario_ultima_modificacion`) VALUES
(1, 1, 2, 'superadmin', '$2y$10$oPOOOgTUr4zIh511ATm/q.vzsAmxP.e2.vzyEbRn/1pzyWz2oXj0a', 'cesarjose@bufeotec.com', 'media/usuarios/usuario.jpg', 1, '2020-09-17 00:00:00', '2023-03-14 11:09:03', '2020-09-17 00:00:00'),
(2, 2, 3, 'admin', '$2y$10$AoMp3XpRrN7nrSnxqNFEkOjNpUI7TCgZr6.U9wai/BxHwIzjz22yW', 'carlos@gmail.com', 'media/usuarios/usuario.jpg', 1, '2020-10-27 18:29:10', '2023-03-23 13:34:17', '2020-10-27 18:29:10'),
(3, 3, 7, 'supervisor', '$2y$10$SDwpRYWuWNAP3gTWMOnXdOMs2ZmhjC4zrZv4ejEU8vO/IQI/19Nz2', 'super@gmail.com', 'media/usuarios/usuario.jpg', 0, '2021-09-06 10:59:12', '2021-09-06 10:59:12', '2023-02-07 11:10:52'),
(4, 4, 4, 'SERGIO', '$2y$10$P9J7fxDQydb.PDohqsGZGuF1ROcK/jQ9Rmcf94eRwvIT2n.p5jX1W', 'vhjvbhj@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 12:46:47', '2021-11-29 13:01:32', '2023-02-01 11:49:18'),
(5, 5, 6, 'LUCIA', '$2y$10$63fkhDrnxX1yZMaSzcQBz.XfUzxuE99a/CtdxkxEHJj63VACT4afa', 'LUCIANOTENOCOCHINCHE@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 12:57:27', '2021-09-14 12:57:27', '2023-02-06 11:52:55'),
(6, 6, 5, 'MILAGROSF', '$2y$10$f66PRwuvjB90v21gWFs14u0MmgBGUaYT4PItJdsKh99xC2kxIXfmy', 'MILAGROSFACHINL@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 13:02:50', '2021-11-29 11:47:47', '2023-02-06 11:53:46'),
(7, 7, 4, 'EFRAIN', '$2y$10$G5WXt9ju7bYilMGyD1k6Su2K7J7ijG/LjrmNf4SNxsn7GRUONLWZC', 'CACERESGONZALESEFRAINANTONI@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 13:08:06', '2022-06-07 10:19:11', '2023-02-01 11:53:29'),
(8, 8, 5, 'JHULEYSI', '$2y$10$8D11kRzcGsVFL40Fzpdeie3tcG5m9WlvhcLENyhWLatNWllsXl6rm', 'ju@gmail.com', 'media/persona/default.png', 1, '2021-09-14 13:15:37', '2022-10-14 10:12:56', '2021-09-15 19:51:24'),
(9, 9, 7, 'SAUL', '$2y$10$i4.8o1IOFbVFHD8X6yJDR.bVuVBOgRAorB/5ODjbj2hkRGlipit/y', 'HOPE_1116@HOTMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 14:05:17', '2021-09-14 14:05:17', '2023-02-07 11:11:04'),
(10, 10, 3, 'LUDWING', '$2y$10$Vv7owLbw7ztwGN8qJN.fLuFebPWC7cTwp7JbqONdwPcXdowXSlWMS', 'FERNANDEZLUDWING@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-14 14:14:48', '2021-12-01 16:11:16', '2023-02-01 11:47:55'),
(11, 11, 3, 'NEHEMIAS', '$2y$10$Gfe248nJByubV.CfM9Xjl.wh9M4gZrUD9ms86ehPwdyzglIot7Gre', 'NEHEMIAS.MAN@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-15 11:20:10', '2021-09-30 12:53:00', '2023-02-01 11:48:15'),
(12, 12, 6, 'PATRICIA', '$2y$10$cxScVw8J9NMq8A/Rmu3BLeKye1A4aZ7tBPyiIzlUCuNI0AUOZPPjC', 'PATTYDEWONG@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-15 14:56:27', '2021-09-15 14:56:27', '2023-02-07 11:09:46'),
(13, 13, 6, 'NOE', '$2y$10$GJi69x/yz2gkcXki25pLhOsF/4FvtgbBqJ5C/Q5ebD.ctn1dqAsi.', 'NTOVAR@GAMIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:03:31', '2021-09-16 12:03:31', '2023-02-07 11:10:01'),
(14, 14, 4, 'LEO', '$2y$10$K33m858cN.VC9OwpIfzXDO9/htlMTgMi.tXcergHzF3T.7kglR0ZG', '31DUKE9310@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:09:01', '2021-11-22 10:11:28', '2023-02-01 11:53:43'),
(15, 15, 4, 'JULIAN', '$2y$10$xq7K7Vgm0HNIHUyxNA4w7ezqV5ZWRVvno984TeXTFeYPZZoZ3Uv9C', 'CHAVEZGUELLECUARTO@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:15:54', '2021-11-29 18:46:06', '2023-02-01 11:53:54'),
(16, 16, 4, 'MIRIAM', '$2y$10$lu45kwH2FUBRJ0PuAq39d.YOZLPnRUEEHZb3GAnCxZb9EZ4wsZyHC', 'MIRIAMIVONNE1104@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:22:25', '2021-09-16 12:22:25', '2023-02-01 11:54:10'),
(17, 17, 4, 'HAROLD', '$2y$10$vHFfGi0iJ4ZTSL9AtYTEE.hVja3K6TVhbTe6pxvUL2ZkCuLHV8.Gi', 'CHRISVARGASTA@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:27:18', '2021-09-30 12:38:19', '2021-11-29 19:15:41'),
(18, 18, 4, 'JULIO', '$2y$10$uq51Cd0FSrVbEGUNFIbydOoJT3hO9jE59MDwq81naNih7IL3eqqgq', 'JACKBARRETORODRIGUEZ@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:33:41', '2021-11-29 12:11:58', '2023-02-01 11:54:24'),
(19, 19, 5, 'DELCIO', '$2y$10$SL5I2CE2xWMS82vdq7U.tOL3ELsLhuEXo8todNumbFXFTwkFlnUNK', 'JUDFHSDJKIKI@GMAIL.COM', 'media/persona/default.png', 0, '2021-09-16 12:41:35', '2021-09-16 12:41:35', '2023-02-01 11:58:35'),
(20, 20, 4, 'Paul', '$2y$10$KoGSCFQxmFm5MEFZwx6eHOLdw12DQ/T1lu/qpJjkWamwFckl/EpVK', 'Paulflavia2015@gmail.com', 'media/persona/default.png', 0, '2021-11-13 12:31:14', '2021-11-15 14:36:40', '2023-02-01 11:54:53'),
(21, 21, 5, 'renzo', '$2y$10$J2zQVoPvGMrP5Kc/9D4uwuG.SsXNqcMWdKZObQOUv0qRwTK.1q1He', 'GHKKGTK375637G@GMAIL.COM', 'media/persona/default.png', 0, '2021-11-29 20:06:53', '2023-02-07 10:48:15', '2023-02-07 11:09:31'),
(22, 22, 6, 'ANGEL', '$2y$10$yQ5vaXJQaDIZdsMK49zf7.du/z0tvI35OAwZfqhNHHsiKKtL3wO8m', 'NAPUC2002@GMAIL.COM', 'media/persona/default.png', 0, '2021-11-29 20:14:28', '2021-11-29 20:14:28', '2023-02-07 11:10:20'),
(23, 23, 7, 'CARITO', '$2y$10$rzmkGwcZuWxdnZRGWblgneAVIxCyIPNK15v61.j96LjLJG9bE7JpO', '', 'media/persona/default.png', 1, '2021-11-29 20:19:14', '2021-11-29 20:19:14', '2021-11-29 20:19:14'),
(24, 24, 4, 'KAREN', '$2y$10$BDY1uyzsx0rRjDnPZB1qmuzXmuCrp7XTC5KH.w70ut3xu5ItGArQq', 'YURR@GMAIL.COM', 'media/persona/default.png', 0, '2021-11-29 20:20:47', '2021-11-29 20:20:47', '2023-02-01 11:55:17'),
(25, 25, 4, 'CARMEN', '$2y$10$njqHhLncB7LPjLCqCOrv/ey5u1eijGkraPP1B2cb7NX6s6BCRgn62', 'YUKUTIKT@GMAIL.COM', 'media/persona/default.png', 0, '2021-11-30 09:14:52', '2022-01-23 12:41:50', '2023-02-01 11:55:43'),
(26, 26, 4, 'DANY', '$2y$10$zu0cSxEJrZqG2WnBW7hw/.h7uO/B5ib6I58hYUHjFbBhgMry4puu.', 'dany@gmail.com', 'media/persona/default.png', 1, '2021-11-30 09:18:45', '2022-12-17 13:05:36', '2021-12-13 09:41:27'),
(27, 27, 3, 'PIER', '$2y$10$PW70TwrHW8cUKUye3iYKUe8p5SSyI61NEA17W3pC2nTOuDKXoFKYW', 'LAULTIMACONCHITA@GMAIL.COM', 'media/persona/default.png', 1, '2021-11-30 09:20:33', '2023-02-06 16:04:53', '2021-12-01 16:20:57'),
(28, 28, 6, 'SEGUNDO', '$2y$10$Vza.Io01xrdXOpAgu4XYN.unlewFxWhFtTvfqbcB0HAnlwaBWgqfe', 'NAPCHIERIKA2002@GMAIL.COM', 'media/persona/default.png', 0, '2021-11-30 09:22:44', '2021-11-30 09:22:44', '2023-02-07 11:10:35'),
(29, 29, 4, 'RICARDO', '$2y$10$eM6DqjdKLObMpGT0FrCn3OOfiTK7Q8lZmiuzbAeOtH10GpX6BiCge', 'RICARDOSHARETHVIENAVELA29@GMAIL.COM', 'media/persona/default.png', 1, '2021-11-30 09:27:46', '2023-03-18 14:41:41', '2023-03-01 12:03:37'),
(30, 30, 6, 'MAIKA', '$2y$10$//Y4JfDg4GZwY8GyW7TC7uLSn69a9s9kydeD/GvClwzb1bReAxEB.', '', 'media/persona/default.png', 1, '2021-11-30 09:33:42', '2021-11-30 09:33:42', '2021-11-30 09:33:42'),
(31, 31, 4, 'PROFETA', '$2y$10$a7pX9y/AJ3tupf1ZR/tHFOI7MHwSW31jjsP04TW86YMViZ1uyG7hu', 'KJMUTMJUIII@GMAIL.COM', 'media/persona/default.png', 0, '2021-12-01 16:14:13', '2021-12-15 14:11:07', '2023-02-01 11:57:25'),
(32, 32, 4, 'branpiers', '$2y$10$X90lpytAAJoVcNbeo5DOHOO.PR/jSBnc2kab12g.T8eqbN8On8wyG', 'JTJTH9@GMAIL.COM', 'media/persona/default.png', 0, '2022-01-26 09:29:18', '2022-01-27 11:27:20', '2023-02-01 11:57:07'),
(33, 33, 4, 'luciat', '$2y$10$vdFiK6qw4d8H1I5mwp/ESeBP4TRGDUtjTN7q066uYpYwwH87ltTTm', 'llucia@gmail.com', 'media/persona/default.png', 0, '2022-01-26 09:36:57', '2022-03-24 20:36:49', '2023-02-01 11:57:40'),
(34, 34, 4, 'FLAVIO', '$2y$10$VJ2MUOTBtmhsytEtz/4.Z.90e/UXlAYs.2zZ1BXR0/ytKG.DxuKK2', 'flavio@gmail.com', 'media/persona/default.png', 1, '2022-02-19 11:17:16', '2023-03-19 13:09:26', '2022-02-19 11:17:57'),
(35, 35, 4, 'MATEO', '$2y$10$R2yofb1aG/011k2VNC6gzezh0LuStpzvh4X7205GInrrHJD8/ruP6', 'MATEO@GMIAL.COM', 'media/persona/default.png', 1, '2022-02-23 10:10:23', '2022-05-17 16:54:45', '2022-02-23 10:12:36'),
(36, 36, 4, 'BABY', '$2y$10$Vw9uhR2DmgBj/UvPFzxaxuvu7RmgZslBWeyFcCsrGcv4gpk/0az6G', 'BABY16071990@HOTMAIL.COM', 'media/persona/default.png', 0, '2022-11-30 09:24:36', '2022-12-19 12:44:34', '2023-02-01 11:58:03'),
(37, 37, 4, 'ERIKA', '$2y$10$UGXmPytg8qdS6EweKZ5UiuNfXzzxhxW11BZNQWmRsFu0GCfBFPQsi', 'NAPUCHIERIKA2002@GMAIL.COM', 'media/persona/default.png', 1, '2023-02-06 11:49:34', '2023-03-01 12:07:00', '2023-02-07 11:08:19'),
(38, 38, 5, 'PIER MARTIN', '$2y$10$OcdhVdoBQ3ViJ7GLAMyEBeHcYZJ7M7j6QRmi2hriWMFPdjCgQoh9a', 'PEKECUMARI.91@GMAIL.COM', 'media/usuarios/38_07022023123120.jpg', 1, '2023-02-07 10:32:35', '2023-03-24 09:19:15', '2023-02-07 12:31:20'),
(39, 39, 6, 'JANET', '$2y$10$FjIp8tmP/vuxHR1K.OCd0OFxbjOCRv7DIXXFRs9/m57Qo4H.eH53W', '', 'media/persona/default.png', 1, '2023-02-24 17:08:51', '2023-02-24 17:08:51', '2023-02-24 17:08:51'),
(40, 40, 6, 'RICO', '$2y$10$naNGSvo.ckv6JdgcUqeqGeABGC/QwQjzgSUGh/pK4CA6Dso3jHOOm', '', 'media/persona/default.png', 1, '2023-02-24 17:11:39', '2023-02-24 17:11:39', '2023-02-24 17:11:39'),
(41, 41, 6, 'IRIS', '$2y$10$uygLRo3g6/MPgns21c/l2uEst1G5dsoDMEXsF8Yqvcvf4PGH1pUuu', 'BHDXF', 'media/persona/default.png', 1, '2023-02-25 18:49:08', '2023-02-25 18:49:08', '2023-02-25 18:49:08'),
(42, 42, 4, 'SILERI', '$2y$10$nQ.Dix6wvm6ujtvuDXbOmO6blgyB8cVi3NAgNF3n4a/R0D4S57Vaq', 'JAELANEVELA@GMAIL.COM', 'media/persona/default.png', 1, '2023-03-01 11:39:27', '2023-03-23 11:30:07', '2023-03-01 11:39:27'),
(43, 43, 6, 'EDSON', '$2y$10$mErWUZVWx8o1xYQHMOshiexIkOkMRZYkB6rb4.4Vux0R4WI3JAd36', 'NAPUCHRIKA2002@GMAIL.COM', 'media/persona/default.png', 1, '2023-03-23 12:50:56', '2023-03-23 12:50:56', '2023-03-23 12:50:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_negocio`
--

CREATE TABLE `usuarios_negocio` (
  `id_usuario_negocio` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `usuario_negocio_fecha` datetime NOT NULL,
  `usuario_negocio_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_negocio`
--

INSERT INTO `usuarios_negocio` (`id_usuario_negocio`, `id_negocio`, `id_usuario`, `usuario_negocio_fecha`, `usuario_negocio_estado`) VALUES
(3, 3, 1, '2021-03-24 14:24:32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_sucursal`
--

CREATE TABLE `usuarios_sucursal` (
  `id_usuario_sucursal` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `usuario_sucursal_fecha` datetime NOT NULL,
  `usuario_sucursal_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_sucursal`
--

INSERT INTO `usuarios_sucursal` (`id_usuario_sucursal`, `id_sucursal`, `id_usuario`, `id_rol`, `usuario_sucursal_fecha`, `usuario_sucursal_estado`) VALUES
(3, 5, 1, 2, '2021-03-24 14:24:09', 1),
(4, 5, 15, 4, '2021-11-29 13:39:37', 1),
(5, 5, 6, 5, '2021-11-29 13:39:50', 1),
(6, 5, 14, 4, '2021-11-29 13:40:02', 1),
(7, 5, 10, 3, '2021-11-29 13:40:15', 1),
(8, 5, 17, 4, '2021-11-29 13:40:37', 1),
(9, 5, 4, 4, '2021-11-29 13:50:10', 1),
(10, 5, 8, 5, '2021-11-29 13:50:40', 1),
(11, 5, 7, 4, '2021-11-29 13:51:08', 1),
(12, 5, 20, 4, '2021-11-29 13:51:36', 1),
(13, 5, 18, 4, '2021-11-29 13:51:58', 1),
(14, 5, 16, 4, '2021-11-29 13:52:44', 1),
(15, 5, 5, 6, '2021-11-29 13:53:10', 1),
(16, 5, 13, 6, '2021-11-29 13:53:21', 1),
(17, 5, 12, 6, '2021-11-29 13:53:32', 1),
(18, 5, 21, 5, '2021-11-29 20:07:25', 1),
(19, 5, 22, 6, '2021-11-29 20:16:28', 1),
(20, 5, 23, 7, '2021-11-29 20:19:31', 1),
(21, 5, 24, 4, '2021-11-29 20:21:05', 1),
(22, 5, 25, 4, '2021-11-30 09:15:42', 1),
(23, 5, 26, 4, '2021-11-30 09:19:11', 1),
(24, 5, 27, 7, '2021-11-30 09:20:59', 1),
(25, 5, 28, 6, '2021-11-30 09:24:31', 1),
(26, 5, 29, 4, '2021-11-30 09:28:01', 1),
(27, 5, 30, 6, '2021-11-30 09:34:03', 1),
(28, 5, 31, 4, '2021-12-01 16:14:58', 1),
(29, 5, 32, 4, '2022-01-26 09:32:10', 1),
(30, 5, 33, 4, '2022-01-26 09:37:28', 1),
(31, 5, 34, 4, '2022-02-19 11:23:54', 1),
(32, 5, 35, 4, '2022-02-23 10:11:55', 1),
(33, 5, 36, 4, '2022-11-30 09:28:30', 1),
(34, 5, 37, 4, '2023-02-08 11:40:23', 1),
(35, 5, 42, 4, '2023-03-01 11:51:40', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_caja_numero` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT '1',
  `id_usuario` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL DEFAULT '3',
  `id_moneda` int(11) NOT NULL DEFAULT '1',
  `venta_condicion_resumen` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Registro, 2-Actualizar, 3-baja',
  `venta_tipo_envio` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1-directo, 2-resumen diario',
  `venta_direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_tipo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `venta_serie` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_correlativo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `venta_descuento_global` decimal(10,2) DEFAULT '0.00',
  `venta_totalgratuita` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_totalexonerada` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_totalinafecta` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_totalgravada` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_totaligv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_incluye_igv` tinyint(2) NOT NULL DEFAULT '1',
  `venta_totaldescuento` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_icbper` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_pago_cliente` decimal(10,2) DEFAULT NULL,
  `venta_vuelto` decimal(10,2) DEFAULT NULL,
  `venta_fecha` datetime NOT NULL,
  `venta_observacion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_documento_modificar` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serie_modificar` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correlativo_modificar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_codigo_motivo_nota` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_estado_sunat` tinyint(4) NOT NULL DEFAULT '0',
  `venta_fecha_envio` datetime DEFAULT NULL,
  `venta_rutaXML` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_rutaCDR` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_respuesta_sunat` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_fecha_de_baja` date DEFAULT NULL,
  `anulado_sunat` tinyint(4) NOT NULL DEFAULT '0',
  `venta_cancelar` tinyint(1) NOT NULL DEFAULT '1',
  `venta_seriecorrelativo_notaventa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '	Aqui se llena cuando se edita una nota de venta',
  `venta_estado_nota_venta` tinyint(2) DEFAULT '1',
  `venta_usuario_eli` int(11) DEFAULT NULL,
  `venta_motivo_eli` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venta_fecha_eli` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_caja_numero`, `id_empresa`, `id_usuario`, `id_mesa`, `id_cliente`, `id_tipo_pago`, `id_moneda`, `venta_condicion_resumen`, `venta_tipo_envio`, `venta_direccion`, `venta_tipo`, `venta_serie`, `venta_correlativo`, `venta_descuento_global`, `venta_totalgratuita`, `venta_totalexonerada`, `venta_totalinafecta`, `venta_totalgravada`, `venta_totaligv`, `venta_incluye_igv`, `venta_totaldescuento`, `venta_icbper`, `venta_total`, `venta_pago_cliente`, `venta_vuelto`, `venta_fecha`, `venta_observacion`, `tipo_documento_modificar`, `serie_modificar`, `correlativo_modificar`, `venta_codigo_motivo_nota`, `venta_estado_sunat`, `venta_fecha_envio`, `venta_rutaXML`, `venta_rutaCDR`, `venta_respuesta_sunat`, `venta_fecha_de_baja`, `anulado_sunat`, `venta_cancelar`, `venta_seriecorrelativo_notaventa`, `venta_estado_nota_venta`, `venta_usuario_eli`, `venta_motivo_eli`, `venta_fecha_eli`) VALUES
(1, 1, 1, 38, 6, 617, 3, 1, 1, 1, NULL, '01', 'FFF1', '1', '10.00', '0.00', '22.50', '0.00', '0.00', '0.00', 1, '2.50', '0.00', '22.50', '0.00', '0.00', '2023-03-23 11:13:34', NULL, '', NULL, '', '0', 1, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 2, 'PRUEBA DE LA NUEVA RAZON SOCIAL', '2023-03-23 11:51:49'),
(2, 1, 1, 38, 7, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '1', '0.00', '0.00', '46.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '46.00', '0.00', '0.00', '2023-03-23 12:12:47', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(3, 1, 1, 38, 26, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '2', '0.00', '0.00', '106.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '106.00', '0.00', '0.00', '2023-03-23 12:27:43', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(4, 1, 1, 38, 26, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '3', '0.00', '0.00', '159.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '159.00', '0.00', '0.00', '2023-03-23 13:10:48', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(5, 1, 1, 38, 59, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '4', '0.00', '0.00', '149.40', '0.00', '0.00', '0.00', 1, '0.00', '1.00', '150.40', '0.00', '0.00', '2023-03-23 13:12:09', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(6, 1, 1, 38, 22, 3, 3, 1, 3, 2, NULL, '03', 'BBB1', '5', '0.00', '0.00', '94.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '94.00', '0.00', '0.00', '2023-03-23 13:27:38', NULL, '', NULL, '', '0', 0, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 2, 'SE ANULO PORQUE EL CLIENTE DIJO DESPUES  QUE QUERIA BOLETA CON DNI (CAJA:MARIA JOSE), SE CAMBIO POR LA BOLETA N° BBB1-6', '2023-03-23 13:36:44'),
(7, 1, 1, 38, 16, 78, 3, 1, 1, 2, NULL, '03', 'BBB1', '6', '0.00', '0.00', '94.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '94.00', '0.00', '0.00', '2023-03-23 13:32:15', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(8, 1, 1, 38, 7, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '7', '0.00', '0.00', '87.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '87.00', '0.00', '0.00', '2023-03-23 13:49:51', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(9, 1, 1, 38, 34, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '8', '0.00', '0.00', '59.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '59.00', '0.00', '0.00', '2023-03-23 14:16:37', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(10, 1, 1, 38, 28, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '9', '0.00', '0.00', '79.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '79.00', '0.00', '0.00', '2023-03-23 14:27:34', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(11, 1, 1, 38, 22, 3, 3, 1, 1, 2, NULL, '03', 'BBB1', '10', '0.00', '0.00', '88.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '88.00', '0.00', '0.00', '2023-03-23 14:32:32', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(12, 1, 1, 38, 26, 3, 1, 1, 1, 2, NULL, '03', 'BBB1', '11', '0.00', '0.00', '104.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '104.00', '0.00', '0.00', '2023-03-23 14:35:53', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(13, 1, 1, 38, 8, 3, 1, 1, 1, 2, NULL, '03', 'BBB1', '12', '0.00', '0.00', '122.20', '0.00', '0.00', '0.00', 1, '0.00', '0.50', '122.70', '0.00', '0.00', '2023-03-23 14:42:08', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(14, 1, 1, 38, 44, 618, 3, 1, 1, 1, NULL, '01', 'FFF1', '2', '0.00', '0.00', '87.00', '0.00', '0.00', '0.00', 1, '0.00', '0.00', '87.00', '0.00', '0.00', '2023-03-23 15:23:13', NULL, '', NULL, '', '0', 1, '2023-03-23 16:50:34', 'libs/ApiFacturacion/xml/20608482050-01-FFF1-2.XML', 'libs/ApiFacturacion/cdr/R-20608482050-01-FFF1-2.XML', 'La Factura numero FFF1-2, ha sido aceptado', NULL, 0, 1, NULL, 1, NULL, NULL, NULL),
(15, 1, 1, 38, 26, 3, 1, 1, 1, 2, NULL, '03', 'BBB1', '13', '0.00', '0.00', '129.20', '0.00', '0.00', '0.00', 1, '0.00', '0.50', '129.70', '0.00', '0.00', '2023-03-23 15:24:04', NULL, '', NULL, '', '0', 1, '2023-03-23 16:51:26', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_cuotas`
--

CREATE TABLE `ventas_cuotas` (
  `id_ventas_cuotas` int(11) NOT NULL,
  `id_ventas` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `venta_cuota_numero` varchar(30) NOT NULL,
  `venta_cuota_importe` decimal(10,2) NOT NULL,
  `venta_cuota_fecha` date NOT NULL,
  `venta_cuota_estado` tinyint(4) NOT NULL DEFAULT '1',
  `venta_cuota_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `id_venta_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_comanda_detalle` int(11) NOT NULL,
  `venta_detalle_valor_unitario` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_detalle_precio_unitario` decimal(10,2) NOT NULL,
  `venta_detalle_nombre_producto` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `venta_detalle_cantidad` double NOT NULL,
  `venta_detalle_total_igv` decimal(10,2) NOT NULL,
  `venta_detalle_porcentaje_igv` decimal(10,2) NOT NULL DEFAULT '0.18',
  `venta_detalle_total_icbper` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_detalle_valor_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_detalle_importe_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_producto_precio` int(11) DEFAULT NULL,
  `venta_precio_antiguo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_total_antiguo` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventas_detalle`
--

INSERT INTO `ventas_detalle` (`id_venta_detalle`, `id_venta`, `id_comanda_detalle`, `venta_detalle_valor_unitario`, `venta_detalle_precio_unitario`, `venta_detalle_nombre_producto`, `venta_detalle_cantidad`, `venta_detalle_total_igv`, `venta_detalle_porcentaje_igv`, `venta_detalle_total_icbper`, `venta_detalle_valor_total`, `venta_detalle_importe_total`, `id_producto_precio`, `venta_precio_antiguo`, `venta_total_antiguo`) VALUES
(1, 1, 1, '22.50', '22.50', 'Ensalada Mixta', 1, '0.00', '18.00', '0.00', '22.50', '22.50', NULL, '25.00', '25.00'),
(2, 2, 4, '18.00', '18.00', 'Leche Conchita Clásica ', 2, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '18.00', '36.00'),
(3, 2, 5, '10.00', '10.00', 'Inca Kola de 1 1/2  lt', 1, '0.00', '18.00', '0.00', '10.00', '10.00', NULL, '10.00', '10.00'),
(4, 3, 2, '10.00', '10.00', 'Cristal 650 ml', 1, '0.00', '18.00', '0.00', '10.00', '10.00', NULL, '10.00', '10.00'),
(5, 3, 3, '38.00', '38.00', 'Cebiche Mixto Conchita', 1, '0.00', '18.00', '0.00', '38.00', '38.00', NULL, '38.00', '38.00'),
(6, 3, 6, '36.00', '36.00', 'Chicharrón de pollo', 1, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '36.00', '36.00'),
(7, 3, 7, '10.00', '10.00', 'Cristal 650 ml', 1, '0.00', '18.00', '0.00', '10.00', '10.00', NULL, '10.00', '10.00'),
(8, 3, 8, '4.00', '4.00', 'Fanta', 1, '0.00', '18.00', '0.00', '4.00', '4.00', NULL, '4.00', '4.00'),
(9, 3, 9, '4.00', '4.00', 'Agua San Luis S/G', 1, '0.00', '18.00', '0.00', '4.00', '4.00', NULL, '4.00', '4.00'),
(10, 3, 10, '4.00', '4.00', 'Agua San Luis S/G', 1, '0.00', '18.00', '0.00', '4.00', '4.00', NULL, '4.00', '4.00'),
(11, 4, 11, '28.00', '28.00', 'Cebiche Conchita Clásica', 4, '0.00', '18.00', '0.00', '112.00', '112.00', NULL, '28.00', '112.00'),
(12, 4, 12, '15.00', '15.00', 'COCA COLA 2.25 LT', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(13, 4, 13, '4.00', '4.00', 'Agua San Luis S/G', 1, '0.00', '18.00', '0.00', '4.00', '4.00', NULL, '4.00', '4.00'),
(14, 4, 17, '28.00', '28.00', 'Cebiche Conchita Clásica', 1, '0.00', '18.00', '0.00', '28.00', '28.00', NULL, '28.00', '28.00'),
(15, 5, 21, '28.00', '28.00', 'Cebiche Conchita Clásica', 1, '0.00', '18.00', '0.00', '28.00', '28.00', NULL, '28.00', '28.00'),
(16, 5, 22, '38.00', '38.00', 'Sudado de Doncella', 1, '0.00', '18.00', '0.00', '38.00', '38.00', NULL, '38.00', '38.00'),
(17, 5, 23, '37.00', '37.00', 'Combinado Chicharrón de Pescado + Arroz con Mariscos', 1, '0.00', '18.00', '0.00', '37.00', '37.00', NULL, '37.00', '37.00'),
(18, 5, 24, '38.00', '38.00', 'Arroz con MAriscos', 1, '0.00', '18.00', '0.00', '38.00', '38.00', NULL, '38.00', '38.00'),
(19, 5, 25, '2.00', '2.00', 'PROMOLA', 4, '0.00', '18.00', '0.00', '8.00', '8.00', NULL, '2.00', '8.00'),
(20, 5, 26, '0.20', '0.20', 'Bolsa Plastica', 2, '0.00', '18.00', '0.00', '0.40', '0.40', NULL, '0.20', '0.40'),
(21, 6, 14, '28.00', '28.00', 'Cebiche Conchita Clásica', 2, '0.00', '18.00', '0.00', '56.00', '56.00', NULL, '28.00', '56.00'),
(22, 6, 15, '23.00', '23.00', 'Leche Conchita Mixto', 1, '0.00', '18.00', '0.00', '23.00', '23.00', NULL, '23.00', '23.00'),
(23, 6, 16, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(24, 7, 30, '28.00', '28.00', 'Cebiche Conchita Clásica', 2, '0.00', '18.00', '0.00', '56.00', '56.00', NULL, '28.00', '56.00'),
(25, 7, 31, '23.00', '23.00', 'Leche Conchita Mixto', 1, '0.00', '18.00', '0.00', '23.00', '23.00', NULL, '23.00', '23.00'),
(26, 7, 32, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(27, 8, 18, '42.00', '42.00', 'Tacu tacu de Lomo saltado', 1, '0.00', '18.00', '0.00', '42.00', '42.00', NULL, '42.00', '42.00'),
(28, 8, 19, '37.00', '37.00', 'Combinado Chicharrón de Pollo + Chaufa con Mariscos', 1, '0.00', '18.00', '0.00', '37.00', '37.00', NULL, '37.00', '37.00'),
(29, 8, 20, '8.00', '8.00', 'Inca Kola 1 Lt', 1, '0.00', '18.00', '0.00', '8.00', '8.00', NULL, '8.00', '8.00'),
(30, 9, 50, '23.00', '23.00', 'Leche Conchita Mixto', 1, '0.00', '18.00', '0.00', '23.00', '23.00', NULL, '23.00', '23.00'),
(31, 9, 51, '18.00', '18.00', 'Leche Conchita Clásica ', 2, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '18.00', '36.00'),
(32, 10, 27, '18.00', '18.00', 'Leche Conchita Clásica ', 1, '0.00', '18.00', '0.00', '18.00', '18.00', NULL, '18.00', '18.00'),
(33, 10, 28, '23.00', '23.00', 'Leche Conchita Mixto', 1, '0.00', '18.00', '0.00', '23.00', '23.00', NULL, '23.00', '23.00'),
(34, 10, 29, '6.00', '6.00', 'Vaso de refresco Maracuya', 1, '0.00', '18.00', '0.00', '6.00', '6.00', NULL, '6.00', '6.00'),
(35, 10, 46, '10.00', '10.00', 'Corona 355 ml', 2, '0.00', '18.00', '0.00', '20.00', '20.00', NULL, '10.00', '20.00'),
(36, 10, 47, '6.00', '6.00', 'Trigo 305ml', 2, '0.00', '18.00', '0.00', '12.00', '12.00', NULL, '6.00', '12.00'),
(37, 11, 33, '33.00', '33.00', 'Cebiche Natural', 1, '0.00', '18.00', '0.00', '33.00', '33.00', NULL, '33.00', '33.00'),
(38, 11, 42, '40.00', '40.00', 'Sudado de Tucunaré', 1, '0.00', '18.00', '0.00', '40.00', '40.00', NULL, '40.00', '40.00'),
(39, 11, 43, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(40, 12, 34, '18.00', '18.00', 'Leche Conchita Clásica ', 1, '0.00', '18.00', '0.00', '18.00', '18.00', NULL, '18.00', '18.00'),
(41, 12, 35, '33.00', '33.00', 'Cebiche Conchita Jumbo', 1, '0.00', '18.00', '0.00', '33.00', '33.00', NULL, '33.00', '33.00'),
(42, 12, 36, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(43, 12, 45, '38.00', '38.00', 'Cebiche Mixto Conchita', 1, '0.00', '18.00', '0.00', '38.00', '38.00', NULL, '38.00', '38.00'),
(44, 13, 37, '38.00', '38.00', 'Cebiche Mixto Conchita', 1, '0.00', '18.00', '0.00', '38.00', '38.00', NULL, '38.00', '38.00'),
(45, 13, 38, '28.00', '28.00', 'Cebiche Conchita Clásica', 1, '0.00', '18.00', '0.00', '28.00', '28.00', NULL, '28.00', '28.00'),
(46, 13, 39, '36.00', '36.00', 'Chicharrón de pollo', 1, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '36.00', '36.00'),
(47, 13, 40, '4.00', '4.00', 'Agua San Luis S/G', 1, '0.00', '18.00', '0.00', '4.00', '4.00', NULL, '4.00', '4.00'),
(48, 13, 41, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(49, 13, 52, '1.00', '1.00', 'PROMOLITA', 1, '0.00', '18.00', '0.00', '1.00', '1.00', NULL, '1.00', '1.00'),
(50, 13, 53, '0.20', '0.20', 'Bolsa Plastica', 1, '0.00', '18.00', '0.00', '0.20', '0.20', NULL, '0.20', '0.20'),
(51, 14, 44, '36.00', '36.00', 'Combinado Cebiche + Chicharrón de Pescado', 1, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '36.00', '36.00'),
(52, 14, 48, '36.00', '36.00', 'Pescado a la Plancha', 1, '0.00', '18.00', '0.00', '36.00', '36.00', NULL, '36.00', '36.00'),
(53, 14, 49, '15.00', '15.00', 'Jarra de Refresco Chicha', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(54, 15, 54, '20.00', '20.00', 'Leche Natural Clásica', 1, '0.00', '18.00', '0.00', '20.00', '20.00', NULL, '20.00', '20.00'),
(55, 15, 55, '36.00', '36.00', 'Combinado Cebiche + chicharrón de Pollo', 2, '0.00', '18.00', '0.00', '72.00', '72.00', NULL, '36.00', '72.00'),
(56, 15, 56, '15.00', '15.00', 'Jarra de Refresco Maracuya', 1, '0.00', '18.00', '0.00', '15.00', '15.00', NULL, '15.00', '15.00'),
(57, 15, 57, '10.00', '10.00', 'Pilsen 630 ml', 1, '0.00', '18.00', '0.00', '10.00', '10.00', NULL, '10.00', '10.00'),
(58, 15, 58, '10.00', '10.00', 'Pilsen 630 ml', 1, '0.00', '18.00', '0.00', '10.00', '10.00', NULL, '10.00', '10.00'),
(59, 15, 59, '2.00', '2.00', 'PROMOLA', 1, '0.00', '18.00', '0.00', '2.00', '2.00', NULL, '2.00', '2.00'),
(60, 15, 60, '0.20', '0.20', 'Bolsa Plastica', 1, '0.00', '18.00', '0.00', '0.20', '0.20', NULL, '0.20', '0.20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle_pagos`
--

CREATE TABLE `ventas_detalle_pagos` (
  `id_venta_detalle_pago` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `venta_detalle_pago_monto` decimal(10,2) NOT NULL DEFAULT '0.00',
  `venta_detalle_pago_estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas_detalle_pagos`
--

INSERT INTO `ventas_detalle_pagos` (`id_venta_detalle_pago`, `id_venta`, `id_tipo_pago`, `venta_detalle_pago_monto`, `venta_detalle_pago_estado`) VALUES
(1, 1, 3, '22.50', 1),
(2, 2, 3, '46.00', 1),
(3, 3, 3, '106.00', 1),
(4, 4, 3, '159.00', 1),
(5, 5, 3, '150.40', 1),
(6, 6, 3, '94.00', 1),
(7, 7, 3, '94.00', 1),
(8, 8, 3, '87.00', 1),
(9, 9, 3, '59.00', 1),
(10, 10, 3, '79.00', 1),
(11, 11, 3, '88.00', 1),
(12, 12, 1, '104.00', 1),
(13, 13, 1, '122.70', 1),
(14, 14, 3, '87.00', 1),
(15, 15, 1, '129.70', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes_salida`
--
ALTER TABLE `almacenes_salida`
  ADD PRIMARY KEY (`id_almacen`),
  ADD KEY `id_negocio` (`id_negocio`),
  ADD KEY `id_sucursal` (`id_recurso_sede`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_persona_turno` (`id_persona_turno`);

--
-- Indices de la tabla `asistencia_fecha`
--
ALTER TABLE `asistencia_fecha`
  ADD PRIMARY KEY (`id_asistencia_fecha`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `caja_numero`
--
ALTER TABLE `caja_numero`
  ADD PRIMARY KEY (`id_caja_numero`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categorias_negocio`
--
ALTER TABLE `categorias_negocio`
  ADD PRIMARY KEY (`id_categoria_negocio`),
  ADD KEY `id_negocio` (`id_negocio`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`id_comanda`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `comanda_detalle`
--
ALTER TABLE `comanda_detalle`
  ADD PRIMARY KEY (`id_comanda_detalle`),
  ADD KEY `id_comanda` (`id_comanda`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `conversiones`
--
ALTER TABLE `conversiones`
  ADD PRIMARY KEY (`id_conversion`),
  ADD KEY `id_recurso_sede` (`id_recurso_sede`),
  ADD KEY `conversion_unidad_medida` (`conversion_unidad_medida`);

--
-- Indices de la tabla `correlativos`
--
ALTER TABLE `correlativos`
  ADD PRIMARY KEY (`id_correlativo`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_detalle_compra`),
  ADD KEY `id_orden_compra` (`id_orden_compra`),
  ADD KEY `id_recurso_sede` (`id_recurso_sede`);

--
-- Indices de la tabla `detalle_recetas`
--
ALTER TABLE `detalle_recetas`
  ADD PRIMARY KEY (`id_detalle_receta`),
  ADD KEY `id_receta` (`id_receta`),
  ADD KEY `id_recursos_sede` (`id_recursos_sede`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `envio_resumen`
--
ALTER TABLE `envio_resumen`
  ADD PRIMARY KEY (`id_envio_resumen`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `envio_resumen_detalle`
--
ALTER TABLE `envio_resumen_detalle`
  ADD PRIMARY KEY (`id_envio_resumen_detalle`),
  ADD KEY `id_envio_resumen` (`id_envio_resumen`);

--
-- Indices de la tabla `feriados`
--
ALTER TABLE `feriados`
  ADD PRIMARY KEY (`id_feriado`);

--
-- Indices de la tabla `gastos_personal`
--
ALTER TABLE `gastos_personal`
  ADD PRIMARY KEY (`id_gasto_personal`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `igv`
--
ALTER TABLE `igv`
  ADD PRIMARY KEY (`id_igv`);

--
-- Indices de la tabla `memorandum`
--
ALTER TABLE `memorandum`
  ADD PRIMARY KEY (`id_memorandum`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `mesa_log`
--
ALTER TABLE `mesa_log`
  ADD PRIMARY KEY (`id_mesa_log`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id_negocio`),
  ADD KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `nota_venta`
--
ALTER TABLE `nota_venta`
  ADD PRIMARY KEY (`id_nota_venta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `id_moneda` (`id_moneda`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `nota_venta_detalle`
--
ALTER TABLE `nota_venta_detalle`
  ADD PRIMARY KEY (`id_nota_venta_detalle`),
  ADD KEY `id_nota_venta` (`id_nota_venta`),
  ADD KEY `id_comanda_detalle` (`id_comanda_detalle`);

--
-- Indices de la tabla `obligacion_pagar`
--
ALTER TABLE `obligacion_pagar`
  ADD PRIMARY KEY (`id_obligacion`);

--
-- Indices de la tabla `obligacion_personal`
--
ALTER TABLE `obligacion_personal`
  ADD PRIMARY KEY (`id_obligacionper`),
  ADD KEY `id_obligacion` (`id_obligacion`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id_opcion`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`id_orden_compra`),
  ADD KEY `id_solicitante` (`id_solicitante`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `pedidos_gratis`
--
ALTER TABLE `pedidos_gratis`
  ADD PRIMARY KEY (`id_pedido_gratis`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `pedidos_gratis_detalles`
--
ALTER TABLE `pedidos_gratis_detalles`
  ADD PRIMARY KEY (`id_pedido_gratis_detalle`),
  ADD KEY `id_pedido_gratis` (`id_pedido_gratis`),
  ADD KEY `id_comanda_detalle` (`id_comanda_detalle`);

--
-- Indices de la tabla `periodo_laboral`
--
ALTER TABLE `periodo_laboral`
  ADD PRIMARY KEY (`id_periodo`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_contrato` (`id_contrato`),
  ADD KEY `id_cargo` (`id_cargo`),
  ADD KEY `id_departamento` (`id_departamento`),
  ADD KEY `id_sede` (`id_sede`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_opcion` (`id_opcion`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `persona_turno`
--
ALTER TABLE `persona_turno`
  ADD PRIMARY KEY (`id_persona_turno`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_grupo` (`id_grupo`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `producto_familia`
--
ALTER TABLE `producto_familia`
  ADD PRIMARY KEY (`id_producto_familia`);

--
-- Indices de la tabla `producto_precio`
--
ALTER TABLE `producto_precio`
  ADD PRIMARY KEY (`id_producto_precio`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_unidad_medida` (`id_unidad_medida`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `id_negocio` (`id_negocio`),
  ADD KEY `id_tipodocumento` (`id_tipodocumento`);

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD PRIMARY KEY (`id_puntos`);

--
-- Indices de la tabla `puntos_cliente`
--
ALTER TABLE `puntos_cliente`
  ADD PRIMARY KEY (`id_punto_cliente`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recurso`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `recursos_sede`
--
ALTER TABLE `recursos_sede`
  ADD PRIMARY KEY (`id_recurso_sede`),
  ADD KEY `id_medida` (`id_medida`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_recurso` (`id_recurso`);

--
-- Indices de la tabla `registro_asistencias`
--
ALTER TABLE `registro_asistencias`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD PRIMARY KEY (`id_restriccion`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_opcion` (`id_opcion`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  ADD PRIMARY KEY (`id_rol_menu`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`) USING BTREE;

--
-- Indices de la tabla `sub_recetas`
--
ALTER TABLE `sub_recetas`
  ADD PRIMARY KEY (`id_sub_receta`),
  ADD KEY `id_receta` (`id_receta`),
  ADD KEY `id_receta_2` (`id_receta_2`),
  ADD KEY `id_medida` (`id_medida`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`),
  ADD KEY `id_ciudad` (`id_ciudad`),
  ADD KEY `id_negocio` (`id_negocio`);

--
-- Indices de la tabla `tipoadjuntos`
--
ALTER TABLE `tipoadjuntos`
  ADD PRIMARY KEY (`id_adjunto`);

--
-- Indices de la tabla `tipocargo`
--
ALTER TABLE `tipocargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  ADD PRIMARY KEY (`id_contrato`);

--
-- Indices de la tabla `tipodepartamento`
--
ALTER TABLE `tipodepartamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `tiposede`
--
ALTER TABLE `tiposede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `tipo_afectacion`
--
ALTER TABLE `tipo_afectacion`
  ADD PRIMARY KEY (`id_tipo_afectacion`);

--
-- Indices de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  ADD PRIMARY KEY (`id_tipodocumento`);

--
-- Indices de la tabla `tipo_ncreditos`
--
ALTER TABLE `tipo_ncreditos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_ndebitos`
--
ALTER TABLE `tipo_ndebitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id_medida`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `usuarios_negocio`
--
ALTER TABLE `usuarios_negocio`
  ADD PRIMARY KEY (`id_usuario_negocio`),
  ADD KEY `id_negocio` (`id_negocio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  ADD PRIMARY KEY (`id_usuario_sucursal`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_moneda` (`id_moneda`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `ventas_cuotas`
--
ALTER TABLE `ventas_cuotas`
  ADD PRIMARY KEY (`id_ventas_cuotas`),
  ADD KEY `id_ventas` (`id_ventas`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`id_venta_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_comanda_detalle` (`id_comanda_detalle`);

--
-- Indices de la tabla `ventas_detalle_pagos`
--
ALTER TABLE `ventas_detalle_pagos`
  ADD PRIMARY KEY (`id_venta_detalle_pago`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes_salida`
--
ALTER TABLE `almacenes_salida`
  MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de la tabla `asistencia_fecha`
--
ALTER TABLE `asistencia_fecha`
  MODIFY `id_asistencia_fecha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `caja_numero`
--
ALTER TABLE `caja_numero`
  MODIFY `id_caja_numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `categorias_negocio`
--
ALTER TABLE `categorias_negocio`
  MODIFY `id_categoria_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT de la tabla `comanda`
--
ALTER TABLE `comanda`
  MODIFY `id_comanda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `comanda_detalle`
--
ALTER TABLE `comanda_detalle`
  MODIFY `id_comanda_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `conversiones`
--
ALTER TABLE `conversiones`
  MODIFY `id_conversion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `correlativos`
--
ALTER TABLE `correlativos`
  MODIFY `id_correlativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1153;

--
-- AUTO_INCREMENT de la tabla `detalle_recetas`
--
ALTER TABLE `detalle_recetas`
  MODIFY `id_detalle_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `envio_resumen`
--
ALTER TABLE `envio_resumen`
  MODIFY `id_envio_resumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `envio_resumen_detalle`
--
ALTER TABLE `envio_resumen_detalle`
  MODIFY `id_envio_resumen_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `feriados`
--
ALTER TABLE `feriados`
  MODIFY `id_feriado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `gastos_personal`
--
ALTER TABLE `gastos_personal`
  MODIFY `id_gasto_personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `igv`
--
ALTER TABLE `igv`
  MODIFY `id_igv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `memorandum`
--
ALTER TABLE `memorandum`
  MODIFY `id_memorandum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `mesa_log`
--
ALTER TABLE `mesa_log`
  MODIFY `id_mesa_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `nota_venta`
--
ALTER TABLE `nota_venta`
  MODIFY `id_nota_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nota_venta_detalle`
--
ALTER TABLE `nota_venta_detalle`
  MODIFY `id_nota_venta_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `obligacion_pagar`
--
ALTER TABLE `obligacion_pagar`
  MODIFY `id_obligacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `obligacion_personal`
--
ALTER TABLE `obligacion_personal`
  MODIFY `id_obligacionper` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id_opcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `id_orden_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT de la tabla `pedidos_gratis`
--
ALTER TABLE `pedidos_gratis`
  MODIFY `id_pedido_gratis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_gratis_detalles`
--
ALTER TABLE `pedidos_gratis_detalles`
  MODIFY `id_pedido_gratis_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodo_laboral`
--
ALTER TABLE `periodo_laboral`
  MODIFY `id_periodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `persona_turno`
--
ALTER TABLE `persona_turno`
  MODIFY `id_persona_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT de la tabla `producto_familia`
--
ALTER TABLE `producto_familia`
  MODIFY `id_producto_familia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `producto_precio`
--
ALTER TABLE `producto_precio`
  MODIFY `id_producto_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `puntos`
--
ALTER TABLE `puntos`
  MODIFY `id_puntos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos_cliente`
--
ALTER TABLE `puntos_cliente`
  MODIFY `id_punto_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id_recurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT de la tabla `recursos_sede`
--
ALTER TABLE `recursos_sede`
  MODIFY `id_recurso_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `registro_asistencias`
--
ALTER TABLE `registro_asistencias`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  MODIFY `id_restriccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  MODIFY `id_rol_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id_serie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sub_recetas`
--
ALTER TABLE `sub_recetas`
  MODIFY `id_sub_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipoadjuntos`
--
ALTER TABLE `tipoadjuntos`
  MODIFY `id_adjunto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tipocargo`
--
ALTER TABLE `tipocargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipodepartamento`
--
ALTER TABLE `tipodepartamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tiposede`
--
ALTER TABLE `tiposede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  MODIFY `id_tipodocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_ncreditos`
--
ALTER TABLE `tipo_ncreditos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_ndebitos`
--
ALTER TABLE `tipo_ndebitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios_negocio`
--
ALTER TABLE `usuarios_negocio`
  MODIFY `id_usuario_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  MODIFY `id_usuario_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas_cuotas`
--
ALTER TABLE `ventas_cuotas`
  MODIFY `id_ventas_cuotas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  MODIFY `id_venta_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `ventas_detalle_pagos`
--
ALTER TABLE `ventas_detalle_pagos`
  MODIFY `id_venta_detalle_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacenes_salida`
--
ALTER TABLE `almacenes_salida`
  ADD CONSTRAINT `almacenes_salida_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_persona_turno`) REFERENCES `persona_turno` (`id_persona_turno`);

--
-- Filtros para la tabla `categorias_negocio`
--
ALTER TABLE `categorias_negocio`
  ADD CONSTRAINT `categorias_negocio_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`),
  ADD CONSTRAINT `categorias_negocio_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id_mesa`),
  ADD CONSTRAINT `comanda_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `comanda_detalle`
--
ALTER TABLE `comanda_detalle`
  ADD CONSTRAINT `comanda_detalle_ibfk_1` FOREIGN KEY (`id_comanda`) REFERENCES `comanda` (`id_comanda`),
  ADD CONSTRAINT `comanda_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `conversiones`
--
ALTER TABLE `conversiones`
  ADD CONSTRAINT `conversiones_ibfk_1` FOREIGN KEY (`id_recurso_sede`) REFERENCES `recursos_sede` (`id_recurso_sede`),
  ADD CONSTRAINT `conversiones_ibfk_2` FOREIGN KEY (`conversion_unidad_medida`) REFERENCES `unidad_medida` (`id_medida`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `orden_compra` (`id_orden_compra`),
  ADD CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`id_recurso_sede`) REFERENCES `recursos_sede` (`id_recurso_sede`);

--
-- Filtros para la tabla `detalle_recetas`
--
ALTER TABLE `detalle_recetas`
  ADD CONSTRAINT `detalle_recetas_ibfk_1` FOREIGN KEY (`id_recursos_sede`) REFERENCES `recursos_sede` (`id_recurso_sede`),
  ADD CONSTRAINT `detalle_recetas_ibfk_2` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `memorandum`
--
ALTER TABLE `memorandum`
  ADD CONSTRAINT `memorandum_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `mesas_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `movimientos_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `negocios`
--
ALTER TABLE `negocios`
  ADD CONSTRAINT `negocios_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `obligacion_personal`
--
ALTER TABLE `obligacion_personal`
  ADD CONSTRAINT `obligacion_personal_ibfk_1` FOREIGN KEY (`id_obligacion`) REFERENCES `obligacion_pagar` (`id_obligacion`),
  ADD CONSTRAINT `obligacion_personal_ibfk_2` FOREIGN KEY (`id_periodo`) REFERENCES `periodo_laboral` (`id_periodo`),
  ADD CONSTRAINT `obligacion_personal_ibfk_3` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menus` (`id_menu`);

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`id_solicitante`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `orden_compra_ibfk_2` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `orden_compra_ibfk_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `orden_compra_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `periodo_laboral`
--
ALTER TABLE `periodo_laboral`
  ADD CONSTRAINT `periodo_laboral_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `periodo_laboral_ibfk_2` FOREIGN KEY (`id_contrato`) REFERENCES `tipocontrato` (`id_contrato`),
  ADD CONSTRAINT `periodo_laboral_ibfk_3` FOREIGN KEY (`id_cargo`) REFERENCES `tipocargo` (`id_cargo`),
  ADD CONSTRAINT `periodo_laboral_ibfk_4` FOREIGN KEY (`id_departamento`) REFERENCES `tipodepartamento` (`id_departamento`),
  ADD CONSTRAINT `periodo_laboral_ibfk_5` FOREIGN KEY (`id_sede`) REFERENCES `tiposede` (`id_sede`),
  ADD CONSTRAINT `periodo_laboral_ibfk_6` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `persona_turno`
--
ALTER TABLE `persona_turno`
  ADD CONSTRAINT `persona_turno_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `persona_turno_ibfk_2` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `producto_precio`
--
ALTER TABLE `producto_precio`
  ADD CONSTRAINT `producto_precio_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`),
  ADD CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`id_tipodocumento`) REFERENCES `tipo_documentos` (`id_tipodocumento`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `recursos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `recursos_sede`
--
ALTER TABLE `recursos_sede`
  ADD CONSTRAINT `recursos_sede_ibfk_1` FOREIGN KEY (`id_medida`) REFERENCES `unidad_medida` (`id_medida`),
  ADD CONSTRAINT `recursos_sede_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  ADD CONSTRAINT `recursos_sede_ibfk_3` FOREIGN KEY (`id_recurso`) REFERENCES `recursos` (`id_recurso`);

--
-- Filtros para la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD CONSTRAINT `restricciones_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `restricciones_ibfk_2` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  ADD CONSTRAINT `roles_menus_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `roles_menus_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menus` (`id_menu`);

--
-- Filtros para la tabla `sub_recetas`
--
ALTER TABLE `sub_recetas`
  ADD CONSTRAINT `sub_recetas_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`),
  ADD CONSTRAINT `sub_recetas_ibfk_2` FOREIGN KEY (`id_receta_2`) REFERENCES `recetas` (`id_receta`),
  ADD CONSTRAINT `sub_recetas_ibfk_3` FOREIGN KEY (`id_medida`) REFERENCES `unidad_medida` (`id_medida`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `usuarios_negocio`
--
ALTER TABLE `usuarios_negocio`
  ADD CONSTRAINT `usuarios_negocio_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`),
  ADD CONSTRAINT `usuarios_negocio_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  ADD CONSTRAINT `usuarios_sucursal_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  ADD CONSTRAINT `usuarios_sucursal_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `usuarios_sucursal_ibfk_3` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `id_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `id_tipo_venta` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_moneda`) REFERENCES `monedas` (`id_moneda`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id_mesa`),
  ADD CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
