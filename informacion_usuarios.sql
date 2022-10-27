-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-10-2022 a las 13:27:21
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `v210700E`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_usuarios`
--

CREATE TABLE `informacion_usuarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informacion_usuarios`
--

INSERT INTO `informacion_usuarios` (`id`, `id_usuario`, `direccion`, `telefono`, `fecha_nacimiento`) VALUES
(1, 1, '41 Shopko Hill', '1021359574', '1964-02-11'),
(2, 2, '0881 Superior Parkway', '4925410360', '1942-07-26'),
(3, 3, '9 Pepper Wood Terrace', '1961517829', '1991-09-08'),
(4, 4, '09 Twin Pines Lane', '7944646535', '1945-08-11'),
(5, 5, '1974 Grim Pass', '4435205542', '1982-07-21'),
(6, 6, '59496 Shelley Pass', '2135682017', '1990-02-12'),
(7, 7, '17 Nova Trail', '1577877937', '1950-03-13'),
(8, 8, '611 6th Junction', '6806119577', '2002-11-25'),
(9, 9, '832 Lakewood Gardens Junction', '7696586857', '1998-05-20'),
(10, 10, '2 Blackbird Place', '1145171455', '1986-06-22'),
(11, 11, '59019 Butterfield Terrace', '7649321666', '1992-08-05'),
(12, 12, '22471 Westport Plaza', '3083446255', '2004-05-19'),
(13, 13, '7 Mariners Cove Lane', '9662068699', '1948-04-29'),
(14, 14, '058 Leroy Hill', '3965925249', '1977-03-05'),
(15, 15, '75 Petterle Crossing', '3781386969', '1998-08-13'),
(16, 16, '15931 Aberg Hill', '7269925146', '1973-10-20'),
(17, 17, '67667 Forest Junction', '7676916446', '2017-12-15'),
(18, 18, '69259 Oakridge Hill', '7124120786', '2007-03-24'),
(19, 19, '9 Westerfield Court', '9784769943', '1992-03-16'),
(20, 20, '668 Logan Crossing', '2501084115', '2002-11-24'),
(21, 21, '371 Pennsylvania Place', '1318172557', '1981-07-13'),
(22, 22, '2 Basil Drive', '8996508768', '1961-11-12'),
(23, 23, '2 Sugar Terrace', '3064332255', '2002-10-06'),
(24, 24, '93 Carberry Parkway', '8183386402', '1990-06-20'),
(25, 25, '65 Towne Pass', '7708315646', '1978-05-30'),
(26, 26, '21961 Chive Pass', '2279600018', '2003-06-04'),
(27, 27, '9 Lake View Avenue', '2928199964', '1988-01-01'),
(28, 28, '931 Parkside Way', '4977407865', '1990-04-28'),
(29, 29, '0060 La Follette Circle', '4711949187', '1954-10-18'),
(30, 30, '90 Golf Way', '6796689829', '2002-06-27'),
(31, 31, '7548 Express Plaza', '8975495939', '1963-09-03'),
(32, 32, '9 Corry Park', '7664317094', '1998-08-02'),
(33, 33, '79 7th Plaza', '1015871990', '1972-05-26'),
(34, 34, '03 Graceland Junction', '8143405374', '1953-05-11'),
(35, 35, '133 Dakota Place', '4349436175', '1964-10-18'),
(36, 36, '31 Spaight Alley', '3477676346', '1981-03-01'),
(37, 37, '7 Jenna Hill', '4279073110', '1976-01-30'),
(38, 38, '16290 Lighthouse Bay Parkway', '6728326044', '2006-07-17'),
(39, 39, '628 Homewood Plaza', '5737404798', '1957-11-04'),
(40, 40, '9 Nelson Drive', '8517485803', '2018-07-07'),
(41, 41, '30883 Brickson Park Crossing', '1543380285', '2005-09-10'),
(42, 42, '7120 Barnett Trail', '2123912056', '1946-04-17'),
(43, 43, '56114 Delaware Park', '3357374534', '1973-11-10'),
(44, 44, '1 Northport Hill', '6358034222', '1960-01-22'),
(45, 45, '3694 Dixon Place', '5749881823', '1951-03-27'),
(46, 46, '9328 Superior Park', '4272466269', '1984-01-08'),
(47, 47, '83 Upham Pass', '3579952412', '1953-02-01'),
(48, 48, '3 La Follette Drive', '6793994002', '1981-07-22'),
(49, 49, '6629 Pond Parkway', '9749060839', '2005-03-08'),
(50, 50, '8 Claremont Hill', '5354469230', '1950-06-28'),
(51, 51, '3 Division Way', '3815239284', '1993-05-30'),
(52, 52, '56757 Di Loreto Center', '1151022782', '2005-09-06'),
(53, 53, '79839 Oneill Trail', '5939700821', '1995-09-16'),
(54, 54, '9 Del Mar Pass', '3557031122', '1954-11-20'),
(55, 55, '28 La Follette Place', '8751568541', '1951-01-24'),
(56, 56, '223 Fairfield Road', '8955889384', '1977-04-29'),
(57, 57, '0744 Lakeland Road', '2232542620', '2012-12-28'),
(58, 58, '37 Sunnyside Terrace', '2651135634', '1975-05-29'),
(59, 59, '982 Helena Plaza', '4014952504', '1944-05-11'),
(60, 60, '530 Harbort Plaza', '3135587580', '1990-12-23'),
(61, 61, '0809 Upham Pass', '7808419665', '1971-06-23'),
(62, 62, '272 Express Alley', '8098535355', '1956-01-30'),
(63, 63, '313 Stang Point', '8478729937', '2014-11-07'),
(64, 64, '060 Dottie Park', '8003656607', '1970-04-14'),
(65, 65, '01 Tomscot Junction', '9524692065', '1984-05-29'),
(66, 66, '34635 Duke Drive', '3594256962', '1952-04-04'),
(67, 67, '58780 Hagan Road', '8764942614', '2007-06-01'),
(68, 68, '85 Marquette Parkway', '3903130063', '1954-12-19'),
(69, 69, '70 Kim Parkway', '3422123080', '1987-12-23'),
(70, 70, '966 Green Ridge Point', '5717628560', '2018-10-29'),
(71, 71, '40498 Longview Road', '7998287830', '2010-06-01'),
(72, 72, '019 Vahlen Avenue', '4261759551', '1947-03-13'),
(73, 73, '2 Artisan Park', '5599999638', '1945-11-15'),
(74, 74, '4959 Grayhawk Court', '6022490318', '1988-06-02'),
(75, 75, '7387 Di Loreto Trail', '5012312449', '1991-07-17'),
(76, 76, '32860 Orin Way', '6443347749', '1973-12-02'),
(77, 77, '1033 Independence Way', '7939238117', '1947-04-02'),
(78, 78, '61642 Russell Plaza', '7022853923', '1950-12-07'),
(79, 79, '5 Dixon Alley', '4565147083', '1953-04-03'),
(80, 80, '57 Mosinee Junction', '8058164253', '2021-06-28'),
(81, 81, '4 Rutledge Way', '9098641624', '1998-09-27'),
(82, 82, '7 Ridge Oak Crossing', '4822481110', '1994-01-04'),
(83, 83, '0 Shasta Lane', '8071675298', '1948-01-21'),
(84, 84, '5 Eagle Crest Pass', '1643180004', '1992-11-20'),
(85, 85, '43554 Elmside Way', '9393028778', '1954-09-15'),
(86, 86, '13 Eastlawn Point', '5708728136', '2004-10-09'),
(87, 87, '5 International Avenue', '2052362116', '1954-07-26'),
(88, 88, '75121 Sherman Drive', '4021288674', '1989-05-05'),
(89, 89, '613 Thompson Lane', '8617951044', '1977-11-10'),
(90, 90, '5109 Petterle Park', '9082455291', '1982-03-05'),
(91, 91, '01 5th Point', '4021269377', '1987-08-19'),
(92, 92, '145 Golden Leaf Trail', '8441214127', '1967-03-15'),
(93, 93, '7366 Clarendon Plaza', '1557551261', '2019-02-02'),
(94, 94, '0 Magdeline Point', '5763524805', '2022-09-15'),
(95, 95, '9 Old Shore Court', '9099147403', '2007-03-10'),
(96, 96, '739 Sauthoff Road', '2201610544', '2015-11-03'),
(97, 97, '169 Hovde Park', '4062731756', '1976-03-02'),
(98, 98, '09078 Susan Avenue', '1716847530', '2014-12-17'),
(99, 99, '62 Sycamore Place', '6216974669', '2013-03-28'),
(100, 100, '51345 Butternut Junction', '5767293512', '1954-10-03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `informacion_usuarios`
--
ALTER TABLE `informacion_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `informacion_usuarios`
--
ALTER TABLE `informacion_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
