-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-10-2022 a las 13:25:50
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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `password`) VALUES
(1, 'Shoshana Ramberg', 'sramberg0@vinaora.com', '6kFobPG'),
(2, 'Valina Tezure', 'vtezure1@t.co', 'I1vUJh'),
(3, 'Dalis Kubicek', 'dkubicek2@nhs.uk', 'OfFTWIw'),
(4, 'Barnaby Lambis', 'blambis3@unc.edu', 'aohaXH'),
(5, 'Yoko Plewes', 'yplewes4@nasa.gov', '2RlthDk'),
(6, 'Torry Braidwood', 'tbraidwood5@usda.gov', 'B3rrYBKL'),
(7, 'Orel Corter', 'ocorter6@4shared.com', 'oSgXJ4G2FBzc'),
(8, 'Wittie Romanski', 'wromanski7@cyberchimps.com', '1TSYHh2'),
(9, 'Marlo Attreed', 'mattreed8@com.com', 'zDDE9X1Z89ac'),
(10, 'Jenda Kettles', 'jkettles9@digg.com', '3MwLs0'),
(11, 'Terza Perllman', 'tperllmana@dropbox.com', 'aTEB4xzzI8bv'),
(12, 'Karee Phinn', 'kphinnb@microsoft.com', 'UGzkXtQtyP1s'),
(13, 'Leigh Benedtti', 'lbenedttic@aboutads.info', 'ZZfDyHi'),
(14, 'Aaren Hinchshaw', 'ahinchshawd@over-blog.com', 'tgYRML7HnOp'),
(15, 'Wilden Elnough', 'welnoughe@bloglines.com', '1PqNMt'),
(16, 'Hayyim Lampett', 'hlampettf@telegraph.co.uk', 'Pu3uVb7hXe9'),
(17, 'Katerina Pickerin', 'kpickering@omniture.com', 'dCNmPfqs9'),
(18, 'Marcus Canfield', 'mcanfieldh@linkedin.com', 'y76T0o'),
(19, 'Dale Cherm', 'dchermi@examiner.com', '3fWompaa'),
(20, 'Charlie Struther', 'cstrutherj@google.it', 'CoK7Zc'),
(21, 'Chip Edmunds', 'cedmundsk@reddit.com', 'OK8YHK3zoJ'),
(22, 'Iggie Huller', 'ihullerl@about.me', 'zkWd6LDWOE'),
(23, 'Trstram Seal', 'tsealm@ed.gov', 'nr6vE7w06LS0'),
(24, 'Gertruda Newbigging', 'gnewbiggingn@adobe.com', 'o4GMisDLjH4T'),
(25, 'Malina Kensall', 'mkensallo@timesonline.co.uk', 'fRAiEoBf'),
(26, 'Allis Goldingay', 'agoldingayp@cloudflare.com', 'TbwFqzxLmi'),
(27, 'Bert Bushby', 'bbushbyq@eepurl.com', 'santakkK'),
(28, 'Junina Gogarty', 'jgogartyr@adobe.com', 'RefuZhrUEt74'),
(29, 'Merle Fulmen', 'mfulmens@netlog.com', '1PUJQox'),
(30, 'Timi Cosin', 'tcosint@ebay.co.uk', 'otWNRBNGj'),
(31, 'Jorrie O\'Hallihane', 'johallihaneu@craigslist.org', 'rDy0J2'),
(32, 'Davine Oxlee', 'doxleev@tumblr.com', 'KmX9g8IqnN'),
(33, 'Creighton Casely', 'ccaselyw@hubpages.com', 'pDPHJkDtkR'),
(34, 'Irv Quarton', 'iquartonx@psu.edu', 'NCh0qqchRtiC'),
(35, 'Dyan Lammie', 'dlammiey@yellowbook.com', 'LvrvUcniQ'),
(36, 'Burton Rennix', 'brennixz@ycombinator.com', 'hVyJqT0wp'),
(37, 'Bernice Kinton', 'bkinton10@wikispaces.com', 'UXnR8fhMu5Q'),
(38, 'Goober Pietruschka', 'gpietruschka11@princeton.edu', 'u9e5DWAnnN'),
(39, 'Pia MacGillacolm', 'pmacgillacolm12@is.gd', 'vD7wLcKiBvO'),
(40, 'Trey Filyaev', 'tfilyaev13@independent.co.uk', 'PuuXsX'),
(41, 'Zacherie Friedenbach', 'zfriedenbach14@webeden.co.uk', 'AFuiYvp5CX'),
(42, 'Shanda Gianuzzi', 'sgianuzzi15@deviantart.com', 'OkwalH4uSQOX'),
(43, 'Charla Siggs', 'csiggs16@pagesperso-orange.fr', 'Ya2fFjSN0d'),
(44, 'Carney Conant', 'cconant17@netscape.com', 'eOT3uPutCYgr'),
(45, 'Marietta Espin', 'mespin18@marketwatch.com', 'EEZ5Ty2K'),
(46, 'Hedda Hay', 'hhay19@weather.com', '72EBqEcfPeK'),
(47, 'Lanae Lowers', 'llowers1a@exblog.jp', 'c7gUQGIl5fui'),
(48, 'Gavan Pickup', 'gpickup1b@mapy.cz', 'kmyYj1'),
(49, 'Symon Regitz', 'sregitz1c@addthis.com', 'IhQNxdyAvyB'),
(50, 'Maible Nelthorpe', 'mnelthorpe1d@theatlantic.com', 'mSHEuGG'),
(51, 'Denice Faughnan', 'dfaughnan1e@zdnet.com', 'q26Xs3a'),
(52, 'Myrilla Velten', 'mvelten1f@cafepress.com', 'xZpfsMB9'),
(53, 'Gene Pryor', 'gpryor1g@bandcamp.com', 'p4E76dQEJpfR'),
(54, 'Weber Grigoli', 'wgrigoli1h@ning.com', 'RekoeDl2'),
(55, 'Dido Corbyn', 'dcorbyn1i@slate.com', 'UG3sW9'),
(56, 'Anastasie Smittoune', 'asmittoune1j@youtube.com', 'XucGbd2l'),
(57, 'Berky Pounds', 'bpounds1k@123-reg.co.uk', 'QTJXWuzP'),
(58, 'Jeri Baltzar', 'jbaltzar1l@feedburner.com', 'ChhmlFm'),
(59, 'Humfrid Baudin', 'hbaudin1m@typepad.com', 'tLdAO6Dgaox'),
(60, 'Barbabra Tallquist', 'btallquist1n@webs.com', 'MHGBZb4L'),
(61, 'Keelby Rizzelli', 'krizzelli1o@geocities.jp', 'qRe3WM'),
(62, 'Romonda Kunkel', 'rkunkel1p@nytimes.com', 'rA0B9aAX'),
(63, 'Fidelia Glasspoole', 'fglasspoole1q@weebly.com', 'JdXHzWZ'),
(64, 'Carma Hearnaman', 'chearnaman1r@uiuc.edu', 'dJ84BOR8bH'),
(65, 'Krissie Craw', 'kcraw1s@myspace.com', '9lkY8yP'),
(66, 'Chrysa Twentyman', 'ctwentyman1t@privacy.gov.au', 'BJgWMquXv'),
(67, 'Sharyl Marshman', 'smarshman1u@youtube.com', '9ZpVxgE82H3'),
(68, 'Barbara-anne Petyakov', 'bpetyakov1v@github.com', 'O7YOnxjLBnuB'),
(69, 'Vassili Dixey', 'vdixey1w@weebly.com', '8xpE7gX'),
(70, 'Bart Pavel', 'bpavel1x@imgur.com', '3TpZzWr9hM'),
(71, 'Bernie MacGahy', 'bmacgahy1y@ovh.net', '06ZSh8dzQ2'),
(72, 'Doris Smallpeice', 'dsmallpeice1z@mlb.com', 'sJWbr9w3m2wj'),
(73, 'Douglass Lanfer', 'dlanfer20@eventbrite.com', '71nQZ3w4d'),
(74, 'Lyssa Keep', 'lkeep21@tripadvisor.com', 'yC7xswdptgIw'),
(75, 'Debee Duddy', 'dduddy22@icq.com', 'wMBceGK3QO'),
(76, 'Fionnula Dunk', 'fdunk23@ameblo.jp', 'FLWqMq'),
(77, 'Toma Dellenbrok', 'tdellenbrok24@photobucket.com', 'n7A3Li8'),
(78, 'Fedora Crop', 'fcrop25@mapquest.com', 'nGy4ACCYIHZ'),
(79, 'Imelda Andrei', 'iandrei26@com.com', 'iSZJCIt'),
(80, 'Patrice Bescoby', 'pbescoby27@xinhuanet.com', 'zkk8LU'),
(81, 'Chrystel Joseph', 'cjoseph28@tripod.com', 'GaHu7Lee5Zf'),
(82, 'Randell Pentlow', 'rpentlow29@prlog.org', 'dzSVX4'),
(83, 'Cornelia Paolucci', 'cpaolucci2a@google.pl', 'moRByw'),
(84, 'Nessi Lamyman', 'nlamyman2b@boston.com', '7pkDAw'),
(85, 'Hall O\'Mahoney', 'homahoney2c@friendfeed.com', 'BltZdabihm'),
(86, 'Brice Brightling', 'bbrightling2d@wp.com', 'r7Zy9Iyba'),
(87, 'Allyn Custard', 'acustard2e@webeden.co.uk', 'zVEGxL2Xq'),
(88, 'Estel Petri', 'epetri2f@topsy.com', 'oeqAUrQAq9r'),
(89, 'Petra Eshelby', 'peshelby2g@indiatimes.com', 'WtIQTiZ1Yk'),
(90, 'Logan Anstey', 'lanstey2h@arstechnica.com', '86b7rXrZDW0Z'),
(91, 'Patrica Creelman', 'pcreelman2i@opensource.org', 'eAkfhkEsB7aJ'),
(92, 'Malva Jendrassik', 'mjendrassik2j@ucoz.ru', 'VI9UxrTPvg'),
(93, 'Helaina Littlemore', 'hlittlemore2k@washington.edu', 'xiEDu7uL'),
(94, 'Sarena Alloisi', 'salloisi2l@ihg.com', 'uLkaspUE004'),
(95, 'Rodolfo Lackie', 'rlackie2m@google.de', '0wYCYid3'),
(96, 'Kellia Cess', 'kcess2n@marketwatch.com', 'YgWVje'),
(97, 'Kayne Baldick', 'kbaldick2o@netscape.com', 'ZkAKO8OyBjma'),
(98, 'Garrek Spry', 'gspry2p@ask.com', 'EPuYAXfCNds'),
(99, 'Angel Facher', 'afacher2q@tmall.com', 'HH41Wzzp9u'),
(100, 'Calla McMeekin', 'cmcmeekin2r@dagondesign.com', '9ezZ2oecxhn');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
