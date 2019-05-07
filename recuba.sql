-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2019 at 12:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recuba`
--
CREATE TABLE `queues`(
  `q_id` int not null AUTO_INCREMENT primary key,
  `fecha` date not null,
  `peso` double not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------
INSERT INTO `queues` (`q_id`, `fecha`, `peso`) VALUES
(null, '2019-05-02', 0.00),
(null, '2019-05-07', 0.00),
(null, '2019-05-09', 0.00),
(null, '2019-05-14', 0.00),
(null, '2019-05-16', 0.00),
(null, '2019-05-21', 0.00),
(null, '2019-05-23', 0.00),
(null, '2019-05-28', 0.00);
--
-- Table structure for table `chofer`
--

CREATE TABLE `chofer` (
  `ci` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chofer`
--

INSERT INTO `chofer` (`ci`, `nombre`, `fecha_nac`) VALUES
(1, 'Diego', '1997-12-10'),
(2, 'Lucero', '1997-10-10'),
(3, 'Amanda', '1997-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE `detalle` (
  `detalle_id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `empred_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `pedido_dia`
--

CREATE TABLE `pedido_dia` (
  `pedido_dia_id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `fechatrab` date,
  `fecha_hora_ped` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `empresa_usuario`
--

CREATE TABLE `empresa_usuario` (
  `nit` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `dir` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `rubro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Set UserPrueba
INSERT INTO `empresa_usuario`(`nit`, `nombre`, `salt`, `hash`, `dir`, `correo`, `telefono`, `rubro`) VALUES (4916388,'Diego','Y/M5WlPUt8Tu7wsPwpUvb/NA6oPO0rDraFG0aeFO9qM=','39a69004f5857085f0294167bf378274166abdcb53a0819552d41cfe011909c0','Amor de Dios Calle 1 Número 42','diegowrhasta@gmail.com',75227363,'Gastronomía');
--
-- Table structure for table `empr_ped`
--

CREATE TABLE `empr_ped` (
  `empred_id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `ped_id` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `familias`
--

CREATE TABLE `familias` (
  `familia_id` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `familias`
--

INSERT INTO `familias` (`familia_id`, `nombre`) VALUES
(1, 'Perifericos de entrada Grandes'),
(2, 'Perifericos de entrada Medianos'),
(3, 'Perifericos de entrada Pequeños'),
(4, 'Perifericos de salida Grandes'),
(5, 'Perifericos de salida Medianos'),
(6, 'Perifericos de salida Pequeños'),
(7, 'Cables Grandes'),
(8, 'Cables Medianos'),
(9, 'Cables Pequeños'),
(10, 'Computadoras Grandes'),
(11, 'Computadoras Medianas'),
(12, 'Computadoras Pequeñas'),
(13, 'Monitores Grandes'),
(14, 'Monitores Medianos'),
(15, 'Monitores Pequeños'),
(16, 'Televisiones Grandes'),
(17, 'Televisiones Medianas'),
(18, 'Televisiones Pequeñas'),
(19, 'Modems Grandes'),
(20, 'Modems Medianos'),
(21, 'Modems Pequeños'),
(22, 'Routers Grandes'),
(23, 'Routers Medianos'),
(24, 'Routers Pequeños'),
(25, 'Switches Grandes'),
(26, 'Switches Medianos'),
(27, 'Switches Pequeños'),
(28, '(Otros) Grandes'),
(29, '(Otros) Medianos'),
(30, '(Otros) Pequeños');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `fecha_trab`
--

CREATE TABLE `fecha_trab` (
  `fechatrab_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `chofer_id` int(11) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- Set Mes Trabajo
INSERT INTO `fecha_trab`(`fechatrab_id`, `fecha`, `chofer_id`, `zona`) VALUES
(1, '2019-05-02', 1,'Zona Periférica'),
(2, '2019-05-07', 2,'Zona Max Paredes'),
(3, '2019-05-09', 3,'Zona San Antonio'),
(4, '2019-05-14', 1,'Zona Cotahuma'),
(5, '2019-05-16', 2,'Zona Sur'),
(6, '2019-05-21', 3,'Zona Centro'),
(7, '2019-05-23', 1,'Zona Cotahuma, Sur, Centro'),
(8, '2019-05-28', 1,'Zona Max Paredes, Periférica, San Antonio');
--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `familia` varchar(50) DEFAULT NULL,
  `peso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `nombre`, `familia`, `peso`) VALUES
(1, 'Cable Sata', 'Cables Grandes', 0.2871847),
(2, 'Cable VGA', 'Cables Grandes', 0.2721554),
(3, 'Cable HDMI', 'Cables Grandes', 0.1814369),
(4, 'Cable Serial', 'Cables Grandes', 0.1219029),
(5, 'Cable UTP', 'Cables Medianos', 0.2863302),
(6, 'Cable FTP', 'Cables Medianos', 0.3005049),
(7, 'Cable SFTP', 'Cables Medianos', 0.294835),
(8, 'Cable USB', 'Cables Pequeños', 0.1088622),
(9, 'Cable Circuitos', 'Cables Pequeños', 0.0001254),
(10, 'Mainframe', 'Computadoras Grandes', 100),
(11, 'Servidor', 'Computadoras Grandes', 10),
(12, 'Laptop 15 Pulgadas', 'Computadoras Medianas', 2.267962),
(13, 'CPU', 'Computadoras Medianas', 8.60777),
(14, 'Notebook', 'Computadoras Pequeñas', 2.199923),
(15, 'Monitor 21 Pulgadas Plano', 'Monitores Grandes', 2.99371),
(16, 'Televisión 21 Pulgadas Plano', 'Televisiones Grandes', 3.084428),
(17, 'Televisión Cuadrada', 'Televisiones Grandes', 5.397749),
(18, 'Monitor 17 Pulgadas Plano', 'Monitores Medianos', 2.812273),
(19, 'Televisión 17 Pulgadas Plano', 'Televisiones Medianas', 2.222603),
(20, 'Televisión 13 Pulgadas Plano', 'Televisiones Pequeñas', 1.216083),
(21, 'Monitor 13 Pulgadas Plano', 'Monitores Pequeños', 1.315418),
(22, 'Modem Grande', 'Modems Grandes', 1.002439),
(23, 'Modem Mediano', 'Modems Medianos', 0.3175147),
(24, 'Modem Pequeño', 'Modems Pequeños', 0.03175147),
(25, 'Router Grande', 'Routers Grandes', 0.04677671),
(26, 'Router Mediano', 'Routers Medianos', 0.03968933),
(27, 'Router Pequeño', 'Routers Pequeños', 0.02267962),
(28, 'Switch Grande', 'Switches Grandes', 2.290641),
(29, 'Switch', 'Switches Medianos', 2.140956),
(30, 'Switch Pequeño', 'Switches Pequeños', 0.3628739),
(31, 'Consola de Audio', 'Periféricos de Entrada Grandes', 4.082331),
(32, 'Micrófono Profesional', 'Periféricos de Entrada Grandes', 1.592109),
(33, 'Teclado', 'Periféricos de Entrada Medianos', 0.9071847),
(34, 'Mouse Mediano', 'Periféricos de Entrada Medianos', 0.1417476),
(35, 'Cámara de Video', 'Periféricos de Entrada Medianos', 0.3628739),
(36, 'Mouse Pequeño', 'Periféricos de Entrada Pequeños', 0.085448),
(37, 'Fuente de Poder', '(Otros) Grandes', 1.660148),
(38, 'Ventiladores Grandes', '(Otros) Grandes', 0.7393556),
(39, 'Case', '(Otros) Grandes', 11.29445),
(40, 'Motherboard Grande', '(Otros) Grandes', 1.011511),
(41, 'HDD', '(Otros) Grandes', 0.7302837),
(42, 'Rack', '(Otros) Grandes', 29.66494),
(43, 'Ventiladores Medianos', '(Otros) Medianos', 0.5896701),
(44, 'Reloj Digital Mediano', '(Otros) Medianos', 0.3005049),
(45, 'Motherboard Mediana', '(Otros) Medianos', 0.4535924),
(46, 'RAM Mediana', '(Otros) Medianos', 0.1219029),
(47, 'Tarjeta de Vídeo Grande', '(Otros) Medianos', 1.070478),
(48, 'HDD Grande', '(Otros) Medianos', 0.416738),
(49, 'SSD Grande', '(Otros) Medianos', 0.08618255),
(50, 'Lector CD/DVD Mediano', '(Otros) Medianos', 0.4535924),
(51, 'Tarjeta de Sonido Grande', '(Otros) Medianos', 1.496855),
(52, 'Tarjeta de red Grande', '(Otros) Medianos', 0.1088622),
(53, 'Partes Rack Medianas', '(Otros) Medianos', 10.365489),
(54, 'Reloj Digital Pequeño', '(Otros) Pequeños', 29.66494),
(55, 'RAM Pequeña', '(Otros) Pequeños', 0.099864),
(56, 'Tarjeta de Vïdeo Pequeña', '(Otros) Pequeños', 0.2494758),
(57, 'SSD Pequeño', '(Otros) Pequeños', 0.04535924),
(58, 'Lector CD/DVD Pequeño', '(Otros) Pequeños', 0.2721554),
(59, 'Tarjeta de Sonido Pequeña', '(Otros) Pequeños', 0.1275729),
(60, 'Tarjeta de red pequeña', '(Otros) Pequeños', 0.09071847),
(61, 'Partes Rack Pequeñas', '(Otros) Pequeños', 5.66348),
(62, 'Proyectores', 'Periféricos de Salida Grandes', 8.542214),
(63, 'Fotocopiadoras Grandes', 'Periféricos de Salida Grandes', 27.17018),
(64, 'Plotters', 'Periféricos de Salida Grandes', 19),
(65, 'Impresora 3D', 'Periféricos de Salida Grandes', 8.845051),
(66, 'Altavoces', 'Periféricos de Salida Medianos', 3.220506),
(67, 'Impresoras Medianas', 'Periféricos de Salida Medianos', 10.45911),
(68, 'Headphones', 'Periféricos de Salida Pequeños', 0.2721554);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id_ped` int(11) NOT NULL AUTO_INCREMENT primary key,
  `fecha_rec` datetime DEFAULT NULL,
  `cord_x` double DEFAULT NULL,
  `cord_y` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `recojo`
--

CREATE TABLE `recojo` (
  `r_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `chofer_id` int(11) DEFAULT NULL,
  `empred_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chofer`
--
ALTER TABLE `chofer`
  ADD PRIMARY KEY (`ci`);

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `empred_id` (`empred_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `empresa_usuario`
--
ALTER TABLE `empresa_usuario`
  ADD PRIMARY KEY (`nit`);

--
-- Indexes for table `empr_ped`
--
ALTER TABLE `empr_ped`
  ADD KEY `ped_id` (`ped_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`familia_id`);

--
-- Indexes for table `fecha_ped`
--
ALTER TABLE `fecha_ped`
  ADD PRIMARY KEY (`ped_id`);

--
-- Indexes for table `fecha_trab`
--
ALTER TABLE `fecha_trab`
  ADD PRIMARY KEY (`fechatrab_id`),
  ADD KEY `chofer_id` (`chofer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `recojo`
--
ALTER TABLE `recojo`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `empred_id` (`empred_id`),
  ADD KEY `chofer_id` (`chofer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`empred_id`) REFERENCES `empr_ped` (`empred_id`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `empr_ped`
--
ALTER TABLE `empr_ped`
  ADD CONSTRAINT `empr_ped_ibfk_1` FOREIGN KEY (`ped_id`) REFERENCES `pedido` (`id_ped`),
  ADD CONSTRAINT `empr_ped_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `empresa_usuario` (`nit`);

--
-- Constraints for table `fecha_trab`
--
ALTER TABLE `fecha_trab`
  ADD CONSTRAINT `fecha_trab_ibfk_1` FOREIGN KEY (`chofer_id`) REFERENCES `chofer` (`ci`);

--
-- Constraints for table `recojo`
--
ALTER TABLE `recojo`
  ADD CONSTRAINT `recojo_ibfk_1` FOREIGN KEY (`empred_id`) REFERENCES `empr_ped` (`empred_id`),
  ADD CONSTRAINT `recojo_ibfk_2` FOREIGN KEY (`chofer_id`) REFERENCES `chofer` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
