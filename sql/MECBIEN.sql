-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-06-2019 a las 22:10:24
-- Versión del servidor: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba2`
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
  `idCarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`numeroControl`, `curp`, `nombre`, `primerApellido`, `segundoApellido`, `foto`, `idGenero`, `fechaNacimiento`, `idCampus`, `idCarrera`) VALUES
('100', 'SDFERFD', 'ALUMNO 1', 'FDF', 'DFDFD', 'DFDFDF', 1, '2019-06-13 00:00:00', '1', 1);

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
  `idObservaciones` int(11) NOT NULL,
  `idTipoAsignatura` varchar(255) NOT NULL,
  `creditos` varchar(45) NOT NULL,
  `numeroControlAlumno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`idAsignatura`, `claveAsignatura`, `nombre`, `ciclo`, `calificacion`, `idObservaciones`, `idTipoAsignatura`, `creditos`, `numeroControlAlumno`) VALUES
(1, '1', 'ASIG 1', '1', '10', 1, '1', '12', '100'),
(2, '2', 'ASIG 2', '2', '2', 2, '2', '2', '100');

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

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`numeroControlAlumno`, `total`, `asignadas`, `promedio`, `totalCreditos`, `creditosObtenidos`) VALUES
('100', 10, 2, '6', '20', '14');

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
('1', 'CAMPUS', '1');

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
(1, '1', 'CARRERA 1', '1', '1', '1', '5', '10', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedicion`
--

CREATE TABLE `expedicion` (
  `id` int(11) UNSIGNED NOT NULL,
  `idTipoCertificacion` varchar(45) NOT NULL,
  `tipoCertificacion` varchar(80) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idLugarExpedicion` varchar(45) NOT NULL,
  `idNombreInstitucion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `expedicion`
--

INSERT INTO `expedicion` (`id`, `idTipoCertificacion`, `tipoCertificacion`, `fecha`, `idLugarExpedicion`, `idNombreInstitucion`) VALUES
(1, '1', 'WSD', '2019-06-13 00:00:00', '1', '1');

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
('1', '1', 'UNITEC');

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
(20190604205248);

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
('02d85154ab0c8d5418292b338a32031cbb072c63', 'testclient', 'alfonso', '2019-06-06 12:11:04', 'userinfo cloud file node'),
('13ce58cb60cff073031d337cc712f9c615153f0d', 'testclient', 'alfonso', '2019-06-07 13:43:51', 'userinfo cloud file node'),
('27df501ad77e46eb44abe115908e38a007f0dc86', 'testclient', 'alfonso', '2019-06-14 17:08:10', 'userinfo cloud file node'),
('35555cdc596686b6c8c4db8c039e3b442f9dc221', 'testclient', 'alfonso', '2019-06-08 16:28:31', 'userinfo cloud file node'),
('5217e75e3d823f0abb4825c95447f80fb705115d', 'testclient', 'alfonso', '2019-06-07 14:57:49', 'userinfo cloud file node'),
('6219fe693f88b0dda2166a735cd8057428364309', 'testclient', 'alfonso', '2019-06-10 16:06:31', 'userinfo cloud file node'),
('a04a245094174de1ae89465c836794495e88428a', 'testclient', 'alfonso', '2019-06-06 12:09:42', 'userinfo cloud file node'),
('bb8c26ebd13d7556cbf99849282ddc837209f7d2', 'testclient', 'alfonso', '2019-06-08 13:24:50', 'userinfo cloud file node'),
('f01a73506f3dbe855582ad9ce59540d8e7c133de', 'testclient', 'alfonso', '2019-06-08 12:22:17', 'userinfo cloud file node');

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
('4d548765964341ba61e4dcd30643f012533f3fad', 'testclient', 'alfonso', NULL, '2019-06-28 16:08:11', 'userinfo cloud file node');

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
  `nombre` varchar(80) NOT NULL,
  `curp` varchar(80) NOT NULL,
  `primerApellido` varchar(80) NOT NULL,
  `segundoApellido` varchar(80) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `idCampus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `responsable_institucion`
--

INSERT INTO `responsable_institucion` (`id`, `nombre`, `curp`, `primerApellido`, `segundoApellido`, `id_cargo`, `idCampus`) VALUES
(1, 'RESPONSABLE', 'ASASASA', 'ASAS', 'ASSAS', 1, 1);

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
(1, '1', '2019-06-13 00:00:00', 1);

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
(1, '2.0', 5, 'DSASASDAS', 'SDASDA', 'SADSADAS', 'SDASDASD', 'https://www.siged.sep.gob.mx/certificados/', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`numeroControl`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`idAsignatura`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`numeroControlAlumno`);

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`idCampus`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rvoe`
--
ALTER TABLE `rvoe`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `xml`
--
ALTER TABLE `xml`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `expedicion`
--
ALTER TABLE `expedicion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `oauth_users`
--
ALTER TABLE `oauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `responsable_institucion`
--
ALTER TABLE `responsable_institucion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `rvoe`
--
ALTER TABLE `rvoe`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `xml`
--
ALTER TABLE `xml`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
