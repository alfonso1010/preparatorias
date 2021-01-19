-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-08-2019 a las 23:44:30
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistem35_mec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `numeroControl` varchar(255) NOT NULL,
  `curp` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `primerApellido` varchar(80) NOT NULL,
  `segundoApellido` varchar(80) NOT NULL,
  `foto` varchar(80) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `idCampus` varchar(45) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idExpedicion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`numeroControl`, `curp`, `nombre`, `primerApellido`, `segundoApellido`, `foto`, `idGenero`, `fechaNacimiento`, `idCampus`, `idCarrera`, `idExpedicion`) VALUES
('A2018MB', 'ROMV920127MDFSRV03', 'Viviana Sarahí', 'Rosas', 'Martínez', '', 250, '1992-01-27 00:00:00', '090695', 1, 1),
('A2018MD', 'AEMA961010HMCRNL08', 'Alfonso', 'Arellanes', 'Mendoza', '', 251, '1996-10-10 00:00:00', '090695', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `idAsignatura` int(11) NOT NULL,
  `claveAsignatura` varchar(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ciclo` varchar(255) NOT NULL,
  `calificacion` varchar(45) NOT NULL,
  `idObservaciones` int(11) DEFAULT '100',
  `idTipoAsignatura` varchar(255) NOT NULL,
  `creditos` varchar(45) NOT NULL,
  `numeroControl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`idAsignatura`, `claveAsignatura`, `nombre`, `ciclo`, `calificacion`, `idObservaciones`, `idTipoAsignatura`, `creditos`, `numeroControl`) VALUES
(100, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MB'),
(101, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(102, '', '', '2017-2', '10', 100, '263', '4.00', 'A2018MB'),
(103, '', '', '2017-2', '7.00', 100, '263', '4.00', 'A2018MB'),
(104, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MB'),
(105, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(106, '', '', '2017-2', '8.00', 100, '263', '3.00', 'A2018MB'),
(107, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MB'),
(108, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(109, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MB'),
(110, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(111, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MB'),
(112, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MB'),
(113, '', '', '2017-2', '7.00', 100, '263', '6.00', 'A2018MB'),
(114, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MB'),
(115, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(116, '', '', '2017-2', '10', 100, '263', '3.00', 'A2018MB'),
(117, '', '', '2017-2', '10', 100, '263', '3.00', 'A2018MB'),
(118, '', '', '2017-2', '9.00', 100, '263', '4.00', 'A2018MB'),
(119, '', '', '2017-2', '9.00', 100, '263', '4.75', 'A2018MB'),
(120, '', '', '2017-2', '7.00', 100, '263', '4.00', 'A2018MB'),
(121, '', '', '2017-2', '7.00', 100, '263', '5.00', 'A2018MB'),
(122, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MB'),
(123, '', '', '2017-2', '9.00', 100, '263', '7.00', 'A2018MB'),
(124, '', '', '2017-2', '7.00', 100, '263', '6.00', 'A2018MB'),
(125, '', '', '2017-2', '8.00', 100, '263', '5.00', 'A2018MB'),
(126, '', '', '2017-2', '9.00', 100, '263', '4.50', 'A2018MB'),
(127, '', '', '2017-2', '7.00', 100, '263', '4.30', 'A2018MB'),
(128, '', '', '2017-2', '7.00', 100, '263', '3.60', 'A2018MB'),
(129, '', '', '2017-2', '7.00', 100, '263', '5.90', 'A2018MB'),
(130, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(131, '', '', '2017-2', '9.00', 100, '263', '2.00', 'A2018MB'),
(132, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(133, '', '', '2017-2', '9.00', 100, '263', '4.00', 'A2018MB'),
(134, '', '', '2017-2', '9.00', 100, '263', '5.00', 'A2018MB'),
(135, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MB'),
(136, '', '', '2017-2', '9.00', 100, '263', '7.00', 'A2018MB'),
(137, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MB'),
(138, '', '', '2017-2', '10', 100, '263', '5.00', 'A2018MB'),
(139, '', '', '2017-2', '10', 100, '263', '4.50', 'A2018MB'),
(140, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MB'),
(141, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MB'),
(142, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MB'),
(143, '', '', '2017-2', '9.00', 100, '263', '9.00', 'A2018MB'),
(144, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MB'),
(145, '', '', '2017-2', '8.00', 100, '263', '3.00', 'A2018MB'),
(146, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MB'),
(147, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MB'),
(148, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MB'),
(149, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MB'),
(150, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MB'),
(151, '', '', '2017-2', '9.00', 100, '263', '3.00', 'A2018MB'),
(152, '', '', '2017-2', '9.00', 100, '263', '3.00', 'A2018MB'),
(153, '', '', '2017-2', '7.00', 100, '263', '7.00', 'A2018MB'),
(154, '', '', '2017-2', '8.50', 100, '263', '6.00', 'A2018MB'),
(155, '', '', '2017-2', '9.00', 100, '263', '5.00', 'A2018MB'),
(100, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MC'),
(101, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(102, '', '', '2017-2', '10', 100, '263', '4.00', 'A2018MC'),
(103, '', '', '2017-2', '7.00', 100, '263', '4.00', 'A2018MC'),
(104, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MC'),
(105, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(106, '', '', '2017-2', '8.00', 100, '263', '3.00', 'A2018MC'),
(107, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MC'),
(108, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(109, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MC'),
(110, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(111, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MC'),
(112, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MC'),
(113, '', '', '2017-2', '7.00', 100, '263', '6.00', 'A2018MC'),
(114, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MC'),
(115, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(116, '', '', '2017-2', '10', 100, '263', '3.00', 'A2018MC'),
(117, '', '', '2017-2', '10', 100, '263', '3.00', 'A2018MC'),
(118, '', '', '2017-2', '9.00', 100, '263', '4.00', 'A2018MC'),
(119, '', '', '2017-2', '9.00', 100, '263', '4.75', 'A2018MC'),
(120, '', '', '2017-2', '7.00', 100, '263', '4.00', 'A2018MC'),
(121, '', '', '2017-2', '7.00', 100, '263', '5.00', 'A2018MC'),
(122, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MC'),
(123, '', '', '2017-2', '9.00', 100, '263', '7.00', 'A2018MC'),
(124, '', '', '2017-2', '7.00', 100, '263', '6.00', 'A2018MC'),
(125, '', '', '2017-2', '8.00', 100, '263', '5.00', 'A2018MC'),
(126, '', '', '2017-2', '9.00', 100, '263', '4.50', 'A2018MC'),
(127, '', '', '2017-2', '7.00', 100, '263', '4.30', 'A2018MC'),
(128, '', '', '2017-2', '7.00', 100, '263', '3.60', 'A2018MC'),
(129, '', '', '2017-2', '7.00', 100, '263', '5.90', 'A2018MC'),
(130, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(131, '', '', '2017-2', '9.00', 100, '263', '2.00', 'A2018MC'),
(132, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(133, '', '', '2017-2', '9.00', 100, '263', '4.00', 'A2018MC'),
(134, '', '', '2017-2', '9.00', 100, '263', '5.00', 'A2018MC'),
(135, '', '', '2017-2', '9.00', 100, '263', '6.00', 'A2018MC'),
(136, '', '', '2017-2', '9.00', 100, '263', '7.00', 'A2018MC'),
(137, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MC'),
(138, '', '', '2017-2', '10', 100, '263', '5.00', 'A2018MC'),
(139, '', '', '2017-2', '10', 100, '263', '4.50', 'A2018MC'),
(140, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MC'),
(141, '', '', '2017-2', '10', 100, '263', '9.00', 'A2018MC'),
(142, '', '', '2017-2', '10', 100, '263', '6.00', 'A2018MC'),
(143, '', '', '2017-2', '9.00', 100, '263', '9.00', 'A2018MC'),
(144, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MC'),
(145, '', '', '2017-2', '8.00', 100, '263', '3.00', 'A2018MC'),
(146, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MC'),
(147, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MC'),
(148, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MC'),
(149, '', '', '2017-2', '8.00', 100, '263', '9.00', 'A2018MC'),
(150, '', '', '2017-2', '8.00', 100, '263', '6.00', 'A2018MC'),
(151, '', '', '2017-2', '9.00', 100, '263', '3.00', 'A2018MC'),
(152, '', '', '2017-2', '9.00', 100, '263', '3.00', 'A2018MC'),
(153, '', '', '2017-2', '7.00', 100, '263', '7.00', 'A2018MC'),
(154, '', '', '2017-2', '8.50', 100, '263', '6.00', 'A2018MC'),
(155, '', '', '2017-2', '9.00', 100, '263', '5.00', 'A2018MC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `numeroControlAlumno` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `asignadas` int(11) DEFAULT NULL,
  `promedio` varchar(45) DEFAULT NULL,
  `totalCreditos` varchar(45) NOT NULL,
  `creditosObtenidos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campus`
--

CREATE TABLE `campus` (
  `idCampus` varchar(45) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `idNombreInstitucion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `campus`
--

INSERT INTO `campus` (`idCampus`, `campus`, `idNombreInstitucion`) VALUES
('090695', 'Único', '20423'),
('140134', 'S/N', '20839'),
('150178', 'sur', '20015'),
('170177', 'ÚNICO', '20105'),
('idCampus', 'campus', 'idNombreInstitucion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `claveCarrera` varchar(45) NOT NULL,
  `nombreCarrera` varchar(255) NOT NULL,
  `idTipoPeriodo` varchar(45) NOT NULL,
  `clavePlan` varchar(255) NOT NULL,
  `idNivelEstudios` varchar(45) NOT NULL,
  `calificacionMinima` varchar(45) NOT NULL DEFAULT '5',
  `calificacionMaxima` varchar(45) NOT NULL DEFAULT '10',
  `calificacionMinimaAprobatoria` varchar(45) NOT NULL,
  `idCampus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `claveCarrera`, `nombreCarrera`, `idTipoPeriodo`, `clavePlan`, `idNivelEstudios`, `calificacionMinima`, `calificacionMaxima`, `calificacionMinimaAprobatoria`, `idCampus`) VALUES
(1, '741303', '', '91', '2008', '81', '5', '10.00', '7.00', '090695');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedicion`
--

CREATE TABLE `expedicion` (
  `id` int(45) NOT NULL,
  `idTipoCertificacion` varchar(45) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idLugarExpedicion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `expedicion`
--

INSERT INTO `expedicion` (`id`, `idTipoCertificacion`, `fecha`, `idLugarExpedicion`) VALUES
(1, '79', '2018-11-05 00:00:00', '15'),
(2, '80', '2018-11-05 00:00:00', '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ipes`
--

CREATE TABLE `ipes` (
  `idNombreInstitucion` varchar(45) NOT NULL,
  `idEntidadFederativa` varchar(45) NOT NULL,
  `nombreInstitucion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ipes`
--

INSERT INTO `ipes` (`idNombreInstitucion`, `idEntidadFederativa`, `nombreInstitucion`) VALUES
('20015', '15', 'UNIVERSIDAD DE NEGOCIOS ISEC'),
('20105', '15', 'CENTRO DE ESTUDIOS UNIVERSITARIOS MORELOS'),
('20423', '9', 'LA CASA DEL TEATRO'),
('20839', '15', 'TERAPIA GUESTALT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('0206ece559735ba5fa2cb2cd8f65bc77ab44212e', 'testclient', 'alfonso', '2019-06-23 13:31:19', 'userinfo cloud file node'),
('02858c46d47f57b63ba53f45cf9c367f0c1612b2', 'testclient', 'alfonso', '2019-06-21 17:35:03', 'userinfo cloud file node'),
('0375c199a690d4cede8d7cf4854f611d6f05d1c2', 'testclient', 'alfonso', '2019-07-05 20:18:10', 'userinfo cloud file node'),
('038d983dcf3135122798b45d2bc0990ce218a00a', 'testclient', 'alfonso', '2019-06-23 12:28:54', 'userinfo cloud file node'),
('041099694b020d3b69941789617a6dbc3930bdd1', 'testclient', 'alfonso', '2019-06-28 19:42:11', 'userinfo cloud file node'),
('0508620c7325b4d7ba0119170a1baf79b8cd4edb', 'testclient', 'alfonso', '2019-07-03 11:07:52', 'userinfo cloud file node'),
('0643eeac574d7092461020698ab5c09d8f512e97', 'testclient', 'alfonso', '2019-06-23 10:19:22', 'userinfo cloud file node'),
('0662bc76c390026e30ec63e2d2ced218907ff313', 'testclient', 'alfonso', '2019-07-09 09:45:51', 'userinfo cloud file node'),
('07ff4b8e4fe268d15bdfacecad5252c92683f603', 'testclient', 'alfonso', '2019-07-30 16:59:19', 'userinfo cloud file node'),
('094a7876dcefe06cbed1c67cf68b94ff21ace9c7', 'testclient', 'alfonso', '2019-06-22 20:26:03', 'userinfo cloud file node'),
('0a1edfcb3a25a50a22d999f2c970098b7003e586', 'testclient', 'alfonso', '2019-07-18 19:34:50', 'userinfo cloud file node'),
('0b63236bd8b39601b3570f110e97b8c1ea571720', 'testclient', 'alfonso', '2019-07-10 20:08:37', 'userinfo cloud file node'),
('0d34abe933255e60dc37f6f6791645380e6b2109', 'testclient', 'alfonso', '2019-06-21 17:00:24', 'userinfo cloud file node'),
('0d6027acc862730be3c6e403a1dc199b1386c3ba', 'testclient', 'alfonso', '2019-06-20 17:55:33', 'userinfo cloud file node'),
('0e2a94359f9647726c2eba82bd4c633881559fbb', 'testclient', 'alfonso', '2019-06-23 11:43:44', 'userinfo cloud file node'),
('0e74d8f0725c5409645f5f4032dddbad5eac26ee', 'testclient', 'alfonso', '2019-06-23 13:22:45', 'userinfo cloud file node'),
('0ed87d193d81043d5c6c36b7a0fb3d8160dac192', 'testclient', 'alfonso', '2019-06-21 17:13:09', 'userinfo cloud file node'),
('0f76a974fb4c661ea2f8e5d1c4656116908064ab', 'testclient', 'alfonso', '2019-06-21 17:28:46', 'userinfo cloud file node'),
('0f85d940161fa64090c8f1b9b63b9b5c1519ce3f', 'testclient', 'alfonso', '2019-06-22 20:13:32', 'userinfo cloud file node'),
('10ea7dd92933226ef9ee73e4d253c345eb7ec1ec', 'testclient', 'alfonso', '2019-06-19 19:09:31', 'userinfo cloud file node'),
('11059e0ca4c48303542ad116e14ba7c7a9d36322', 'testclient', 'alfonso', '2019-06-25 15:22:32', 'userinfo cloud file node'),
('11175b5db9a31b9dbad9c11da02c2cd6ae2cb77a', 'testclient', 'alfonso', '2019-07-07 13:14:31', 'userinfo cloud file node'),
('11d7b76a23422e75a8b475cce61bfbe439f47d3a', 'testclient', 'alfonso', '2019-07-07 17:42:10', 'userinfo cloud file node'),
('120b55afd785662f27d9c8c1277ab2ea433ccd3b', 'testclient', 'alfonso', '2019-06-25 15:52:30', 'userinfo cloud file node'),
('13d25e1f7f88c961e3b74fcae61864fc5a9d32f7', 'testclient', 'alfonso', '2019-06-19 17:45:48', 'userinfo cloud file node'),
('144009304c9d972635135c6bf09acceba4b3d3de', 'testclient', 'alfonso', '2019-06-19 20:42:02', 'userinfo cloud file node'),
('14b8e2ec69d49de59e17af23711d94f833ac39d3', 'testclient', 'alfonso', '2019-06-23 21:14:18', 'userinfo cloud file node'),
('16eaf5becdc7053cc56ea63f78d1114ebb7ad2e6', 'testclient', 'alfonso', '2019-06-23 08:24:21', 'userinfo cloud file node'),
('173390a80d4a97c894524f679b920e2c5636f7c2', 'testclient', 'alfonso', '2019-06-28 19:17:08', 'userinfo cloud file node'),
('18619466a70e055b75f65185ca530b2cac44a52b', 'testclient', 'alfonso', '2019-07-08 18:33:22', 'userinfo cloud file node'),
('19b6c550f8dfcfd31ee0bbc9f74448bbef8f7cc1', 'testclient', 'alfonso', '2019-07-18 19:59:48', 'userinfo cloud file node'),
('19e99a65fe8ce0fe3b8fcf6a160d83cb7a5eaec8', 'testclient', 'alfonso', '2019-07-03 18:49:48', 'userinfo cloud file node'),
('1b4c74882a1b4c3ee81d56ecb15b4d174f61eaf7', 'testclient', 'alfonso', '2019-06-19 16:57:28', 'userinfo cloud file node'),
('1b55e1d7264388c9bb0bb4826afea1f98bb9966c', 'testclient', 'alfonso', '2019-07-10 18:36:49', 'userinfo cloud file node'),
('1bd032d9dca8abdd072c35a4054cebcaa1d95aa0', 'testclient', 'alfonso', '2019-06-19 17:18:11', 'userinfo cloud file node'),
('1c3b0865e9c0cf5827c6997b3dc56afc43dba163', 'testclient', 'alfonso', '2019-07-30 16:36:44', 'userinfo cloud file node'),
('1c9e13572769209dfd902010ce40c1c7927a564d', 'testclient', 'alfonso', '2019-07-09 19:42:24', 'userinfo cloud file node'),
('1d67814ca5cde31e5ca2d3097074cab0c00e742f', 'testclient', 'alfonso', '2019-06-23 20:44:14', 'userinfo cloud file node'),
('2094c0c3d0b098078a3168893742008f02af5dd2', 'testclient', 'alfonso', '2019-06-26 21:11:33', 'userinfo cloud file node'),
('223c5220b7b002794fc6b923791b6b7deb9242c0', 'testclient', 'alfonso', '2019-06-23 21:57:35', 'userinfo cloud file node'),
('225daea60b5e1dd87995ba794367612b9db0be02', 'testclient', 'alfonso', '2019-06-24 15:57:16', 'userinfo cloud file node'),
('2440e7adce3998158200e570086e6b05347f4d14', 'testclient', 'alfonso', '2019-07-04 11:15:26', 'userinfo cloud file node'),
('25d28b308ab6db575331691f70a1e2e26e307ad6', 'testclient', 'alfonso', '2019-06-26 19:24:06', 'userinfo cloud file node'),
('25d5fcdda7dbb9d8f8beb3b231b909dae93381e8', 'testclient', 'alfonso', '2019-07-04 13:15:16', 'userinfo cloud file node'),
('266a31c6d9334bcc3d40500ff224b26ccd440b24', 'testclient', 'alfonso', '2019-07-08 17:45:47', 'userinfo cloud file node'),
('26edd29939f1e68fadb80cd92422e3bbf647864c', 'testclient', 'alfonso', '2019-08-15 12:00:32', 'userinfo cloud file node'),
('2763611115814c21a6cee86a652b2350ec7aace1', 'testclient', 'alfonso', '2019-06-20 16:28:08', 'userinfo cloud file node'),
('2884e5f7b02ea8be58dedb1713b01bb9e98f85b9', 'testclient', 'alfonso', '2019-07-07 19:08:13', 'userinfo cloud file node'),
('2a4e90c035ca65ffcaf2cfb39ba896e59784c12b', 'testclient', 'alfonso', '2019-07-07 19:00:58', 'userinfo cloud file node'),
('2aa177af55265803e900645ddb1328c6d74c730b', 'testclient', 'alfonso', '2019-06-28 19:28:33', 'userinfo cloud file node'),
('2ad42901dc2f4b18ec70a062e6fec8c945d439e1', 'testclient', 'alfonso', '2019-06-23 19:39:55', 'userinfo cloud file node'),
('2d28976e0a5e741632c32fa24c02b5f4e3c7632b', 'testclient', 'alfonso', '2019-06-23 10:15:58', 'userinfo cloud file node'),
('2d3260c8f139a736ba07635de24a0c153cae490d', 'testclient', 'alfonso', '2019-06-23 19:46:36', 'userinfo cloud file node'),
('2dbd1ff8f310a1c50eedcde9871a2808bdaf1842', 'testclient', 'alfonso', '2019-06-19 20:29:34', 'userinfo cloud file node'),
('2ecb53ddcbf0ed3bc7a2ede3c85abf8642ebb6b9', 'testclient', 'alfonso', '2019-07-03 11:46:01', 'userinfo cloud file node'),
('2f1c81f544546bc7607fe26470a8ee12ae503715', 'testclient', 'alfonso', '2019-07-07 18:45:03', 'userinfo cloud file node'),
('2f59f05c423394a6277e5f26a769f078486f68ef', 'testclient', 'alfonso', '2019-06-23 10:14:30', 'userinfo cloud file node'),
('2ffc64ef2d805e2b02ada25a4774aa1d480deaff', 'testclient', 'alfonso', '2019-06-28 19:40:39', 'userinfo cloud file node'),
('304d3e508953c3067bfb215a476806861cee72e5', 'testclient', 'alfonso', '2019-06-23 21:02:08', 'userinfo cloud file node'),
('31f9d512f8f4ed199e280e3e5de60f21ffa8357c', 'testclient', 'alfonso', '2019-07-05 21:33:51', 'userinfo cloud file node'),
('3292b0404f87093fd0232bc61c2fedec6a77809d', 'testclient', 'alfonso', '2019-07-30 11:37:28', 'userinfo cloud file node'),
('32f97bfa24d2046cf379bb818e14ce978e332ce6', 'testclient', 'alfonso', '2019-07-03 19:15:16', 'userinfo cloud file node'),
('3312c4a0d633194bbbb985fca1af29c7d8265481', 'testclient', 'alfonso', '2019-06-23 10:35:47', 'userinfo cloud file node'),
('33900bc233185c7e3ebdf87a26a1f43ef7e376fd', 'testclient', 'alfonso', '2019-06-20 16:26:34', 'userinfo cloud file node'),
('33bb9c5443174d83fd479a8ee276d76e6d79a6c6', 'testclient', 'alfonso', '2019-06-23 06:46:03', 'userinfo cloud file node'),
('3413109eaef82ad60745584aa026dc1d09fb708f', 'testclient', 'alfonso', '2019-06-26 20:35:59', 'userinfo cloud file node'),
('34bab916a9365c449cf906db475e11124a284acf', 'testclient', 'alfonso', '2019-07-07 18:54:07', 'userinfo cloud file node'),
('38dd1085c10822b83f02c336b79ee21c9573f330', 'testclient', 'alfonso', '2019-06-28 18:34:11', 'userinfo cloud file node'),
('393e5be44c98866e80391a97484ca4c780384eb0', 'testclient', 'alfonso', '2019-06-19 18:57:41', 'userinfo cloud file node'),
('3adb31bc6c15119fbdb1f7e2619099bbd9f4dcc9', 'testclient', 'alfonso', '2019-06-22 20:00:16', 'userinfo cloud file node'),
('3bd276a85ca33a17f3db7ebb5f80818540b97eb2', 'testclient', 'alfonso', '2019-06-24 17:15:01', 'userinfo cloud file node'),
('3c2a73ceb89b8253479facaf4e0ba85599eeeea0', 'testclient', 'alfonso', '2019-06-21 18:10:50', 'userinfo cloud file node'),
('3db567e164d2a60383438448644d2d965cd29c2b', 'testclient', 'alfonso', '2019-07-07 10:18:42', 'userinfo cloud file node'),
('3fdca2a33dd4338206ca6209c93ab60a05f96fb9', 'testclient', 'alfonso', '2019-07-07 18:23:46', 'userinfo cloud file node'),
('403a8cd7be717e676fff0d6951a033e75db822b3', 'testclient', 'alfonso', '2019-06-26 21:24:07', 'userinfo cloud file node'),
('405ac1acb3364484ec922bf23523841a1121a039', 'testclient', 'alfonso', '2019-06-19 18:55:39', 'userinfo cloud file node'),
('40cc252dab2be757e8bc8d0872ffdc2ace1c61eb', 'testclient', 'alfonso', '2019-07-05 20:58:47', 'userinfo cloud file node'),
('427f15e4f5ef79b9edb03880daf1a05a2718414e', 'testclient', 'alfonso', '2019-07-27 13:15:03', 'userinfo cloud file node'),
('431c43b73dce550eccc5511aa314b9aa26ebf694', 'testclient', 'alfonso', '2019-07-12 19:00:07', 'userinfo cloud file node'),
('43b5f9e29c798f4e4698483dfef46fde0d6a8c3d', 'testclient', 'alfonso', '2019-08-15 12:00:17', 'userinfo cloud file node'),
('4560addff7b5bc626a30b2947e5a67111e892ee5', 'testclient', 'alfonso', '2019-06-23 09:07:03', 'userinfo cloud file node'),
('45bb868649484aaf5e9ea50d958c806635fd27bf', 'testclient', 'alfonso', '2019-07-07 17:59:09', 'userinfo cloud file node'),
('471b30137fe6c952f08b7c1c013db9d9e2f7cbc7', 'testclient', 'alfonso', '2019-06-28 18:48:26', 'userinfo cloud file node'),
('4737065c7718a85eb7316d195ac9b820221689a3', 'testclient', 'alfonso', '2019-06-23 21:34:58', 'userinfo cloud file node'),
('477ea5d4e23e5a9591068e20749ef3d15db16ed1', 'testclient', 'alfonso', '2019-06-24 17:23:00', 'userinfo cloud file node'),
('48d0941027628914f5c97126005a8e3b89b03cbe', 'testclient', 'alfonso', '2019-06-29 10:08:37', 'userinfo cloud file node'),
('49cf0cb58a05bc3fb13dbf3a65404e9c53bfe0a2', 'testclient', 'alfonso', '2019-06-24 17:08:03', 'userinfo cloud file node'),
('4e3b46c8add7afd1ce033adf2c21f6f09c9b2f92', 'testclient', 'alfonso', '2019-06-22 20:19:26', 'userinfo cloud file node'),
('4ec832d2e082a69854d5996ded51985f446fde1b', 'testclient', 'alfonso', '2019-06-23 08:29:34', 'userinfo cloud file node'),
('4eee0ba9406693ddc1acf59b5b70f44256936f06', 'testclient', 'alfonso', '2019-06-24 16:06:39', 'userinfo cloud file node'),
('4f41978b7a1f405386ace3fbf75e3fd25f807da1', 'testclient', 'alfonso', '2019-07-18 17:28:19', 'userinfo cloud file node'),
('4f55cffa89357a4b88bfcc082ffeb3b60c685630', 'testclient', 'alfonso', '2019-07-07 18:42:59', 'userinfo cloud file node'),
('4fe08486a37406ad54dca467c02a8b343e328fbb', 'testclient', 'alfonso', '2019-07-07 17:42:58', 'userinfo cloud file node'),
('502c16abeb9f05cee4ac46fe009720deb479fe6a', 'testclient', 'alfonso', '2019-06-28 19:14:42', 'userinfo cloud file node'),
('50335de98fa0b7e53b8d5e307f81ffc679550f9a', 'testclient', 'alfonso', '2019-07-07 19:04:55', 'userinfo cloud file node'),
('511f3b312f633c89ad29803d7c6476e351c48d92', 'testclient', 'alfonso', '2019-06-21 16:42:02', 'userinfo cloud file node'),
('53405ab972b243be53550f32005e3ec9029fe3ee', 'testclient', 'alfonso', '2019-06-28 19:08:15', 'userinfo cloud file node'),
('54a72264c5d7ec3487080c4cebb63ff17d8d8f95', 'testclient', 'alfonso', '2019-06-28 19:32:47', 'userinfo cloud file node'),
('55dbca9c004ec0c84c4c0663a46ffef71de160ee', 'testclient', 'alfonso', '2019-06-26 19:41:32', 'userinfo cloud file node'),
('55dbe7a32355f895f4f4bcac2023e3156ac0edd9', 'testclient', 'alfonso', '2019-06-19 17:37:12', 'userinfo cloud file node'),
('56517ef3b018862385945a6c948c04f54c34dd93', 'testclient', 'alfonso', '2019-07-10 19:18:30', 'userinfo cloud file node'),
('574a9be22066e37517ed897c66eb5d8568c5d599', 'testclient', 'alfonso', '2019-06-24 19:31:10', 'userinfo cloud file node'),
('5771388119d7097a62e8cf8ff4eaf9e21603622c', 'testclient', 'alfonso', '2019-06-23 20:33:55', 'userinfo cloud file node'),
('585de4c32704462ac4a66480fc30042f9b5885f0', 'testclient', 'alfonso', '2019-07-05 22:10:13', 'userinfo cloud file node'),
('58984d69a16bb10f9b7287ddc95e4d1cc9fd0c80', 'testclient', 'alfonso', '2019-06-23 18:52:56', 'userinfo cloud file node'),
('58ba63134c31b60ec6ce56af845ea2c089ca5bad', 'testclient', 'alfonso', '2019-06-23 18:28:02', 'userinfo cloud file node'),
('5944b61827c061ea5a7af36e80989bfbabbc32ca', 'testclient', 'alfonso', '2019-06-23 13:41:53', 'userinfo cloud file node'),
('596f98839f6815b1dce895af93f1c9b1c2e30db2', 'testclient', 'alfonso', '2019-06-19 20:19:14', 'userinfo cloud file node'),
('5a289597cb53ed9201595ade2105403e3739130f', 'testclient', 'alfonso', '2019-07-10 20:08:11', 'userinfo cloud file node'),
('5a63185fa57d35bebed3bc53832dc5e4bf559b73', 'testclient', 'alfonso', '2019-07-09 20:09:31', 'userinfo cloud file node'),
('5a68bc06d72f262146285ae24f63b8cf1bda58ce', 'testclient', 'alfonso', '2019-07-07 18:50:03', 'userinfo cloud file node'),
('5ad0e81b6d762104ca14ccf9338d8ac3d3f77885', 'testclient', 'alfonso', '2019-06-23 18:36:47', 'userinfo cloud file node'),
('5b5fc965d74093ffc7a028bfcb16ddaa9a143e07', 'testclient', 'alfonso', '2019-06-21 17:30:56', 'userinfo cloud file node'),
('5bbe9e714ae50e0f2a45d3f9a403589b8059aca1', 'testclient', 'alfonso', '2019-07-08 18:04:06', 'userinfo cloud file node'),
('5c2aeb4c81d24194d3cbedd1479e0db7cb9d96e2', 'testclient', 'alfonso', '2019-06-23 20:17:46', 'userinfo cloud file node'),
('5da4689b89cb6ec771b5a436bbb5a0628a713d8c', 'testclient', 'alfonso', '2019-07-07 18:06:50', 'userinfo cloud file node'),
('5dff24c1b6028a75d6afa984df0d5c2fbfd541f7', 'testclient', 'alfonso', '2019-07-04 07:22:31', 'userinfo cloud file node'),
('5f15e73593613d9c6f6b872c6404390e627c3bf1', 'testclient', 'alfonso', '2019-06-21 16:52:44', 'userinfo cloud file node'),
('5f66f532805892693b5ef5bf7fb7fc9ff31f9f51', 'testclient', 'alfonso', '2019-07-12 19:35:53', 'userinfo cloud file node'),
('61d64dc1ddb8085675624106a3e014dec557711c', 'testclient', 'alfonso', '2019-06-28 19:21:36', 'userinfo cloud file node'),
('63655f0fa4c53b3189a8a667508e768e8992c412', 'testclient', 'alfonso', '2019-06-23 20:12:18', 'userinfo cloud file node'),
('63aa0fd6dcb2420c29e8e14cc8a9d93d4ff365fe', 'testclient', 'alfonso', '2019-07-07 18:32:04', 'userinfo cloud file node'),
('63f7d3af96b409864cbe1f79fb08f74c80ea5c4c', 'testclient', 'alfonso', '2019-06-28 19:29:57', 'userinfo cloud file node'),
('642c563314e6d075890bd82762a4468f1b55ec35', 'testclient', 'alfonso', '2019-06-19 19:01:32', 'userinfo cloud file node'),
('654377603590363ab960e4abf528b30ace0c64be', 'testclient', 'alfonso', '2019-06-19 20:24:36', 'userinfo cloud file node'),
('660d6920bbdd93dbd557fa1b81eca703c3760e64', 'testclient', 'alfonso', '2019-06-23 21:33:49', 'userinfo cloud file node'),
('664770ba86167b7eb555fbeb932d5154e9d4010f', 'testclient', 'alfonso', '2019-06-19 19:39:56', 'userinfo cloud file node'),
('6675d84a82c2810f162c403f221d8aeb1d41c6cb', 'testclient', 'alfonso', '2019-06-23 09:00:03', 'userinfo cloud file node'),
('67eb1ed264b03f8881c3e109252cd7e5468d5236', 'testclient', 'alfonso', '2019-06-26 20:13:24', 'userinfo cloud file node'),
('6812ab07a0e5edb641b8872a62f7e5e97eaa7ea4', 'testclient', 'alfonso', '2019-06-23 19:57:26', 'userinfo cloud file node'),
('6852621772e3e5967fd8662a81e39b7ccf148918', 'testclient', 'alfonso', '2019-06-22 19:16:32', 'userinfo cloud file node'),
('6939fa803e74780a59d0e2e4ea0c7eb1aa9fb5c7', 'testclient', 'alfonso', '2019-06-23 13:07:20', 'userinfo cloud file node'),
('6be024e954d2745d1d29953831a941707830d497', 'testclient', 'alfonso', '2019-06-19 17:28:04', 'userinfo cloud file node'),
('6d62a1666032dea96edc3a96e98bc1c216de9647', 'testclient', 'alfonso', '2019-06-19 18:06:21', 'userinfo cloud file node'),
('7065e8271ed482018daab48ccec07c4b50581d12', 'testclient', 'alfonso', '2019-06-21 18:59:00', 'userinfo cloud file node'),
('720733b95c4301a8897f26613f50211225381fdd', 'testclient', 'alfonso', '2019-07-12 19:26:52', 'userinfo cloud file node'),
('7211d8da763be6fe4b006492540481b42fc2901b', 'testclient', 'alfonso', '2019-06-23 12:24:29', 'userinfo cloud file node'),
('73aa81361f5853e5100e0407dbf9b038d9ada238', 'testclient', 'alfonso', '2019-06-24 19:25:58', 'userinfo cloud file node'),
('7513390087f18b8f46465e7a2d1935d77b049a14', 'testclient', 'alfonso', '2019-06-23 12:41:42', 'userinfo cloud file node'),
('75be25c2eaeacc8911c0fb4d14ebe7d0359b141a', 'testclient', 'alfonso', '2019-07-05 20:11:57', 'userinfo cloud file node'),
('75e8ad5cc56012faabd9adad672ded39ba5b77de', 'testclient', 'alfonso', '2019-07-07 17:35:33', 'userinfo cloud file node'),
('764284db8a5773c61f14798d7886949c5e8d7fb5', 'testclient', 'alfonso', '2019-06-28 19:19:25', 'userinfo cloud file node'),
('7692c1ade3e04893db1ea5a44d3647beae7a8ed5', 'testclient', 'alfonso', '2019-06-27 07:13:20', 'userinfo cloud file node'),
('76bb477d79dc646662f21d9f0cec1eb8098755aa', 'testclient', 'alfonso', '2019-07-12 19:21:37', 'userinfo cloud file node'),
('76cc3ceebf069d02b86cdfff3a75621f4812e868', 'testclient', 'alfonso', '2019-07-10 14:07:06', 'userinfo cloud file node'),
('76f6a2b3ad800558dafb8db18a642daa10b3530c', 'testclient', 'alfonso', '2019-06-23 13:26:44', 'userinfo cloud file node'),
('77b86ae868cb2442d567bffc4d83da01fc160548', 'testclient', 'alfonso', '2019-06-23 12:22:52', 'userinfo cloud file node'),
('79377482343e9dcc4a47131f286bb2fa1136b7d8', 'testclient', 'alfonso', '2019-07-05 21:43:22', 'userinfo cloud file node'),
('7944e4539be0f2a5b0652a639812bd7748511e73', 'testclient', 'alfonso', '2019-06-24 15:39:07', 'userinfo cloud file node'),
('798e3749c0a6790c84ab3c2cc3769a73b3643d6c', 'testclient', 'alfonso', '2019-06-21 19:02:57', 'userinfo cloud file node'),
('79f589ea4db1ef7a661d02b50e165b617735a3b2', 'testclient', 'alfonso', '2019-06-19 15:49:22', 'userinfo cloud file node'),
('7a53a7940c8970c76fed0797fa581f888476701c', 'testclient', 'alfonso', '2019-06-26 20:18:58', 'userinfo cloud file node'),
('7a666933634f70939a54cdfa8a09b13e513c25f6', 'testclient', 'alfonso', '2019-07-30 17:17:58', 'userinfo cloud file node'),
('7b966e5c4308d050d0fa83e01940f9570320c329', 'testclient', 'alfonso', '2019-06-22 19:42:25', 'userinfo cloud file node'),
('7c3c9f8c8bdcdea7660f6649101c8f1dee455ce9', 'testclient', 'alfonso', '2019-07-09 20:11:23', 'userinfo cloud file node'),
('7ccc4824917697775145d31f579bc690abe60908', 'testclient', 'alfonso', '2019-06-26 19:19:33', 'userinfo cloud file node'),
('7cd729b79f326abe306ec4aba22b01a36ae570e5', 'testclient', 'alfonso', '2019-06-22 19:16:25', 'userinfo cloud file node'),
('7ece809edb332097a84a603b311e1f9606e9dd71', 'testclient', 'alfonso', '2019-06-23 11:35:50', 'userinfo cloud file node'),
('7f83e811b73cb4fce417add5e920ab4aa0fdb040', 'testclient', 'alfonso', '2019-06-19 20:10:04', 'userinfo cloud file node'),
('809fc68135bbc7098c665d8cf67b2e236df0b95e', 'testclient', 'alfonso', '2019-06-19 17:49:28', 'userinfo cloud file node'),
('80f89cfd93a305b55eb7e2eb9f22f82005e06bf9', 'testclient', 'alfonso', '2019-06-19 19:57:04', 'userinfo cloud file node'),
('83e97c494ea606368b3df4d68965bdbe9162046a', 'testclient', 'alfonso', '2019-06-26 14:20:43', 'userinfo cloud file node'),
('846d1d3fed8171cbb049a348a532d29d710624f0', 'testclient', 'alfonso', '2019-06-24 17:25:51', 'userinfo cloud file node'),
('8481879040e3e201bdc52b9f37a0bb6bff7c3cdc', 'testclient', 'alfonso', '2019-06-27 11:48:01', 'userinfo cloud file node'),
('8500d190f7a3ec8c5961f1a3a0e631cef681cfc5', 'testclient', 'alfonso', '2019-07-07 10:22:34', 'userinfo cloud file node'),
('882ac51b80ed26369706bbb350e553c2ab25433f', 'testclient', 'alfonso', '2019-07-09 20:12:32', 'userinfo cloud file node'),
('88bf60b27df0fe452797a26f61233713baf2a928', 'testclient', 'alfonso', '2019-06-21 19:01:43', 'userinfo cloud file node'),
('8a8d80b07456ad926bde19dab14d39ba1af6b305', 'testclient', 'alfonso', '2019-06-24 16:31:19', 'userinfo cloud file node'),
('8ac235e3c63c67c7e349d44d6051577562a144e6', 'testclient', 'alfonso', '2019-07-09 19:39:24', 'userinfo cloud file node'),
('8ac710c76b3a348c070c33e1053d25d2737fbf95', 'testclient', 'alfonso', '2019-07-07 19:22:06', 'userinfo cloud file node'),
('8afe7026e52da2fa2b21841b4edbef9edb38f67f', 'testclient', 'alfonso', '2019-06-19 18:49:49', 'userinfo cloud file node'),
('8cbde7e7d4c1e26e5738063c48d1ef589efe5f91', 'testclient', 'alfonso', '2019-06-19 18:48:00', 'userinfo cloud file node'),
('8d926d21916e1fd63f7d55874cf233f9f1b0e653', 'testclient', 'alfonso', '2019-06-22 19:49:31', 'userinfo cloud file node'),
('8dad3acf94fefc5a997c2d6a9af9d61841d2cf0e', 'testclient', 'alfonso', '2019-06-21 17:55:24', 'userinfo cloud file node'),
('8fe7f13ff7dcf194316278c86e8905cd562c37c5', 'testclient', 'alfonso', '2019-06-21 17:52:52', 'userinfo cloud file node'),
('9157b56ba8c01687d8484fa8e1eaaf4e5092f230', 'testclient', 'alfonso', '2019-06-26 20:25:48', 'userinfo cloud file node'),
('91f054da067c169ff2d6553e700eb0c9306a3e53', 'testclient', 'alfonso', '2019-06-19 20:26:47', 'userinfo cloud file node'),
('925e27ed420a5fa95263c3ee0a6646136e231736', 'testclient', 'alfonso', '2019-06-26 20:32:59', 'userinfo cloud file node'),
('943b6d3c1510860624324b7f491ef478f1934512', 'testclient', 'alfonso', '2019-06-23 20:46:54', 'userinfo cloud file node'),
('94560d550027fc97cee15a9a798dc4eaf79c8445', 'testclient', 'alfonso', '2019-07-03 19:41:24', 'userinfo cloud file node'),
('9526c697efa1010a3c3fedb73f4dc1fad9e6aeeb', 'testclient', 'alfonso', '2019-07-03 18:42:57', 'userinfo cloud file node'),
('96a82b0a707579f5bd981bfc830b31d025f069d7', 'testclient', 'alfonso', '2019-06-23 20:22:31', 'userinfo cloud file node'),
('9833c72a050af65b5c75671a8045e06d198dc686', 'testclient', 'alfonso', '2019-06-19 17:25:42', 'userinfo cloud file node'),
('99f9deeca25600ec0d7f89689d8be57ae35b5a13', 'testclient', 'alfonso', '2019-07-05 19:15:25', 'userinfo cloud file node'),
('9bf298367c00f676e9b0a47eb09306204c9a3a1d', 'testclient', 'alfonso', '2019-07-09 18:33:59', 'userinfo cloud file node'),
('9c8bad23fb727bc2121c0d77f405adf8669ee445', 'testclient', 'alfonso', '2019-06-28 19:47:06', 'userinfo cloud file node'),
('9c92662d46f0f701e4921657c9964349d19cbf1e', 'testclient', 'alfonso', '2019-06-19 20:31:06', 'userinfo cloud file node'),
('9f47db2fb527433ef12c7bc8d83a0ab2c1760f39', 'testclient', 'alfonso', '2019-06-19 17:47:33', 'userinfo cloud file node'),
('a11dd601c5e13374be18710a6384755560bf6606', 'testclient', 'alfonso', '2019-06-23 19:52:04', 'userinfo cloud file node'),
('a14699ebd350b5b4ce20383bda5ae7a54e2898cf', 'testclient', 'alfonso', '2019-06-27 11:26:14', 'userinfo cloud file node'),
('a16101dcac511bc6dabd0b8205eab040c5aea6d4', 'testclient', 'alfonso', '2019-06-26 18:19:46', 'userinfo cloud file node'),
('a1be7d07bddf9dc8b33af6a3d939cb6bb00f0fa1', 'testclient', 'alfonso', '2019-07-08 18:10:17', 'userinfo cloud file node'),
('a1dc2ac78cd185a1714fca97b3e706f68e103299', 'testclient', 'alfonso', '2019-06-24 19:34:42', 'userinfo cloud file node'),
('a3465c95f8d0b3c3e7188cbf5658ca29aab5df8d', 'testclient', 'alfonso', '2019-07-06 13:48:44', 'userinfo cloud file node'),
('a3f144c0e19f280497260be3f12df567e3736a27', 'testclient', 'alfonso', '2019-06-22 13:07:01', 'userinfo cloud file node'),
('a42f05990e9a09705d205929c715dd12de7f5ca3', 'testclient', 'alfonso', '2019-07-05 21:25:34', 'userinfo cloud file node'),
('a4a07c389422d873592f0ac4e3572bb1f39c6acc', 'testclient', 'alfonso', '2019-06-19 20:03:01', 'userinfo cloud file node'),
('a5d00e0cebdab363e17737a95f41aaa8a887f8d4', 'testclient', 'alfonso', '2019-07-08 18:34:50', 'userinfo cloud file node'),
('a650a9823d43b3e762b2158ce98eff7cb69bc5a6', 'testclient', 'alfonso', '2019-07-04 07:14:45', 'userinfo cloud file node'),
('a8380ec617b94a5ce926de5e9383b0f2f0548fed', 'testclient', 'alfonso', '2019-07-07 19:21:35', 'userinfo cloud file node'),
('a93ef5d64c2bc55ca2e79c6670b530ff088bf507', 'testclient', 'alfonso', '2019-06-28 20:01:47', 'userinfo cloud file node'),
('ac3592c40333519f70216c314d689a76a6f6b70d', 'testclient', 'alfonso', '2019-06-19 18:04:50', 'userinfo cloud file node'),
('ac574632edac2e5281f942c176c19fb34074390d', 'testclient', 'alfonso', '2019-06-26 19:55:40', 'userinfo cloud file node'),
('aca156ba97e20fcc06926f7bfc3a696dc185eac9', 'testclient', 'alfonso', '2019-07-07 11:11:41', 'userinfo cloud file node'),
('ad51ca64a0f246fe3cd5568e08090fdea7eae2eb', 'testclient', 'alfonso', '2019-07-12 19:35:11', 'userinfo cloud file node'),
('ad744793d4473d767c49917d0fd086ae38c4ac0d', 'testclient', 'alfonso', '2019-07-09 19:24:02', 'userinfo cloud file node'),
('aeeea6cc794bff426590c9eb967d5a6f07ed119a', 'testclient', 'alfonso', '2019-06-28 19:10:01', 'userinfo cloud file node'),
('af4d0ebc585f823dc409f171324c59614aab8beb', 'testclient', 'alfonso', '2019-06-24 17:09:26', 'userinfo cloud file node'),
('b0234387f7df65736d5ce5bd9100159b7e22f124', 'testclient', 'alfonso', '2019-07-12 19:40:13', 'userinfo cloud file node'),
('b0bac1a232443156f23b8d6e05207e3ce6e4c386', 'testclient', 'alfonso', '2019-06-23 08:22:59', 'userinfo cloud file node'),
('b1678c520c0ae7f0c90444867c1312b6300103d3', 'testclient', 'alfonso', '2019-06-19 17:42:04', 'userinfo cloud file node'),
('b1eadfc9ee66c8ae6663147f64449499cd2e5790', 'testclient', 'alfonso', '2019-06-23 17:45:37', 'userinfo cloud file node'),
('b286c04238bb3e5e586bfc006ece8f0857806526', 'testclient', 'alfonso', '2019-06-21 18:13:40', 'userinfo cloud file node'),
('b4a7c5e5042fafd36f8393d6909d39b2656acc1b', 'testclient', 'alfonso', '2019-07-03 11:00:52', 'userinfo cloud file node'),
('b4d68d7dbca847480acc27967a0ef1cc4cf2bfba', 'testclient', 'alfonso', '2019-06-23 19:30:18', 'userinfo cloud file node'),
('b536cf456976fc96b482f370d1f7a87005755cd3', 'testclient', 'alfonso', '2019-06-23 10:41:56', 'userinfo cloud file node'),
('b57d02b5754a02b6ab24cbd8c0cb98df912642b1', 'testclient', 'alfonso', '2019-07-07 18:37:12', 'userinfo cloud file node'),
('b581fa67a878dbf506fab0c3ef18e0e9c8062134', 'testclient', 'alfonso', '2019-07-07 17:53:30', 'userinfo cloud file node'),
('b6435b3fd19033678331251f4424b41cb902ef71', 'testclient', 'alfonso', '2019-06-19 20:00:52', 'userinfo cloud file node'),
('b7646699aaa45b3313be6b98ecfddc610b40eae5', 'testclient', 'alfonso', '2019-06-23 13:42:48', 'userinfo cloud file node'),
('b76d7a1b9717306878272b118629013b35c4e2cf', 'testclient', 'alfonso', '2019-06-19 13:50:51', 'userinfo cloud file node'),
('b7d425e549921ea50c6356d03550d126ae98e1ef', 'testclient', 'alfonso', '2019-07-13 10:47:47', 'userinfo cloud file node'),
('b99766b5818aedb8841b33a4ecee5b77e9cb13af', 'testclient', 'alfonso', '2019-06-23 14:00:21', 'userinfo cloud file node'),
('ba22b790cf07eabbbeaeabd97ba7547896775101', 'testclient', 'alfonso', '2019-06-26 20:55:49', 'userinfo cloud file node'),
('ba3fa96b9d514e2f4bf332ebd7255dbc68079ae9', 'testclient', 'alfonso', '2019-06-24 19:33:03', 'userinfo cloud file node'),
('bc081581867252278dd35f5b8b19835fbb6058e5', 'testclient', 'alfonso', '2019-07-07 18:58:37', 'userinfo cloud file node'),
('bd631dbfb59f413687db512ee5512baa52394cb2', 'testclient', 'alfonso', '2019-06-29 09:47:11', 'userinfo cloud file node'),
('be3b7df6395150c1dc91a60332ff4d8ba3ccf5d3', 'testclient', 'alfonso', '2019-07-05 20:20:59', 'userinfo cloud file node'),
('be5f06e8c3fc0d95523f1cb7cb3886ef5f3e58e3', 'testclient', 'alfonso', '2019-06-21 17:33:49', 'userinfo cloud file node'),
('c075548b1ac700f66c667c2dd65d59ff99e2cf8b', 'testclient', 'alfonso', '2019-06-20 16:11:05', 'userinfo cloud file node'),
('c08b38a6569335abdc550024925c78a5e2d832ce', 'testclient', 'alfonso', '2019-06-21 18:10:06', 'userinfo cloud file node'),
('c1ea92566a101dc32c399eb6e62d39c7632dce22', 'testclient', 'alfonso', '2019-07-08 17:53:41', 'userinfo cloud file node'),
('c389a7027d5182d664588c927c36a0f2086a1df8', 'testclient', 'alfonso', '2019-07-03 18:48:56', 'userinfo cloud file node'),
('c41a122b534eff38a626696a207e55a845625142', 'testclient', 'alfonso', '2019-06-20 21:41:26', 'userinfo cloud file node'),
('c51d971a1d9a866600a6f477a4aa367217bdcbe3', 'testclient', 'alfonso', '2019-06-23 20:00:45', 'userinfo cloud file node'),
('c77522d290fc1dbedb0237e508766bcc9576a5ea', 'testclient', 'alfonso', '2019-06-28 18:58:12', 'userinfo cloud file node'),
('c921ea3365ceea677d692fe9435d90b959a40704', 'testclient', 'alfonso', '2019-06-19 19:24:15', 'userinfo cloud file node'),
('c9ce6858137e254f8279518b4f0a61a2c2cb7ba3', 'testclient', 'alfonso', '2019-06-22 19:16:36', 'userinfo cloud file node'),
('cafb7fc4c537785c61d4a662fd32d1d63b9d08e6', 'testclient', 'alfonso', '2019-06-24 16:10:35', 'userinfo cloud file node'),
('cb40314ca86aa56429d1e6a4e51c171b6b318469', 'testclient', 'alfonso', '2019-06-19 20:15:19', 'userinfo cloud file node'),
('cdcc5b8e98177df327250a21e204e199f3274391', 'testclient', 'alfonso', '2019-06-25 15:49:11', 'userinfo cloud file node'),
('ce7f666e9a21aa8dfedab9bcc8c1074722fa0ba3', 'testclient', 'alfonso', '2019-06-28 18:51:50', 'userinfo cloud file node'),
('ce98f9c5b4bfaeee9269b7b8367f729690f84f6a', 'testclient', 'alfonso', '2019-06-22 20:06:54', 'userinfo cloud file node'),
('d00249581828149cf15dd64642c47fe7bf1ed59a', 'testclient', 'alfonso', '2019-08-06 14:28:02', 'userinfo cloud file node'),
('d292c6ebfdc334d2a53c6bd98fa9adb250caa3b4', 'testclient', 'alfonso', '2019-06-28 19:35:54', 'userinfo cloud file node'),
('d4798671b39f10cb8f24e59cffa02d96e781e323', 'testclient', 'alfonso', '2019-06-24 17:18:52', 'userinfo cloud file node'),
('d5ea77fb7fb37554e375046b9e36f804d119e8c9', 'testclient', 'alfonso', '2019-06-23 19:49:34', 'userinfo cloud file node'),
('d657db98617aa4984c76d88498f229469e62dfe0', 'testclient', 'alfonso', '2019-06-23 20:15:37', 'userinfo cloud file node'),
('d6f684bf2b24083780ababc5e84ddf29fe03c02e', 'testclient', 'alfonso', '2019-07-08 17:54:18', 'userinfo cloud file node'),
('d7e0772057911b09f92de67f4cc47afdf6702e65', 'testclient', 'alfonso', '2019-06-24 16:43:46', 'userinfo cloud file node'),
('d825a2cea40fc01273563387e686bca2d4264816', 'testclient', 'alfonso', '2019-06-28 18:33:30', 'userinfo cloud file node'),
('d88f575a3ecd92c54be8b135b08d9311b4b4bdf1', 'testclient', 'alfonso', '2019-06-19 17:39:11', 'userinfo cloud file node'),
('d8f5ab639e89ad92d855d2b6bb3fa37fa2271832', 'testclient', 'alfonso', '2019-06-28 18:49:32', 'userinfo cloud file node'),
('d92e1d3388918f12b89ed884975cb3aa8f874679', 'testclient', 'alfonso', '2019-06-23 11:41:59', 'userinfo cloud file node'),
('d9308b15d54f2ecbae561ea614bd4603fa9c0dbf', 'testclient', 'alfonso', '2019-07-07 18:27:26', 'userinfo cloud file node'),
('d98a6dda25f7f179ed69fd82e48f61e8ebf09363', 'testclient', 'alfonso', '2019-07-07 19:01:54', 'userinfo cloud file node'),
('d98ae6e51002b212d23d79c8713255d4e186fe08', 'testclient', 'alfonso', '2019-06-19 19:33:55', 'userinfo cloud file node'),
('d9a56e22bda852372b9afa0cd54c5948d0970251', 'testclient', 'alfonso', '2019-07-07 18:34:47', 'userinfo cloud file node'),
('dab08deba87ee304b5e5fd4b1a52da375c5ee2a1', 'testclient', 'alfonso', '2019-06-21 17:17:23', 'userinfo cloud file node'),
('db330b8fca748c86fc71311dab630fd2778ebab3', 'testclient', 'alfonso', '2019-06-22 20:15:30', 'userinfo cloud file node'),
('dc36da472fea27b505405ad6f8f51afeadc67819', 'testclient', 'alfonso', '2019-06-19 20:17:14', 'userinfo cloud file node'),
('dcb7dcba872bba132f4252cf3078ca46b6d45bf7', 'testclient', 'alfonso', '2019-06-26 20:29:48', 'userinfo cloud file node'),
('dcfafb53d569a12835ed899c87bc837c538eacd8', 'testclient', 'alfonso', '2019-06-24 16:22:12', 'userinfo cloud file node'),
('dda572c850c487e67dfbbc371a5448cfd1b8444a', 'testclient', 'alfonso', '2019-06-19 19:04:19', 'userinfo cloud file node'),
('de4943f82c837e3b3afd885f1acea9f132b9b574', 'testclient', 'alfonso', '2019-06-19 20:05:14', 'userinfo cloud file node'),
('de850a3f12f38cc75e96935fc20ecc5a176cab46', 'testclient', 'alfonso', '2019-07-05 21:02:04', 'userinfo cloud file node'),
('dfc9c946124c7a9e38cf76037296fcf099d45b21', 'testclient', 'alfonso', '2019-06-19 17:44:06', 'userinfo cloud file node'),
('e163be4d14a1b5029738a61be22e6668e62c9f47', 'testclient', 'alfonso', '2019-07-09 19:37:25', 'userinfo cloud file node'),
('e2130fed03c8d6347c4b6c6816a3343709e633c0', 'testclient', 'alfonso', '2019-06-21 17:52:39', 'userinfo cloud file node'),
('e290f520c15e6783f9a63b8cfaca0e98fa654a5e', 'testclient', 'alfonso', '2019-06-27 07:05:52', 'userinfo cloud file node'),
('e2f71557c07feee306c94659eaeb46b2cbad166f', 'testclient', 'alfonso', '2019-06-22 20:43:06', 'userinfo cloud file node'),
('e43dae17d5617063a644e0df560ebde9daccedd0', 'testclient', 'alfonso', '2019-06-23 20:06:49', 'userinfo cloud file node'),
('e4aaf122d6d37c62eb5148146f948c847aa52fb3', 'testclient', 'alfonso', '2019-07-10 20:48:02', 'userinfo cloud file node'),
('e581ddf2cbc45673b3c94cfa63e6de67eea527dc', 'testclient', 'alfonso', '2019-06-28 17:50:55', 'userinfo cloud file node'),
('e5b2255455d51459283385d75fe97f7ddc4e0c21', 'testclient', 'alfonso', '2019-06-27 11:19:37', 'userinfo cloud file node'),
('e6321eca20a1a4f5f027dc45b3df4459dc2efc6d', 'testclient', 'alfonso', '2019-07-07 17:35:44', 'userinfo cloud file node'),
('e6fd42721427d6355333f7698cf3345c09e6c103', 'testclient', 'alfonso', '2019-07-03 19:02:25', 'userinfo cloud file node'),
('e728e97f809ea0e9d7afa3d82c64bbbb5cc5d745', 'testclient', 'alfonso', '2019-07-18 19:54:21', 'userinfo cloud file node'),
('e73101c51ff7ef2790fdb30048a8cd07accf9056', 'testclient', 'alfonso', '2019-06-24 16:14:42', 'userinfo cloud file node'),
('e8e3a95dd151a7345b6199334dd2169ca5d450be', 'testclient', 'alfonso', '2019-06-23 21:37:13', 'userinfo cloud file node'),
('ea69d12c0c378f5fee2c6bae6e7b491d19584de5', 'testclient', 'alfonso', '2019-07-05 21:24:55', 'userinfo cloud file node'),
('eb13e0054d0e969158c67cf6d50aa6245e426ca4', 'testclient', 'alfonso', '2019-06-20 17:22:25', 'userinfo cloud file node'),
('ee6dfd558003527614ebfb5040b9a167fc43ffbd', 'testclient', 'alfonso', '2019-06-23 19:42:59', 'userinfo cloud file node'),
('eea6785aa5cbf643d64346667beca2282cbc953d', 'testclient', 'alfonso', '2019-07-27 13:15:27', 'userinfo cloud file node'),
('ef0f7f8fafdbea4d12036fb38b2b0877a3ca80b2', 'testclient', 'alfonso', '2019-06-26 20:35:04', 'userinfo cloud file node'),
('efb94908bfced40e95bfd3cfd68aeb9cbe675da1', 'testclient', 'alfonso', '2019-07-13 10:52:17', 'userinfo cloud file node'),
('f0629af6460372181eb5f559e654f79641f2d429', 'testclient', 'alfonso', '2019-06-19 18:44:02', 'userinfo cloud file node'),
('f27f85c6e1bc8f979f4bb68d61a94d37e712bd42', 'testclient', 'alfonso', '2019-06-23 10:24:24', 'userinfo cloud file node'),
('f2b1616f47a112b9bb1e945a893b6addc48f3213', 'testclient', 'alfonso', '2019-06-26 10:09:07', 'userinfo cloud file node'),
('f33a2c52ac0a6743f990f6291d43baaf61ea6dbd', 'testclient', 'alfonso', '2019-07-07 19:07:25', 'userinfo cloud file node'),
('f3de8dbb5eb369c4beaa12f65e66338c523e648e', 'testclient', 'alfonso', '2019-06-24 16:47:00', 'userinfo cloud file node'),
('f73810799e742e341be9af6925f76bb21672e9fc', 'testclient', 'alfonso', '2019-06-27 11:43:21', 'userinfo cloud file node'),
('f86e1b364e23c0f0d32f8ffaf2e5bacb744d7625', 'testclient', 'alfonso', '2019-06-19 18:53:35', 'userinfo cloud file node'),
('f9555527ee9bf9a84270b3aaba2d7e898173b5fa', 'testclient', 'alfonso', '2019-07-07 10:18:14', 'userinfo cloud file node'),
('f96f2b20f260fd7c0cacf103f333c1e451f410d0', 'testclient', 'alfonso', '2019-07-03 20:01:15', 'userinfo cloud file node'),
('f9834429d1a73c51aff2de2b54afb5080c8d1b8d', 'testclient', 'alfonso', '2019-07-04 11:01:11', 'userinfo cloud file node'),
('fa0fd3364b97a72bb6215eff2d5acde838f8a495', 'testclient', 'alfonso', '2019-06-20 21:15:02', 'userinfo cloud file node'),
('fab2b3fd819152a6091d295a2466281999cb2ad3', 'testclient', 'alfonso', '2019-06-24 16:27:46', 'userinfo cloud file node'),
('fb2dc94004974a893f1181c513449ed01e5ad63e', 'testclient', 'alfonso', '2019-07-18 19:20:30', 'userinfo cloud file node'),
('fb30d7185014aebb999764373e5adb637de11900', 'testclient', 'alfonso', '2019-07-09 18:33:29', 'userinfo cloud file node'),
('fc01b9d17aaab5db48b40d165a65ed0403d6f251', 'testclient', 'alfonso', '2019-07-07 19:17:20', 'userinfo cloud file node'),
('fc1e05cfac7d50a2979a8ff127c605bda56a8976', 'testclient', 'alfonso', '2019-06-23 08:21:10', 'userinfo cloud file node'),
('fc7d745c67cf61b7c303f7fe7d068dfa18a0bf9f', 'testclient', 'alfonso', '2019-07-07 18:26:00', 'userinfo cloud file node'),
('fd756933c4bfa2a918f6903a8d927c6352914232', 'testclient', 'alfonso', '2019-06-26 20:57:42', 'userinfo cloud file node'),
('fdbc7fa40b102518433a08722d86ba43164e152b', 'testclient', 'alfonso', '2019-06-24 15:44:33', 'userinfo cloud file node'),
('feab7a5f6eeaf32b35a13a1bce26636687a884c9', 'testclient', 'alfonso', '2019-06-24 17:26:46', 'userinfo cloud file node'),
('fedc5e22eb52dc0b940a4c46f64c5c8bd4512483', 'testclient', 'alfonso', '2019-06-23 13:38:50', 'userinfo cloud file node'),
('feff5024cc857e8f9ca24d60896307ba88582c1f', 'testclient', 'alfonso', '2019-06-28 19:24:47', 'userinfo cloud file node'),
('ff143a0d6fa763d849230d40bbdee1f37c893ac1', 'testclient', 'alfonso', '2019-07-07 17:37:07', 'userinfo cloud file node'),
('ffe435910b467cd5f356ecf86cc365ac21f9568b', 'testclient', 'alfonso', '2019-06-28 18:04:46', 'userinfo cloud file node');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` text,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` text,
  `grant_types` varchar(80) NOT NULL,
  `scope` text,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('client2', 'pass2', 'http://homeway.me/', 'authorization_code', 'file node userinfo cloud', 'xiaocao'),
('testclient', 'testpass', 'http://homeway.me/', 'client_credentials password authorization_code refresh_token', 'file node userinfo cloud', 'xiaocao');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` text,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`) VALUES
('002096e68f60d014b0242258ce820ac31cb9b8c6', 'testclient', 'alfonso', NULL, '2019-07-03 17:48:00', 'userinfo cloud file node'),
('0074ae3488ee5fa3a3cb38784c845fdf7bbf91c2', 'testclient', 'alfonso', NULL, '2019-07-07 17:36:47', 'userinfo cloud file node'),
('021da7253e8e5c9fd7c17b04c7fe986826444231', 'testclient', 'alfonso', NULL, '2019-07-06 18:16:32', 'userinfo cloud file node'),
('0221873ea3f908a65792a31dd1311516c6b4d5a2', 'testclient', 'alfonso', NULL, '2019-07-10 19:35:04', 'userinfo cloud file node'),
('045271c041f028daeab3f26b29b2426b14a53916', 'testclient', 'alfonso', NULL, '2019-07-07 18:49:34', 'userinfo cloud file node'),
('06d584777276d47f97810301a587048c624c3985', 'testclient', 'alfonso', NULL, '2019-07-12 18:47:06', 'userinfo cloud file node'),
('06ff566eee78eaeb0f7827b62eb0302eddefd20a', 'testclient', 'alfonso', NULL, '2019-07-07 12:22:45', 'userinfo cloud file node'),
('070b2627213a2edffc914e5af547a611bae88544', 'testclient', 'alfonso', NULL, '2019-07-03 18:39:56', 'userinfo cloud file node'),
('07e40e86455c263bdf644b1951e0c15a073189d2', 'testclient', 'alfonso', NULL, '2019-07-21 18:08:13', 'userinfo cloud file node'),
('080aa79b51ea724a85aff2a91ce6ca10cb52eab5', 'testclient', 'alfonso', NULL, '2019-07-06 18:42:25', 'userinfo cloud file node'),
('083bdc71a2408d5a37f1cf2e6b37f22de9b76779', 'testclient', 'alfonso', NULL, '2019-07-08 15:14:42', 'userinfo cloud file node'),
('08ecaf24f7594ae1265473e5d4f0a963c3b928e5', 'testclient', 'alfonso', NULL, '2019-07-17 10:00:52', 'userinfo cloud file node'),
('08f90ad01c398fe32c0ab9ad4e0d82e7f8e10154', 'testclient', 'alfonso', NULL, '2019-07-21 17:27:26', 'userinfo cloud file node'),
('097d62550bb816f0912dbcdd1272678ce1e0ee82', 'testclient', 'alfonso', NULL, '2019-07-03 16:39:11', 'userinfo cloud file node'),
('0b6c7046de917f2864d4cb39d752462f10ff1b14', 'testclient', 'alfonso', NULL, '2019-07-07 17:28:02', 'userinfo cloud file node'),
('0c6391a87ebe20435794bb2562fab8aff0f29c07', 'testclient', 'alfonso', NULL, '2019-07-12 17:48:26', 'userinfo cloud file node'),
('0c6b971b54eb54ed9689bbfc2a21629d338ccb9d', 'testclient', 'alfonso', NULL, '2019-07-03 19:00:52', 'userinfo cloud file node'),
('0d429aeb611b7827bd13ce6a867774ad52d2cec7', 'testclient', 'alfonso', NULL, '2019-07-04 15:26:34', 'userinfo cloud file node'),
('0d6afff8abf76e7c5f0bf22d7dadafbcf16383e7', 'testclient', 'alfonso', NULL, '2019-07-24 19:08:37', 'userinfo cloud file node'),
('0e71c523dc174736fdd2b8f3fdd520ef5a10ade1', 'testclient', 'alfonso', NULL, '2019-07-07 18:52:04', 'userinfo cloud file node'),
('0eddb309d8572652229a891f81e4b04bcf1da962', 'testclient', 'alfonso', NULL, '2019-07-03 16:44:06', 'userinfo cloud file node'),
('0faddeff6cd9e211a1aabefce979e748afefe144', 'testclient', 'alfonso', NULL, '2019-07-12 18:24:47', 'userinfo cloud file node'),
('103f2e7f7d0ccee04fc7e4ff25937a5dbb88f8bb', 'testclient', 'alfonso', NULL, '2019-07-07 11:28:54', 'userinfo cloud file node'),
('10da535983236af9a65fa516224030750dd64de4', 'testclient', 'alfonso', NULL, '2019-08-13 10:37:28', 'userinfo cloud file node'),
('126dd6e2fff81b64b9fce7bb912eeb297667a33f', 'testclient', 'alfonso', NULL, '2019-07-03 14:49:23', 'userinfo cloud file node'),
('1446087c423117e6fce854a4ad6ffa7b36802354', 'testclient', 'alfonso', NULL, '2019-07-23 18:42:24', 'userinfo cloud file node'),
('14c1ae7d291f8574c6bbf187a5f2e5ffe7863ca2', 'testclient', 'alfonso', NULL, '2019-07-10 19:18:58', 'userinfo cloud file node'),
('14fab3cb0c5632d7db6db47f99c09199ae7bade8', 'testclient', 'alfonso', NULL, '2019-07-08 16:15:01', 'userinfo cloud file node'),
('168fd59819cae8f607ac21b98f20db9ecdffc7b4', 'testclient', 'alfonso', NULL, '2019-07-10 19:55:49', 'userinfo cloud file node'),
('18fc55fffd57e7cf322cbfd62e61d57af3670840', 'testclient', 'alfonso', NULL, '2019-07-08 15:47:00', 'userinfo cloud file node'),
('196375c10db396d68c7bc141762d455a5546115e', 'testclient', 'alfonso', NULL, '2019-07-08 16:08:03', 'userinfo cloud file node'),
('19c5d180d332a2911d71541010acdc30aa63f9cc', 'testclient', 'alfonso', NULL, '2019-08-01 16:28:19', 'userinfo cloud file node'),
('1beaf2c6a21e9cf453be6a771c01edb56d76920c', 'testclient', 'alfonso', NULL, '2019-07-21 18:07:25', 'userinfo cloud file node'),
('1c9bab56e4186299a6ff96b2422b9bff9316230f', 'testclient', 'alfonso', NULL, '2019-07-03 16:45:48', 'userinfo cloud file node'),
('1ca270d732e4aad77d05a7f5fc8a1d33419037a5', 'testclient', 'alfonso', NULL, '2019-07-12 18:28:33', 'userinfo cloud file node'),
('1cbecc86f78b50c8c527c19c9972b17568d7dfe7', 'testclient', 'alfonso', NULL, '2019-07-10 18:41:32', 'userinfo cloud file node'),
('1ccaa774b4ad3fee58474302faaae8dbc00212e8', 'testclient', 'alfonso', NULL, '2019-07-03 17:49:49', 'userinfo cloud file node'),
('1d098d907533c002f07484da5c855a7c6a4c88b6', 'testclient', 'alfonso', NULL, '2019-07-08 15:06:39', 'userinfo cloud file node'),
('1d1a75620eab97e67bed4928bed2ed55b3b91987', 'testclient', 'alfonso', NULL, '2019-07-06 12:07:01', 'userinfo cloud file node'),
('1d829354dc403c28092b15a4ca1f854599c2f49e', 'testclient', 'alfonso', NULL, '2019-07-05 15:42:02', 'userinfo cloud file node'),
('1dcafb418bd901b8a1ee1c8c4b06f63fb8820d26', 'testclient', 'alfonso', NULL, '2019-07-06 19:19:26', 'userinfo cloud file node'),
('200ba8aa3621d639de45928352a0d6b1c98ac439', 'testclient', 'alfonso', NULL, '2019-07-12 17:04:46', 'userinfo cloud file node'),
('20388f86213509c5fbd727e0226413215b8ef42a', 'testclient', 'alfonso', NULL, '2019-07-21 16:42:58', 'userinfo cloud file node'),
('207c61afc78acbb06c1424ca3333fc9a5987426e', 'testclient', 'alfonso', NULL, '2019-07-12 18:17:08', 'userinfo cloud file node'),
('212c4ffc1ff8941baced1e32c60c08893e2ca05c', 'testclient', 'alfonso', NULL, '2019-07-03 18:09:31', 'userinfo cloud file node'),
('21e855b5024dbd8137d2065d2477b98d6a29f42a', 'testclient', 'alfonso', NULL, '2019-07-05 17:10:50', 'userinfo cloud file node'),
('232b22bbf8f0f44ac62e9d87c2b964d88720dc9b', 'testclient', 'alfonso', NULL, '2019-07-10 20:24:07', 'userinfo cloud file node'),
('23f6727786924c98757ec754217af47b77ad11e9', 'testclient', 'alfonso', NULL, '2019-07-07 19:46:54', 'userinfo cloud file node'),
('24b12cde1236f271a94b6757430629236595e202', 'testclient', 'alfonso', NULL, '2019-07-08 16:23:00', 'userinfo cloud file node'),
('2618c5d4f4495d8d3cf7d02d4aac7ef226f7f617', 'testclient', 'alfonso', NULL, '2019-07-24 19:48:02', 'userinfo cloud file node'),
('273f81511bd9d9c09f17e03803670d216c83b0a5', 'testclient', 'alfonso', NULL, '2019-07-12 18:08:15', 'userinfo cloud file node'),
('28b95bdb7f92e632394715a4cb0dabd98e377de0', 'testclient', 'alfonso', NULL, '2019-07-03 19:15:19', 'userinfo cloud file node'),
('2ac68eb4e79c29faec84b75b9c60dfb7efeca0a9', 'testclient', 'alfonso', NULL, '2019-07-07 12:42:48', 'userinfo cloud file node'),
('2c71b606b6f44569caeea9d6721f3fbbfbd17979', 'testclient', 'alfonso', NULL, '2019-07-27 09:47:47', 'userinfo cloud file node'),
('2f1e45ada63d7f514f7d68c53b0a7cbb3ed22d13', 'testclient', 'alfonso', NULL, '2019-07-07 07:24:21', 'userinfo cloud file node'),
('2f4f40604b1aa1acbda9655a6784de7b550d84e8', 'testclient', 'alfonso', NULL, '2019-07-04 20:15:02', 'userinfo cloud file node'),
('2f579806c205c3ac86442b52ecba0393bee11d4d', 'testclient', 'alfonso', NULL, '2019-07-21 17:42:59', 'userinfo cloud file node'),
('2fd7ff4e7c6184d67c6c6d7f7e6d609e55831e7d', 'testclient', 'alfonso', NULL, '2019-07-18 06:22:31', 'userinfo cloud file node'),
('30cb590961f2ede8f9f9b9ee12bf26b937d920fe', 'testclient', 'alfonso', NULL, '2019-07-07 20:37:13', 'userinfo cloud file node'),
('31086274d3901bd07e7faf7e2c63252230bbd446', 'testclient', 'alfonso', NULL, '2019-07-26 18:35:11', 'userinfo cloud file node'),
('32b2e3bafcbdad866a600214405f3197ad9594ea', 'testclient', 'alfonso', NULL, '2019-07-12 18:21:36', 'userinfo cloud file node'),
('34c06433ac1a3f8a76346f4836c379e9b5c576a7', 'testclient', 'alfonso', NULL, '2019-07-07 11:41:42', 'userinfo cloud file node'),
('35476d19e59e998ad764bc62ef82c641380bb56c', 'testclient', 'alfonso', NULL, '2019-07-05 15:52:44', 'userinfo cloud file node'),
('371251a172894e3f1146baa6dc8965bf17eb9eaf', 'testclient', 'alfonso', NULL, '2019-07-07 08:00:03', 'userinfo cloud file node'),
('37ebe643d2496ffd899048149f703aeff25892ff', 'testclient', 'alfonso', NULL, '2019-07-07 18:39:55', 'userinfo cloud file node'),
('386c77240162e65b8888031a44e3de7f9f57ea26', 'testclient', 'alfonso', NULL, '2019-07-03 18:33:55', 'userinfo cloud file node'),
('39513f44298ecb28f31817db556bce924996dddc', 'testclient', 'alfonso', NULL, '2019-07-24 17:36:49', 'userinfo cloud file node'),
('3a0dc84f589a1b6e0fad444d4954567427fe3d8a', 'testclient', 'alfonso', NULL, '2019-07-17 18:02:25', 'userinfo cloud file node'),
('3be5fd4e06dddb11fe62987d7b608fd66f3eaf80', 'testclient', 'alfonso', NULL, '2019-07-10 20:11:33', 'userinfo cloud file node'),
('3bf7bd11e1e31c53ba433f4a820dec64681781a9', 'testclient', 'alfonso', NULL, '2019-07-17 17:49:48', 'userinfo cloud file node'),
('3c2e598e91d2ac1979904610fc691b081a96f53e', 'testclient', 'alfonso', NULL, '2019-07-03 16:28:04', 'userinfo cloud file node'),
('3c95fce62c5b6f36df6b90750056d4de8a71c7aa', 'testclient', 'alfonso', NULL, '2019-07-03 17:55:39', 'userinfo cloud file node'),
('3cecf851b022a9b41ccc38b417076171949d3d91', 'testclient', 'alfonso', NULL, '2019-07-23 18:39:24', 'userinfo cloud file node'),
('3d7c11ca7c27275f856e9feafb34b15b1424fb8b', 'testclient', 'alfonso', NULL, '2019-07-26 18:40:13', 'userinfo cloud file node'),
('3ec177dfb93db9623fd6781b0b6881acb61955a0', 'testclient', 'alfonso', NULL, '2019-08-13 16:17:58', 'userinfo cloud file node'),
('40b4fb6d2f7f323a7988287b82db90dac97787fb', 'testclient', 'alfonso', NULL, '2019-07-03 19:10:04', 'userinfo cloud file node'),
('4186b75572979aa68794857e39e7ce567a846c6a', 'testclient', 'alfonso', NULL, '2019-07-24 19:08:11', 'userinfo cloud file node'),
('41a3efecc31dc751797fbdb1aa0243c957014e9e', 'testclient', 'alfonso', NULL, '2019-07-07 07:22:59', 'userinfo cloud file node'),
('42004629d63ca9ba533facf5286b929e42eedb0a', 'testclient', 'alfonso', NULL, '2019-07-10 09:09:07', 'userinfo cloud file node'),
('4220cf6ccf09de15bf7a70f116ec4d91c3ba41bc', 'testclient', 'alfonso', NULL, '2019-08-01 18:59:48', 'userinfo cloud file node'),
('432dfa81f7a458b2a41c6fe1189f2d802aff6b65', 'testclient', 'alfonso', NULL, '2019-07-10 19:57:42', 'userinfo cloud file node'),
('433232178ceab995dd1cee2c804a5558389a6303', 'testclient', 'alfonso', NULL, '2019-07-10 19:13:24', 'userinfo cloud file node'),
('434a2530ece1f7a23e61380991f5ca8b4b68d6a1', 'testclient', 'alfonso', NULL, '2019-07-23 19:11:23', 'userinfo cloud file node'),
('43e30afc571628c6479fe1c9f5cc1122aae6c2c1', 'testclient', 'alfonso', NULL, '2019-07-03 18:04:19', 'userinfo cloud file node'),
('44e22ac94428641947c5aea46bf34db51db0ba63', 'testclient', 'alfonso', NULL, '2019-07-03 16:42:04', 'userinfo cloud file node'),
('483b958d5df764771ad21ca5fa869a6479c311ac', 'testclient', 'alfonso', NULL, '2019-07-22 17:04:06', 'userinfo cloud file node'),
('4858d65d87d095cc832a9c551f892635d6c1c694', 'testclient', 'alfonso', NULL, '2019-07-03 18:01:33', 'userinfo cloud file node'),
('48d2307ab5320419ad4973736c4e7a5fcc5de07a', 'testclient', 'alfonso', NULL, '2019-07-07 20:57:35', 'userinfo cloud file node'),
('4a032250332c202a2ace20e566ab8c682475add8', 'testclient', 'alfonso', NULL, '2019-07-21 16:35:33', 'userinfo cloud file node'),
('4a418545fd5dfd978ee3ee00566f88aa044cca5a', 'testclient', 'alfonso', NULL, '2019-08-10 12:15:03', 'userinfo cloud file node'),
('4b35b514300241fc2dbe68e10d3d7661aeee27f2', 'testclient', 'alfonso', NULL, '2019-07-07 12:26:44', 'userinfo cloud file node'),
('4c07718dcf4db1fcdfaccbea026d8282057260b3', 'testclient', 'alfonso', NULL, '2019-07-19 19:58:47', 'userinfo cloud file node'),
('4ccfa222040157fe3abd00a50dd9ffa5f71d6b48', 'testclient', 'alfonso', NULL, '2019-07-21 09:18:42', 'userinfo cloud file node'),
('4cd57cf46de33c7f8a19dd7c292b1c0bb3f3944f', 'testclient', 'alfonso', NULL, '2019-07-07 18:46:36', 'userinfo cloud file node'),
('4cf18c844372f635d1de71f8f16492cf676f2553', 'testclient', 'alfonso', NULL, '2019-07-09 14:22:32', 'userinfo cloud file node'),
('4d9d689aff1a3214dfeaadf01b738c9b461db874', 'testclient', 'alfonso', NULL, '2019-07-07 18:30:18', 'userinfo cloud file node'),
('4e6d0e706b4b5fb3bee3cbb25c9a4192c8fd54f7', 'testclient', 'alfonso', NULL, '2019-07-10 19:35:59', 'userinfo cloud file node'),
('4e70afe957bdb7f862d58c18ed43c50290b91fdf', 'testclient', 'alfonso', NULL, '2019-07-12 18:29:57', 'userinfo cloud file node'),
('4ea5ac2c5cdb4210cd182e63b95e29b981590f3b', 'testclient', 'alfonso', NULL, '2019-07-08 14:57:16', 'userinfo cloud file node'),
('5254d09df3f1fa7af50c0e15e75074f194a73413', 'testclient', 'alfonso', NULL, '2019-07-07 19:17:46', 'userinfo cloud file node'),
('545f0e7263a274d7ed76a83cd2390740537b097b', 'testclient', 'alfonso', NULL, '2019-07-12 19:01:47', 'userinfo cloud file node'),
('55cf2a1456aadada53a46ff51b95a48d6d38a076', 'testclient', 'alfonso', NULL, '2019-07-21 17:58:37', 'userinfo cloud file node'),
('568ef589cdb4e5c4cad082fddcd96aac5935b6dd', 'testclient', 'alfonso', NULL, '2019-07-07 09:15:58', 'userinfo cloud file node'),
('594e649cf824915b2c766c50d2a40169384d2158', 'testclient', 'alfonso', NULL, '2019-07-05 16:55:24', 'userinfo cloud file node'),
('59e405a5a6110bddb7e78fd831c94f3eed9609ae', 'testclient', 'alfonso', NULL, '2019-07-18 10:01:11', 'userinfo cloud file node'),
('5a4a7c70916e3a29d1e5a6a81d421b2feb4ecbeb', 'testclient', 'alfonso', NULL, '2019-07-21 17:34:47', 'userinfo cloud file node'),
('5a80408fb0109c832e86dcd46f5879d0a44819e8', 'testclient', 'alfonso', NULL, '2019-07-10 13:20:43', 'userinfo cloud file node'),
('5bc57c36807a846fbf833d8d9d6fa4b16ffa19f8', 'testclient', 'alfonso', NULL, '2019-07-05 16:00:24', 'userinfo cloud file node'),
('5c8bfd0d3ffef13cb1cb67d084df35020ed0b725', 'testclient', 'alfonso', NULL, '2019-07-07 08:07:03', 'userinfo cloud file node'),
('5d627c963dd3cefa51685cd9300444544bc34bb6', 'testclient', 'alfonso', NULL, '2019-07-22 17:33:22', 'userinfo cloud file node'),
('5e03ab57bf3c8fd30a37d29046b74258c81916f5', 'testclient', 'alfonso', NULL, '2019-07-18 06:14:45', 'userinfo cloud file node'),
('5e7e40cae027971134a2af672815f02e4b0937de', 'testclient', 'alfonso', NULL, '2019-07-07 20:02:08', 'userinfo cloud file node'),
('5f3b5fa9804ee788e3a887ff9342adf9655e89d3', 'testclient', 'alfonso', NULL, '2019-07-21 16:53:30', 'userinfo cloud file node'),
('5f89cdd568de7f77cb7e7632451022041d918328', 'testclient', 'alfonso', NULL, '2019-07-11 10:19:37', 'userinfo cloud file node'),
('5fb432ed591071ea5e27c637963df787db0aa136', 'testclient', 'alfonso', NULL, '2019-07-07 10:43:44', 'userinfo cloud file node'),
('61bddbf2c70cf74b4f1fbe1eb4eeb2d3acd35746', 'testclient', 'alfonso', NULL, '2019-07-27 09:52:17', 'userinfo cloud file node'),
('621e5d8bf6cecdfd0b7cd4655f6e10f263210220', 'testclient', 'alfonso', NULL, '2019-07-22 16:53:41', 'userinfo cloud file node'),
('6269861f6105734a34a58613e5b058f71a7982ef', 'testclient', 'alfonso', NULL, '2019-07-21 18:00:58', 'userinfo cloud file node'),
('62a1cab743c97b9e004a6f0d31a9ae60f82bbfb5', 'testclient', 'alfonso', NULL, '2019-07-07 18:42:59', 'userinfo cloud file node'),
('62fa427739f28e554aa08237e78cb6285995cf27', 'testclient', 'alfonso', NULL, '2019-07-04 16:55:33', 'userinfo cloud file node'),
('63b426c0cdb83b62152eaf6912922b57b7252619', 'testclient', 'alfonso', NULL, '2019-07-07 12:38:50', 'userinfo cloud file node'),
('668d6f9a2d3a37cad623ceb45fa905b71a1b4662', 'testclient', 'alfonso', NULL, '2019-07-18 12:15:16', 'userinfo cloud file node'),
('67faa82c9234a81124dd1a397648c86fb1b1ee14', 'testclient', 'alfonso', NULL, '2019-07-11 10:26:14', 'userinfo cloud file node'),
('681d1014da5055a60473b9750c665f923675776d', 'testclient', 'alfonso', NULL, '2019-07-06 19:15:30', 'userinfo cloud file node'),
('6932f6336ef173afacc5d0f3eea03e5af9200f58', 'testclient', 'alfonso', NULL, '2019-07-23 17:33:59', 'userinfo cloud file node'),
('6935ea419bd7e5f8036eb19b823b38079f5d3396', 'testclient', 'alfonso', NULL, '2019-07-05 16:52:52', 'userinfo cloud file node'),
('6963e3c28fb7b5b2e1624f53916990f1202c2995', 'testclient', 'alfonso', NULL, '2019-07-07 09:14:30', 'userinfo cloud file node'),
('6aee3d9b520942763edba3457038c6989b0f8ab8', 'testclient', 'alfonso', NULL, '2019-07-06 19:06:54', 'userinfo cloud file node'),
('6bf95030c6c82c6000c1dc0ad62024c73e34ca3f', 'testclient', 'alfonso', NULL, '2019-07-21 17:23:46', 'userinfo cloud file node'),
('6cdfa441de2b082f84fcdd9a5308f8b55a30b838', 'testclient', 'alfonso', NULL, '2019-07-05 16:35:03', 'userinfo cloud file node'),
('6cee741ed2fd637fe6c38dda08c2cdc3bbe5e4e0', 'testclient', 'alfonso', NULL, '2019-07-21 12:14:31', 'userinfo cloud file node'),
('6cee7b21463002fcaac74e235a033ac60303b4d9', 'testclient', 'alfonso', NULL, '2019-07-07 11:24:29', 'userinfo cloud file node'),
('6e49e3b646383f00f7fca1dac3ceca23556b0433', 'testclient', 'alfonso', NULL, '2019-07-08 15:22:12', 'userinfo cloud file node'),
('6e71e47055964e77e4babe822591dd8772fcc471', 'testclient', 'alfonso', NULL, '2019-08-13 15:59:19', 'userinfo cloud file node'),
('6ea7ab59e24a97d6398d4d9cecfa5003bdbcd7e3', 'testclient', 'alfonso', NULL, '2019-07-08 18:33:03', 'userinfo cloud file node'),
('6eb3f62cfc96a5e55f21cab2081cb7ab1a4d30bc', 'testclient', 'alfonso', NULL, '2019-08-20 13:28:02', 'userinfo cloud file node'),
('6f97cddacb8d5997584a6cdc0f6114bb78f38a50', 'testclient', 'alfonso', NULL, '2019-07-05 16:30:56', 'userinfo cloud file node'),
('703ca675380fd99b044dd26a80044a8000775ff6', 'testclient', 'alfonso', NULL, '2019-07-03 17:53:35', 'userinfo cloud file node'),
('7154cacd2cde5c31caf61e248c91cc6ba959fc38', 'testclient', 'alfonso', NULL, '2019-07-17 17:48:56', 'userinfo cloud file node'),
('720ff686de72d52749ac1cf3dfe265ae26e11f64', 'testclient', 'alfonso', NULL, '2019-08-10 12:15:27', 'userinfo cloud file node'),
('72c017f80fc1a3b79a1713b14c58240f8f62bde4', 'testclient', 'alfonso', NULL, '2019-07-07 10:41:59', 'userinfo cloud file node'),
('730369f0fa3e1e2785f19a9d9a7be3c3678d5776', 'testclient', 'alfonso', NULL, '2019-07-07 10:35:50', 'userinfo cloud file node'),
('74e44ca64b17f0c377e4ee8b345156710d1fcf31', 'testclient', 'alfonso', NULL, '2019-07-12 18:19:25', 'userinfo cloud file node'),
('7548f7902bf8178ebc00c0f2488f9432d1ff33c6', 'testclient', 'alfonso', NULL, '2019-07-05 18:02:57', 'userinfo cloud file node'),
('774f67db9ca8afb339aadcb1cc30db1c42cf4728', 'testclient', 'alfonso', NULL, '2019-07-07 09:24:24', 'userinfo cloud file node'),
('78b02bed642f7cd44dcae701d2e83fa3cc98fcbd', 'testclient', 'alfonso', NULL, '2019-07-03 17:44:02', 'userinfo cloud file node'),
('78d0a9c4951da189d98fc87d64242d83e29703d4', 'testclient', 'alfonso', NULL, '2019-07-03 16:49:28', 'userinfo cloud file node'),
('7cbb63e117dda3b651975e6cc49ece75983f5ad6', 'testclient', 'alfonso', NULL, '2019-07-22 16:45:47', 'userinfo cloud file node'),
('7ce9642a3a8934f49a105a6a295f85cded1d76d2', 'testclient', 'alfonso', NULL, '2019-07-20 12:48:44', 'userinfo cloud file node'),
('7d3427cd4e4599995610c8b03b4240554cd7ca90', 'testclient', 'alfonso', NULL, '2019-07-21 17:26:00', 'userinfo cloud file node'),
('7dd87a80221bbdbd0271a1758b05169d1a19feae', 'testclient', 'alfonso', NULL, '2019-07-19 20:24:55', 'userinfo cloud file node'),
('7df25576c2090049650b999362fe9d1f879c4fa5', 'testclient', 'alfonso', NULL, '2019-07-23 08:45:51', 'userinfo cloud file node'),
('7e2e23d09c50afdf36894801b26b744acc08a206', 'testclient', 'alfonso', NULL, '2019-07-07 05:46:03', 'userinfo cloud file node'),
('7e35af3fdad69119af6ac4cc71edb8977a1419bc', 'testclient', 'alfonso', NULL, '2019-07-12 17:49:32', 'userinfo cloud file node'),
('7ea2b00f19bd2e8d5366fb14e7f045bd9e5d7d9f', 'testclient', 'alfonso', NULL, '2019-07-08 16:18:52', 'userinfo cloud file node'),
('7f5c52cbec79ef835e6b308b60a9ab538bd5586d', 'testclient', 'alfonso', NULL, '2019-07-23 18:37:25', 'userinfo cloud file node'),
('7f63017e2ee4078a60762b9d32d97e0048b15e04', 'testclient', 'alfonso', NULL, '2019-07-10 18:24:06', 'userinfo cloud file node'),
('800cd12ee40402ed8887879122d362584ab38a62', 'testclient', 'alfonso', NULL, '2019-07-05 17:10:06', 'userinfo cloud file node'),
('800eacbb2cc611df77315e650e00cef2637456bf', 'testclient', 'alfonso', NULL, '2019-07-12 17:34:11', 'userinfo cloud file node'),
('8068dbfd8655d4e96c6abd41b44fd3fd82623ae0', 'testclient', 'alfonso', NULL, '2019-07-03 19:19:14', 'userinfo cloud file node'),
('840bd18981a8c7483e379a0f215c3df3bdbe3d00', 'testclient', 'alfonso', NULL, '2019-07-07 19:06:49', 'userinfo cloud file node'),
('842e1c17af66d4743dfbf04382f8a7c260f4b784', 'testclient', 'alfonso', NULL, '2019-07-06 18:49:31', 'userinfo cloud file node'),
('84a953224e16b18641d1445a0296f35e5c5e1fab', 'testclient', 'alfonso', NULL, '2019-07-19 20:43:22', 'userinfo cloud file node'),
('895ee48ff038f74065d23b2adb160c57cd9c29bf', 'testclient', 'alfonso', NULL, '2019-07-05 18:01:43', 'userinfo cloud file node'),
('8a4a6afe024d0209583ae707627b2cf33e970600', 'testclient', 'alfonso', NULL, '2019-07-07 09:19:22', 'userinfo cloud file node'),
('8a82c9690d9817a8b8a279a115fb0ebf433f34db', 'testclient', 'alfonso', NULL, '2019-07-22 17:34:50', 'userinfo cloud file node'),
('8af773e0e68624f87d6a467215b4a99f3588de38', 'testclient', 'alfonso', NULL, '2019-07-03 17:57:41', 'userinfo cloud file node'),
('8e270bda542ded620a6d5ec82a3374d100d4af79', 'testclient', 'alfonso', NULL, '2019-07-07 16:45:37', 'userinfo cloud file node'),
('8e77d7b9a06c2f095cbf36a333c1187f3f3fa47b', 'testclient', 'alfonso', NULL, '2019-07-03 16:37:12', 'userinfo cloud file node'),
('8ffeaf5f156e5208bf91b8859016477166f6682e', 'testclient', 'alfonso', NULL, '2019-07-11 10:48:01', 'userinfo cloud file node'),
('9057d18a0399f4752fa5b8d7c33a83edd0bc47c8', 'testclient', 'alfonso', NULL, '2019-07-26 18:21:37', 'userinfo cloud file node'),
('906ad4239e6a9d5e8fc67bca5bd08ce98b72be11', 'testclient', 'alfonso', NULL, '2019-07-07 11:22:52', 'userinfo cloud file node'),
('9108bbe96e723a5667cc6942ce836d8e7f6da9c0', 'testclient', 'alfonso', NULL, '2019-07-10 19:29:48', 'userinfo cloud file node'),
('9113b70197f0b3d41e9b6e2a9d7a9915913f62ef', 'testclient', 'alfonso', NULL, '2019-07-22 17:10:17', 'userinfo cloud file node'),
('922ada9c450b72eb3de4239cc130a7487e427d38', 'testclient', 'alfonso', NULL, '2019-07-05 16:28:46', 'userinfo cloud file node'),
('92e82876fc5d6e5a2fe01b12456ce2dba7b3820d', 'testclient', 'alfonso', NULL, '2019-07-03 18:24:15', 'userinfo cloud file node'),
('935750350e653d5f0aa82bc3b10e7ba8b3cb3db5', 'testclient', 'alfonso', NULL, '2019-07-17 10:07:52', 'userinfo cloud file node'),
('93d7a97c688153d0d1bd37d7e43b252252c3720c', 'testclient', 'alfonso', NULL, '2019-07-06 19:26:03', 'userinfo cloud file node'),
('944bb68d079b438a22aea77dca27fce1de38030e', 'testclient', 'alfonso', NULL, '2019-07-21 09:22:34', 'userinfo cloud file node'),
('96dbc5e5976d19f72cb5f20752ec1cbc4ae383ca', 'testclient', 'alfonso', NULL, '2019-07-09 14:49:11', 'userinfo cloud file node'),
('98badfd650960df333a6952a29da41de2698915c', 'testclient', 'alfonso', NULL, '2019-07-19 20:33:51', 'userinfo cloud file node'),
('99f3a64365d3ef025291f5b2c42fc07e6ed300fe', 'testclient', 'alfonso', NULL, '2019-07-07 20:34:58', 'userinfo cloud file node'),
('9d8574b805bc1bc676f0370e8dc23f08a13f935f', 'testclient', 'alfonso', NULL, '2019-07-03 19:29:34', 'userinfo cloud file node'),
('9e61b83246e064a3aef60e7b605d9713a2a5fd26', 'testclient', 'alfonso', NULL, '2019-07-22 16:54:18', 'userinfo cloud file node'),
('9e8d529098b986eaf1fbaf0e2e8a1a95fb9a51d2', 'testclient', 'alfonso', NULL, '2019-07-21 17:06:50', 'userinfo cloud file node'),
('9ff502ce4a485ecbff50179f34a8f48617bc5f31', 'testclient', 'alfonso', NULL, '2019-08-29 11:00:17', 'userinfo cloud file node'),
('a00a15ef5dc21c9796f097c638d4ff2526a3e299', 'testclient', 'alfonso', NULL, '2019-07-12 18:32:47', 'userinfo cloud file node'),
('a08dfdcb334d6a5eb81c970d50ea09e6d477a300', 'testclient', 'alfonso', NULL, '2019-07-08 14:44:33', 'userinfo cloud file node'),
('a10c5dd353eaf6e6b8a21078cbfeb37e24a5eba2', 'testclient', 'alfonso', NULL, '2019-07-07 09:35:47', 'userinfo cloud file node'),
('a1b8685feea99c8f6fa3f99d56e20a69d9bc2538', 'testclient', 'alfonso', NULL, '2019-07-07 20:14:18', 'userinfo cloud file node'),
('a21f2859608b49a70be55a286c4f902698bfe8c0', 'testclient', 'alfonso', NULL, '2019-07-07 13:00:21', 'userinfo cloud file node'),
('a228706f6fa9e3a4d94c578bf14138e91ff23ba9', 'testclient', 'alfonso', NULL, '2019-07-05 17:13:40', 'userinfo cloud file node'),
('a2d000a2805c18b36f5912e446e1f54b08d2bd05', 'testclient', 'alfonso', NULL, '2019-07-12 17:51:50', 'userinfo cloud file node'),
('a3ea371f29a18e938165778ca3326ae6eb9994dd', 'testclient', 'alfonso', NULL, '2019-07-26 18:26:52', 'userinfo cloud file node'),
('a4b2fb82d167a75d157683cd07f90f2976c069e3', 'testclient', 'alfonso', NULL, '2019-07-03 19:17:14', 'userinfo cloud file node'),
('a4e2f3fbccc797b01e2ce7d77e429d6ee7c3a040', 'testclient', 'alfonso', NULL, '2019-07-19 18:15:25', 'userinfo cloud file node'),
('a55c22fa10be18e6860fea9a3296decc66c56259', 'testclient', 'alfonso', NULL, '2019-07-19 19:20:59', 'userinfo cloud file node'),
('a590b4b5f33c3916409a86481c36e0e3e283e4c0', 'testclient', 'alfonso', NULL, '2019-07-07 19:15:37', 'userinfo cloud file node'),
('a5abc3623d56e56952452cf810469aa4d31661cb', 'testclient', 'alfonso', NULL, '2019-07-05 16:17:23', 'userinfo cloud file node'),
('a69de4c1bb1687c03f1951cd5aa97d7a23c9e450', 'testclient', 'alfonso', NULL, '2019-07-05 16:13:09', 'userinfo cloud file node'),
('a77eb83e440230213e08d537c16e3d50c12d9a7b', 'testclient', 'alfonso', NULL, '2019-07-08 18:25:58', 'userinfo cloud file node'),
('a7f6464b79f6586587e585a9140aed598d489e42', 'testclient', 'alfonso', NULL, '2019-07-17 17:42:57', 'userinfo cloud file node'),
('a8e35c2d7814f2d85e1c1afe6b5608697c310177', 'testclient', 'alfonso', NULL, '2019-07-19 20:25:34', 'userinfo cloud file node'),
('a9b31df13a8f42dafa03f7cefcd06ee8f417046a', 'testclient', 'alfonso', NULL, '2019-08-01 18:34:50', 'userinfo cloud file node'),
('aa86278e12bd5e0303e9e70ea6b92b47ba1a4156', 'testclient', 'alfonso', NULL, '2019-07-08 14:39:07', 'userinfo cloud file node'),
('aa89ebe96aed1c28805c96c9cc1dce56065d102e', 'testclient', 'alfonso', NULL, '2019-07-04 15:28:08', 'userinfo cloud file node'),
('ab9a145373c3493e2be9f309a7095c381806fa72', 'testclient', 'alfonso', NULL, '2019-07-21 17:50:03', 'userinfo cloud file node'),
('aba8dc5aa6793867c2e98e635b0a128b7ca34f66', 'testclient', 'alfonso', NULL, '2019-07-05 17:59:00', 'userinfo cloud file node'),
('abefc58237dd76965192b40c2449993499a73035', 'testclient', 'alfonso', NULL, '2019-07-10 18:19:33', 'userinfo cloud file node'),
('acbf0c034d4c7a182bd3b8d01d1b9f9bd7751317', 'testclient', 'alfonso', NULL, '2019-07-11 06:05:52', 'userinfo cloud file node'),
('ad13d4f16846d42fb59c66195d841ed7814b63e5', 'testclient', 'alfonso', NULL, '2019-07-05 16:52:39', 'userinfo cloud file node'),
('ad2990d880662d5526920420532d141cf62024e0', 'testclient', 'alfonso', NULL, '2019-07-08 16:09:26', 'userinfo cloud file node'),
('ae38b1c574c4aece610917db8403b692665f0901', 'testclient', 'alfonso', NULL, '2019-07-03 19:03:01', 'userinfo cloud file node'),
('b143cebfcfa25b241636d6913ebcae1c4ffa4a16', 'testclient', 'alfonso', NULL, '2019-07-11 06:13:20', 'userinfo cloud file node'),
('b152647001718a606d19eb73b3b855b32d40ce76', 'testclient', 'alfonso', NULL, '2019-07-13 08:47:11', 'userinfo cloud file node'),
('b19b91ddaf0b645456e4a2615267cb280dfefd0f', 'testclient', 'alfonso', NULL, '2019-07-23 19:09:31', 'userinfo cloud file node'),
('b216d9a7a595742b34560a367593013b22e5d994', 'testclient', 'alfonso', NULL, '2019-07-03 18:57:04', 'userinfo cloud file node'),
('b2bbb9daefd442de5917bee68b4cd53ef12a8916', 'testclient', 'alfonso', NULL, '2019-07-05 16:33:49', 'userinfo cloud file node'),
('b33eb2525b743e50e8f0ca8ef2585e40c267bf86', 'testclient', 'alfonso', NULL, '2019-07-12 18:14:42', 'userinfo cloud file node'),
('b7b04022574da9285e67d7b7eb6aaf5dc737dd49', 'testclient', 'alfonso', NULL, '2019-07-06 19:00:16', 'userinfo cloud file node'),
('b8715ae67e395b25707bbadea0f1a4edc822167b', 'testclient', 'alfonso', NULL, '2019-07-12 18:42:11', 'userinfo cloud file node'),
('b9d2b9fd63926fa5656b757e73b4070a72dfe716', 'testclient', 'alfonso', NULL, '2019-07-21 16:35:44', 'userinfo cloud file node'),
('ba49fe5fb3385f50b787814a41796ea51dbaa91d', 'testclient', 'alfonso', NULL, '2019-07-21 17:37:12', 'userinfo cloud file node'),
('babdb158955c99dd3954228f75e9257c6c92a2eb', 'testclient', 'alfonso', NULL, '2019-07-12 17:58:12', 'userinfo cloud file node'),
('bc3527ffc5877dddcae6d8e88fe62631e0e06f8e', 'testclient', 'alfonso', NULL, '2019-07-03 19:26:47', 'userinfo cloud file node'),
('bf05b926f7b2735eb17d102f3d61de368c8fec71', 'testclient', 'alfonso', NULL, '2019-07-13 09:08:37', 'userinfo cloud file node'),
('bf960ff61fd70549df58f07250d95686c738af85', 'testclient', 'alfonso', NULL, '2019-07-03 17:06:21', 'userinfo cloud file node'),
('c069eaaf43e378b5d533302d655a9dc7911b8aa2', 'testclient', 'alfonso', NULL, '2019-07-11 10:43:21', 'userinfo cloud file node'),
('c1f83b2577e94749558c45c50015c6b8d23c4b81', 'testclient', 'alfonso', NULL, '2019-07-23 18:24:02', 'userinfo cloud file node'),
('c21a488e14c663e6a0ee43b1b38dab80b730b6b4', 'testclient', 'alfonso', NULL, '2019-07-21 17:54:07', 'userinfo cloud file node'),
('c2a486f9ca43a3cf61b82886ee49d73ab40a3000', 'testclient', 'alfonso', NULL, '2019-07-04 16:22:25', 'userinfo cloud file node'),
('c3b36e9e727984140fa27b5980b3ccc9b9101270', 'testclient', 'alfonso', NULL, '2019-07-03 19:24:36', 'userinfo cloud file node'),
('c3e3b56587848d6d80c762ad4e20b9c35feb98fc', 'testclient', 'alfonso', NULL, '2019-07-07 19:00:45', 'userinfo cloud file node'),
('c46754c5426f4122e4163fc96265c8e78e52a12f', 'testclient', 'alfonso', NULL, '2019-07-10 19:32:59', 'userinfo cloud file node'),
('c65710a8e4b31dfe324a021a8fa3f3b48b771c88', 'testclient', 'alfonso', NULL, '2019-07-07 19:44:14', 'userinfo cloud file node'),
('c65eb88a6fed014838e3e465c5bb67db37dd6480', 'testclient', 'alfonso', NULL, '2019-07-12 18:10:01', 'userinfo cloud file node'),
('c6a6262f071a05e64af88af9449a39c107004609', 'testclient', 'alfonso', NULL, '2019-07-21 18:21:35', 'userinfo cloud file node'),
('c96f9b9c6072a7952c3bf3d777b3e8954d9d8ac5', 'testclient', 'alfonso', NULL, '2019-07-19 21:10:13', 'userinfo cloud file node'),
('cbc8447076331665dc24174fdac6163281ea65b7', 'testclient', 'alfonso', NULL, '2019-07-21 18:04:55', 'userinfo cloud file node'),
('cceb6a8ee6e9c5f6b564a227951018f02adeca48', 'testclient', 'alfonso', NULL, '2019-07-21 09:18:14', 'userinfo cloud file node'),
('cd4b9887b238a0c2478df27688d1fbfda7f52a33', 'testclient', 'alfonso', NULL, '2019-07-08 18:31:10', 'userinfo cloud file node'),
('cf8591ade068cef801a27cc7187bf6666f73f295', 'testclient', 'alfonso', NULL, '2019-07-08 15:31:19', 'userinfo cloud file node'),
('cf97bb8a25da081222f158e98476908a66b89214', 'testclient', 'alfonso', NULL, '2019-07-09 14:52:30', 'userinfo cloud file node'),
('d092ee240f8a005639e24194a7351a51be2e6a1e', 'testclient', 'alfonso', NULL, '2019-07-06 19:13:32', 'userinfo cloud file node'),
('d1886d0993ae745c611e4afb46faac313ea3272f', 'testclient', 'alfonso', NULL, '2019-07-21 17:45:03', 'userinfo cloud file node'),
('d1bc29f97aefd4f85ac591d1d901d8fa5ec528c6', 'testclient', 'alfonso', NULL, '2019-07-19 19:11:57', 'userinfo cloud file node'),
('d1d991d9e9a888d558a54ec3710afbf9cdb47d09', 'testclient', 'alfonso', NULL, '2019-07-03 17:04:50', 'userinfo cloud file node'),
('d4db8972b877f87583d247bfde5af3b8a4f5e40d', 'testclient', 'alfonso', NULL, '2019-07-26 18:00:07', 'userinfo cloud file node'),
('d77b453af8b0d4e251b91a51341b2eec676c78bd', 'testclient', 'alfonso', NULL, '2019-07-03 15:57:28', 'userinfo cloud file node'),
('d7d7ddff0643584840b48b685dd5d4ec35bc62a7', 'testclient', 'alfonso', NULL, '2019-07-06 18:16:36', 'userinfo cloud file node'),
('d7eb9a7717cc045ae68c6aab456fa41a54bf4900', 'testclient', 'alfonso', NULL, '2019-07-07 19:22:31', 'userinfo cloud file node'),
('d861c24dd2008234ca3dbe05521ced65c83de936', 'testclient', 'alfonso', NULL, '2019-07-04 15:11:06', 'userinfo cloud file node'),
('d929f05c25fa85f9c9a28aea771222165343d9a1', 'testclient', 'alfonso', NULL, '2019-07-21 18:22:06', 'userinfo cloud file node'),
('d92cc7b4023e599d48d76ef653f47401de47008a', 'testclient', 'alfonso', NULL, '2019-07-04 20:41:26', 'userinfo cloud file node'),
('d99aa00829dc590241ce0341a19c64fa6bfbe22a', 'testclient', 'alfonso', NULL, '2019-07-03 19:31:06', 'userinfo cloud file node'),
('dc5b21d612942f0751d819d51c0cd470db058bed', 'testclient', 'alfonso', NULL, '2019-07-03 16:18:11', 'userinfo cloud file node'),
('dcdce5f3cee0a7e2cf1dc065d50de540ba9911ec', 'testclient', 'alfonso', NULL, '2019-07-07 09:41:56', 'userinfo cloud file node'),
('dd64609549145fd6f82bb30f448224daf0b37444', 'testclient', 'alfonso', NULL, '2019-07-08 15:27:46', 'userinfo cloud file node'),
('de101709b1d221970eb215cb355b42949e3c4d83', 'testclient', 'alfonso', NULL, '2019-07-07 12:41:53', 'userinfo cloud file node'),
('de4310381b4af661fbb5497543685ed8275a44ec', 'testclient', 'alfonso', NULL, '2019-07-03 12:50:51', 'userinfo cloud file node'),
('df9e32d0005b3b30224e6b7953ea3ceda2e549f2', 'testclient', 'alfonso', NULL, '2019-07-10 19:25:48', 'userinfo cloud file node'),
('dfcf190b6f4b5a512986bd2d411685765ebe3cab', 'testclient', 'alfonso', NULL, '2019-08-13 15:36:44', 'userinfo cloud file node'),
('e011719cdfe23b3d1c79bdc687754cdf94567d4f', 'testclient', 'alfonso', NULL, '2019-07-10 17:19:46', 'userinfo cloud file node'),
('e027b4dd38d542476341fceda7f767fe23fbdbbb', 'testclient', 'alfonso', NULL, '2019-07-12 18:35:54', 'userinfo cloud file node'),
('e07d7da5c7cbc3658f6d7eb39884987b10a8ba04', 'testclient', 'alfonso', NULL, '2019-07-03 19:05:14', 'userinfo cloud file node'),
('e17b1a694031879936c2e20d5e7d308e61ce0185', 'testclient', 'alfonso', NULL, '2019-08-29 11:00:32', 'userinfo cloud file node'),
('e1a8a617370f384c61ec3cbf8f8c675e28bfc1c5', 'testclient', 'alfonso', NULL, '2019-07-17 18:41:24', 'userinfo cloud file node'),
('e367bec4a406e2565e26a8b6dcfc6ce9c15c8365', 'testclient', 'alfonso', NULL, '2019-07-17 19:01:15', 'userinfo cloud file node'),
('e4904ba10bc1417bbf023380b98a39c41288e08f', 'testclient', 'alfonso', NULL, '2019-07-07 19:12:18', 'userinfo cloud file node'),
('e5d8b5aac53e051298804b317185e6c9481a2b67', 'testclient', 'alfonso', NULL, '2019-07-19 20:02:04', 'userinfo cloud file node'),
('e60710a256a55b1a513f7dfbb88549e8ea733fb0', 'testclient', 'alfonso', NULL, '2019-07-21 17:32:04', 'userinfo cloud file node'),
('e645e440c0035d9bcc62ece94495d334bc38b1dd', 'testclient', 'alfonso', NULL, '2019-07-24 13:07:06', 'userinfo cloud file node'),
('e6d854cbdf7b665bf1c165792481d7fbb30593b3', 'testclient', 'alfonso', NULL, '2019-07-12 16:50:55', 'userinfo cloud file node'),
('e76c7e72a3d46d7f7b7f2ec9138f22db1bdc2369', 'testclient', 'alfonso', NULL, '2019-07-23 17:33:29', 'userinfo cloud file node'),
('e7fe55bd91f5f75a760c509125c65cf919a60413', 'testclient', 'alfonso', NULL, '2019-07-08 15:43:46', 'userinfo cloud file node'),
('e936a446f40604ed77fc0a4cabd41f3fbea4ea5d', 'testclient', 'alfonso', NULL, '2019-07-18 10:15:26', 'userinfo cloud file node'),
('e9405ea5fefe476b1779e9754316c746ae65294e', 'testclient', 'alfonso', NULL, '2019-07-08 16:25:51', 'userinfo cloud file node'),
('e9cfe9ebf42b84a1ee7e708715bb7729e09b82dd', 'testclient', 'alfonso', NULL, '2019-07-06 19:43:06', 'userinfo cloud file node'),
('eb3ce846d1060aee531541d8a0f0e61e85f90b68', 'testclient', 'alfonso', NULL, '2019-08-01 18:20:30', 'userinfo cloud file node'),
('ec24b21818649feed55f9be2698dd38b250057de', 'testclient', 'alfonso', NULL, '2019-08-01 18:54:21', 'userinfo cloud file node'),
('eca27fbb51b20d3fb3a3d24fd383de86246e8b78', 'testclient', 'alfonso', NULL, '2019-07-21 18:17:20', 'userinfo cloud file node'),
('ecb3ac17f05c2cf7232793a065c2b7b2e8f6d6ba', 'testclient', 'alfonso', NULL, '2019-07-12 18:40:39', 'userinfo cloud file node'),
('ed109f8729763d427e6503f1a49846218fe6bd86', 'testclient', 'alfonso', NULL, '2019-07-07 12:07:20', 'userinfo cloud file node'),
('ee23b4f7c49aacd15207aeba6a014a9ffbc7cfd1', 'testclient', 'alfonso', NULL, '2019-07-12 17:33:30', 'userinfo cloud file node'),
('eeda1678c002c525f6eb9f76dd3b6a7fc98acd2d', 'testclient', 'alfonso', NULL, '2019-07-26 18:35:53', 'userinfo cloud file node'),
('ef3ae81c556671b1e0b606ad1ccdd5c57aa7a85d', 'testclient', 'alfonso', NULL, '2019-07-08 16:26:46', 'userinfo cloud file node'),
('efdebf7f4e070fa560b00d9d5a10ccb0669da412', 'testclient', 'alfonso', NULL, '2019-07-03 16:25:42', 'userinfo cloud file node'),
('f040bdb2224fa643b80ac97795d597b92e5ab86f', 'testclient', 'alfonso', NULL, '2019-07-07 20:33:49', 'userinfo cloud file node'),
('f1648ebd8f6f330ceec37239d6d39c7e1de151d0', 'testclient', 'alfonso', NULL, '2019-07-19 19:18:10', 'userinfo cloud file node'),
('f1f6af308800e676371721b0b3ec90461a29e08d', 'testclient', 'alfonso', NULL, '2019-07-24 18:18:30', 'userinfo cloud file node'),
('f365d33980287ebf84a406bec3bd6eea6ab5ac1a', 'testclient', 'alfonso', NULL, '2019-07-07 19:33:55', 'userinfo cloud file node'),
('f4ebf11380ddaeb201093f6d8924420e1711da22', 'testclient', 'alfonso', NULL, '2019-07-21 16:37:07', 'userinfo cloud file node'),
('f5632f3d8650e1a1f1f1ca10b3151c160ed4e557', 'testclient', 'alfonso', NULL, '2019-07-07 17:52:56', 'userinfo cloud file node'),
('f65e47198d71458cb15f84291f65df1e2465d5f9', 'testclient', 'alfonso', NULL, '2019-07-07 07:29:34', 'userinfo cloud file node'),
('f67de2fc2d4bc36f4bad0fc45529012a58fb5571', 'testclient', 'alfonso', NULL, '2019-07-06 18:16:25', 'userinfo cloud file node'),
('f684f0752edb5f19d09c589e75b4313478a21f18', 'testclient', 'alfonso', NULL, '2019-07-03 19:42:02', 'userinfo cloud file node'),
('f7b0a58126f201bdcc9788de9a4e49a4699bb615', 'testclient', 'alfonso', NULL, '2019-07-21 16:42:10', 'userinfo cloud file node'),
('f7bbb4227d66ad1640edee0495e0a8000c5bccb1', 'testclient', 'alfonso', NULL, '2019-07-07 07:21:10', 'userinfo cloud file node'),
('f7f32e226ed3a103738582ecb4209134e803dd5e', 'testclient', 'alfonso', NULL, '2019-07-17 18:15:16', 'userinfo cloud file node'),
('f9811935b1013e29d5b253e6531d87b0f089d3c2', 'testclient', 'alfonso', NULL, '2019-07-07 12:31:19', 'userinfo cloud file node'),
('f9ba610c55613a0eb0abfc08507d957439df9240', 'testclient', 'alfonso', NULL, '2019-07-10 18:55:40', 'userinfo cloud file node'),
('f9da77312f19c4b11735f8297930a1db42e451e7', 'testclient', 'alfonso', NULL, '2019-07-17 10:46:01', 'userinfo cloud file node'),
('fbd2aaaa1b0cf917d24e58fc4dc682f6376ed526', 'testclient', 'alfonso', NULL, '2019-07-07 18:57:26', 'userinfo cloud file node'),
('fca4def2bdae39e82d21e1bbf50673610cb40e5c', 'testclient', 'alfonso', NULL, '2019-07-03 16:47:33', 'userinfo cloud file node'),
('fd18853e7cac8f107638e730c650149557596816', 'testclient', 'alfonso', NULL, '2019-07-21 10:11:41', 'userinfo cloud file node'),
('fd3a74fe93780606593d70d8b2530863a38c06ee', 'testclient', 'alfonso', NULL, '2019-07-08 18:34:42', 'userinfo cloud file node'),
('fd6a6836ed7fcb3dad5996d3731f94f6398e58ec', 'testclient', 'alfonso', NULL, '2019-07-23 19:12:32', 'userinfo cloud file node'),
('fe208347eb6a5a1a28895975062d15b6c7537b00', 'testclient', 'alfonso', NULL, '2019-07-21 16:59:09', 'userinfo cloud file node'),
('ff3929b951d5ddbbc601871f46de1cec7c49e013', 'testclient', 'alfonso', NULL, '2019-07-08 15:10:35', 'userinfo cloud file node'),
('ff789c3d1641d23b0b19913fb6f11731ed8149d7', 'testclient', 'alfonso', NULL, '2019-07-21 18:01:54', 'userinfo cloud file node');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` text NOT NULL,
  `is_default` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_scopes`
--

INSERT INTO `oauth_scopes` (`scope`, `is_default`) VALUES
('userinfo', 1),
('file', 0),
('node', 0),
('cloud', 0),
('share', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_users`
--

CREATE TABLE `oauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` text NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido_paterno` varchar(80) NOT NULL,
  `apellido_materno` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_users`
--

INSERT INTO `oauth_users` (`id`, `username`, `password`, `nombre`, `apellido_paterno`, `apellido_materno`) VALUES
(1, 'alfonso', '$2a$08$kOoVJ8H5AAKHJeJC6/B2XeFSI.SiTTTpEXI85jaHXdykz/aQ3kDfO', 'Alfonso', 'Mendoza', 'Mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable_institucion`
--

CREATE TABLE `responsable_institucion` (
  `id` int(11) UNSIGNED NOT NULL,
  `curp` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `primerApellido` varchar(80) NOT NULL,
  `segundoApellido` varchar(80) NOT NULL,
  `id_cargo` varchar(45) NOT NULL,
  `idCampus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `responsable_institucion`
--

INSERT INTO `responsable_institucion` (`id`, `curp`, `nombre`, `primerApellido`, `segundoApellido`, `id_cargo`, `idCampus`) VALUES
(1, 'GULG680803MJCRRD09', 'LIDIA', 'GURROLA', 'GURROLA', '5', '140134'),
(2, 'NABA620913HDFVNM09', 'ARTURO', 'NAVA', 'BOLAÑOS', '5', '170177'),
(4, 'NABA620913HDFVNM09', 'ARMANDO', 'NAVA', 'BALDERAS', '5', '150178'),
(5, 'ariana', 'amor', 'lopez', 'garcia', '3', '170177'),
(6, 'NABA620913HDFVNM09', 'Arturo', 'Nava', 'Bolaños', '5', '090695');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rvoe`
--

CREATE TABLE `rvoe` (
  `id` int(11) UNSIGNED NOT NULL,
  `numero` varchar(255) NOT NULL,
  `fechaExpedicion` datetime NOT NULL,
  `idCarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rvoe`
--

INSERT INTO `rvoe` (`id`, `numero`, `fechaExpedicion`, `idCarrera`) VALUES
(10, '20090284', '2009-05-26 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xml`
--

CREATE TABLE `xml` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(20) NOT NULL DEFAULT '2.0',
  `tipoCertificado` int(11) NOT NULL DEFAULT '5',
  `folioControl` varchar(255) NOT NULL,
  `sello` text NOT NULL,
  `certificadoResponsable` text NOT NULL,
  `noCertificadoResponsable` text NOT NULL,
  `xmlns` varchar(255) NOT NULL DEFAULT 'https://www.siged.sep.gob.mx/certificados/',
  `idNombreInstitucion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `xml`
--

INSERT INTO `xml` (`id`, `version`, `tipoCertificado`, `folioControl`, `sello`, `certificadoResponsable`, `noCertificadoResponsable`, `xmlns`, `idNombreInstitucion`) VALUES
(1, '2.0', 5, '00258125-1', '', '', '', 'https://www.siged.sep.gob.mx/certificados/', '20839'),
(2, '2.0', 5, '1037-1', '', '', '20001000000300004872', 'https://www.siged.sep.gob.mx/certificados/', '20105'),
(3, '2.0', 5, '5678-1', '', '', '20001000000300004872', 'https://www.siged.sep.gob.mx/certificados/', '20015'),
(11, '2.0', 5, '1037-5', '', '', '20001000000300004872', 'https://www.siged.sep.gob.mx/certificados/', '20423');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`numeroControl`,`curp`) USING BTREE,
  ADD KEY `fk_alumno_campus` (`idCampus`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD KEY `fk_asignatura_alumno` (`numeroControl`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`numeroControlAlumno`);

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`idCampus`),
  ADD KEY `fk_campus_ipes_1` (`idNombreInstitucion`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`,`idCampus`),
  ADD KEY `fk_carrera_ipes` (`idCampus`);

--
-- Indices de la tabla `expedicion`
--
ALTER TABLE `expedicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ipes`
--
ALTER TABLE `ipes`
  ADD PRIMARY KEY (`idNombreInstitucion`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indices de la tabla `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indices de la tabla `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `responsable_institucion`
--
ALTER TABLE `responsable_institucion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_responsable_campus` (`idCampus`);

--
-- Indices de la tabla `rvoe`
--
ALTER TABLE `rvoe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rvoe_carrera` (`idCarrera`);

--
-- Indices de la tabla `xml`
--
ALTER TABLE `xml`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_xml_ipes` (`idNombreInstitucion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oauth_users`
--
ALTER TABLE `oauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `responsable_institucion`
--
ALTER TABLE `responsable_institucion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rvoe`
--
ALTER TABLE `rvoe`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `xml`
--
ALTER TABLE `xml`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumno_campus` FOREIGN KEY (`idCampus`) REFERENCES `campus` (`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_asignatura_alumno` FOREIGN KEY (`numeroControl`) REFERENCES `alumnos` (`numeroControl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `fk_asignaturas_alumno` FOREIGN KEY (`numeroControlAlumno`) REFERENCES `alumnos` (`numeroControl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `campus`
--
ALTER TABLE `campus`
  ADD CONSTRAINT `fk_campus_ipes_1` FOREIGN KEY (`idNombreInstitucion`) REFERENCES `ipes` (`idNombreInstitucion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `fk_carrera_ipes` FOREIGN KEY (`idCampus`) REFERENCES `campus` (`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `responsable_institucion`
--
ALTER TABLE `responsable_institucion`
  ADD CONSTRAINT `fk_responsable_campus` FOREIGN KEY (`idCampus`) REFERENCES `campus` (`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rvoe`
--
ALTER TABLE `rvoe`
  ADD CONSTRAINT `fk_rvoe_carrera` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `xml`
--
ALTER TABLE `xml`
  ADD CONSTRAINT `fk_xml_ipes` FOREIGN KEY (`idNombreInstitucion`) REFERENCES `ipes` (`idNombreInstitucion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
