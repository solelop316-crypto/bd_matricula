-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2025 a las 08:03:05
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
-- Base de datos: `bd_matricula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id_asignatura` int(11) NOT NULL,
  `nombre_asignatura` varchar(100) NOT NULL,
  `codigo_asignatura` varchar(10) NOT NULL,
  `creditos` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id_asignatura`, `nombre_asignatura`, `codigo_asignatura`, `creditos`, `descripcion`, `id_carrera`) VALUES
(1, 'Programación I', 'PROG1', 4, 'Introducción a la programación', 1),
(2, 'Base de Datos', 'BD001', 4, 'Diseño y gestión de bases de datos', 1),
(3, 'Cálculo I', 'CAL1', 4, NULL, 1),
(4, 'Álgebra Lineal', 'ALG01', 3, NULL, 1),
(5, 'Arquitectura de Computadores', 'ARQC', 3, NULL, 1),
(6, 'Estructuras de Datos', 'ED001', 4, NULL, 1),
(7, 'Programación Web', 'PWEB1', 4, 'HTML, CSS, JS, PHP', 1),
(8, 'Ingeniería de Software', 'INGSW', 3, NULL, 1),
(9, 'Redes de Computadores', 'RED01', 4, NULL, 1),
(10, 'Sistemas Operativos', 'SO001', 4, NULL, 1),
(11, 'Administración General', 'ADG01', 3, NULL, 3),
(12, 'Contabilidad I', 'CONT1', 4, NULL, 9),
(13, 'Derecho Civil', 'DCIV1', 4, NULL, 4),
(14, 'Anatomía Humana', 'ANAT1', 5, NULL, 5),
(15, 'Psicología General', 'PSIG', 3, NULL, 6),
(16, 'Dibujo Técnico', 'DIBT', 3, NULL, 7),
(17, 'Cálculo Diferencial', 'CALD', 4, NULL, 8),
(18, 'Estadística I', 'EST1', 3, NULL, 10),
(19, 'Mercadeo Básico', 'MER1', 3, NULL, 15),
(20, 'Comunicación Oral', 'COM1', 3, NULL, 16),
(21, 'Programacion II', 'PROG2', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL,
  `nombre_carrera` varchar(100) NOT NULL,
  `codigo_carrera` varchar(10) NOT NULL,
  `facultad` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre_carrera`, `codigo_carrera`, `facultad`, `descripcion`) VALUES
(1, 'Ingeniería de Sistemas', 'ISIS', 'Ingeniería', 'Carrera de tecnología'),
(2, 'Ingeniería Industrial', 'IIND', 'Ingeniería', NULL),
(3, 'Administración de Empresas', 'ADMI', 'Ciencias Empresariales', NULL),
(4, 'Derecho', 'DER', 'Derecho', NULL),
(5, 'Medicina', 'MED', 'Ciencias de la Salud', NULL),
(6, 'Psicología', 'PSI', 'Ciencias Sociales', NULL),
(7, 'Arquitectura', 'ARQ', 'Arquitectura', NULL),
(8, 'Ingeniería Civil', 'ICIV', 'Ingeniería', NULL),
(9, 'Contaduría Pública', 'CONT', 'Ciencias Empresariales', NULL),
(10, 'Economía', 'ECO', 'Ciencias Empresariales', NULL),
(11, 'Ingeniería Electrónica', 'IELE', 'Ingeniería', NULL),
(12, 'Licenciatura en Educación', 'LED', 'Educación', NULL),
(13, 'Diseño Gráfico', 'DGRA', 'Artes', NULL),
(14, 'Ingeniería Mecánica', 'IMEC', 'Ingeniería', NULL),
(15, 'Mercadeo', 'MER', 'Ciencias Empresariales', NULL),
(16, 'Comunicación Social', 'COM', 'Comunicación', NULL),
(17, 'Ingeniería Ambiental', 'IAMB', 'Ingeniería', NULL),
(18, 'Odontología', 'ODO', 'Ciencias de la Salud', NULL),
(19, 'Enfermería', 'ENF', 'Ciencias de la Salud', NULL),
(20, 'Farmacia', 'FAR', 'Ciencias de la Salud', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `nombre_docente` varchar(100) NOT NULL,
  `apellido_docente` varchar(100) NOT NULL,
  `correo_docente` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `cedula` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `nombre_docente`, `apellido_docente`, `correo_docente`, `telefono`, `cedula`) VALUES
(1, 'Carlos', 'Pérez', 'carlos.perez@universidad.edu', '3001112233', '001-310798-0019A'),
(2, 'María', 'Gómez', 'maria.gomez@universidad.edu', '3001112234', '417-081204-0018S'),
(3, 'José', 'Rodríguez', 'jose.rodriguez@universidad.edu', '3001112235', '283-230592-0017L'),
(4, 'Ana', 'Martínez', 'ana.martinez@universidad.edu', '3001112236', '564-071180-0016D'),
(5, 'Luis', 'Hernández', 'luis.hernandez@universidad.edu', '3001112237', '001-190399-0015J'),
(6, 'Laura', 'López', 'laura.lopez@universidad.edu', '3001112238', '122-280666-0014V'),
(7, 'Diego', 'Sánchez', 'diego.sanchez@universidad.edu', '3001112239', '605-170973-0013B'),
(8, 'Paula', 'Ramírez', 'paula.ramirez@universidad.edu', '3001112240', '001-050801-0012H'),
(9, 'Andrés', 'Torres', 'andres.torres@universidad.edu', '3001112241', '417-311295-0011X'),
(10, 'Camila', 'Flores', 'camila.flores@universidad.edu', '3001112242', '283-090488-0010F'),
(11, 'Julián', 'Vargas', 'julian.vargas@universidad.edu', '3001112243', '001-140597-0009N'),
(12, 'Sofía', 'Castillo', 'sofia.castillo@universidad.edu', '3001112244', '564-221083-0008T'),
(13, 'Miguel', 'Rivera', 'miguel.rivera@universidad.edu', '3001112245', '001-081199-0007G'),
(14, 'Valeria', 'Morales', 'valeria.morales@universidad.edu', '3001112246', '122-150666-0006Y'),
(15, 'Felipe', 'Ortiz', 'felipe.ortiz@universidad.edu', '3001112247', '605-300891-0005R'),
(16, 'Natalia', 'Jiménez', 'natalia.jimenez@universidad.edu', '3001112248', '415-181072-0004M'),
(17, 'Santiago', 'Reyes', 'santiago.reyes@universidad.edu', '3001112249', '278-040597-0003P'),
(18, 'Gabriela', 'Díaz', 'gabriela.diaz@universidad.edu', '3001112250', '001-250785-1002K'),
(19, 'Esteban', 'Cruz', 'esteban.cruz@universidad.edu', '3001112251', '001-121099-0001W'),
(20, 'Daniela', 'Mendoza', 'daniela.mendoza@universidad.edu', '3001112252', '001-120500-0001U'),
(21, 'Robin', 'Arcenio', 'sami33@gmail.com', '888888888', '401-190403-100Y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellido`, `cedula`, `correo`, `telefono`, `fecha_registro`, `id_carrera`, `id_grupo`) VALUES
(1, 'Juan David', 'García López', '1010101010', 'juan.garcia@estudiante.edu', '3001234567', '2024-01-15', 1, 1),
(2, 'María José', 'Martínez Ruiz', '2020202020', 'maria.martinez@estudiante.edu', '3001234568', '2024-01-16', 1, 1),
(3, 'Pedro', 'Ramírez', '3030303030', 'pedro.ramirez@estudiante.edu', '3001234569', '2024-01-17', 1, 1),
(4, 'Ana Sofía', 'Torres Vega', '4040404040', 'ana.torres@estudiante.edu', '3001234570', '2024-01-18', 1, NULL),
(5, 'Luis Miguel', 'Hernández', '5050505050', 'luis.hernandez2@estudiante.edu', '3001234571', '2024-01-19', 1, NULL),
(6, 'Valentina', 'Castro', '6060606060', 'valentina.castro@estudiante.edu', '3001234572', '2024-01-20', 3, NULL),
(7, 'Santiago', 'Morales', '7070707070', 'santiago.morales@estudiante.edu', '3001234573', '2024-01-21', 1, NULL),
(8, 'Camila', 'Rojas', '8080808080', 'camila.rojas@estudiante.edu', '3001234574', '2024-01-22', 1, NULL),
(9, 'Diego', 'Vargas', '9090909090', 'diego.vargas@estudiante.edu', '3001234575', '2024-01-23', 1, NULL),
(10, 'Isabella', 'Pérez', '1111111111', 'isabella.perez@estudiante.edu', '3001234576', '2024-01-24', 3, NULL),
(11, 'Mateo', 'Gómez', '2222222222', 'mateo.gomez@estudiante.edu', '3001234577', '2024-01-25', 1, NULL),
(12, 'Valeria', 'López', '3333333333', 'valeria.lopez@estudiante.edu', '3001234578', '2024-01-26', 4, NULL),
(13, 'Sebastián', 'Díaz', '4444444444', 'sebastian.diaz@estudiante.edu', '3001234579', '2024-01-27', 1, NULL),
(14, 'Emma', 'Suárez', '5555555555', 'emma.suarez@estudiante.edu', '3001234580', '2024-01-28', 5, NULL),
(15, 'Daniel', 'Romero', '6666666666', 'daniel.romero@estudiante.edu', '3001234581', '2024-01-29', 1, NULL),
(16, 'Gabriela', 'Ortiz', '7777777777', 'gabriela.ortiz@estudiante.edu', '3001234582', '2024-01-30', 6, NULL),
(17, 'Alejandro', 'Cruz', '8888888888', 'alejandro.cruz@estudiante.edu', '3001234583', '2024-02-01', 1, NULL),
(18, 'Luna', 'Reyes', '9999999999', 'luna.reyes@estudiante.edu', '3001234584', '2024-02-02', 9, NULL),
(19, 'Martín', 'Silva', '1231231231', 'martin.silva@estudiante.edu', '3001234585', '2024-02-03', 1, NULL),
(20, 'Sara', 'Molina', '2342342342', 'sara.molina@estudiante.edu', '3001234586', '2024-02-04', 3, NULL),
(21, 'Samuel', 'Lopez', '401-190403-1011Y', 'samuellop316@gmail.com', '81296088', '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `nombre_grupo` varchar(50) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `aula` varchar(20) DEFAULT NULL,
  `cupo` int(11) DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `id_asignatura`, `id_docente`, `nombre_grupo`, `horario`, `aula`, `cupo`) VALUES
(1, 1, 1, 'matutino', 'Lun 7-9, Mie 7-9', 'A-101', 35),
(2, 1, 2, 'matutino', 'Mar 8-10, Jue 8-10', 'A-102', 35),
(3, 2, 3, 'matutino', 'Lun 10-12, Mie 10-12', 'Lab-201', 30),
(4, 2, 4, '02', 'Mar 14-16, Jue 14-16', 'Lab-202', 30),
(5, 3, 5, '01', 'Lun 14-16, Mie 14-16', 'B-301', 40),
(6, 4, 6, '01', 'Mar 10-12, Jue 10-12', 'B-302', 40),
(7, 7, 7, '01', 'Lun 16-18, Mie 16-18', 'Lab-301', 25),
(8, 7, 8, 'Noche', 'Lun 18-20, Mie 18-20', 'Lab-301', 25),
(9, 8, 9, '01', 'Mar 16-18, Jue 16-18', 'C-101', 30),
(10, 9, 10, '01', 'Lun 12-14, Mie 12-14', 'D-201', 35),
(11, 1, 3, '03', 'Vie 8-12', 'A-103', 30),
(12, 2, 5, '03', 'Vie 14-18', 'Lab-203', 28),
(13, 11, 11, '01', 'Lun 8-10, Mie 8-10', 'E-101', 40),
(14, 12, 12, '01', 'Mar 12-14, Jue 12-14', 'F-201', 35),
(15, 13, 13, '01', 'Lun 10-12, Mie 10-12', 'G-301', 30),
(16, 14, 14, '01', 'Mar 8-10, Jue 8-10', 'H-101', 35),
(17, 15, 15, '01', 'Lun 14-16, Mie 14-16', 'I-201', 30),
(18, 16, 16, '01', 'Vie 10-14', 'J-301', 25),
(19, 17, 17, '01', 'Lun 16-18, Mie 16-18', 'K-101', 30),
(20, 18, 18, '01', 'Mar 10-12, Jue 10-12', 'L-201', 35),
(21, 19, 19, '01', 'Lun 12-14, Mie 12-14', 'M-301', 30),
(22, 20, 20, '01', 'Vie 8-12', 'N-101', 28),
(23, 5, 1, '01', 'Mar 14-16, Jue 14-16', 'O-201', 35),
(24, 6, 2, '01', 'Lun 8-10, Mie 8-10', 'P-301', 30),
(25, 10, 4, '01', 'Vie 14-18', 'Q-101', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id_inscripcion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `fecha_inscripcion` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_inscripcion`, `id_estudiante`, `id_grupo`, `fecha_inscripcion`) VALUES
(1, 1, 1, '2025-11-24'),
(2, 4, 1, '2025-11-24'),
(3, 4, 10, '2025-11-24'),
(4, 4, 9, '2025-11-24'),
(5, 4, 4, '2025-11-24'),
(6, 4, 3, '2025-11-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matricula` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `fecha_matricula` date NOT NULL,
  `estado` varchar(20) DEFAULT 'activa',
  `periodo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `id_estudiante`, `id_grupo`, `fecha_matricula`, `estado`, `periodo`) VALUES
(1, 1, 1, '2025-01-20', 'activa', '2025-1'),
(2, 1, 3, '2025-01-20', 'activa', '2025-1'),
(3, 2, 1, '2025-01-21', 'activa', '2025-1'),
(4, 2, 4, '2025-01-21', 'activa', '2025-1'),
(5, 3, 2, '2025-01-22', 'activa', '2025-1'),
(6, 4, 5, '2025-01-22', 'activa', '2025-1'),
(7, 5, 7, '2025-01-23', 'activa', '2025-1'),
(8, 10, 8, '2025-01-25', 'activa', '2025-1'),
(9, 15, 10, '2025-01-26', 'activa', '2025-1'),
(10, 20, 12, '2025-01-27', 'activa', '2025-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `fecha_reporte` datetime NOT NULL,
  `total_estudiantes` int(11) NOT NULL,
  `aprobados` int(11) NOT NULL,
  `reprobados` int(11) NOT NULL,
  `asistencias` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`asistencias`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes_docentes`
--

CREATE TABLE `reportes_docentes` (
  `id_reporte` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `resumen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes_guardados`
--

CREATE TABLE `reportes_guardados` (
  `id_reporte` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `archivo_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('estudiante','docente','admin') NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `rol`, `id_estudiante`, `id_docente`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', NULL, NULL),
(2, 'juan.garcia', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'estudiante', 1, NULL),
(3, 'maria.martinez', '$2y$10$ghijk1234567890ghijk1234567890ghijk12', 'estudiante', 2, NULL),
(4, 'carlos.perez', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'docente', NULL, 1),
(5, 'ana.martinez', '$2y$10$qrstu1234567890qrstu1234567890qrstu12', 'docente', NULL, 4),
(6, 'maria.lopez', '$2y$10$z8Y9xL3f5jK7mN9pQ2r1tOe8vX5bF6gH7jI8kL9mN0oP1qR2sT3uV', 'estudiante', 2, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id_asignatura`),
  ADD UNIQUE KEY `codigo_asignatura` (`codigo_asignatura`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`),
  ADD UNIQUE KEY `codigo_carrera` (`codigo_carrera`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `correo_docente` (`correo_docente`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `fk_est_grupo` (`id_grupo`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupo`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`),
  ADD UNIQUE KEY `unique_matricula` (`id_estudiante`,`id_grupo`,`periodo`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `reportes_docentes`
--
ALTER TABLE `reportes_docentes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `reportes_guardados`
--
ALTER TABLE `reportes_guardados`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_docente` (`id_docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes_docentes`
--
ALTER TABLE `reportes_docentes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes_guardados`
--
ALTER TABLE `reportes_guardados`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`) ON DELETE SET NULL;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_est_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`) ON DELETE SET NULL;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`),
  ADD CONSTRAINT `grupos_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`);

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`);

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`),
  ADD CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`);

--
-- Filtros para la tabla `reportes_docentes`
--
ALTER TABLE `reportes_docentes`
  ADD CONSTRAINT `reportes_docentes_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`),
  ADD CONSTRAINT `reportes_docentes_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`);

--
-- Filtros para la tabla `reportes_guardados`
--
ALTER TABLE `reportes_guardados`
  ADD CONSTRAINT `reportes_guardados_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportes_guardados_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
