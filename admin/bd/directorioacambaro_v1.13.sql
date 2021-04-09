-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-04-2021 a las 01:55:05
-- Versión del servidor: 10.4.14-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u368817209_miacambaro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `idAnuncio` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `url_imagen` varchar(200) DEFAULT 'uploads/images/mi_negocio.jpg',
  `municipio` varchar(50) NOT NULL DEFAULT 'Acámbaro',
  `estado` varchar(20) NOT NULL DEFAULT 'Guanajuato',
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `youtube` varchar(200) DEFAULT NULL,
  `sitio` varchar(200) DEFAULT NULL,
  `google_maps` varchar(500) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `primer_dia_sem` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') DEFAULT NULL,
  `ultimo_dia_sem` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') DEFAULT NULL,
  `entrada` varchar(20) NOT NULL,
  `cierre` varchar(20) NOT NULL,
  `estatus_anuncio` enum('Publicado','Borrador','Inactivo') NOT NULL DEFAULT 'Borrador',
  `keywords` varchar(500) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `destacado` enum('Sí','No') NOT NULL DEFAULT 'No',
  `idSolicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`idAnuncio`, `idCategoria`, `titulo`, `url_imagen`, `municipio`, `estado`, `calle`, `colonia`, `cp`, `telefono`, `whatsapp`, `facebook`, `instagram`, `youtube`, `sitio`, `google_maps`, `descripcion`, `primer_dia_sem`, `ultimo_dia_sem`, `entrada`, `cierre`, `estatus_anuncio`, `keywords`, `fecha_publicacion`, `destacado`, `idSolicitud`) VALUES
(503, 248, 'Tacos El Guero', 'uploads/images/tacos_guero.jpg', 'Acámbaro', 'Guanajuato', '16 de Septiembre esq. con Allende ', 'Centro', '38600', '4171022241', '4171022241', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.0870612337325!2d-100.72527977088278!3d20.035851059098327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ee5ba2737%3A0xfd22d68e9dd050e6!2sCalle%2016%20de%20Septiembre%20%26%20Calle%20I.%20Allende%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606522213364!5m2!1ses-419!2smx', 'Ricos tacos de bistec, tripas chorizo y al pastor, quesadillas, tortas de bistec tripas chorizo y pastor, jamón pierna y hawuayana. Servicio a domicilio.', 'Lunes', 'Domingo', '10:00', '22:00', 'Publicado', 'Tacos El Guero Taquerias Comida Bisteck  Chorizo Tripa  Al  Pastor Quesadillas', '2020-11-27', 'No', NULL),
(7380, 8, 'Agencia de Viajes VAT', 'uploads/images/vat.jpg', 'Acámbaro', 'Guanajuato', 'Fundadores 33', 'Valle de Acámbaro', '38642', '4171729300', '4171729300', '', '', '', '', '', 'Agencia de Viajes VAT', '', '', '00:00', '00:00', 'Publicado', 'Agencia de Viajes VAT', '2020-11-26', 'No', 6),
(7381, 224, 'El Típico Antojo', 'uploads/images/tipico.jpg', 'Acámbaro', 'Guanajuato', 'Zaragoza #3C', 'Centro', '38600', '4171022000', '4171022000', 'https://www.facebook.com/El-T%C3%ADpico-Antojo-100408331802808', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3402924546263!2d-100.72260228508372!3d20.036184386544313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6fb019734d9f1e5d!2sEl%20T%C3%ADpico%20Antojo!5e0!3m2!1ses-419!2smx!4v1606509592628!5m2!1ses-419!2smx', 'Restaurante de comida típica, molcajete, mixiotes.\r\nContamos con servicio a domicilio\r\n4171022000', 'Martes', 'Domingo', '11:00', '22:00', 'Publicado', 'El típico antojo el tipico antojo antojitos comida mexicana antojos restaurantes bares', '2020-11-27', 'No', 9),
(7382, 33, 'Café Pool', 'uploads/images/cafe_pool.jpg', 'Acámbaro', 'Guanajuato', 'Primera de mayo 1110-A', 'Centro', '38600', '4171792929', '4171792929', 'https://www.facebook.com/pages/Caf%C3%A9%20Pool/454772894542282/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.476306785622!2d-100.72727638619939!3d20.030482626483092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66cf598b269%3A0xfa356889d46f021!2sCafe%20Pool!5e0!3m2!1ses-419!2smx!4v1607024970227!5m2!1ses-419!2smx', 'Bar Cafe Pool Disfruta el mejor ambiente con música en vivo los fines de semana', '', '', '00:00', '00:00', 'Publicado', 'Bar Cafe Pool', '2020-11-26', 'No', 10),
(7383, 104, 'Funeraria Santa Rita', 'uploads/images/santarita.jpg', 'Acámbaro', 'Guanajuato', '16 de Septiembre # 230', 'Centro', '38600', '4171720000', '4171720000', '', '', '', '', '', 'Cementerio, servicios funerarios y de previsión, \r\nfacebook funeraria Santa Rita\r\ncorreo malagon12@hotmail.com\r\n', '', '', '00:00', '00:00', 'Publicado', 'Funeraria Santa Rita funeraria santa rita funerarias ', '2020-11-26', 'No', 11),
(7384, 190, 'Bolis Artesanales Dulzura', 'uploads/images/bolis.jpg', 'Acámbaro', 'Guanajuato', 'Guerrero#101', 'Centro', '38600', '4171300226', '4171300226', '', '', '', '', '', 'Producimos Bolis Artesanales, elaborados con un alto control de higiene, calidad y servicio, con sabores innovadores acordes a cada gusto del cliente, con acabados que nos distinguen, permitiendo así ', '', '', '00:00', '00:00', 'Publicado', 'Dulzura Bolis Artesanales dulzura bolis artesanales peleterías paleterias neveria', '2020-11-26', 'No', 12),
(7385, 190, 'Paletería y Nevería Guerrero', 'uploads/images/paleterias.jpg', 'Acámbaro', 'Guanajuato', 'Guerrero #101', 'Centro', '38600', '4171729749', NULL, '', '', '', '', '', 'Producimos paletas y nieve , elaborados con un alto control de higiene, calidad y servicio, con sabores innovadores acordes a cada gusto del cliente, con acabados que nos distinguen, permitiendo así u', '', '', '00:00', '00:00', 'Publicado', 'Paletería y Nevería Guerrero paleteria y neveria guerrero paleterías paleterias nieves nieve paletas', '2020-11-26', 'No', 13),
(7386, 112, 'Fama Representaciones Artisticas', 'uploads/images/fama.jpg', 'Acámbaro', 'Guanajuato', 'Sierra Nevada 34', 'Loma Bonita', '38610', '4171175527', '4171175527', '', '', '', '', '', 'Contratación de servicios musicales', '', '', '00:00', '00:00', 'Publicado', 'Fama Representaciones Artísticas fama representaciones artisticas grupos musicales bandas mariachis equipos de audio iluminación iluminacion', '2020-11-26', 'No', 14),
(7387, 235, 'Qualitas ODQ compañia de Seguros SA de CV', 'uploads/images/qualitas.jpg', 'Acámbaro', 'Guanajuato', 'Av. 1ro de mayo *No. ext. 1421', 'Centro', '38600', '4171728626', '4171303733', 'https://www.facebook.com/Qualitas-ODQ-Acambaro-114238926987848', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.6152035660593!2d-100.72930308619942!3d20.024658426673128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd61487474d55%3A0x5a64cc78e61688b8!2sQu%C3%A1litas%20En%20Ac%C3%A1mbaro!5e0!3m2!1ses-419!2smx!4v1606706534073!5m2!1ses-419!2smx', 'Venta de Seguros para autos, motocicletas, servicio publico, tractocamiones etc.', 'Lunes', 'Viernes', '08:30', '18:00', 'Publicado', 'Qualitas ODQ compañia de Seguros SA de CV  qualitas seguros aseguradora carros autos motocicletas servicio publico tractocamiones ', '2020-11-26', 'No', 15),
(7388, 66, 'Versus Pc\'s', 'uploads/images/versus.jpeg', 'Acámbaro', 'Guanajuato', 'Nicolás Bravo 752', 'Centro', '38600', '4171773204', '4171773204', '', '', '', '', '', 'Reparación y venta de equipos de computo, Impresoras, venta de accesorios, software y mas', '', '', '00:00', '00:00', 'Publicado', 'Versus Pc versus pc\'s  reparación  venta  equipos de computo impresoras accesorios software computadoras computadora reparación de computacion computación', '2020-11-27', 'No', 16),
(7389, 190, 'Heladería Galu', 'uploads/images/galu.jpg', 'Acámbaro', 'Guanajuato', 'Leona Vicario 29', 'Centro', '38600', '0000000000', '', '', '', '', '', '', 'Ven a Galú a disfrutar la vida        \r\nTENEMOS 3 SABORES DE HELADOS; Natural, De Taro y Combinado. \r\n• El Cono $20 pesos puedes elegir 2 toppings (cereales o chispas de chocolate y chocolate derretido).\r\n• Vaso chico $30 pesos, 3 toppings (1 fruta y 2 diferentes).\r\n• Vaso mediano $40 pesos, 3 toppings (1 fruta y 2 diferentes).\r\n• Vaso grande $50 pesos, 4 toppings (2 frutas, 2 diferentes). \r\nTopping extra $5\r\nTENEMOS BEBIDAS CON TAPIOCA (Bobas) vaso de 1/2 $45 pesos nuestros sabores son; \r\nNutella\r\nOreo\r\nMazapán \r\nTé Matcha \r\nTé Chai \r\nTaro \r\nChicle \r\nAlgodón de azúcar \r\nEstamos a tus órdenes    Con Galú disfruta la vida.', 'Lunes', 'Domingo', '00:00', '21:00', 'Publicado', 'Heladería Galu  Heladerías heladerias  heladeria galu helados', '2020-11-26', 'No', 17),
(7390, 273, 'El Refugio de los Pecadores', 'uploads/images/refugio_pecadores_pizza.jpg', 'Acámbaro', 'Guanajuato', '1 de Mayo 211A', 'Centro', '38600', '4431947823', '4431947823', ' https://www.facebook.com/Refugio-De-Pecadores-Acambaro-110409520755487/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.293770906289!2d-100.72482668619918!3d20.038134226233403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842d0f4778aee83f%3A0xc0e28bfba00f43a1!2sEL%20REFUGIO%20DE%20LOS%20PECADORES%20ACAMBARO!5e0!3m2!1ses-419!2smx!4v1606502825386!5m2!1ses-419!2smx', 'Negocio familiar desde 2016 expertos en Venta de pizzas de masa artesanal delgada crujiente,  pizzaburger artesanal, hamburguesas estilo de barrio únicas en Acambaro, enchiladas suizas , Variedad en c', 'Lunes', 'Sábado', '10:00', '18:30', 'Publicado', 'El Refugio de los pecadores pizzerías pizzerias hamburguesas comida para llevar  restaurantes servicio a domicilio pizza', '2020-11-27', 'No', 18),
(7391, 123, 'Instrumentrumentos musicales El Bendito', 'uploads/images/el_bendito.jpg', 'Acámbaro', 'Guanajuato', '16 de Septiembre 407B', 'Centro', '38600', '0000000000', NULL, '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d787.9912159694496!2d-100.72549428511185!3d20.036236783570143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ee27f0ead%3A0xf716d9e2fe600865!2sCalle%2016%20de%20Septiembre%20407%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606505194546!5m2!1ses-419!2smx', 'Venta de instrumentos musicales accesorios y reparaciones en general', 'Lunes', 'Domingo', '10:00', '19:00', 'Publicado', 'El Bendito venta de instrumentos musicales accesorios reparaciones música', '2020-11-27', 'No', 19),
(7392, 14, 'Forragería Mi Ranchero', 'uploads/images/forregeria_mi_ranchero.jpg', 'Acámbaro', 'Guanajuato', '16 de septiembre 407', 'Centro', '38600', '4171022640', '4171022640', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d787.9912159694496!2d-100.72549428511185!3d20.036236783570143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ee27f0ead%3A0xf716d9e2fe600865!2sCalle%2016%20de%20Septiembre%20407%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606505194546!5m2!1ses-419!2smx', 'Venta de alimento y productos para gallos de pelea, porcino y bovino, perros y gatos', 'Lunes', 'Domingo', '08:00', '19:00', 'Publicado', 'Forragería forrageria Mi Ranchero Venta de alimento para gallos de pelea porcinos bovinos animales perros gatos', '2020-11-27', 'No', 20),
(7393, 111, 'Gruas Mau Medina', 'uploads/images/gruas1212.jpg', 'Acámbaro', 'Guanajuato', 'Av. Toma del Agua 1', 'Eduardo Morales ', '38676', '4171720976', '4171720976', '', '', '', '', '', 'Calidad, seguridad y confianza en cada uno de nuestros servicios ', 'Lunes', 'Domingo', '00:00', '00:00', 'Publicado', 'Gruas Mau Medina Grúas', '2020-11-28', 'No', 21),
(7395, 63, 'Neris Burguer', 'uploads/images/B889EBDB-41FB-4F5D-8FF3-BCDB9B691ED6.jpeg', 'Acámbaro', 'Guanajuato', 'Morelos 1758 B', 'Centro', '38600', '4171133835', '4171138335', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.647316829486!2d-100.72847138575054!3d20.023311626716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6138c894ac3%3A0x2b02d83574347741!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%201758%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606704943393!5m2!1ses-419!2smx', 'Venta de hamburguesas, servicio a domicilio', 'Lunes', 'Domingo', '10:00', '22:00', 'Publicado', 'Neris Burguer Servicio Domicilio Comida', '2020-11-29', 'No', NULL),
(7397, 3, 'Despacho Jurídico', 'uploads/images/despacho_juridico1.jpg', 'Acámbaro', 'Guanajuato', 'Pasaje Acámbaro Norte # 17', 'Centro', '38600', '0000000000', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3558657991885!2d-100.72258908575036!3d20.035531626317297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd671dcecc2a9%3A0x726c530a267c99b8!2sPje%20Ac%C3%A1mbaro%207%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606704216217!5m2!1ses-419!2smx', 'Se llevan Asuntos, Penales, civiles, mercantiles, laborales, Juicios sucesorios,  escrituras, Pensiones del Seguro Social y del ISSSTE, devoluciones de Saldos de Infonavit, Y Afores.', '', '', '00:00', '00:00', 'Publicado', 'Despachos Jurídicos Abogados', '2020-11-30', 'No', NULL),
(7398, 209, 'Super Pollería Nuñez', 'uploads/images/polleria.jpg', 'Acámbaro', 'Guanajuato', 'Mercado Hidalgo Local 153', 'Centro', '38600', '4171723091', '4171723091', '', '', '', '', '', 'Pollo, alitas de pollo, molida de pollo, chorizo y al pastor de pollo, pollo fresco rostizado, del día no Bachoco no sabro pollo 100% fresco , nuggets de pollo y carne para hamburguesas servicio a domicilio. ', '', '', '07:00', '16:00', 'Publicado', 'Super Pollería Nuñez super polleria nuñez pollerias polleria pollo alitas', '2020-11-30', 'No', NULL),
(7399, 76, 'Pole Sport Acámbaro ', 'uploads/images/pole.jpg', 'Acámbaro', 'Guanajuato', 'Omega #168', 'Centro', '38600', '', '', 'https://www.facebook.com/Pole-Sport-104571837799271', '', '', '', '', '', '', '', '17:00', '18:00', 'Publicado', 'Pole Sport Acámbaro  pole sport acambaro pole dance', '2020-11-30', 'No', NULL),
(7400, 224, 'LAS PALOMAS GRILL', 'uploads/images/WhatsApp Image 2020-11-30 at 3.02.48 PM.jpeg', 'Acámbaro', 'Guanajuato', 'LEONA VICARIO 125 COL CENTRO', 'Centro', '38600', '4171601238', '', 'https://www.facebook.com/laspalomasgrillrestabarcafe/', '', '', '', '', 'ES RESTAURANTE BAR, BUFFET COMIDA A LA CARTA Y PARRILLADA , AMBIENTE 100% FAMILIAR, CON LA MEJOR CALIDAD LOS CORTES MAS FINOS Y AL MEJOR PRECIO Y MUSICA EN VIVO LOS FINES DE SEMANA', 'Martes', 'Domingo', '09:30', '22:30', 'Publicado', 'LAS PALOMAS GRILL las palomas grill bares restaurantes ', '2020-12-01', 'No', NULL),
(7401, 205, 'OSO´S PIZZA', 'uploads/images/WhatsApp Image 2020-11-29 at 5.47.43 PM.jpeg', 'Acámbaro', 'Guanajuato', 'PEDRO MORENO 217 A', 'Centro', '38600', '4176881502', '4171024686', 'https://www.facebook.com/Osos-Pizza-109634894196056', '', '', '', '', 'La única pizzería en Acámbaro con harina de maíz, trigo y malta, Pizzas de Pastor Camarones, Argentinas', 'Lunes', 'Domingo', '13:30', '20:30', 'Publicado', 'OSO´S PIZZA osos pizza oso\'s  pizzería pizzeria pizzerias pizzas', '2020-12-01', 'No', NULL),
(7402, 45, 'Carnicería Martínez', 'uploads/images/WhatsApp Image 2020-12-01 at 9.58.10 AM.jpeg', 'Acámbaro', 'Guanajuato', 'interior mercado Hidalgo #201 ', 'Centro', '38600', '4171130905', '4171130905', '', '', '', '', '', 'venta de carne de res y cerdo, mayoreo y menudeo, tenemos todo tipo de corte nacional y americano', 'Lunes', 'Domingo', '07:00', '05:00', 'Publicado', 'Carnicería Martínez carniceria martinez carnicerías carnicerias carne', '2020-12-01', 'No', NULL),
(7403, 76, 'Tenis  IMPORTADOS', 'uploads/images/WhatsApp Image 2020-12-01 at 12.02.36 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Primero de Mayo  882A', 'Centro', '38600', '1721349', '', 'https://www.facebook.com/importadosacambaro', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.431091752336!2d-100.72651978575041!3d20.032378226420242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66c36c11a2d%3A0x4db7c299db8dd4a3!2sTienda%20de%20Tenis%20Importados!5e0!3m2!1ses-419!2smx!4v1606947549252!5m2!1ses-419!2smx', 'Calzado deportivos, Balones deportivos, Sudaderas, Pantalones, Cachuchas', 'Lunes', 'Domingo', '09:00', '20:30', 'Publicado', 'Tenis Importados Deportes Calzado Deportivo', '2020-12-01', 'No', NULL),
(7404, 277, 'STANHOME Productos por Catálogo', 'uploads/images/WhatsApp Image 2020-12-01 at 12.43.37 PM (1).jpeg', 'Acámbaro', 'Guanajuato', 'Melchor 341', 'Centro', '38600', '4171012983', '4171012985', 'https://www.facebook.com/stanhomeacambaro', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4751738361433!2d-100.72025178575055!3d20.030530126480517!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd67302469155%3A0xef80c1b83c87ee54!2sMelchor%20Ocampo%20341%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606948528098!5m2!1ses-419!2smx', 'Venta por Catálogo', 'Lunes', 'Domingo', '10:30', '17:00', 'Publicado', 'STANHOME ventas por catálogo Stanhome ventas por catalogo ', '2020-12-02', 'No', NULL),
(7405, 276, 'Purificadora de Agua Turqueza', 'uploads/images/WhatsApp Image 2020-12-01 at 1.00.41 PM (1).jpeg', 'Acámbaro', 'Guanajuato', 'Melchor Ocampo 375', 'Centro', '38600', '4171199708', '4171199708', 'https://www.facebook.com/Agua-turquesa-104797704648194', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.476490442479!2d-100.71989978575053!3d20.03047492648239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd673048e4beb%3A0x138cf4f90477ef15!2sMelchor%20Ocampo%20375%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606948198553!5m2!1ses-419!2smx', 'Lavado y llenado de garrafón, agua purificada servicio a domicilio', 'Lunes', 'Domingo', '08:00', '17:00', 'Publicado', 'Purificadora de Agua Turqueza Puricadora Agua Turqueza Purificadoras de Agua Garrafones ', '2020-12-02', 'No', NULL),
(7406, 1, 'Decoraciones YARA', 'uploads/images/WhatsApp Image 2020-12-01 at 1.47.42 PM (1).jpeg', 'Acámbaro', 'Guanajuato', 'Plaza Aldama 303  LOCAL 2', 'Centro', '38600', '4171174827', '4171174827', '', '', '', '', '', 'Decoración de interiores, cerámica, muebles, flores artificiales, cuadros, fuentes, salas, comedores, jarrones, centros de mesa, lámparas, espejos, floreros, esquineros', 'Lunes', 'Domingo', '10:00', '16:00', 'Publicado', 'Decoraciones Yara Decoración de Interiores Decoracion Ceramica Cerámica Muebles Salas Comedores Lámparas Lamparas Espejos', '2020-12-02', 'No', NULL),
(7407, 273, 'Menudo Celia', 'uploads/images/WhatsApp Image 2020-12-02 at 10.04.41 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Mercado Hidalgo LOCAL 231', 'Centro', '38600', '4191271926', '4191271926', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.46526817002!2d-100.72283563575044!3d20.03094542646696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x655d64560a0cc7b1!2sMercado%20Hidalgo!5e0!3m2!1ses-419!2smx!4v1606949167555!5m2!1ses-419!2smx', 'Medudo, chiles rellenos, mole verde y rojo, carne de puerco, bistec, caldo de pollo, pechuga empanizada, tacos, barbacoa, cabeza, sopes, quesadillas, enchiladas', 'Lunes', 'Domingo', '08:00', '17:00', 'Publicado', 'Menudo Celia Menudo Comida Mexicana Mercado Fondas Restaurantes Comida', '2020-12-02', 'No', NULL),
(7408, 278, 'Billares del Centro', 'uploads/images/WhatsApp Image 2020-12-02 at 3.24.11 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Abasolo 7 ', 'Centro', '38600', '4425840668', '4425840668', 'https://www.facebook.com/Billares-Del-Centro-1888100601307278', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3990456535566!2d-100.72494338575042!3d20.033721626376412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ddf58d22f%3A0x5a384f50ed3e0a08!2sMariano%20Abasolo%207%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1606949909144!5m2!1ses-419!2smx', 'Barra de bebidas, micheladas, mangonadas, piñas coladas, margaritas, hamburguesas, alitas, burritos, tortas, quesadillas, papas a la francesa, Nachos', 'Lunes', 'Domingo', '10:00', '22:00', 'Publicado', 'Billares  Centros Recreativos Bebidas Alcoholicas Bebidas Alcohólicas Diversión', '2020-12-02', 'No', NULL),
(7409, 80, 'Electrónica Junior (JR)', 'uploads/images/WhatsApp Image 2020-12-02 at 10.42.49 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Santos Degollado 141', 'Centro', '38600', '4171168126 , 4171002674', '4171168126 ', 'https://www.facebook.com/electronica.junior.54', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2228.75407423039!2d-100.7136975198894!3d20.03776322565904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd677ac30c945%3A0xe172e1d57c44ea1a!2sElectronica%20Jr!5e0!3m2!1ses-419!2smx!4v1607024318466!5m2!1ses-419!2smx', 'Reparación de aparatatos electronicos, mantenimiento instalacion de audio y alarmas', 'Lunes', 'Domingo', '08:00', '19:00', 'Publicado', 'Electrónica JR Electrónica Reparación de aparatos eléctricos ', '2020-12-03', 'No', NULL),
(7410, 280, 'DAVI´S CAR WASH', 'uploads/images/WhatsApp Image 2020-12-02 at 1.04.14 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Carretera a Morelia 1216', 'San Isidro', '38600', '4171319535', '4171319535', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.9920056860583!2d-100.73100818619979!3d20.008850227188546!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd61edb2a83fd%3A0x4421a49cf151942b!2sCarr.%20a%20Morelia%201216%2C%20Los%20Sauces%2C%2038674%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607025891977!5m2!1ses-419!2smx', 'Lavado y aspirado de autos, lavado y aspirado de motor, vestiduras y encerado', 'Lunes', 'Domingo', '09:00', '17:00', 'Publicado', 'DAVI´S CAR WASH Auto Lavado y aspirado de autos lavado y aspirado de motor vestiduras y encerado lavado de carros ', '2020-12-03', 'No', NULL),
(7411, 282, 'Barbería BLACK LION', 'uploads/images/WhatsApp Image 2020-12-02 at 3.06.02 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Morelos 634', 'Centro', '38600', '4171060746', '4171575591', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.409828105299!2d-100.72430738575042!3d20.03326962639114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66de9a16e15%3A0x53b7c5c666754c98!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20634%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607043871828!5m2!1ses-419!2smx', 'CORTES FADES, CLASICOS, ARREGLO DE CEJA, DELINEADOS Y ARREGLO DE BARBA', 'Lunes', 'Domingo', '10:00', '19:00', 'Publicado', 'Barbería Black Lion Barbershop barberías peluquerias cortes de cabello ', '2020-12-03', 'No', NULL),
(7412, 281, 'Carpitería López', 'uploads/images/WhatsApp Image 2020-12-02 at 5.00.35 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Carretera a Morelia 1372', 'San Isidro', '38600', '4171158233', '4171158233', 'https://www.facebook.com/Carpinter%C3%ADa-Lopez-104118771316408', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7498.232489896359!2d-100.72987332418107!3d20.003635318551634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd7dcc35c9213%3A0xec472e983e4f9648!2sCarpinter%C3%ADa%20Lopez!5e0!3m2!1ses-419!2smx!4v1607042716577!5m2!1ses-419!2smx', 'Fabricación sobre medida y diseño de muebles, con cualquier tipo de madera', 'Lunes', 'Domingo', '10:00', '20:00', 'Publicado', 'Carpitería Lopez Carpiterías  Muebles de madera', '2020-12-03', 'No', NULL),
(7413, 63, 'Rock Burger', 'uploads/images/WhatsApp Image 2020-12-02 at 7.27.31 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Privada Gama 6', 'Arboledas', '38600', '4171065872', '4171065872', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.6097263645015!2d-100.73003058619949!3d20.024888126665644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6148b8e69a3%3A0x49a52085be6c3366!2sGama%206%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607042311286!5m2!1ses-419!2smx', 'Hamburguesas, hot dog, papas fritas, aros de cebolla', 'Lunes', 'Domingo', '19:00', '23:30', 'Publicado', 'Rock Burguer Hamburguesas Hot Dogs Papas a la francesa Papas Fritas Comida para llevar', '2020-12-03', 'No', NULL),
(7414, 63, 'Costillas al Babbil', 'uploads/images/118811429_167743988289796_4289691438721395378_n.jpg', 'Acámbaro', 'Guanajuato', '1 de Mayo entre Sabino y Sostenes Rocha', 'Centro', '38600', '4171048933', '4171048933', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.549325313119!2d-100.72809968619934!3d20.027421026582992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjDCsDAxJzM4LjciTiAxMDDCsDQzJzMzLjMiVw!5e0!3m2!1ses-419!2smx!4v1607029245176!5m2!1ses-419!2smx', 'Disfruta todos los Domingos de unas deliciosas costillas al barril \r\nEstan ubicadas en Av. 1ro de mayo a un costado del Oxxo cerca de la michelin\r\nOh llámanos y te lo llevamos hasta la puerta de tu casa!', 'Domingo', '', '13:00', '17:00', 'Publicado', 'Costillas al Babbil Comida Servicio para llevar comida para llevar ', '2020-12-03', 'No', NULL),
(7415, 279, 'GOGO FOOD', 'uploads/images/107594430_143019170762278_6251268621551806918_o.jpg', 'Acámbaro', 'Guanajuato', 'Sóstenes Rocha', 'Centro', '38600', '4171273331', '4171273331', 'https://www.facebook.com/GOGO-FOOD-105542321176630', '', '', '', '', 'Repartidores Entrega a Domicilio', 'Lunes', 'Domingo', '07:00', '22:00', 'Publicado', 'GOGO FOOD GO GO FOOD repartidores entrega a domicilio servicio a domicilio servicio domicilio', '2020-12-03', 'No', NULL),
(7416, 9, 'Sombreros sombreros y más Sombreros', 'uploads/images/WhatsApp Image 2020-12-09 at 11.30.26 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Av. 1 de Mayo 535', 'Centro', '38600', '4171042664', '4171042664', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1874.1803833809945!2d-100.7241577995185!3d20.03532619714455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e5df94221%3A0x41bf54a97c7a8b74!2sPrimero%20de%20Mayo%20535%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607540099987!5m2!1ses-419!2smx', 'Sombreros diferentes modelos, canasta, artesanías en madera, imágenes de cerámica', 'Lunes', 'Domingo', '10:00', '19:00', 'Publicado', 'Sombreros artesanías madera cerámica', '2020-12-09', 'No', NULL),
(7417, 283, 'Unikas Cositas', 'uploads/images/WhatsApp Image 2020-12-09 at 11.30.56 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Abasolo 578', 'Centro', '38600', '4171771601', '4171771601', 'https://www.facebook.com/UniksCosiitas', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3800899195576!2d-100.72843938575038!3d20.03451622635048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66eb14defbd%3A0x7c1e2ef2a0a049e9!2sMariano%20Abasolo%20578%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607540839618!5m2!1ses-419!2smx', 'Unikas Cositas Productos de calidad hechas a mano con un toque único y original. Belleza, cosmética y cuidado personal.\r\n', 'Lunes', 'Domingo', '00:00', '00:00', 'Publicado', 'Unikas Cositas Mujeres Ventas por catálogo accesorios Belleza cosmética  cométicos cuidado personal', '2020-12-09', 'No', NULL),
(7418, 1, 'Las chacharas de Lia', 'uploads/images/WhatsApp Image 2020-12-09 at 11.31.38 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Av. 1 de Mayo, Local 32', 'Centro', '38600', '4171001895', '4171001895', '', '', '', '', '', 'Juguetes y Artículos para bebes de segunda mano', 'Lunes', 'Domingo', '09:30', '18:00', 'Publicado', 'LAS CHACHARAS DE LIA juguetes juguetería bebes segunda mano', '2020-12-09', 'No', NULL),
(7419, 17, 'Aluminio y Vidrio Martínez', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM.jpeg', 'Acámbaro', 'Guanajuato', 'Av. 1ro de Mayo 78 y 79, loc. Panteón', 'Centro', '38600', '4171792063', '4171792063', '', '', '', '', '=', 'Armado e instalación de aluminio en general\r\nDiferentes tipos de cristal\r\n', '', '', '09:00', '18:00', 'Publicado', 'ALUMINIO Y VIDRIO MARTÍNEZ vidrios cristales canceles puertas  ventanas ', '2020-12-09', 'No', NULL),
(7420, 284, 'Pies y Salud', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (1).jpeg', 'Acámbaro', 'Guanajuato', 'Plaza Alcaza, Local 5', 'Centro', '38600', '4176881125', '4171045336', 'https://www.facebook.com/PiesySaludCPM', '', '', '', '', 'Podología tratamiento pedicure, uña encarnada, pie plano, pie diabético, verrugas plantadas.', 'Lunes', 'Sábado', '10:00', '20:00', 'Publicado', 'Pies Salud Médicos Doctores Podólogos  Podología', '2020-12-09', 'No', NULL),
(7421, 282, 'Barbería Juarez', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (2).jpeg', 'Acámbaro', 'Guanajuato', 'Guerrero 313', 'Centro', '38600', '4171795081', '4171037340', 'https://www.facebook.com/Barberia-juarez-1635073633485550', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.375927928978!2d-100.72740981909395!3d20.03469068759363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e63ee1205%3A0xea3fe54c4300f585!2sAv.%20Guerrero%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607540632877!5m2!1ses-419!2smx', 'Barbería Juarez. Corte de cabello, ceja y barba', 'Lunes', 'Domingo', '11:00', '21:00', 'Publicado', 'Barberias Peluquerías cortes de cabellos cortes de barba', '2020-12-09', 'No', NULL),
(7422, 38, 'Postres Grecia E.', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (3).jpeg', 'Acámbaro', 'Guanajuato', 'Av. 1 de Mayo 1124', 'Centro', '38600', '4171785795', '4171785795', 'https://www.facebook.com/POSTRESGrecia.E', 'https://www.instagram.com/postresgreciaes/', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.47709388589!2d-100.72715238575044!3d20.03044962648311!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66cf5bd9629%3A0x2e3397e0142bf39e!2sPrimero%20de%20Mayo%201124%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607558981498!5m2!1ses-419!2smx\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Venta de pasteles, postres, mesa de dulces, botanas y detalles especiales.', 'Lunes', 'Sábado', '09:00', '19:00', 'Publicado', 'POSTRES GRECIA E Venta de pasteles postres mesa de dulces botanas  detalles especiales Repostería', '2020-12-09', 'No', NULL),
(7423, 10, 'MISCELANEA AZTEKA ', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (4).jpeg', 'Acámbaro', 'Guanajuato', 'Morelos 2115 C', 'Centro', '38600', '4171573994', '4171573994', 'https://www.facebook.com/MiscelaneaAztekaAcambaro', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14994.82882432422!2d-100.73766320943834!3d20.02079969593538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x853af57e43530af9!2sMiscelanea%20Azteca!5e0!3m2!1ses-419!2smx!4v1607731925035!5m2!1ses-419!2smx', 'Productos de limpieza para aseo de casa, oficina e industria.', 'Lunes', 'Domingo', '09:00', '19:00', 'Publicado', 'MISCELANEA AZTEKA AZTECA productos de limpieza casa hogar  ', '2020-12-09', 'No', NULL),
(7424, 105, 'Fumigaciones GEA AZTEKA', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (5).jpeg', 'Acámbaro', 'Guanajuato', 'Morelos 2115', 'CENTRO', '38600', '4171573994', '4171573994', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14994.82882432422!2d-100.73766320943834!3d20.02079969593538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x853af57e43530af9!2sMiscelanea%20Azteca!5e0!3m2!1ses-419!2smx!4v1607731925035!5m2!1ses-419!2smx', 'Fumigación, sanitizaciones y lavado de tinaco y algibes.\r\nPermiso de cofepris ih1a236\r\n', 'Lunes', 'Domingo', '09:00', '19:00', 'Publicado', 'FUMIGACIONES GEA AZTEKA Fumigadores Productos de Limpieza sanitizaciones', '2020-12-09', 'No', NULL),
(7425, 42, 'SOFI´S  STORE', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (6).jpeg', 'Acámbaro', 'Guanajuato', 'Hidalgo', 'Centro', '38600', '6651365131', '6651365131', 'https://www.facebook.com/Sofis-Store-122677802636957', 'https://www.instagram.com/sofiisstoreaca/', '', '', '', 'Bolsas, camisas tipo polo, cinturones, reloj y calzado.', 'Lunes', 'Domingo', '09:00', '19:00', 'Publicado', 'SOFI´S  STORE SOFI STORE tienda de ropa venta de ropa boutique camisas pantalones  cinturones ventas minoristas', '2020-12-09', 'No', NULL),
(7426, 151, 'Annie Nails', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (7).jpeg', 'Acámbaro', 'Guanajuato', 'Carretera a Morelia 1374', 'Los pinos', '38600', '4171402706', '4171402706', '', '', '', '', '', 'ARREGLO DE UÑAS, PEDICURE, MANICURE, APLICACION DE PESTAÑA, DEPILACION DE CEJA.', '', '', '10:00', '21:00', 'Publicado', 'Annie Nails Estéticas Arreglo de uñas pedicure manicure aplicación de pestañas depilación de cejas Damas Mujeres', '2020-12-09', 'No', NULL),
(7427, 281, 'Castañeda Hnos.', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (8).jpeg', 'Acámbaro', 'Guanajuato', 'Carretera a Morelia 234 A', 'San Isidro', '38670', '4171121170', '4171121170', 'https://www.facebook.com/profile.php?id=100017977715659', '', '', '', '', 'MUEBLES A MEDIDA Y DISEÑO\r\nTODO TIPO DE MUEBLE Y MADERA.', '', '', '10:00', '20:00', 'Publicado', 'CASTAÑEDA HNOS. Madererías Maderas  Carpintería Muebles de Madera Castañeda Hermanos', '2020-12-09', 'No', NULL),
(7428, 59, 'Pañales Desechables Luna Turqueza', 'uploads/images/WhatsApp Image 2020-12-09 at 11.32.37 AM (9).jpeg', 'Acámbaro', 'Guanajuato', 'Av. Hidalgo 1402', 'Centro', '38600', '4171786289', '4171786289', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.5961511337587!2d-100.72473718619942!3d20.02545742664711!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd612f2e8ef95%3A0x5986dadcb910be4f!2sAv.%20M.%20Hidalgo%201402%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607739618704!5m2!1ses-419!2smx', 'Pañales, toallas humedas, calzado para bebe, manualidades para eventos de bebes', 'Lunes', 'Domingo', '08:30', '20:00', 'Publicado', 'PAÑALES DESECHABLES LUNA TURQUEZA Bebes niños calzado para bebes manualidades ', '2020-12-09', 'No', NULL),
(7429, 63, 'Almuerzos Antuan', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.11 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Omega 250 C', 'Centro', '38600', '4175938991', '4175938991', '', '', '', '', '', 'Larguitas, sopes, gorditas, huaraches, quesadillas, pambazos, café y jugos.', '', '', '08:30', '13:00', 'Publicado', 'Almuerzos Antuan Comida Larguitas sopes gorditas huaraches quesadillas pambazos café y jugos comida para llevar.', '2020-12-09', 'No', NULL),
(7430, 88, 'Estética Unisex d\' candy', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.12 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Omega 250 B', 'Centro', '38600', '4171018317', '4171018317', 'https://www.facebook.com/heidyvazquez55', '', '', '', '', 'Uñas acrilico, gelish, manicure, pedicure, peinados, maquillaje, colimetria, aplicacion de pestañas y venta de productos de belleza estetica de candy', '', '', '10:00', '19:00', 'Publicado', 'Estética Unisex d candy Uñas acrilico gelish manicure  pedicure peinados maquillaje colimetria aplicacion de pestañas venta de productos de belleza peluquerías estilistas estéticas de candy ', '2020-12-09', 'No', NULL),
(7431, 21, 'Servicios de línea blanca ', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.12 PM (1).jpeg', 'Acámbaro', 'Guanajuato', '16 Septiembre 662', 'Centro', '38600', '4171008742', '4171008742', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3753520662303!2d-100.72717078575037!3d20.03471482634401!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e95cdc4a3%3A0xdf7674c74a074d59!2sCalle%2016%20de%20Septiembre%20662%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607557755600!5m2!1ses-419!2smx', 'Reparación de lavadoras y refrigeradores, servicios en sistemas inverter.', '', '', '10:00', '18:00', 'Publicado', 'Servicios de línea blanca reparación de lavadoras reparación de refrigeradores servicio técnico aparatos electrodomésticos', '2020-12-09', 'No', NULL),
(7432, 100, 'Foto Laboratorio', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.54 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Av. Hidalgo 1004', 'Centro', '38600', '1725256', '4171072177', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.503847399227!2d-100.72376178575048!3d20.029327926519667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d677fa789%3A0xaaa27c6f023baad5!2sAv.%20M.%20Hidalgo%201004%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607734458314!5m2!1ses-419!2smx', 'ELABORACION DE FOTOS Y RECUERDOS.', '', '', '10:00', '20:00', 'Publicado', 'FOTO LABORATORIO fotografías recuerdos ', '2020-12-09', 'No', NULL),
(7433, 88, 'Peluquería Chava', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.54 PM (1).jpeg', 'Acámbaro', 'Guanajuato', 'Guadalupe Victoria 295 A', 'Centro', '38600', '4171103442', '4171103442', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.438061756438!2d-100.72984228575044!3d20.032086026429806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66beaf80fdd%3A0x42a2ad844889f55f!2sGuadalupe%20Victoria%20295%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607558414576!5m2!1ses-419!2smx', 'Cortes de cabello tradicional', '', '', '10:00', '15:00', 'Publicado', 'Peluquería Chava Cortes de cabello estilistas peluquerías ', '2020-12-09', 'No', NULL),
(7434, 42, 'Boutique Brunette', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.54 PM (2).jpeg', 'Acámbaro', 'Guanajuato', 'Guadalupe Victoria 304 B', 'Centro', '38600', '4171011477', '4171011477', 'https://www.facebook.com/profile.php?id=100011409263090', 'https://www.instagram.com/brunette_boutique_/', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4703629460823!2d-100.72605458575045!3d20.03073182647397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d07e9def9%3A0x36a59ec1964b9e9a!2sGuadalupe%20Victoria%20304%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607733468106!5m2!1ses-419!2smx', 'ROPA Y CALZADO DE MARCA 100% MEXICANA.', '', '', '10:30', '20:30', 'Publicado', 'Boutique Brunette ropa calzadado venta de ropa tienda de ropa', '2020-12-09', 'No', NULL),
(7435, 42, 'Boutique Brunette', 'uploads/images/WhatsApp Image 2020-12-09 at 2.49.54 PM (2).jpeg', 'Acámbaro', 'Guanajuato', 'Guadalupe Victoria 304 B', 'Centro', '38600', '4171003337', '4171003337', 'https://www.facebook.com/profile.php?id=100045838911934', 'https://www.instagram.com/lov_ely_cosmeticos/', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4703629460823!2d-100.72605458575045!3d20.03073182647397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d07e9def9%3A0x36a59ec1964b9e9a!2sGuadalupe%20Victoria%20304%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607733468106!5m2!1ses-419!2smx', 'Variedad cosméticos', '', '', '10:30', '20:30', 'Publicado', 'Boutique Brunette Cosméticos Belleza mujeres damas maquillajes', '2020-12-09', 'No', NULL),
(7436, 245, 'Moto Servicio El Gordo', 'uploads/images/WhatsApp Image 2020-12-09 at 5.17.44 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Santos Degollado 145', 'Emilio Carranza', '38600', '4171171772', '4171171772', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.310892747921!2d-100.71681138575038!3d20.037416626255872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd676d7db6c4d%3A0x2d808f7d71205a3c!2sSantos%20Degollado%20145%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607634125658!5m2!1ses-419!2smx', 'Especialistas en cuatrimotos y motos.', 'Lunes', 'Sábado', '09:00', '20:00', 'Publicado', 'Moto Servicio El Gordo Mecánicos Refacciones Motocicletas Taller de motos talleres', '2020-12-10', 'No', NULL),
(7437, 273, 'Pollos a la leña Río Lerma', 'uploads/images/pollos_lena_rio_lerma.jpg', 'Acámbaro', 'Guanajuato', 'santos degollado 2', 'Centro', '38600', '4171727865', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d643.7494638836145!2d-100.7158515928672!3d20.037713962704085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd670cdecd825%3A0x804ecb390a3ad06!2sPollos%20A%20La%20Le%C3%B1a%20Rio%20Lerma!5e0!3m2!1ses-419!2smx!4v1607629678169!5m2!1ses-419!2smx', 'Pollo con salsa, cebollitas y agua gratis.', 'Lunes', 'Domingo', '09:00', '19:00', 'Publicado', 'Pollos a la leña Rio Lerma Pollerías Comida Restaurantes servicio para llevar', '2020-12-10', 'No', NULL),
(7438, 273, 'Jerry Comida Cruz', 'uploads/images/WhatsApp Image 2020-12-09 at 7.07.08 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Emilio Carranza 301', 'Centro', '38600', '4171172311', '4171172311', 'https://www.facebook.com/profile.php?id=100016760597821', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.071796757049!2d-100.7093308708455!3d20.03841015907763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd5d86e53640d%3A0xe9d4190505a8d2d4!2sEmilio%20Carranza%20301%2C%20Emilio%20Carranza%2C%2038680%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607630275470!5m2!1ses-419!2smx', 'Variedad de guisos mexicanos\r\n(Servicio a domicilio)\r\n(Moto mandados)\r\n(Servicio para eventos).', 'Lunes', 'Sábado', '09:00', '19:00', 'Publicado', 'Jerry Comida Cruz Restaurantes Eventos Servicio a domicilio Comida Mexicana', '2020-12-10', 'No', NULL),
(7439, 229, 'Ropa para niña y niño Camilar', 'uploads/images/WhatsApp Image 2020-12-10 at 12.45.54 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Aldama ', 'Centro', '38600', '4171795081', '4171795081', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.435294757573!2d-100.72585068586024!3d20.03220202642632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dca6615bd%3A0x88f5d891745059a8!2sWaldo\'s%20Acambaro!5e0!3m2!1ses-419!2smx!4v1607630741791!5m2!1ses-419!2smx', 'Ropa para niño y niña desde $50.', 'Lunes', 'Domingo', '09:00', '15:00', 'Publicado', 'Ropa para niñas y niños Camila Boutique venta de ropa', '2020-12-10', 'No', NULL),
(7440, 252, 'Turismo Pejo Tur', 'uploads/images/WhatsApp Image 2020-12-09 at 3.56.51 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Av. 1ro de Mayo 821', 'Centro', '38600', '4171601144', '4171069085', 'https://www.facebook.com/Turismo-Pejo-Tur-1461121477479557/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d331.3167263436999!2d-100.72441592365392!3d20.03280704685421!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66c2ef895cf%3A0x1e33691491f9f4fd!2sPrimero%20de%20Mayo%20821%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607631742628!5m2!1ses-419!2smx', 'Renta de autobuses y camionetas.', 'Lunes', 'Domingo', '10:00', '20:00', 'Publicado', 'Turismo Pejo Tur Autobuses Viajes  charter carreteros  renta de autobuses camiones camionetas', '2020-12-10', 'No', NULL),
(7441, 75, 'Consultorio Dental', 'uploads/images/WhatsApp Image 2020-12-10 at 9.35.27 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Ignacio Allende 98', 'Centro', '38600', '41717227503', '4171102901', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.340186530844!2d-100.72856808471508!3d20.036188826293568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd668d51aafb7%3A0x570acda1c7e5ff0f!2sCalle%20Ignacio%20Allende%2098%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607731740100!5m2!1ses-419!2smx', 'Odontología restauradora, endodoncia, ortodoncia, puentes fijos, removibles, cirugías, resinas, amalgamas, limpiezas, aplicación de fluor y blanqueamiento dental.\r\n', 'Lunes', 'Sábado', '10:00', '20:00', 'Publicado', 'Consultorio Dental dentistas consultorios médicos doctores odontólogos odontología ', '2020-12-12', 'No', NULL),
(7442, 248, 'Taqueria La Unión', 'uploads/images/WhatsApp Image 2020-12-09 at 5.17.47 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Emilio Carranza 449', 'Emilio Carranza', '38680', '4434476477', '4435688308', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7496.553465165868!2d-100.7074310682141!3d20.03884830138361!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd5d8462ff70d%3A0xeb4f2640fcba77b!2sEmilio%20Carranza%20449%2C%20Emilio%20Carranza%2C%2038680%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607732465971!5m2!1ses-419!2smx', 'Tacos de bisteck, tripa, chorizo, tacos de cabeza y burritos.', '', '', '11:00', '17:00', 'Publicado', 'Taqueria La Unión comida taquerías antojos tacos comida mexicana', '2020-12-12', 'No', NULL),
(7443, 204, 'Marmolería Altamirano', 'uploads/images/WhatsApp Image 2020-12-09 at 3.47.22 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Carretera a Morelia 8', 'Centro', '38600', '4171025733', '4171025733', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.616520829027!2d-100.7230486183621!3d20.02460318361608!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd61256d167fb%3A0x614787be2c0d03d9!2sCalle%20A%20Morelia%208%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607733000018!5m2!1ses-419!2smx', 'Se venden lapidas y pisos de marmol.', '', '', '10:00', '16:00', 'Publicado', 'Marmolería ALTAMIRANO Marmolerías Pisos construcción construcciones \"ALTAMIRANO\"', '2020-12-12', 'No', NULL),
(7444, 92, 'Ferretería Velázquez', 'uploads/images/WhatsApp Image 2020-12-09 at 3.17.30 PM.jpeg', 'Acámbaro', 'Guanajuato', 'Electricistas s/n', 'Malayas', '38679', '4171201752', '4171201752', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d468.5781363567655!2d-100.73290004131228!3d20.02424377239928!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd7d2e567e21b%3A0x2743612b942d60ce!2sFERRETERIA%20%22VELAZQUEZ%22!5e0!3m2!1ses-419!2smx!4v1607733406051!5m2!1ses-419!2smx', 'Materiales para plomería, un poco de electricidad, focos cobre y herramientas.', 'Lunes', 'Sábado', '09:00', '18:00', 'Publicado', 'Ferretería Velazquez  Ferreterías Materiales para construcción plomerías cobre herramientas electricidad', '2020-12-12', 'No', NULL),
(7445, 41, 'Botanas Churros Light', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Emilio Carranza 621', 'Emilio Carranza', '38680', '4171130885', '4171130885', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.273761275628!2d-100.70815628471506!3d20.03897282620271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd5d9b8c689b3%3A0xf68286c9a7fc0c0b!2sEmilio%20Carranza%20621%2C%20Emilio%20Carranza%2C%2038680%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607733646426!5m2!1ses-419!2smx', 'Churros preparados, chicharrones, fritura, manzanas  con caramelo, hielitos de sabores.', 'Lunes', 'Sábado', '12:00', '20:00', 'Publicado', 'Botanas Churros light frituras antojos chicharrones hielitos dulces', '2020-12-12', 'No', NULL),
(7446, 253, 'Telcel Andador Juárez', 'uploads/images/telcel_andador.jpg', 'Acámbaro', 'Guanajuato', 'Andador Juárez 464 C', 'Centro', '38600', '4171729864', '4428316208', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3985399222724!2d-100.72174438471504!3d20.0337428263734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd67226dcee8b%3A0xcc01280ce043a7d0!2sBenito%20Ju%C3%A1rez%20464%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607734579519!5m2!1ses-419!2smx', 'Venta y reparación de celulares.\r\nVenta de accesorios de todo tipo para tu celular.', '', '', '10:00', '20:00', 'Publicado', 'Telcel Andador Juarez  Venta de celulares  reparación de celulares accesorios para celular Android Iphone distribuidor telcel', '2020-12-12', 'No', NULL),
(7447, 2, 'Copias Lili', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Av. 1 de Mayo 111', 'Centro', '38600', '4171236880', '4171236880', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.0995738726027!2d-100.72302871562358!3d20.03375307282439!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dd2e4c699%3A0xde35ff860e51c290!2sPrivada%201ro.%20de%20Mayo%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607734879899!5m2!1ses-419!2smx', 'Copias, recargas, alimentos, abarrotes.', '', '', '07:00', '18:00', 'Publicado', 'Copias Lili Copias recargas alimentos abarrotes papelerías ', '2020-12-12', 'No', NULL),
(7448, 218, 'Parabrisas y cristales El Chiripas', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Av. 1ro de Mayo 1624 B', 'Centro', '38600', '4171007755', '4171007755', 'https://www.facebook.com/profile.php?id=100007677286734', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.707651162193!2d-100.73137518471528!3d20.020781026796286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6168603d2d9%3A0x65b0e3a3c46db1d3!2sPrimero%20de%20Mayo%201624%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607735503101!5m2!1ses-419!2smx', 'Accesorios para todos los vehículos, elevadores, parrillas, cofres, espejos, manijas, hules, vidrios laterales, limpiadores.', '', '', '08:00', '20:00', 'Publicado', 'Parabrisas y cristales El chiripas reparaciones automóviles mécanicos refacciones  para automóviles refacciones taller vidrios accesorios para automóviles vehículos', '2020-12-12', 'No', NULL),
(7449, 2, 'La botana', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Primero de mayo 418', 'Centro', '38600', '4171074851', '4171074851', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3370014700777!2d-100.72521428471504!3d20.036322326289152!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e4d74f23d%3A0x8862356ab3f38d78!2sPrimero%20de%20Mayo%20418%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607735834486!5m2!1ses-419!2smx', 'Salmón, atún natural, gran variedad de jamón, salchichoneria, abarrotes, paletas nestle, carne de arrachera, aderezos gourmet y nuggets.', '', '', '09:00', '16:00', 'Publicado', 'La Botana Abarrotes Salchichonerías Carnes Tiendas de Abarrotes botanas', '2020-12-12', 'No', NULL),
(7450, 248, 'Taquería Carlitos', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Niño artillero 25', 'Centro', '38600', '4171001895', '4171001895', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.516041868974!2d-100.71875508471516!3d20.0288166265341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd67348be00d1%3A0x699affc21d189655!2sNi%C3%B1o%20Artillero%2025%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607736477157!5m2!1ses-419!2smx', 'Tacos carne asada al carbón, chorizo, arrachera y costilla adobada. \r\n(Domingos almuerzos 9:00 am a 1:00 pm)', 'Jueves', 'Sábado', '19:00', '23:00', 'Publicado', 'Taquería Carlitos taquerías tacos de bisteck tacos de chorizo tacos de arrachera comida mexicana antojitos mexicanos carne asada', '2020-12-12', 'No', NULL);
INSERT INTO `anuncios` (`idAnuncio`, `idCategoria`, `titulo`, `url_imagen`, `municipio`, `estado`, `calle`, `colonia`, `cp`, `telefono`, `whatsapp`, `facebook`, `instagram`, `youtube`, `sitio`, `google_maps`, `descripcion`, `primer_dia_sem`, `ultimo_dia_sem`, `entrada`, `cierre`, `estatus_anuncio`, `keywords`, `fecha_publicacion`, `destacado`, `idSolicitud`) VALUES
(7451, 151, 'Marisol Mora', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Corregidora 449', 'Centro', '38600', '4171003329', '4171003329', 'https://m.facebook.com/Marisol-Mora-Caballero-Beauty-Salon-101478328229451/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d468.5431711976296!2d-100.71553043037976!3d20.03597157989355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd676cce788b9%3A0xe7b80b452c08c9f6!2sCorregidora%20449%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607737044670!5m2!1ses-419!2smx', 'Venta de producto de belleza, cabello, uña, barbería, tintes y queratina.', 'Lunes', 'Sábado', '10:30', '20:00', 'Publicado', 'Marisol Mora estéticas peluquerías salones de belleza uñas maquillaje tintes estilistas', '2020-12-12', 'No', NULL),
(7452, 282, 'Figaro Barber', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Zaragoza 76', 'Centro', '38600', '4171072821', '4171072821', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234.26930836991016!2d-100.72520371743819!3d20.037498724742022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66f13dfa72d%3A0x50bb6555131f1c02!2sIgnacio%20Zaragoza%2076%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607737362045!5m2!1ses-419!2smx', 'Alta barbería y peluquería.', 'Lunes', 'Sábado', '11:00', '20:00', 'Publicado', 'Figaro Barber barberías Peluquerias cortes de cabellos estilístas', '2020-12-12', 'No', NULL),
(7453, 273, 'Red Dragon', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Vicente Guerrero 21 ', 'Centro', '38600', '4171720041', '4171774396', 'https://www.facebook.com/Comida-China-Red-Dragon-Ac%C3%A1mbaro-107936064204679', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3867194987474!2d-100.72423168560867!3d20.034238326359212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e05e12ffb%3A0x194554f5131cfe75!2sCalle%20Vicente%20Guerrero%2021%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607968843838!5m2!1ses-419!2smx', 'Restaurante de comida china, contamos con variedad de guisados.', '', '', '10:00', '17:00', 'Publicado', 'Red Dragon comida china restaurantes platillos alimentos ', '2020-12-14', 'No', NULL),
(7454, 273, 'Antojitos Mexicanos Anita', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Primero de mayo  Local 89', 'Centro', '38600', '4171190457', '4171190457', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.161927367539!2d-100.7283934708298!3d20.023295159199346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6146be634b9%3A0xdc2af975027e48f1!2sPrimero%20de%20Mayo%2089%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607970885261!5m2!1ses-419!2smx', 'Pambazos, enchiladas, tacos dorados, burritos, sopes, huaraches, gorditas, tacos de bisteck chorizo y tripa.', '', '', '08:00', '14:00', 'Publicado', 'Antojitos Mexicanos Anita comida mexicana tacos pambazos gorditas burritos restaurantes guisos', '2020-12-14', 'No', NULL),
(7455, 273, 'Menudos Celia', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Mercado Hidalgo  Local 231', 'Centro', '38600', '4191251926', '4191251926', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4640230904265!2d-100.72254878560868!3d20.030997626464973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd70aab88855b%3A0x655d64560a0cc7b1!2sMercado%20Hidalgo!5e0!3m2!1ses-419!2smx!4v1607971218534!5m2!1ses-419!2smx', 'Menudo, chiles rellenos, mole verde y rojo, carne de puerco, bisteck, caldo de pollo, pechuga empanizada, tacos, barbacoa, sopes, quesadillas y enchiladas.', '', '', '08:00', '17:00', 'Publicado', 'Menudos Celia Comida Mexicana Restaurantes chiles rellenos tacos quesadillas enchiladas  sopes', '2020-12-14', 'No', NULL),
(7456, 189, 'Óptica Alemana', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Vicente Guerrero 17 ', 'Centro', '38600', '4171105850', '4171105850', 'https://www.facebook.com/Optica-Alemana-Acambaro-714714805224367', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.388055423424!2d-100.7237487856086!3d20.03418232636105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e06c8672d%3A0xa8f5235225a2a537!2sCalle%20Vicente%20Guerrero%2017%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607971423685!5m2!1ses-419!2smx', 'Examen visual, venta de artículos ópticos.\r\nTodo tipo de lentes de contacto como aereos.', 'Lunes', 'Sábado', '10:00', '15:00', 'Publicado', 'Óptica Alemana ópticas oculistas lentes exámenes de la vista', '2020-12-14', 'No', NULL),
(7457, 27, 'Autoboutique Gabriel', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Primero de Mayo 1545', 'Centro', '38600', '4171727928', '4171009375', 'https://www.facebook.com/AutoboutiqueGabriel', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.672156214928!2d-100.73096708560884!3d20.022269826749714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd614254ce249%3A0x8278dbbcb1496077!2sPrimero%20de%20Mayo%201545%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607971702053!5m2!1ses-419!2smx', 'Venta de audio y seguridad automotriz.', '', '', '10:00', '20:00', 'Publicado', 'Autoboutique Gabriel Automóviles alarmas para automoviles refacciones sonido para autos  automotriz carros', '2020-12-14', 'No', NULL),
(7458, 172, 'BioFauna', 'uploads/images/biofauna.jpg', 'Acámbaro', 'Guanajuato', 'Leona Vicario 162', 'Centro', '38600', '4171727357', '4171270029', 'https://www.facebook.com/policlinicabiofauna/', 'https://www.instagram.com/biofaunaoficial/', '', 'http://policlinicabiofauna.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.39521448733!2d-100.72037958560864!3d20.03388222637085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd671862cbf75%3A0x84db8f1db1e299b9!2sLeona%20Vicario%20162%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607972229547!5m2!1ses-419!2smx', 'Servicios integrales de medicina y cirugía para mascotas, laboratorio rayos X, ultrasonido, hospital, electrocardiograma, todos los servicios dentro de las instalaciones.\r\nServicio 24/7', 'Lunes', 'Sábado', '09:30', '21:00', 'Publicado', 'BioFauna médicos veterinarios servicio mascotas animales perros gatos  medicina veterinarias veterinaria', '2020-12-14', 'No', NULL),
(7459, 257, 'Waldos 4213', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Andador Juárez 420', 'Centro', '38600', '4171724528', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234.27446233832586!2d-100.71958087408873!3d20.034042234405472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd671f56b0e43%3A0xe26bbc528b6ba106!2sBenito%20Ju%C3%A1rez%20420%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607973679200!5m2!1ses-419!2smx', 'Ropa, productos para el cuidado personal y cocina.', '', '', '07:00', '21:00', 'Publicado', 'Waldos 4213 abarrotes tiendas de autoservicio descuentos ropa cuidado personal cocina casa', '2020-12-14', 'No', NULL),
(7460, 283, 'Yady\'s Productos', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Domicilio conocido', 'Centro', '38600', '4171137525', '4171137525', '', '', '', '', '', 'Productos de belleza, para bajar de peso, para crecimiento del cabello, eliminar caída de cabello, manchas en la piel, barros, espinillas.\r\nVenta en línea', 'Lunes', 'Domingo', '10:30', '18:00', 'Publicado', 'Yady\'s Productos Yadys belleza salud bajar de peso ventas en línea cosméticos', '2020-12-14', 'No', NULL),
(7461, 63, 'Gorditas estilo Celaya', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 's/n', 'Rancho Grande', '38620', '4171162618', '4171162618', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.0652885700516!2d-100.72954211230255!3d20.03950116580071!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66828837cbd%3A0x54602ea046d343af!2sRancho%20Grande%2C%2038620%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1607980139629!5m2!1ses-419!2smx', 'Ricas gorditas de migajas o queso, quesadillas y larguitas.', 'Miércoles', 'Domingo', '09:00', '14:00', 'Publicado', 'Gorditas estilo Celaya gorditas de celaya comida mexicana antojos guisos', '2020-12-14', 'No', NULL),
(7462, 285, 'Optimax', 'uploads/images/WhatsApp Image 2020-12-15 at 4.04.07 PM.jpeg', 'Acámbaro', 'Guanajuato', 'José María Morelos 613', 'Centro', '38600', '4171726120', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4039168697095!2d-100.72433788586017!3d20.03351742638329!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66de19cb735%3A0x3cfda05efa6f8953!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20613%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1608080500468!5m2!1ses-419!2smx', 'Venta de lentes, armazón y lentes de contacto con examen de vista incluido.', 'Lunes', 'Sábado', '10:00', '19:00', 'Publicado', 'Optimax ópticas lentes exámenes de la vista', '2020-12-16', 'No', NULL),
(7463, 63, 'Las Suculentas', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Primero de Mayo 1640 c', 'San Isidro', '38670', '4171407645', '4171407645', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234.296061872265!2d-100.7291074986632!3d20.01955036036421!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6168438c349%3A0x4ff85fd430fbb0c3!2sPrimero%20de%20Mayo%201640%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1608080920260!5m2!1ses-419!2smx', 'Venta de gorditas de migajas o queso (estilo celaya) quesadillas, sopes y larguitas.\r\nSábados ponche por temporada navideña.\r\n', '', '', '09:00', '14:30', 'Publicado', 'Las Suculentas comida gorditas quesadillas sopes tacos larguitas', '2020-12-16', 'No', NULL),
(7464, 10, 'La Higiénica - Productos de Limpieza', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Vicente Guerrero 100', 'Centro', '38600', 's/n', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3614050162773!2d-100.72593409606571!3d20.035299443874994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ec61aeff9%3A0xeff0b0ede4e325ab!2sCalle%20Vicente%20Guerrero%20100%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1608241253642!5m2!1ses!2smx', 'Productos de limpieza para aseo de casa, oficina e industria.', 'Lunes', 'Sábado', '09:00', '16:00', 'Publicado', 'La Higiénica Higiene Productos de limpiezas aseo hogar oficina industria ', '2020-12-17', 'No', NULL),
(7465, 281, 'Carpinteria en general', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Durazno 12', 'Lomas verdes', '38650', '4171247006', '4171247006', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.636467985694!2d-100.71919178560881!3d20.023766626700827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd60c4062bf05%3A0xa1dff3f465f846fb!2sDurazno%2012%2C%20Lomas%20Verdes%2C%2038650%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1608242254784!5m2!1ses!2smx', 'Se realizan todo tipo de muebles, cocinas, closet, recámaras, barandales etc.', 'Lunes', 'Sábado', '09:00', '16:00', 'Publicado', 'Carpinteria en general carpinterías madera muebles de madera cocinas closets recámaras puertas ', '2020-12-17', 'No', NULL),
(7466, 234, 'Salon y Hotel el Embarcadero', 'uploads/images/Salon y Hotel el Embarcadero.jpg', 'Acámbaro', 'Guanajuato', 'Calle A Morelia 1756', 'Eduardo Morales', '38600', '4423593624', '', 'https://web.facebook.com/SalonElEmbarcadero?_rdc=1&_rdr', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3749.189712437835!2d-100.73238338627066!3d20.000550927459223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842d29e0f744f849%3A0x7f058a89db43a821!2sSalon%20y%20Hotel%20el%20Embarcadero!5e0!3m2!1ses!2smx!4v1613089455409!5m2!1ses!2smx', 'En El Embarcadero quieren cumplir con todos los requerimientos de su boda, tanto en espacio como en banquete, por eso les ofrece sus servicios especiales, para que ustedes celebren el enlace matrimonial que siempre desearon. Este hotel cuenta con un espacioso salón y con un precioso jardín, que conseguirán que su boda sea recordada como una celebración elegante y romántica.\r\n\r\nEspacios y capacidades\r\n\r\nEl Embarcadero les brinda la opción de elegir si prefieren que su boda se realice al aire libre o en un espacio cerrado, puesto que dispone de estos ambientes. De este modo, el hotel les presenta los siguientes espacios:\r\n\r\nAmplios salones con capacidades para 50 o 700 personas\r\nEstacionamiento para los carros de sus invitados\r\nEspacioso jardín\r\nServicios que ofrece\r\n\r\nEl Embarcadero les brinda una serie de servicios para que la organización de su boda sea perfecta. Entre sus principales prestaciones podemos encontrar:\r\n\r\nServicio de banquetes o menús\r\nSalón especial para la cena y el baile de su boda\r\nServicio de refrescos y hielo\r\nDescorche de cortesía\r\nMaestro de ceremonia\r\nServicio de meseros\r\nVajilla\r\nCristalería\r\nAlojamiento\r\n\r\nSi desean pasar su primera noche de casados en este hotel lo pueden hacer sin ningún tipo de problema puesto que el hotel dispone de suite nupcial, especial para recién casados. Esta habitación dispone de servicios especiales como desayuno incluido, jacuzzi nupcial y teléfono.\r\n\r\nOtras instalaciones\r\n\r\nOtra de las ventajas de disponer de los servicios de El Embarcadero es que dispone de una zona especial de pesca deportiva, para que puedan disfrutar de un día tranquilo y relajado, mientras pescan.', 'Lunes', 'Domingo', '10:00', '21:00', 'Publicado', 'Salón y Hotel el Embarcadero Salones de fiesta ', '2021-02-10', 'No', NULL),
(7467, 109, 'IRONWOLFS CROSSFIT GYM', 'uploads/images/WhatsApp Image 2021-02-10 at 16.01.55 (1).jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #192', 'CENTRO', '38600', '4171060306', '4171060306', 'https://www.facebook.com/Iron-Wolfs-Gym-and-Crossfit-802200416629685/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7496.8572911207475!2d-100.72269552360046!3d20.032480775931603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd7418b128d3f%3A0x91e579d0ddb991b3!2sIron%20wolfs%20gym%20and%20Cross%20fit!5e0!3m2!1ses-419!2smx!4v1613103626779!5m2!1ses-419!2smx', 'GIMNACIO DE ACONDICIONAMIENTO FISICO Y RESISTENCIA DE ALTO RENDIMIENTO (EL SABADO HORARIO DE 8:00 AM A 2:00 PM)', 'Lunes', 'Sábado', '07:00', '10:00', 'Publicado', 'IRONWOLFS CROSSFIT GYM  ironwolfs crossfit gym gimnasio pesas  ejercicio fitness gim\r\n', '2021-02-10', 'Sí', NULL),
(7468, 57, 'RenaSer Clínica del Riñón', 'uploads/images/WhatsApp Image 2021-02-10 at 16.01.55.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #420', 'CENTRO', '38600', '4176882838', '', 'https://www.facebook.com/renaser.hemodialisis', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3861278738696!2d-100.72016538467783!3d20.03426312635626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6717f4ac117%3A0xe854a516b888388b!2sFrancisco%20I.%20Madero%20420%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613104279175!5m2!1ses-419!2smx', 'HEMODIÁLISIS, ACCESOS VASCULARES', 'Lunes', 'Sábado', '08:00', '16:00', 'Publicado', 'RenaSer Clínica del riñón CLÍNICA clínica riñon renaser medicina  clínicas  clinicas', '2021-02-10', 'No', NULL),
(7469, 102, 'FRUTERIA GRANADOS', 'uploads/images/WhatsApp Image 2021-02-10 at 16.02.04.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #480', 'CENTRO', '38600', '4211078612', '4211078612', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4279168140342!2d-100.72065848467778!3d20.032511326413385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd67235e4fbcb%3A0xe5c4d816b5ecd4c!2sFrancisco%20I.%20Madero%20480%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613105259695!5m2!1ses-419!2smx', 'FRUTA Y VERDURA FRESCA Y ABARROTES', 'Lunes', 'Domingo', '08:00', '17:00', 'Publicado', 'FRUTERIA GRANADOS frutería fruterías fruterias fruta  frutas y verduras fruteria granados', '2021-02-10', 'No', NULL),
(7470, 282, 'AVILA BARBER SHOP', 'uploads/images/WhatsApp Image 2021-02-10 at 16.02.16.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #501 B', 'CENTRO', '38600', '4171331773', '4171331773', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4022517875305!2d-100.72047118467788!3d20.033587226378305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722c860a27%3A0x52b349e6d8d79188!2sFrancisco%20I.%20Madero%20501%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613105564742!5m2!1ses-419!2smx', 'BARBERIA, CORTES ARREGLO ESTILO', 'Lunes', '', '11:00', '20:00', 'Publicado', 'Barberías Barberias barberias barberías AVILA BARBER SHOP avila barber shop BARBERIA, CORTES ARREGLO ESTILO barbería barberia  barber shop cortes de cabello barba ', '2021-02-10', 'No', NULL),
(7471, 63, 'SOPES Y LARGUITAS', 'uploads/images/WhatsApp Image 2021-02-10 at 16.02.33.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #501', 'CENTRO', '38600', '4176883462', '4176883462', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4022517875305!2d-100.72047118467788!3d20.033587226378305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722c860a27%3A0x52b349e6d8d79188!2sFrancisco%20I.%20Madero%20501%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613106009053!5m2!1ses-419!2smx', 'SOPES, LARGUITAS, QUESADILLAS Y GORDITAS', 'Lunes', 'Domingo', '09:00', '15:00', 'Publicado', 'SOPES Y LARGUITAS Comida comida comer sopes y larguitas fonda', '2021-02-10', 'Sí', NULL),
(7472, 57, 'CLINICA SAN FRANCISCO', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.02.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #535', 'CENTRO', '38600', '4171723198', '', 'https://www.facebook.com/pages/Clinica%20San%20Francisco/160463304709759/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.410500808112!2d-100.72052928467781!3d20.033241426389566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722d6bc5ef%3A0x719e7f1d20e43c68!2sClinica%20San%20Francisco!5e0!3m2!1ses-419!2smx!4v1613106204199!5m2!1ses-419!2smx', 'CESAREAS Y PARTOS (ABIERTO LAS 24 hrs.)', 'Lunes', 'Domingo', '00:00', '00:00', 'Publicado', 'CLINICA SAN FRANCISCO clinica san francisco clínica clinicas Clínicas Clinicas médicos médico medico cesareas y partos', '2021-02-10', 'Sí', NULL),
(7473, 90, 'FARMACIA DE JESÚS', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.13.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #535 A', 'CENTRO', '38600', '4171073156', '4171073156', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.410500808112!2d-100.72052928467781!3d20.033241426389566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd672323f6757%3A0xbc3860b093aef984!2sFrancisco%20I.%20Madero%20535%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613106619727!5m2!1ses-419!2smx', 'FARMACIA Y CLINICA (DOMINGOS DE 11:00 A 3:30 pm)', 'Lunes', 'Domingo', '11:00', '21:00', 'Publicado', 'FARMACIA DE JESUS FARMACIA DE JESÚS  Farmacias farmacias farmacia de jesus farmacia de jesús ', '2021-02-10', 'No', NULL),
(7474, 80, 'REPARACIÓN DE APARATOS ELECTRODOMESTICOS ', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.16.jpeg', 'Acámbaro', 'Guanajuato', 'PINO SUAREZ #98 A', 'CENTRO', '38600', '4171260050', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.411008912778!2d-100.72175338467787!3d20.033220126390408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722294c8a5%3A0x385ef21c7dd09115!2sPino%20Su%C3%A1rez%2098A%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613106793486!5m2!1ses-419!2smx\"', 'REPARACIÓN DE LAVADORAS, LICUADORAS, PLANCHAS, ETC.\r\n(DOMINGOS CON UN HORARIO DE 10:00 am A 3:00 pm)', 'Lunes', 'Domingo', '10:00', '17:00', 'Publicado', 'REPARACIÓN DE APARATOS ELECTRODOMESTICOS  electrónica Electrónica reparación de aparatos electrodomésticos  electrodomesticos', '2021-02-10', 'No', NULL),
(7475, 286, 'AGENCIA DE PAYASITOS', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.39.jpeg', 'Acámbaro', 'Guanajuato', 'PINO SUAREZ #98 A', 'CENTRO', '38600', '4171570705', '4171570705', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.411008912778!2d-100.72175338467787!3d20.033220126390408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722294c8a5%3A0x385ef21c7dd09115!2sPino%20Su%C3%A1rez%2098A%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613106793486!5m2!1ses-419!2smx\"', 'RENTA DE BOTARGA, SHOW DE PAYASOS Y FIGURAS DE YESO\r\n(DOMINGO DE 10:00 am A 3:00 pm)', 'Lunes', 'Domingo', '10:00', '17:00', 'Publicado', 'AGENCIA DE PAYASITOS agencia de payasitos payasos show de payasos ', '2021-02-10', 'No', NULL),
(7476, 79, 'DULCERIA RICO', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.55.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #714', 'CENTRO', '38600', '4171601458', '4171601458', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4468015554257!2d-100.7208329846779!3d20.03171962643927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6724e501adb%3A0x47d32858a5836427!2sFrancisco%20I.%20Madero%20714%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613107379720!5m2!1ses-419!2smx', 'DULCES, BOTANA SUELTA, PIÑATAS Y ABARROTES', '', '', '08:30', '20:00', 'Publicado', 'DULCERIA RICO dulcerías dulcerias dulcería dulceria rico dulces', '2021-02-10', 'Sí', NULL),
(7477, 236, 'CHILES SECOS Y SEMILLAS EL CHILERO', 'uploads/images/WhatsApp Image 2021-02-10 at 16.03.58.jpeg', 'Acámbaro', 'Guanajuato', 'MELCHOR OCAMPO ESQ. CON FRANCISCO I. MADERO', 'CENTRO', '38600', '4171727963', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.116884438009!2d-100.7188924023199!3d20.03085027383919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd672f7b5207b%3A0x36bcac8ca3552fc3!2sMelchor%20Ocampo%20231B%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613107801440!5m2!1ses-419!2smx', 'ABARROTES POR MAYOREO Y MENUDEO \r\nCHILES Y ALIMENTOS PARA PERRO\r\n(JUEVES Y DOMINGOS CON UN HORARIO DE 8:30 am A 4:00 pm)', 'Lunes', 'Domingo', '08:30', '18:00', 'Publicado', 'CHILES SECOS Y SEMILLAS EL CHILERO semillas semilla chiles secos y semillas el chilero', '2021-02-10', 'No', NULL),
(7478, 287, 'Tania González', 'uploads/images/WhatsApp Image 2021-02-10 at 16.04.17.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #877 B', 'CENTRO', '38600', '4171775000', '4171775000', 'https://www.facebook.com/Tania-Gonz%C3%A1lez-101701857984290', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.120640556709!2d-100.71969377078776!3d20.03022035914348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd672f11c1aed%3A0xeac169345a30e536!2sFrancisco%20I.%20Madero%20877%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613108228790!5m2!1ses-419!2smx', 'APLICACIÓN DE UÑAS Y COSMETICOS', 'Lunes', 'Sábado', '10:00', '20:00', 'Publicado', 'Venta de cosméticos y aplicación de uñas Tania González  Uñas cosmeticos ', '2021-02-10', 'No', NULL),
(7479, 288, 'RECICLAJES DEL CENTRO DE ACAMBARO', 'uploads/images/WhatsApp Image 2021-02-10 at 16.04.19.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #756', 'CENTRO', '38600', '4171798564', '4171798564', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.1142083860527!2d-100.7187810268618!3d20.03129904584628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd672576971d3%3A0x810409a931ce43b!2sFrancisco%20I.%20Madero%20756%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613108498625!5m2!1ses-419!2smx', 'COMPRA Y VENTA DE DESPERDICIO INDUSTRIAL\r\n(SABADOS DE 8:00 am A 3:00 pm)', 'Lunes', 'Sábado', '08:00', '05:00', 'Publicado', 'RECICLAJES DEL CENTRO DE ACAMBARO reciclajes del centro de acambaro reciclaje desperdicio industrial reciclajes', '2021-02-10', 'Sí', NULL),
(7480, 289, 'TIENDA ESOTERICA ', 'uploads/images/WhatsApp Image 2021-02-10 at 16.04.25.jpeg', 'Acámbaro', 'Guanajuato', 'FRANCISCO I. MADERO #728', 'CENTRO', '38600', '4171173823', '4171173823', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d937.1128355893583!2d-100.7190853707877!3d20.03152925913295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd672518f7b93%3A0xdab45ae16941c932!2sFrancisco%20I.%20Madero%20728%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613108848670!5m2!1ses-419!2smx', 'LIMPIAS, TRABAJOS, LECTURAS DE CARTAS, VENTA DE IMAGENES Y ACCESORIOS ESOTERICOS\r\n(DOMINGOS DE 10:00 am A 3:00 pm)', 'Lunes', 'Domingo', '10:00', '21:00', 'Publicado', 'TIENDA ESOTERICA BUDA Esoterismo esoterismo tienda esotérica buda tienda esoterica', '2021-02-11', 'Sí', NULL),
(7481, 272, 'Street Legend', 'uploads/images/WhatsApp Image 2021-02-10 at 16.04.37.jpeg', 'Acámbaro', 'Guanajuato', 'Francisco I. Madero #536', 'Centro', '38600', '4171075916', '4171075916', 'Street legend', '', '', '', '', 'ROPA,ZAPATOS, TENIS, ACCESORIOS PARA HOMBRE Y MUJER\r\n(JUEVES Y DOMINGOS CON UN HORARIO DE 10:00 am A 3:00 pm)', 'Lunes', 'Domingo', '10:00', '19:00', 'Publicado', 'STREET LEGEND zapaterías ropa zapatos accesorios', '2021-02-11', 'No', NULL),
(7482, 290, 'CUBAMEX (Fisioterapia)', 'uploads/images/WhatsApp Image 2021-02-10 at 16.04.48.jpeg', 'Acámbaro', 'Guanajuato', 'Francisco I. Madero # 216', 'Centro', '38600', '4171723318', '417117999', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3436984243804!2d-100.71967338592987!3d20.036041626301145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6711ad47817%3A0x49b7f91e6b6b49aa!2sFrancisco%20I.%20Madero%20216%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613246101369!5m2!1ses!2smx', 'FISIOTERAPIA, REHABILITACIÓN Y MAGNOTERAPIA', 'Lunes', 'Viernes', '09:00', '14:00', 'Publicado', 'CUBAMEX FISIOTERAPIAS, REHABILITACIÓN Y MAGNOTERAPIA Terapias salud', '2021-02-11', 'No', NULL),
(7483, 265, 'Uniformes Clínicos y QX', 'uploads/images/uniformes.jpg', 'Acámbaro', 'Guanajuato', 'Francisco I. Madero # 501', 'Centro', '38600', '4433612270', '4433612270', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4022517874705!2d-100.72047118575037!3d20.033587226380824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6722c860a27%3A0x52b349e6d8d79188!2sFrancisco%20I.%20Madero%20501%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613264337177!5m2!1ses-419!2smx', 'UNIFORMES CLINICOS Y QUIRURJICOS, PORTAGAFET, TINTAS Y CALZADO', 'Lunes', 'Domingo', '10:00', '03:00', 'Publicado', 'TIENDA DE UNIFORMES CLINICOS Y QUIRURJICOS Tienda de Uniformes Clínicos y QX ', '2021-02-11', 'Sí', NULL),
(7484, 87, 'ESTACIONAMIENTO \"SAN ANTONIO\"', 'uploads/images/WhatsApp Image 2021-02-10 at 16.05.04.jpeg', 'Acámbaro', 'Guanajuato', 'M. HIDALGO #1119', 'CENTRO', '38600', '4171802228', '4171802228', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.530337137486!2d-100.72419818467789!3d20.02821722655357!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d4e994a8d%3A0x216a1718db5ded2f!2sAv.%20M.%20Hidalgo%201119%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613268624414!5m2!1ses-419!2smx', 'ESTACIONAMIENTO, PENSIÓN Y LAVADO DE CARROS\r\n(JUEVES Y DOMIGOS  CON UN HORARIO DE 8:00 am A 2:00 pm)', 'Lunes', 'Domingo', '08:00', '06:00', 'Publicado', 'ESTACIONAMIENTO \"SAN ANTONIO\" estacionamientos estacionamiento para autos estacionamiento san antonio pension autos lavado de carros carwash', '2021-02-11', 'Sí', NULL),
(7485, 63, 'EDDY BURGER', 'uploads/images/WhatsApp Image 2021-02-10 at 16.05.16.jpeg', 'Acámbaro', 'Guanajuato', 'Av. M. HIDALGO #1094', 'CENTRO', '38600', '4171727668', '', 'https://www.facebook.com/eddy.burguer', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.5249925580893!2d-100.72384618467787!3d20.028441326546222!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd62021310439%3A0x24981ea91a90652e!2sEddy%20Burger!5e0!3m2!1ses-419!2smx!4v1613268875138!5m2!1ses-419!2smx', 'LONCHERIA, TORTAS,BURRITOS, HAMBUERGUESAS, ENCHILADAS, TACOS DORADOS Y CHILAQUILES\r\n(LOS DOMINGOS DE 7:00 am A 2:00pm)', 'Lunes', 'Domingo', '07:00', '18:00', 'Publicado', 'EDDY BURGER eddy burguer comida desayunos tortas hamburguesas', '2021-02-11', 'Sí', NULL),
(7486, 195, 'MAYORISTAS EN TONER DE ACÁMBARO', 'uploads/images/WhatsApp Image 2021-02-10 at 16.05.24.jpeg', 'Acámbaro', 'Guanajuato', 'Av. M. HIDALGO #1040', 'CENTRO', '38600', '4171728732', '4171304489', 'https://www.facebook.com/MTAACAM', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.509781299389!2d-100.72383258467782!3d20.029079126525478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d5b618cfd%3A0xee5014e3fc44d2ab!2sMayoristas%20En%20Toner%20De%20Acambaro!5e0!3m2!1ses-419!2smx!4v1613269251690!5m2!1ses-419!2smx', 'VENTA DE TECNOLOGIA CONSUMIBLES PARA COMPUTADORAS E IMPRESORAS, REFACCIONES, PAPELERIA EN GENERAL Y COPIAS\r\n(SABADOS DE 8:00 am A 7:00 pm y DOMINGOS DE 9:00am A 3:00 pm)', 'Lunes', 'Domingo', '06:30', '20:00', 'Publicado', 'MAYORISTAS EN TONER DE ACAMBARO mayoritas en toner de acámbaro impresiones papeleria papelería  impresiones copias papelerías papelerias ', '2021-02-11', 'Sí', NULL),
(7487, 253, 'Purón Telefonía', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.13.jpeg', 'Acámbaro', 'Guanajuato', 'Av. M. HIDALGO #987', 'CENTRO', '38600', '4171001300', '4171001300', 'https://www.facebook.com/Pur%C3%B3n-Telefon%C3%ADa-232808390905785', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.502984020467!2d-100.72382968467778!3d20.02936412651612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd7eab07f2f27%3A0x84de6e4ebcdaa86c!2zUHVyw7NuIFRlbGVmb27DrWE!5e0!3m2!1ses-419!2smx!4v1613269512056!5m2!1ses-419!2smx', 'REPARACIÓN DE TELEFONIA, VENTA DE ACCESORIOS, VENTA DE CHIPS Y TELEFONOS\r\n(MARTES DE 5:00 pm A 8:00 pm)', 'Lunes', 'Sábado', '10:00', '15:00', 'Publicado', 'PURON TELEFONIA Purón Telefonía celular teléfonos accesorios para celulares ', '2021-02-11', 'Sí', NULL),
(7488, 228, 'LUCK Y RAF', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.17.jpeg', 'Acámbaro', 'Guanajuato', 'Av. M. HIDALGO #951', 'CENTRO', '38600', '4171787547', '4171787547', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4953208716383!2d-100.7237171846779!3d20.029685426505743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d669d8989%3A0x9d7db459cb06bdc0!2sAv.%20M.%20Hidalgo%20951%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613269864889!5m2!1ses-419!2smx', 'ROPA PARA DAMA JUVENIL PARA TODA LA OCASION, NOVEDADES, BISUTERIA, ORO LAMINADO ACCESORIOS', 'Lunes', 'Domingo', '10:00', '17:00', 'Publicado', 'LUCK Y RAF ropa para damas ROPA PARA DAMAS luck y raf', '2021-02-11', 'Sí', NULL),
(7489, 293, 'CEREZONA GOURMET', 'uploads/images/cerezona.jpg', 'Acámbaro', 'Guanajuato', 'M. HIDALGO #848', 'CENTRO', '38600', '4171106394', '4171106394', 'https://www.facebook.com/Cerezona-105097891299458/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4754886771616!2d-100.72326998467786!3d20.030516926478587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d7e1a4e3d%3A0xbb6cd1e14b3230a7!2sAv.%20M.%20Hidalgo%20848%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613270661810!5m2!1ses-419!2smx', 'PRODUCTOS GOURMET ARTESANALES, FRUTOS ROJOS, FRESCOS Y CONGELADOS\r\n(DOMINGOS DE 10:00 am A 3:00 pm)', 'Lunes', 'Domingo', '10:00', '20:00', 'Publicado', 'CEREZONA GOURMET Cerezona PRODUCTOS GOURMET ARTESANALES, FRUTOS ROJOS, FRESCOS Y CONGELADOS productos gourmet artesanales', '2021-02-11', 'Sí', NULL),
(7490, 45, 'CARNICERIA MRS. JHON ', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.28.jpeg', 'Acámbaro', 'Guanajuato', 'INT. MERCADO HIDALGO', 'CENTRO', '38600', '4171130905', '4171130905', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4754886771616!2d-100.72326998467786!3d20.030516926478587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd70aab88855b%3A0x655d64560a0cc7b1!2sMercado%20Hidalgo!5e0!3m2!1ses-419!2smx!4v1613271950420!5m2!1ses-419!2smx', 'CARNE DE PRIMERA CALIDAD, DE RES Y CERDO, MENUDO, CHORIZO, HIGADO, CHULETA AHUMADA \r\n*CON SERVICIO A DOMICILIO', 'Lunes', 'Domingo', '07:00', '17:00', 'Publicado', 'CARNICERIA MRS. JHON  carniceria mrs. jhon carnicerías carnes ', '2021-02-11', 'Sí', NULL),
(7491, 45, 'CARNICERIA  \"WICHOS\"', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.39.jpeg', 'Acámbaro', 'Guanajuato', 'Int. MERCADO HIDALGO LOCAL #49', 'CENTRO', '38600', '4171156553', '4171156553', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4754886771616!2d-100.72326998467786!3d20.030516926478587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd70aab88855b%3A0x655d64560a0cc7b1!2sMercado%20Hidalgo!5e0!3m2!1ses-419!2smx!4v1613271950420!5m2!1ses-419!2smx', 'OFRECEMOS CARNE DE RES Y CARNE DE PUERCO', 'Lunes', 'Domingo', '08:00', '16:00', 'Publicado', 'CARNICERIA \"WICHOS\" carnicerias carnicerías carniceria wichos ', '2021-02-11', 'Sí', NULL),
(7492, 209, 'POLLERIA \"PEPECHUY\"', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.49 (1).jpeg', 'Acámbaro', 'Guanajuato', 'Int. MERCADO HIDALGO LOCAL #6 y 7', 'CENTRO', '38600', '4171048466', '4171048466', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4754886771616!2d-100.72326998467786!3d20.030516926478587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd70aab88855b%3A0x655d64560a0cc7b1!2sMercado%20Hidalgo!5e0!3m2!1ses-419!2smx!4v1613271950420!5m2!1ses-419!2smx', 'POLLO FRESCO Y ABARROTES', 'Lunes', 'Domingo', '07:30', '15:00', 'Publicado', 'POLLERIA \"PEPECHUY\" polleria pepechuy Pollería pollería pollerias  pollo', '2021-02-11', 'Sí', NULL),
(7493, 75, 'CONSULTORIO DENTAL', 'uploads/images/WhatsApp Image 2021-02-10 at 16.07.08.jpeg', 'Acámbaro', 'Guanajuato', 'PEDRO MORENO #61 A', 'CENTRO', '38600', '4171799133', '4171799133', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.437521235924!2d-100.72017568474682!3d20.032108686546724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd673b37e3547%3A0x47612f4b10f28c75!2sPedro%20Moreno%2061%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613272572978!5m2!1ses-419!2smx', 'RESTAURACIONES, EXTRACCIONES, PROTESIS Y LIMPIEZAS', 'Lunes', 'Sábado', '10:30', '15:00', 'Publicado', 'CONSULTORIO DENTAL dentista dentistas consultorio dental dientes', '2021-02-11', 'Sí', NULL),
(7494, 2, 'ABARROTES Y REGALOS', 'uploads/images/WhatsApp Image 2021-02-10 at 16.06.59.jpeg', 'Acámbaro', 'Guanajuato', 'PEDRO MORENO #86', 'CENTRO', '38600', 'S/N', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.436793706729!2d-100.7200878847468!3d20.03213918654667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd673b474a2fb%3A0x79b5bc8b2ce256a5!2sPedro%20Moreno%2086%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613272713066!5m2!1ses-419!2smx', 'OFRECEMOS GALLETAS, REFRESCOS, AGUA, ABARROTES EN GENERAL', 'Lunes', 'Domingo', '10:00', '20:00', 'Publicado', 'ABARROTES Y REGALOS abarrotes', '2021-02-11', 'Sí', NULL),
(7495, 53, 'DEPOSITO \"EL FARO\"', 'uploads/images/WhatsApp Image 2021-02-10 at 16.07.28.jpeg', 'Acámbaro', 'Guanajuato', 'PEDRO MORENO #97', 'CENTRO', '38600', '4171797330', '4171797330', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4395129907502!2d-100.7199246847468!3d20.032025186546626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd673b16ad221%3A0x628a8e3aa5d9e645!2sPedro%20Moreno%2097%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613272952619!5m2!1ses-419!2smx', 'DEPOSITO DE BEBIDAS PARA LLEVAR\r\n(VIERNES DE 9:00am A 10:30 pm)', 'Lunes', 'Domingo', '09:00', '21:00', 'Publicado', 'DEPOSITO \"EL FARO\" deposito el faro cerveza micheladas cahuamas', '2021-02-11', 'Sí', NULL),
(7496, 195, 'PAPELERÍA \"REYNA\" ', 'uploads/images/PAPELERIA.png', 'Acámbaro', 'Guanajuato', 'Av. 1ra de Mayo #683 ', 'CENTRO', '38600', '4431794372', '', 'https://www.facebook.com/papeleriareynaoficial/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3905325956716!2d-100.72613528474676!3d20.034078486545482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e8774fbe1%3A0xa3ddce3dfeac4338!2sPrimero%20de%20Mayo%20683%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613273295243!5m2!1ses-419!2smx', 'PAPELERIA, REGALOS, BOLSAS DE REGALO, ALCANCIAS Y LAMPARAS', 'Lunes', 'Domingo', '11:00', '16:00', 'Publicado', 'PAPELERIA \"REYNA\"  papeleria reyna papelerias papelerías ', '2021-02-11', 'Sí', NULL),
(7497, 3, 'Despacho Jurídico M & J Asociados', 'uploads/images/abogados.jpg', 'Acámbaro', 'Guanajuato', 'Av. Morelos #461', 'CENTRO', '38600', '4171773429', '4171787509', 'https://www.facebook.com/Despacho-Jur%C3%ADdico-M-J-Asociados-1104207349776878/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3726882515243!2d-100.72406258474675!3d20.03482648654512!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e16d9a09f%3A0xde7f4d66a914a8fd!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20461%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613273581587!5m2!1ses-419!2smx', 'CONSULTAS JURIDICAS, DIVORCIOS, HERENCIAS, ASUNTOS CIVILES, MERCANTILES Y LABORALES', 'Lunes', 'Viernes', '10:30', '19:00', 'Publicado', 'M y J  ABOGADOS Y ASOCIADOS   DESPACHO JURIDICO  abogados abogado despacho jurídico ', '2021-02-11', 'Sí', NULL),
(7498, 285, 'VISUAL CENTER', 'uploads/images/WhatsApp Image 2021-02-11 at 14.13.43.jpeg', 'Acámbaro', 'Guanajuato', 'VICENTE GUERRERO #14', 'CENTRO', '38670', '4176681035', '', 'https://www.facebook.com/Visual-Center-Bajio-Acambaro-Guerrero-104746228147084', '', '', '', '', 'LENTES DESDE $350 EN ADELANTE\r\nEXAMEN DE LA VISTA SIN COSTO', 'Lunes', 'Domingo', '09:00', '20:00', 'Publicado', 'VISUAL CENTER visual center opticas ópticas lentes', '2021-02-11', 'Sí', NULL),
(7499, 294, 'HERMY SOUVENIRS ', 'uploads/images/herym.png', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #553', 'CENTRO', '38600', '4171005730', '4171005730', 'https://www.facebook.com/Hermy-Souvenirs-2081775295412171', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.385973760486!2d-100.72419038474679!3d20.03426958654536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e1047eae1%3A0x468a82a41489300!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20553%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613276246934!5m2!1ses-419!2smx', 'PERSONALIZAMOS TAZAS, TARROS, TERMOS, CILINDROS PARA AGUA, PLAYERAS, GORRAS, ROMPECABEZAS, MANEJO DE PASTA FLEXIBLE Y DULCERIA\r\n(JUEVES DE 10:00 am A 12:30 pm)', 'Lunes', 'Sábado', '10:30', '20:00', 'Publicado', 'HERMY SOUVENIRS  hermy souvenirs regalos', '2021-02-11', 'Sí', NULL),
(7500, 295, 'YUTZIL CREATIONS ', 'uploads/images/yutzil.jpg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #553', 'CENTRO', '38600', '4171404750', '4171404750', 'https://www.facebook.com/yutzilcreations', 'https://www.instagram.com/yutzilcreations/', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.385973760486!2d-100.72419038474679!3d20.03426958654536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e1047eae1%3A0x468a82a41489300!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20553%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613276246934!5m2!1ses-419!2smx', 'TRABAJO DE MANUALIDADES', '', '', '00:00', '00:00', 'Publicado', 'YUTZIL CREATIONS  manualidades yutzil creations regalos trabajo de manualidades', '2021-02-11', 'Sí', NULL),
(7501, 147, 'MARISCOS \"ACAMBARONES\"', 'uploads/images/WhatsApp Image 2021-02-11 at 14.14.46.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #54 A', 'CENTRO', '38600', '4171002851', '4171002851', 'https://www.facebook.com/Acambarones', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3838648974465!2d-100.72798188474677!3d20.034357986545498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ebb02b63d%3A0x9ef91525d5c88899!2sMariano%20Abasolo%2054a%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613276890555!5m2!1ses-419!2smx', 'OFRECEMOS MARISCO CRUDO Y PREPARADO', 'Lunes', 'Domingo', '09:00', '16:00', 'Publicado', 'MARISCOS \"ACAMBARONES\" mariscos acambarones comida', '2021-02-11', 'Sí', NULL),
(7502, 45, 'CARNICERIA \"TAVOS\"', 'uploads/images/tavos.jpg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #501', 'CENTRO', '38600', '4171724524', '4171029891', 'https://www.facebook.com/Carniceria-TavoS-1705260989533681', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3813099168174!2d-100.72777388508379!3d20.034465086545346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ebc6e4851%3A0x14f7fe8fd9b254d5!2sTavos%20Carnicer%C3%ADa!5e0!3m2!1ses-419!2smx!4v1613275652931!5m2!1ses-419!2smx', 'CORTES, CARNE DE RES Y DE PUERCO, CARNES FRIAS, CARNITAS, BARBACOA (FINES DE SEMANA), ENCURTIDOS, CAMARONES Y PESCADO', 'Lunes', 'Domingo', '07:00', '17:00', 'Publicado', 'CARNICERIA \"TAVOS\" carnicerias carniceria carnicería carniceria tavos  carne', '2021-02-11', 'Sí', NULL),
(7503, 151, 'ESTETICA UNISEX \"JACIBE\"', 'uploads/images/WhatsApp Image 2021-02-11 at 14.15.43.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #53', 'CENTRO', '38600', '4171573713', '4171573713', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.387331157425!2d-100.72681028474676!3d20.03421268654544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e8539ec13%3A0x5c0f9b809abe5997!2sMariano%20Abasolo%2053%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613277221036!5m2!1ses-419!2smx', 'ESTETICA, MICROBLADING, SHADING, Y ARREGLO DE CEJA', 'Lunes', 'Sábado', '10:50', '20:00', 'Publicado', 'ESTETICA UNISEX \"JACIBE\" estetica unisex jacibe microblanding shading arreglo de ceja MICROBLADING SHADING  ARREGLO DE CEJA esteticas estéticas ', '2021-02-11', 'Sí', NULL),
(7504, 45, 'CARNICERIA  TAVITO', 'uploads/images/WhatsApp Image 2021-02-11 at 14.16.08.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #67', 'CENTRO', '38600', '4171725675', '', 'https://www.facebook.com/Carniceria-TavoS-1705260989533681', '', '', '', '', 'CARNE DE RES, PUERCO, POLLO, SALCHICHONERIA Y DESPENSA', 'Lunes', 'Domingo', '07:00', '17:00', 'Publicado', 'Carnicerias Carniceria Tavos 2', '2021-02-11', 'No', NULL),
(7505, 291, 'El Carrusel', 'uploads/images/WhatsApp Image 2021-02-11 at 14.16.22.jpeg', 'Acámbaro', 'Guanajuato', 'Aldama 7A', 'Centro', '38600', '4171723277', '', 'https://www.facebook.com/El-Carrusel-985332751504973/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4424245191053!2d-100.7240735859299!3d20.031903126436163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d923b4b01%3A0x74acca6c50d42bd3!2sJ.%20Aldama%207%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613246393485!5m2!1ses!2smx', 'ARTICULOS DESECHABLE Y MATERIA PRIMA PARA REPOSTERIA\r\n(JUEVES, SADADO Y DOMINGO DE 9:00am A 5:00pm)', 'Lunes', 'Domingo', '09:00', '19:00', 'Publicado', 'EL CARRUSEL Plásticos desechables materias primas resposterias', '2021-02-12', 'No', NULL),
(7506, 189, 'OPTICA \"HOSPITAL DE LENTES\"', 'uploads/images/WhatsApp Image 2021-02-11 at 14.16.53.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #667 A', 'CENTRO', '38600', '4171722552', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3503175075143!2d-100.7244692847468!3d20.03576418654454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e38129021%3A0x321f742f9f22c71c!2sMorelos%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613277600956!5m2!1ses-419!2smx', 'EXAMEN DE LA VISTA, LENTES DE CONTACTO, GRADUADOS, VENTA DE ARMAZONES Y REPARACIONES', 'Lunes', 'Viernes', '10:00', '15:00', 'Publicado', 'OPTICA \"HOSPITAL DE LENTES\" opticas optica óptica hospital de lentes  reparacion de lentes', '2021-02-12', 'Sí', NULL),
(7507, 86, 'ROYAL SCHOOL', 'uploads/images/royal.jpg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #612', 'CENTRO', '38600', '417680391', '417680391', 'https://www.facebook.com/Instituto-Royal-School-Barber-Shop-English-103598524955633/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4022837493517!2d-100.72424538474675!3d20.033585886545765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66de2232685%3A0x6791f3479e504145!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20612%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613274488850!5m2!1ses-419!2smx', 'ESCUELA DE BARBERIA\r\nINST. CAPACITACION PARA EL TRABAJO\r\n1 AÑO 4 MESES, BARBEROS PROFESIONALES A PARTIR DE 2 MESES\r\n(SABADOS Y DOMINGOS DE 10:00am A 2:00pm)', 'Lunes', 'Domingo', '09:00', '18:00', 'Publicado', 'ROYAL SCHOOL royal school escuela de barberia  barbería', '2021-02-12', 'Sí', NULL),
(7508, 63, 'LONCHERIA \"RIVERA\" ', 'uploads/images/WhatsApp Image 2021-02-11 at 14.33.02.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #508', 'CENTRO', '38600', '4171001152', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.382292786732!2d-100.72388648474684!3d20.03442388654543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e054546f1%3A0xb4244d7599ed6323!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20508%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613275962604!5m2!1ses-419!2smx', 'TORTAS, BURRITOS, QUESADILLAS, TACOS, ALAMBRE, CARNE ASADA Y PECHUGA DE POLLO', 'Lunes', 'Sábado', '09:00', '18:00', 'Publicado', 'LONCHERIA \"RIVERA\" loncheria rivera comida burritos tortas  tacos quesadillas carne asada', '2021-02-12', 'Sí', NULL),
(7509, 92, 'PRELAGAS', 'uploads/images/WhatsApp Image 2021-02-11 at 14.33.29.jpeg', 'Acámbaro', 'Guanajuato', 'VICENTE GUERRERO ESQ. MORELOS #21', 'CENTRO', '38600', 'S/N', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.386839727676!2d-100.72423168474675!3d20.034233286545454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e05e12ffb%3A0x194554f5131cfe75!2sCalle%20Vicente%20Guerrero%2021%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613277986781!5m2!1ses-419!2smx', 'REFRACCIONES ELECTRODOMESTICAS Y ARTICULOS DE FERRETERIA\r\n', 'Lunes', 'Sábado', '09:30', '19:30', 'Publicado', 'PRELAGAS prelagas ferreterias ferreterías ferretería ferreteria', '2021-02-12', 'Sí', NULL),
(7510, 290, 'Centro de Sanación San Miguel (Masajes)', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Benito Juarez 89B', 'Centro', '38600', '5531981564', '5531981564', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3192849967236!2d-100.72124428474675!3d20.0370648865439!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6704db71c8f%3A0xa327e6a4ea0a9dd3!2sBenito%20Ju%C3%A1rez%2089%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613275792459!5m2!1ses-419!2smx', 'Rehabilitación Física ,Lesiones ,Contracturas .Masaje Anti estrés.\r\nAplicación de Ventosas. Equilibrio y Limpieza Energética. Medicina Tradicional Mexicana 100% Natural . Medicamento a base de extract', '', '', '00:00', '00:00', 'Publicado', 'Centro de sanación San Miguel Masajes Terápias Masajes Medicina Natural salud Rehabilitación Física  centro de sanacion san miguel terapias masajes', '2021-02-13', 'Sí', 24),
(7511, 63, 'Tamales Doña Rosa', 'uploads/images/118028612_103100871514374_5788181329641806314_n.jpg', 'Acámbaro', 'Guanajuato', 'Niño Artillero 14', 'Centro', '38600', '4171191012', '4171191012', 'https://www.facebook.com/tamales.donarosa.731', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d479775.6777546981!2d-100.99251254881848!3d20.04007411551515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd7681223e71d%3A0x632f2c9113deb35f!2sTamales%20Do%C3%B1a%20Rosa!5e0!3m2!1ses!2smx!4v1613245125041!5m2!1ses!2smx', 'Ricos tamales de chile verde, rojo, rajas con queso  y de dulce de piña, además de delicioso atole de limón, galleta y guayaba. Tenemos Servicio a Domicilio.  ', 'Sábado', 'Domingo', '18:00', '22:00', 'Publicado', 'Tamales doña rosa comida antojitos mexicanos', '2021-02-13', 'No', NULL);
INSERT INTO `anuncios` (`idAnuncio`, `idCategoria`, `titulo`, `url_imagen`, `municipio`, `estado`, `calle`, `colonia`, `cp`, `telefono`, `whatsapp`, `facebook`, `instagram`, `youtube`, `sitio`, `google_maps`, `descripcion`, `primer_dia_sem`, `ultimo_dia_sem`, `entrada`, `cierre`, `estatus_anuncio`, `keywords`, `fecha_publicacion`, `destacado`, `idSolicitud`) VALUES
(7512, 283, 'Beauty & Care Multimarcas', 'uploads/images/mi_negocio.jpg', 'Acámbaro', 'Guanajuato', 'Yucatan 10', 'Centro', '38600', '4171801596', '4171801596', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.622981708793!2d-100.72640238467804!3d20.0243322266803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd613af2eb1ff%3A0xa05d661234b1c1!2sYucat%C3%A1n%2010%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1613270066416!5m2!1ses-419!2smx', 'Venta de accesorios y productos de belleza veganos para el hombre y la mujer', '', '', '00:00', '00:00', 'Publicado', 'Beauty & Care Multimarcas Beauty Care Multimarcas Belleza cuidado personal accesorios  veganos veganismo', '2021-02-14', 'Sí', 26),
(7513, 296, 'Novedades \"Liz\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.22.42.jpeg', 'Acámbaro', 'Guanajuato', 'J. ALDAMA #175', 'CENTRO', '38600', 'S/N', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4377111118047!2d-100.72494488460723!3d20.032100726426734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66db8bead01%3A0x459cb34015ba2b08!2sJ.%20Aldama%20175%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613507260567!5m2!1ses!2smx', 'ROPA PARA TODA LA FAMILIA\r\n(JUEVES Y DOMINGO DE 10:00am A 4:00pm)', 'Lunes', 'Domingo', '10:00', '19:00', 'Publicado', 'Novedades  \"Liz\" NOVEDADES LIZ ROPA ropa para mujer', '2021-02-16', 'Sí', NULL),
(7514, 297, 'BELLA MARIA', 'uploads/images/bella.jpg', 'Acámbaro', 'Guanajuato', 'J. ALDAMA #37', 'CENTRO', '38600', '4175939469', '4175939469', 'https://www.facebook.com/BELLA-MAR%C3%8DA-107053914223825', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4318321678297!2d-100.72555988466638!3d20.032347186546435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dcbf37769%3A0x424a319ad3965837!2sJ.%20Aldama%2037%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613508117448!5m2!1ses!2smx', 'ACCESORIOS PARA MUJER\r\n(JUEVES Y DOMINGO DE 10:00am A 4:00pm)', 'Lunes', 'Domingo', '10:00', '18:00', 'Publicado', 'BELLA MARIA bella maria accesorios para mujer', '2021-02-16', 'Sí', NULL),
(7515, 92, 'FERRETERIA \"EL SOL\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.30.30.jpeg', 'Acámbaro', 'Guanajuato', 'J. ALDAMA #68', 'CENTRO', '38600', '41701721067', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.431669962838!2d-100.72625848466642!3d20.03235398654649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66c345ce935%3A0x1524afeca08b77ba!2sJ.%20Aldama%2068%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613508552596!5m2!1ses!2smx', 'FERREELECTRICA, CERRAJERIA Y ARTICULOS PARA EL HOGAR\r\n(SABADOS DE 9:00am A 8:00pm Y DOMINGOS DE 9:00am A 3:00pm)', 'Lunes', 'Domingo', '09:00', '18:00', 'Publicado', 'FERRETERIA \"EL SOL\" ferretería el sol ferreterias ferreterías cerrajerias cerrajeria articulos para el hogar', '2021-02-16', 'Sí', NULL),
(7516, 79, 'DULCERIA \"MARVEL\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.30.45.jpeg', 'Acámbaro', 'Guanajuato', 'J. ALDAMA #43', 'CENTRO', '38600', '4171128054', '4171128054', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4320969435057!2d-100.72581708466642!3d20.032336086546586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dcbac1981%3A0x26d4b0b4bca0abf1!2sJ.%20Aldama%2043%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613508876697!5m2!1ses!2smx', 'GRAN VARIEDAD DE DULCES Y BOTANAS \r\n(JUEVES Y DOMINGOS DE 8:00am A 3:00pm)', 'Lunes', 'Domingo', '08:00', '18:00', 'Publicado', 'DULCERIA \"MARVEL\" dulcerias dulcería dulceria dulcerías dulceria marvel dulces', '2021-02-16', 'Sí', NULL),
(7517, 25, 'TUPPERWARE TIENDA', 'uploads/images/WhatsApp Image 2021-02-16 at 14.31.21.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #67', 'CENTRO', '38600', '4171771638', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.3857352017644!2d-100.72718068466642!3d20.034279586545452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66e975ce8cb%3A0x343db2ccae8d4b99!2sMariano%20Abasolo%2067%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613509103590!5m2!1ses!2smx', 'TE INVITO A VENDER TUPPERWARE Y PODRAS GANAR REGALOS Y DINERO', 'Lunes', 'Domingo', '10:00', '15:30', 'Publicado', 'TUPPERWARE TIENDA tupperware tienda topers ', '2021-02-16', 'Sí', NULL),
(7518, 272, 'ZAPATERIA \"PEQUES\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.32.54.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO S/N', 'CENTRO', '38600', '4171136084', '4171136084', '', '', '', '', '', 'VENTA DE ZAPATOS PARA NIÑOS\r\n(JUEVES Y DOMINGOS DE 11:00am A 3:00pm)', 'Lunes', 'Domingo', '11:00', '20:00', 'Publicado', 'ZAPATERIA \"PEQUES\" zapateria peques zapatería peques zapaterias zapaterías zapatos', '2021-02-16', 'Sí', NULL),
(7519, 265, '\"LA GUADALUPANA\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.33.52.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #3-A', 'CENTRO', '38600', '4171771607', '4171771607', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4068495918114!2d-100.72344608466646!3d20.033394486545888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66df92e74dd%3A0x4f1ff00d0a4fc4c6!2sMariano%20Abasolo%203%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613509949764!5m2!1ses!2smx', 'UNIFORMES EN GENERAL DE CUALQUIER TIPO, UNIFORMES ESCOLARES Y ROPA EN GENERAL\r\n(DOMINGOS DE 10:00am A 3:00pm)', 'Lunes', 'Domingo', '10:00', '20:00', 'Publicado', '\"LA GUADALUPANA\"  la guadalupana uniformes escolares ropa', '2021-02-16', 'Sí', NULL),
(7520, 229, 'SANTRISDY', 'uploads/images/WhatsApp Image 2021-02-16 at 14.35.07.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #5-B', 'CENTRO', '38600', 'S/N', '', 'https://www.facebook.com/Santrisdy-121205838537767/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4083285913707!2d-100.72375268466651!3d20.033332486545973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dfb77cca1%3A0x5f6e055d017efb8f!2sMariano%20Abasolo%205B%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613510293283!5m2!1ses!2smx', 'ROPA PARA BEBE Y NIÑO\r\n(LOS DIAS JUEVES NO HAY SERVICIO)', 'Lunes', 'Domingo', '11:00', '20:30', 'Publicado', 'SANTRISDY santrisdy ropa para bebe y  niño ropa para niña', '2021-02-16', 'Sí', NULL),
(7521, 1, 'COMPRA DE ORO Y PLATA', 'uploads/images/WhatsApp Image 2021-02-16 at 14.36.04 (1).jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #3', 'CENTRO', '38600', '4171401096', '4171401096', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4068495918114!2d-100.72344608466646!3d20.033394486545888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66df92e74dd%3A0x4f1ff00d0a4fc4c6!2sMariano%20Abasolo%203%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613510501969!5m2!1ses!2smx', 'COMPRA DE PLATA Y ORO POR GRAMOS', 'Lunes', 'Domingo', '09:00', '17:00', 'Publicado', 'COMPRA DE ORO Y PLATA compra de oro y plata por gramos', '2021-02-16', 'Sí', NULL),
(7522, 79, 'DULCES DEL REFUGIO \"DULCES TIPICOS\"', 'uploads/images/WhatsApp Image 2021-02-16 at 14.37.13.jpeg', 'Acámbaro', 'Guanajuato', 'M. ABASOLO #7-A', 'CENTRO', '38600', '4171247038', '4171247038', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.399165879913!2d-100.72494338466639!3d20.033716586545832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66ddf58d22f%3A0x5a384f50ed3e0a08!2sMariano%20Abasolo%207%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613510757660!5m2!1ses!2smx', 'VENTA DE DULCES TIPICOS, SOMOS PRODUCTORES DE FRUTA CRISTALIZADA (CAMOTE, CALABAZA, CHILACAYOTE E HIGOS), JAMONCILLOS, COCADAS Y GARAPIÑADOS', 'Lunes', 'Domingo', '09:30', '17:00', 'Publicado', 'DULCES DEL REFUGIO \"DULCES TIPICOS\" dulces del refugio dulcería dulcerias dulceria dulces tipicos ', '2021-02-16', 'Sí', NULL),
(7523, 100, 'FOTO YULI', 'uploads/images/WhatsApp Image 2021-02-16 at 14.38.30.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #649-A', 'CENTRO', '38600', '4171729631', '4171729631', 'https://www.facebook.com/fotoestudioyuliacambaro/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4112865773213!2d-100.72442588466643!3d20.033208486546105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66de6e988e9%3A0xc2cea7fc1f03b9b7!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20649%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses!2smx!4v1613511053497!5m2!1ses!2smx', 'TODO EL SERVICIO DE FOTOGRAFIA Y VIDEO, MARCOS E IMPRESIONES DE FOTOGRAFIA\r\n(JUEVES Y DOMINGOS DE 9:00am A 3:00pm)', 'Lunes', 'Domingo', '09:00', '18:00', 'Publicado', 'FOTO YULI foto yuli fotografía fotografia foto estudio fotografia y video profesional', '2021-02-16', 'Sí', NULL),
(7524, 1, 'NOVEDADES \"YAK-LIN\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.18.16.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #28-A', 'CENTRO', '38600', '4175937008', '', '', '', '', '', '', 'VENTA DE ROPA DEPORTIVA Y NOVEDADES PARA ADULTOS Y NIÑOS\r\n(JUEVES Y DOMINGOS DE 10:00 am  A 4:00 pm)', 'Lunes', 'Domingo', '10:00', '19:00', 'Borrador', 'NOVEDADES \"YAK-LIN\"', '2021-02-24', 'No', NULL),
(7525, 1, 'DEPORTIVOS CHAVEZ ', 'uploads/images/WhatsApp Image 2021-02-23 at 16.18.57.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #28-D', 'CENTRO', '38600', '4171191624', '4171191624', '', '', '', '', '', 'TENIS CLONES DE LAS MARCAS MAS RECONOCIDAS NIKE, PUMA, JORDAN, ADIDAS, VANS, ETC. CON EXCELENTE CALIDAD Y GARANTIA\r\n(JUEVES Y DOMINGOS DE 10:00 am A 4:00 pm)', 'Lunes', 'Domingo', '10:00', '20:00', 'Borrador', 'DEPORTIVOS CHAVEZ ', '2021-02-24', 'No', NULL),
(7526, 1, '\"ALCA SEGURIDAD\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.19.28.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #827', 'CENTRO', '38600', '4171722960', '4171722960', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.957326280359!2d-100.72478348481128!3d20.031682186546945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66dbdb27fcf%3A0xa9eacd93103c7814!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20827%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614192888900!5m2!1ses-419!2smx', 'EQUIPOS DE CIRCUITOS CERRADOS DE TELEVISION, ALARMAS PARA CASA HABITACION O NEGOCIO COMERCIAL Y CERCADO ELECTRIFICADO', 'Lunes', 'Sábado', '09:00', '16:00', 'Borrador', '\"ALCA SEGURIDAD\"', '2021-02-24', 'No', NULL),
(7527, 1, 'FARMACIA \"SANTA CECILIA\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.19.57.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #885', 'CENTRO', '38600', 'S/N', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.970858419014!2d-100.72504238481129!3d20.031173186547175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66da46d8e73%3A0xcbc364b4b25ae405!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20885%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614193348882!5m2!1ses-419!2smx', 'FARMACIA GENERICA', 'Lunes', 'Domingo', '08:00', '18:00', 'Borrador', 'FARMACIA \"SANTA CECILIA\"', '2021-02-24', 'No', NULL),
(7528, 1, 'TAPICERIA \"ALEJOS\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.20.45.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #946-B', 'CENTRO', '38600', 'S/N ', '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.98573541529!2d-100.72497758481133!3d20.03061358654743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d09ebaf09%3A0xd8cc4d1cd1ec2e10!2sJos%C3%A9%20Mar%C3%ADa%20Morelos%20946%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614193709128!5m2!1ses-419!2smx', 'TAPICERIA DE MUEBLES, SILLAS DE COMEDOR, MUEBLES DE SALA, ETC.', 'Lunes', 'Sábado', '09:00', '19:00', 'Borrador', 'TAPICERIA \"ALEJOS\"', '2021-02-24', 'No', NULL),
(7529, 1, '\"DELCA\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.21.09.jpeg', 'Acámbaro', 'Guanajuato', 'GUADALUPE VICTORIA #293', 'CENTRO', '38600', '4171193787', '4171193787', '', '', '', '', '', 'ROPA Y ACCESORIOS PARA DAMA\r\nPRODUCTOS DE LIMPIEZA PARA EL COVID\r\n(JUEVES, SABADOS Y DOMINGOS DE 9:00 am A 4:00 pm)', 'Lunes', 'Domingo', '09:00', '19:00', 'Borrador', '\"DELCA\"', '2021-02-24', 'No', NULL),
(7530, 1, 'PELUQUERIA \"EL PELUCAS\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.21.29.jpeg', 'Acámbaro', 'Guanajuato', 'Av. MORELOS #971-A', 'CENTRO', '38600', '4171051120', '4171051120', '', '', '', '', '', 'CORTES DE CABELLO Y BARBERIA\r\n(JUEVES, SABADOS Y DOMINGOS DE 11:00 am A 4:00 pm)', 'Lunes', 'Domingo', '11:00', '20:30', 'Borrador', 'PELUQUERIA \"EL PELUCAS\"', '2021-02-24', 'No', NULL),
(7531, 1, 'ELECTRO FERRETERA \"SEINER\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.22.06.jpeg', 'Acámbaro', 'Guanajuato', 'GUADALUPE VICTORIA #196-B', 'CENTRO', '38600', '4171724502', '4432422451', 'https://www.facebook.com/SeinerSolarMx', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.988375269525!2d-100.72531408481127!3d20.030514286547607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d086326fd%3A0x38452e6520cb6cd5!2sGuadalupe%20Victoria%20196%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614195427499!5m2!1ses-419!2smx', 'SOMOS UNA EMPRESA DE SERVICIOS DE INGENIERIA Y ENERGIAS RENOVABLES COMPROMETIDO CON NUESTROS CLIENTES\r\n(JUEVES, SABADOS Y DOMINGOS DE 8:00 am A 3:00 pm)', 'Lunes', 'Domingo', '08:00', '20:00', 'Borrador', 'ELECTRO FERRETERA \"SEINER\"', '2021-02-24', 'No', NULL),
(7532, 1, 'DENTAL SIERRA', 'uploads/images/WhatsApp Image 2021-02-23 at 16.22.27.jpeg', 'Acámbaro', 'Guanajuato', 'GUADALUPE VICTORIA #196', 'CENTRO', '38600', '4171724795', '4171171510', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.988375269525!2d-100.72531408481127!3d20.030514286547607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d086326fd%3A0x38452e6520cb6cd5!2sGuadalupe%20Victoria%20196%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614195871210!5m2!1ses-419!2smx', 'ODONTOLOGIA GENERAL, ODONTOLOGIA ESTETICA, CIRUGIA BUCAL, ORTODONCIA, BLANQUECIMIENTO E IMPLANTES\r\n(JUEVES Y SABADOS DE 9:30 am A 5:00 pm)', 'Lunes', 'Sábado', '09:30', '20:00', 'Borrador', 'DENTAL SIERRA', '2021-02-24', 'No', NULL),
(7533, 1, 'MAZCOTAZ', 'uploads/images/WhatsApp Image 2021-02-23 at 16.23.05.jpeg', 'Acámbaro', 'Guanajuato', 'GUADALUPE VICTORIA #297', 'CENTRO', '38600', '4171720736', '4432064143', 'https://www.facebook.com/Mascotaz-Acambaro-224885571385588/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.983244423499!2d-100.72533968481127!3d20.030707286547468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66da7fb3f3d%3A0x31fb193215a4e164!2sGuadalupe%20Victoria%20297%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614196543263!5m2!1ses-419!2smx', 'CLINICA VETERINIARIA DE PEQUEÑAS ESPECIES\r\n(JUEVES Y SABADOS DE 9:30 am A 5:00 pm)', 'Lunes', 'Sábado', '09:30', '20:00', 'Borrador', 'MAZCOTAZ', '2021-02-24', 'No', NULL),
(7534, 1, 'BOUTIQUE \"BRUNETTE\"', 'uploads/images/WhatsApp Image 2021-02-23 at 16.23.53.jpeg', 'Acámbaro', 'Guanajuato', 'GUADALUPE VICTORIA #304-B', 'CENTRO', '38600', '4171011477', '4171011477', 'https://www.facebook.com/MPBrunette', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.9827260193215!2d-100.72605458481128!3d20.03072678654738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66d07e9def9%3A0x36a59ec1964b9e9a!2sGuadalupe%20Victoria%20304%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614196914016!5m2!1ses-419!2smx', 'VENTA DE ROPA, ACCESORIOS ARTESANALES Y CALZADO MEXICANO \r\n(JUEVES, SABADOS Y DOMINGOS DE 11:00 am A 3:00 pm)', 'Lunes', 'Domingo', '11:00', '20:30', 'Borrador', 'BOUTIQUE \"BRUNETTE\"', '2021-02-24', 'No', NULL),
(7535, 68, 'COMPUMARK', 'uploads/images/WhatsApp Image 2021-02-23 at 16.24.20.jpeg', 'Acámbaro', 'Guanajuato', 'Guadalupe Vicotira #333-A', 'Centro', '38600', '4171729096', '', 'https://www.facebook.com/CompumarkAcam', '', '', 'https://compumarkacam.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.979192882573!2d-100.72614738481124!3d20.03085968654727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66daa58117d%3A0x47b39efbaff1790e!2sGuadalupe%20Victoria%20333a%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614197132493!5m2!1ses-419!2smx', 'SERVICIOS Y PRODUCTOS DE EQUIPO DE COMPUTO, PROVEEDORES DE GOBIERNO, CONSULTOR EN SOLUCIONES DE COMPUTO \r\n(JUEVES Y SABADO DE 9:00 am A 3:00 pm)', 'Lunes', 'Sábado', '09:00', '20:00', 'Publicado', 'COMPUMARK Reparación de equipo de computo venta de accesorios de computadora venta de equipos de computo técnicos computadoras reparación de computadoras', '2021-02-24', 'No', NULL),
(7536, 1, 'TORTILLERIA DE HARINA DON LUIS', 'uploads/images/WhatsApp Image 2021-02-23 at 16.30.47.jpeg', 'Acámbaro', 'Guanajuato', '16 DE SEPTIEMBRE #917', 'CENTRO', '38600', '4171767006', '4171767006', 'https://www.facebook.com/TortillasDeHarinas/', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4177.940518320165!2d-100.72816908481124!3d20.032314386546645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd66c120797cf%3A0xa52f7de8bbf5ca9!2sCalle%2016%20de%20Septiembre%20917%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e1!3m2!1ses-419!2smx!4v1614198025555!5m2!1ses-419!2smx', 'OFRECEMOS TORTILLAS DE HARINA CHICAS, MEDIANAS, GRANDES, BURRERA Y BUÑUELO PARA DORAR\r\n(SABADOS Y DOMINGOS DE 8:00 am A 4:00 pm)', 'Lunes', 'Domingo', '08:00', '18:00', 'Borrador', 'TORTILLERIA DE HARINA DON LUIS', '2021-02-24', 'No', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre`, `descripcion`) VALUES
(1, 'Sin clasificación', 'Negocios que por el momento no se les ha asignado una clasificación'),
(2, 'Abarrotes', 'Clasificación para negocios de Abarrotes'),
(3, 'Abogados', 'Clasificación para negocios de Abogados'),
(4, 'Academia de belleza', 'Clasificación para negocios de Academia de belleza'),
(5, 'Accesorios para baño y cocina', 'Clasificación para negocios de Accesorios para baño y cocina'),
(6, 'Acuarios', 'Clasificación para negocios de Acuarios'),
(8, 'Agencia de viajes', 'Clasificación para negocios de Agencia de viajes'),
(9, 'Artesanías', 'Clasificación para negocios de Artesanías'),
(10, 'Productos de limpieza', 'Clasificación para negocios de Productos de Limpieza'),
(12, 'Alarmas', 'Clasificación para negocios de Alarmas'),
(13, 'Alfombras y tapetes', 'Clasificación para negocios de Alfombras y tapetes'),
(14, 'Alimentos para animales', 'Clasificación para negocios de Alimentos para animales'),
(15, 'Alineación y balanceo', 'Clasificación para negocios de Alineación y balanceo'),
(16, 'Alquiler de sillas', 'Clasificación para negocios de Alquiler de sillas'),
(17, 'Aluminio', 'Clasificación para negocios de Aluminio'),
(18, 'Anuncios', 'Clasificación para negocios de Anuncios'),
(19, 'Aparatos e implantes', 'Clasificación para negocios de Aparatos e implantes'),
(20, 'Aparatos eléctricos', 'Clasificación para negocios de Aparatos eléctricos'),
(21, 'Aparatos electrodomésticos', 'Clasificación para negocios de Aparatos electrodomésticos'),
(22, 'Arquitectos', 'Clasificación para negocios de Arquitectos'),
(24, 'Artículos fotográficos', 'Clasificación para negocios de Artículos fotográficos'),
(25, 'Artículos para el hogar', 'Clasificación para negocios de Artículos para el hogar'),
(26, 'Artículos religiosos', 'Clasificación para negocios de Artículos religiosos'),
(27, 'Automóviles', 'Clasificación para negocios de Automóviles'),
(30, 'Balnearios', 'Clasificación para negocios de Balnearios'),
(31, 'Bancos de sangre', 'Clasificación para negocios de Bancos de sangre'),
(32, 'Banquetes', 'Clasificación para negocios de Banquetes'),
(33, 'Bares', 'Clasificación para negocios de Bares'),
(36, 'Bicicletas', 'Clasificación para negocios de Bicicletas'),
(37, 'Bodegas', 'Clasificación para negocios de Bodegas'),
(38, 'Reposterías', 'Clasificación para negocios de Reposterías'),
(40, 'Bonetería', 'Clasificación para negocios de Bonetería'),
(41, 'Botanas', 'Clasificación para negocios de Botanas'),
(42, 'Boutiques', 'Clasificación para negocios de Boutiques'),
(43, 'Buffet jurídico', 'Clasificación para negocios de Buffet jurídico'),
(44, 'Cantinas y bares', 'Clasificación para negocios de Cantinas y bares'),
(45, 'Carnicerías', 'Clasificación para negocios de Carnicerías'),
(46, 'Carnitas carpinterías', 'Clasificación para negocios de Carnitas carpinterías'),
(47, 'Casas de cambio', 'Clasificación para negocios de Casas de cambio'),
(48, 'Casas y terrenos compra venta', 'Clasificación para negocios de Casas y terrenos compra venta'),
(49, 'Cemento', 'Clasificación para negocios de Cemento'),
(50, 'Centro de diversiones', 'Clasificación para negocios de Centro de diversiones'),
(51, 'Cerámica', 'Clasificación para negocios de Cerámica'),
(52, 'Cerrajería', 'Clasificación para negocios de Cerrajería'),
(53, 'Cervezas depósitos y expendios', 'Clasificación para negocios de Cervezas depósitos y expendios'),
(55, 'Chocolates fabricas', 'Clasificación para negocios de Chocolates fabricas'),
(56, 'Cines', 'Clasificación para negocios de Cines'),
(57, 'Clínicas Médicas', 'Clasificación para negocios de Clínicas medicas de diagnostico'),
(58, 'Cocinas integrales', 'Clasificación para negocios de Cocinas integrales'),
(59, 'Bebes', 'Clasificación para bebes'),
(60, 'Colchas', 'Clasificación para negocios de Colchas'),
(61, 'Colchones y colchonetas', 'Clasificación para negocios de Colchones y colchonetas'),
(62, 'Combustibles', 'Clasificación para negocios de Combustibles'),
(63, 'Comida', 'Clasificación para negocios de Comida para llevar'),
(64, 'Comisión federal de electricidad', 'Clasificación para negocios de Comisión federal de electricidad'),
(66, 'Computación ', 'Clasificación para negocios de Computación accesorios y equipo'),
(67, 'Computación alquiler', 'Clasificación para negocios de Computación alquiler'),
(68, 'Productos de equipo de cómputo y servicios técnico', 'Clasificación para negocios de Computación servicio'),
(69, 'Concreto', 'Clasificación para negocios de Concreto'),
(70, 'Construcciones de casas', 'Clasificación para negocios de Construcciones de casas'),
(71, 'Construcciones en general', 'Clasificación para negocios de Construcciones en general'),
(72, 'Contabilidades y asuntos fiscales', 'Clasificación para negocios de Contabilidades y asuntos fiscales'),
(74, 'Decoradores de casa', 'Clasificación para negocios de Decoradores de casa'),
(75, 'Dentistas', 'Clasificación para negocios de Dentistas'),
(76, 'Deportes', 'Clasificación para negocios de Deportes'),
(77, 'Deshidratadotas', 'Clasificación para negocios de Deshidratadotas'),
(78, 'Discotecas', 'Clasificación para negocios de Discotecas'),
(79, 'Dulcerías', 'Clasificación para negocios de Dulcerías'),
(80, 'Electrónica', 'Clasificación para negocios de Electrónica'),
(81, 'Embotelladoras', 'Clasificación para negocios de Embotelladoras'),
(82, 'Equipos de oficina', 'Clasificación para negocios de Equipos de oficina'),
(83, 'Escuelas de enseñanza abierta', 'Clasificación para negocios de Escuelas de enseñanza abierta'),
(84, 'Escuelas de manejo de autos', 'Clasificación para negocios de Escuelas de manejo de autos'),
(85, 'Escuelas e instituciones de computación', 'Clasificación para negocios de Escuelas e instituciones de computación'),
(86, 'Escuelas', 'Clasificación para negocios de Escuelas e institutos y universidades'),
(87, 'Estacionamientos para autos', 'Clasificación para negocios de Estacionamientos para autos'),
(88, 'Estilistas', 'Clasificación para negocios de Estilistas'),
(89, 'Estopas', 'Clasificación para negocios de Estopas'),
(90, 'Farmacias', 'Clasificación para negocios de Farmacias boticas'),
(91, 'Farmacias veterinarias', 'Clasificación para negocios de Farmacias veterinarias'),
(92, 'Ferreterías', 'Clasificación para negocios de Ferreterías'),
(93, 'Fertilizantes', 'Clasificación para negocios de Fertilizantes'),
(94, 'Fianzas', 'Clasificación para negocios de Fianzas'),
(95, 'Fierro y acero', 'Clasificación para negocios de Fierro y acero'),
(96, 'Filmaciones', 'Clasificación para negocios de Filmaciones'),
(97, 'Florería', 'Clasificación para negocios de Florería'),
(98, 'Flores y plantas naturales', 'Clasificación para negocios de Flores y plantas naturales'),
(99, 'Forrajes y depósitos', 'Clasificación para negocios de Forrajes y depósitos'),
(100, 'Fotografía', 'Clasificación para negocios de Fotografía'),
(101, 'Fotografo', 'Clasificación para negocios de Fotografo'),
(102, 'Fruterías', 'Clasificación para negocios de Frutas'),
(103, 'Fundiciones en general', 'Clasificación para negocios de Fundiciones en general'),
(104, 'Funerarias', 'Clasificación para negocios de Funerarias'),
(105, 'Fumigadores', 'Categorías para Fumigadores'),
(106, 'Gaseras', 'Clasificación para negocios de Gaseras'),
(107, 'Gasolinerías', 'Clasificación para negocios de Gasolinerías'),
(108, 'Gimnasia aeróbica', 'Clasificación para negocios de Gimnasia aeróbica'),
(109, 'Gimnasios', 'Clasificación para negocios de Gimnasios'),
(110, 'Grave y piedra', 'Clasificación para negocios de Grave y piedra'),
(111, ' Servicio de Grúas', 'Clasificación para negocios de Grúas servicio'),
(112, 'Grupos musicales', 'Clasificación para negocios de Grupos musicales'),
(113, 'Herrería', 'Clasificación para negocios de Herrería'),
(114, 'Hielo fabricas', 'Clasificación para negocios de Hielo fabricas'),
(115, 'Hospitales sanatorios clínicas', 'Clasificación para negocios de Hospitales sanatorios clínicas'),
(116, 'Hoteles', 'Clasificación para negocios de Hoteles'),
(117, 'Huevo', 'Clasificación para negocios de Huevo'),
(118, 'Iglesias y templos', 'Clasificación para negocios de Iglesias y templos'),
(119, 'Imprentas y encuadernaciones', 'Clasificación para negocios de Imprentas y encuadernaciones'),
(120, 'Ingenieros', 'Clasificación para negocios de Ingenieros'),
(121, 'Inmobiliarias', 'Clasificación para negocios de Inmobiliarias'),
(122, 'Insecticidas', 'Clasificación para negocios de Insecticidas'),
(123, 'Instrumentos musicales', 'Clasificación para negocios de Instrumentos musicales'),
(124, 'Internet', 'Clasificación para negocios de Internet'),
(125, 'Jarcería', 'Clasificación para negocios de Jarcería'),
(126, 'Jardines de niños', 'Clasificación para negocios de Jardines de niños'),
(127, 'Joyería talleres', 'Clasificación para negocios de Joyería talleres'),
(128, 'Jugos de fruta', 'Clasificación para negocios de Jugos de fruta'),
(129, 'Juguetes educativos', 'Clasificación para negocios de Juguetes educativos'),
(130, 'Laboratorio clínico y farmacéutico', 'Clasificación para negocios de Laboratorio clínico y farmacéutico'),
(131, 'Laboratorio de diagnostico clínico', 'Clasificación para negocios de Laboratorio de diagnostico clínico'),
(132, 'Laboratorios de inyección diesel', 'Clasificación para negocios de Laboratorios de inyección diesel'),
(133, 'Laboratorios dentales', 'Clasificación para negocios de Laboratorios dentales'),
(134, 'Largas distancias', 'Clasificación para negocios de Largas distancias'),
(135, 'Lavado y engrasado', 'Clasificación para negocios de Lavado y engrasado'),
(136, 'Legumbres', 'Clasificación para negocios de Legumbres'),
(137, 'Libros y revistas', 'Clasificación para negocios de Libros y revistas'),
(138, 'Llantas cámaras para autos', 'Clasificación para negocios de Llantas cámaras para autos'),
(139, 'Losetas', 'Clasificación para negocios de Losetas'),
(140, 'Lubricantes', 'Clasificación para negocios de Lubricantes'),
(141, 'Luz y fuerza motriz', 'Clasificación para negocios de Luz y fuerza motriz'),
(142, 'Madereras y aserraderos', 'Clasificación para negocios de Madereras y aserraderos'),
(143, 'Mangueras industriales', 'Clasificación para negocios de Mangueras industriales'),
(144, 'Maquinaria agrícola', 'Clasificación para negocios de Maquinaria agrícola'),
(145, 'Maquinaria para construcción', 'Clasificación para negocios de Maquinaria para construcción'),
(146, 'Maquinaria para panadería', 'Clasificación para negocios de Maquinaria para panadería'),
(147, 'Mariscos', 'Clasificación para negocios de Mariscos'),
(148, 'Material eléctrico', 'Clasificación para negocios de Material eléctrico'),
(149, 'Materiales para construcción', 'Clasificación para negocios de Materiales para construcción'),
(151, 'Estéticas', 'Clasificación para negocios Estéticas'),
(152, 'Médicos cirujanos', 'Clasificación para negocios de Médicos cirujanos'),
(153, 'Médicos cirujanos pediatras', 'Clasificación para negocios de Médicos cirujanos pediatras'),
(154, 'Médicos dermatólogos', 'Clasificación para negocios de Médicos dermatólogos'),
(155, 'Médicos especialistas en medicina familiar', 'Clasificación para negocios de Médicos especialistas en medicina familiar'),
(156, 'Médicos especialistas física y rehabilitación', 'Clasificación para negocios de Médicos especialistas física y rehabilitación'),
(157, 'Médicos gastroenterólogos', 'Clasificación para negocios de Médicos gastroenterólogos'),
(158, 'Médicos generales', 'Clasificación para negocios de Médicos generales'),
(159, 'Médicos gineco obstetras', 'Clasificación para negocios de Médicos gineco obstetras'),
(160, 'Médicos internistas', 'Clasificación para negocios de Médicos internistas'),
(161, 'Médicos naturistas', 'Clasificación para negocios de Médicos naturistas'),
(162, 'Médicos neonatólogos', 'Clasificación para negocios de Médicos neonatólogos'),
(163, 'Médicos oculistas', 'Clasificación para negocios de Médicos oculistas'),
(164, 'Médicos otorrinolaringólogos', 'Clasificación para negocios de Médicos otorrinolaringólogos'),
(165, 'Médicos patólogos', 'Clasificación para negocios de Médicos patólogos'),
(166, 'Médicos pediatras', 'Clasificación para negocios de Médicos pediatras'),
(167, 'Médicos quiroprácticos', 'Clasificación para negocios de Médicos quiroprácticos'),
(168, 'Médicos radiólogos', 'Clasificación para negocios de Médicos radiólogos'),
(169, 'Médicos siquiatras', 'Clasificación para negocios de Médicos siquiatras'),
(170, 'Médicos traumatólogos', 'Clasificación para negocios de Médicos traumatólogos'),
(171, 'Médicos urólogos', 'Clasificación para negocios de Médicos urólogos'),
(172, 'Médicos veterinarios', 'Clasificación para negocios de Médicos veterinarios'),
(173, 'Mercerías', 'Clasificación para negocios de Mercerías'),
(174, 'Metales tratamiento', 'Clasificación para negocios de Metales tratamiento'),
(175, 'Misceláneas', 'Clasificación para negocios de Misceláneas'),
(176, 'Molino para trigo y arroz', 'Clasificación para negocios de Molino para trigo y arroz'),
(177, 'Molinos para nistamal', 'Clasificación para negocios de Molinos para nistamal'),
(178, 'Motocicletas refacciones', 'Clasificación para negocios de Motocicletas refacciones'),
(179, 'Motocicletas - motonetas - motos', 'Clasificación para negocios de Motocicletas- motonetas y motos'),
(180, 'Mueblerías', 'Clasificación para negocios de Mueblerías'),
(181, 'Muebles para el hogar', 'Clasificación para negocios de Muebles para el hogar'),
(182, 'Muebles para oficinas', 'Clasificación para negocios de Muebles para oficinas'),
(183, 'Muebles sobre diseño', 'Clasificación para negocios de Muebles sobre diseño'),
(184, 'Muelles para automóviles', 'Clasificación para negocios de Muelles para automóviles'),
(185, 'Nieves y helados fabricas', 'Clasificación para negocios de Nieves y helados fabricas'),
(186, 'Nieves y helados maquinas', 'Clasificación para negocios de Nieves y helados maquinas'),
(187, 'Notarios', 'Clasificación para negocios de Notarios'),
(188, 'Novias vestidos y equipos', 'Clasificación para negocios de Novias vestidos y equipos'),
(189, 'Ópticas', 'Clasificación para negocios de Ópticas'),
(190, 'Paleterías', 'Clasificación para negocios de Paleterías'),
(191, 'Panadería proveedores', 'Clasificación para negocios de Panadería proveedores'),
(192, 'Panaderías y bizcocherías', 'Clasificación para negocios de Panaderías y bizcocherías'),
(193, 'Panteones', 'Clasificación para negocios de Panteones'),
(194, 'Papel distribuidores', 'Clasificación para negocios de Papel distribuidores'),
(195, 'Papelería', 'Clasificación para negocios de Papelería'),
(196, 'Papelería para oficina', 'Clasificación para negocios de Papelería para oficina'),
(197, 'Pastelerías', 'Clasificación para negocios de Pastelerías'),
(198, 'Peluquerías', 'Clasificación para negocios de Peluquerías'),
(200, 'Periódicos y revistas', 'Clasificación para negocios de Periódicos y revistas'),
(201, 'Pescaderías', 'Clasificación para negocios de Pescaderías'),
(202, 'Pieles en general', 'Clasificación para negocios de Pieles en general'),
(203, 'Pinturas barnices y esmaltes', 'Clasificación para negocios de Pinturas barnices y esmaltes'),
(204, 'Pisos y azulejos', 'Clasificación para negocios de Pisos de cerámica'),
(205, 'Pizzerías', 'Clasificación para negocios de Pizza elaboración'),
(206, 'Plantas deshidratadotas', 'Clasificación para negocios de Plantas deshidratadotas'),
(208, 'Plásticos para empaque y envoltura', 'Clasificación para negocios de Plásticos para empaque y envoltura'),
(209, 'Pollerías', 'Clasificación para negocios de Pollerías'),
(210, 'Productores agrícolas', 'Clasificación para negocios de Productores agrícolas'),
(211, 'Publicidad', 'Clasificación para negocios de Publicidad'),
(212, 'Radiadores fabricas y reparaciones', 'Clasificación para negocios de Radiadores fabricas y reparaciones'),
(213, 'Radio estaciones difusoras', 'Clasificación para negocios de Radio estaciones difusoras'),
(214, 'Radios aparatos accesorios e instalaciones', 'Clasificación para negocios de Radios aparatos accesorios e instalaciones'),
(215, 'Rectificación automotriz', 'Clasificación para negocios de Rectificación automotriz'),
(216, 'Refacciones para bicicletas', 'Clasificación para negocios de Refacciones para bicicletas'),
(217, 'Refacciones y accesorios para aparatos domésticos', 'Clasificación para negocios de Refacciones y accesorios para aparatos domésticos'),
(218, 'Refacciones y accesorios para automóviles', 'Clasificación para negocios de Refacciones y accesorios para automóviles'),
(219, 'Refrescos', 'Clasificación para negocios de Refrescos'),
(220, 'Refrigeración', 'Clasificación para negocios de Refrigeración'),
(221, 'Refrigeración compresora', 'Clasificación para negocios de Refrigeración compresora'),
(222, 'Reparación y servicio técnico', 'Clasificación para negocios  servicio técnico'),
(223, 'Regalos envolturas bases y accesorios', 'Clasificación para negocios de Regalos envolturas bases y accesorios'),
(224, 'Restaurantes y bares', 'Clasificación para negocios de Restaurantes y bares'),
(225, 'Riego sistema y equipo', 'Clasificación para negocios de Riego sistema y equipo'),
(228, 'Ropa para damas', 'Clasificación para negocios de Ropa para damas'),
(229, 'Ropa para niños y niñas', 'Clasificación para negocios de Ropa para niños y niñas'),
(230, 'Rosticerías', 'Clasificación para negocios de Rosticerías'),
(231, 'Salchichonerías', 'Clasificación para negocios de Salchichonerías'),
(232, 'Salones de belleza', 'Clasificación para negocios de Salones de belleza'),
(233, 'Salones de belleza equipo', 'Clasificación para negocios de Salones de belleza equipo'),
(234, 'Salones para fiesta', 'Clasificación para negocios de Salones para fiesta'),
(235, 'Seguros en general', 'Clasificación para negocios de Seguros en general'),
(236, 'Semillas', 'Clasificación para negocios de Semillas en general compra venta'),
(237, 'Seminarios', 'Clasificación para negocios de Seminarios'),
(238, 'Serigrafía material y equipo', 'Clasificación para negocios de Serigrafía material y equipo'),
(239, 'Sitios de automóviles', 'Clasificación para negocios de Sitios de automóviles'),
(240, 'Sociedades de ahorro y préstamo', 'Clasificación para negocios de Sociedades de ahorro y préstamo'),
(241, 'Sonido y imagen aparatos sistemas y accesorios', 'Clasificación para negocios de Sonido y imagen aparatos sistemas y accesorios'),
(242, 'Talleres de electricidad', 'Clasificación para negocios de Talleres de electricidad'),
(243, 'Talleres de hojalatería y pintura', 'Clasificación para negocios de Talleres de hojalatería y pintura'),
(244, 'Talleres electromecánicos', 'Clasificación para negocios de Talleres electromecánicos'),
(245, 'Talleres mecánicos', 'Clasificación para negocios de Talleres mecanismo'),
(246, 'Tapiceros artículos', 'Clasificación para negocios de Tapiceros artículos'),
(247, 'Tapices', 'Clasificación para negocios de Tapices'),
(248, 'Taquerías', 'Clasificación para negocios de Taquerías'),
(249, 'Tarjetas telefónicas', 'Clasificación para negocios de Tarjetas telefónicas'),
(250, 'Tarot y lectura de cartas', 'Clasificación para negocios de Tarot y lectura de cartas'),
(251, 'Telas tiendas', 'Clasificación para negocios de Telas tiendas'),
(252, 'Renta de transportes', 'Clasificación para negocios de Transportes'),
(253, 'Celulares ', 'Clasificación para negocios de Telefonía celular equipo y accesorios'),
(254, 'Televisión por cable', 'Clasificación para negocios de Televisión por cable'),
(255, 'Televisores aparatos accesorios e instalaciones', 'Clasificación para negocios de Televisores aparatos accesorios e instalaciones'),
(256, 'Textiles', 'Clasificación para negocios de Textiles'),
(257, 'Tiendas de autoservicio y descuento', 'Clasificación para negocios de Tiendas de autoservicio y descuento'),
(258, 'Tinacos', 'Clasificación para negocios de Tinacos'),
(259, 'Tintorerías- planchadurías- y lavanderías', 'Clasificación para negocios de Tintorerías- planchadurías- y lavanderías'),
(260, 'Tlapalerías', 'Clasificación para negocios de Tlapalerías'),
(261, 'Tornillos y tuercas fabricas', 'Clasificación para negocios de Tornillos y tuercas fabricas'),
(262, 'Tortilladoras automáticas y mecánicas', 'Clasificación para negocios de Tortilladoras automáticas y mecánicas'),
(263, 'Tortillas expendios', 'Clasificación para negocios de Tortillas expendios'),
(264, 'Tubos de concreto', 'Clasificación para negocios de Tubos de concreto'),
(265, 'Uniformes ', 'Clasificación para negocios de Uniformes '),
(266, 'Uniformes industriales', 'Clasificación para negocios de Uniformes industriales'),
(267, 'Video club', 'Clasificación para negocios de Video club'),
(268, 'Videocasetes alquiler y filmación', 'Clasificación para negocios de Videocasetes alquiler y filmación'),
(269, 'Vidrios y cristales', 'Clasificación para negocios de Vidrios y cristales'),
(270, 'Vinos y licores', 'Clasificación para negocios de Vinos y licores'),
(271, 'Vulcanizadotas', 'Clasificación para negocios de Vulcanizadotas'),
(272, 'Zapaterías', 'Clasificación para negocios de Zapaterías'),
(273, 'Restaurantes', 'Restaurantes'),
(274, 'Instrumentos musicales', 'Categoría  instrumentos musicales accesorios reparaciones'),
(276, 'Purificadoras de agua', 'Clasificación para purificadoras de agua'),
(277, 'Ventas por catálogo', 'Clasificación para ventas por catálogo'),
(278, 'Centro recreativos', 'Clasificación para Centro recreativos'),
(279, 'Repartidores', 'Clasificación para Repartidores'),
(280, 'Auto Lavados', 'Clasificación para Auto Lavados'),
(281, 'Carpiterías', 'Clasificación para Carpiterías'),
(282, 'Barberías', 'Clasificación para Barberías'),
(283, 'Belleza y cuidado personal', 'Categoría para cuidado personal'),
(284, 'Podólogos', 'Categoría para podologos'),
(285, 'Ópticas', 'Clasificación para ópticas'),
(286, 'Representaciones Artísticas ', 'Representaciones artísticas'),
(287, 'Uñas y cosméticos ', 'uñas y cosmeticos'),
(288, 'Reciclajes', 'Reciclajes'),
(289, 'Esoterismo ', 'Esoterismo'),
(290, 'Terapias y masajes', 'Categoría para Terapias y masajes'),
(291, 'Materias primas', 'Categoría para Materias primas'),
(292, 'Ópticas', 'Ópticas'),
(293, 'Productos Gourmet', 'productos gourmet'),
(294, 'Souvenirs', 'souvenirs'),
(295, 'Manualidades', 'manualidades\r\n'),
(296, 'Ropa', 'Ropa'),
(297, 'Joyería y Accesorios', 'joyería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idAnuncio` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `textoComentario` varchar(200) DEFAULT NULL,
  `publicado` enum('Sí','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `asunto` varchar(50) NOT NULL,
  `textMensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `rol`, `descripcion`) VALUES
(1, 'Administrador', 'Control y acceso total a todos los módulos de la plataforma'),
(2, 'Colaborador', 'Permisos para gestionar los módulos de Publicación de Anuncios, Clasificaciones, Solicitudes de Anuncios y Comentarios.'),
(3, 'Suscriptor', 'Permisos para Registrarse en el sitio, realizar solicitudes de anuncio, puntuar y comentar anuncios publicados en el sitio.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `idSolicitud` int(11) NOT NULL,
  `nombre_negocio` varchar(100) NOT NULL,
  `url_imagen` varchar(200) NOT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `calle` varchar(200) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `municipio` varchar(50) NOT NULL DEFAULT 'Acámbaro',
  `estado` varchar(50) NOT NULL DEFAULT 'Guanajuato',
  `estatus_solicitud` enum('En proceso','Aceptada','Rechazada','Publicada') NOT NULL DEFAULT 'En proceso',
  `fecha_solicitud` date NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`idSolicitud`, `nombre_negocio`, `url_imagen`, `rfc`, `tel`, `whatsapp`, `calle`, `colonia`, `cp`, `municipio`, `estado`, `estatus_solicitud`, `fecha_solicitud`, `descripcion`, `observaciones`) VALUES
(6, 'Agencia de Viajes VAT', 'uploads/images/vat.jpg', '', '4171729300', NULL, 'Fundadores 33', 'Valle de Acámbaro', '38642', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Agencia de Viajes VAT', NULL),
(9, 'El Típico Antojo', 'uploads/images/tipico.jpg', '', '4171022000', NULL, 'Zaragoza #3C', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Restaurante de comida típica, molcajete, mixiotes.\r\nContamos con servicio a domicilio\r\n4171022000', NULL),
(10, 'Café Pool', 'uploads/images/cafe_pool.jpg', '', '4171792929', NULL, 'Primera de mayo 1110-A', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Bar Cafe Pool Disfruta el mejor ambiente con música en vivo los fines de semana', NULL),
(11, 'Funeraria Santa Rita', 'uploads/images/santarita.jpg', '', '4171720000', NULL, '16 de Septiembre # 230', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Cementerio, servicios funerarios y de previsión, \r\nfacebook funeraria Santa Rita\r\ncorreo malagon12@hotmail.com\r\n', NULL),
(12, 'Bolis Artesanales Dulzura', 'uploads/images/bolis.jpg', '', '4171300226', NULL, 'Guerrero#101', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Producimos Bolis Artesanales, elaborados con un alto control de higiene, calidad y servicio, con sabores innovadores acordes a cada gusto del cliente, con acabados que nos distinguen, permitiendo así ', NULL),
(13, 'Paletería y Nevería Guerrero', 'uploads/images/paleterias.jpg', '', '4171729749', NULL, 'Guerrero #101', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Producimos paletas y nieve , elaborados con un alto control de higiene, calidad y servicio, con sabores innovadores acordes a cada gusto del cliente, con acabados que nos distinguen, permitiendo así u', NULL),
(14, 'Fama Representaciones Artisticas', 'uploads/images/fama.jpg', '', '4171175527', NULL, 'Sierra Nevada 34', 'Loma Bonita', '38610', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Contratación de servicios musicales', NULL),
(15, 'Qualitas ODQ compañia de Seguros SA de CV', 'uploads/images/qualitas.jpg', '', '4171728626', NULL, 'Av. 1ro de mayo *No. ext. 1421', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Venta de Seguros para autos, motocicletas, servicio publico, tractocamiones etc.', NULL),
(16, 'Versus Pc\'s', 'uploads/images/versus.jpeg', '', '4171773204', NULL, 'Nicolás Bravo 752', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Reparación y venta de equipos de computo, Impresoras, venta de accesorios, software y mas', NULL),
(17, 'Heladería Galu', 'uploads/images/galu.jpg', '', '0000000000', NULL, 'Leona Vicario 29', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-26', 'Ven a Galú a disfrutar la vida        \r\nTENEMOS 3 SABORES DE HELADOS; Natural, De Taro y Combinado. \r\n• El Cono $20 pesos puedes elegir 2 toppings (cereales o chispas de chocolate y chocolate derretid', NULL),
(18, 'El Refugio de los Pecadores', 'uploads/images/refugio_pecadores_pizza.jpg', '', '4431947823', NULL, '1 de Mayo 211A', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-27', 'Negocio familiar desde 2016 expertos en Venta de pizzas de masa artesanal delgada crujiente,  pizzaburger artesanal, hamburguesas estilo de barrio únicas en Acambaro, enchiladas suizas , Variedad en c', NULL),
(19, 'Instrumentrumentos musicales El Bendito', 'uploads/images/el_bendito.jpg', '', '0000000000', NULL, '16 de Septiembre 407B', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-27', 'Venta de instrumentos musicales accesorios y reparaciones en general', NULL),
(20, 'Forragería Mi Ranchero', 'uploads/images/forregeria_mi_ranchero.jpg', '', '4171022640', NULL, '16 de septiembre 407', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-27', 'Venta de alimento y productos para gallos de pelea, porcino y bovino, perros y gatos', NULL),
(21, 'Gruas Mau Medina', 'uploads/images/gruas1212.jpg', '', '4171720976', NULL, 'Av. Toma del Agua 1', 'Eduardo Morales ', '38676', 'Acámbaro', 'Guanajuato', 'Publicada', '2020-11-28', 'Calidad, seguridad y confianza en cada uno de nuestros servicios ', NULL),
(24, 'Centro de Sanación San Miguel (Masajes)', 'uploads/images/mi_negocio.jpg', 'RFC', '5531981564', '5531981564', 'Benito Juarez 89B', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2021-02-12', 'Rehabilitación Física ,Lesiones ,Contracturas .Masaje Anti estrés.\r\nAplicación de Ventosas. Equilibrio y Limpieza Energética. Medicina Tradicional Mexicana 100% Natural . Medicamento a base de extract', NULL),
(26, 'Beauty & Care Multimarcas', 'uploads/images/mi_negocio.jpg', 'RFC', '4171801596', '4171801596', 'Yucatan 10', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Publicada', '2021-02-13', 'Venta de accesorios y productos de belleza veganos para el hombre y la mujer', NULL),
(28, 'YNMOBI', 'uploads/images/mi_negocio.jpg', 'RFC', '4171061185', '4171061185', 'Villa hermosa, Enrique Velasco Ibarra', 'Enrique Velasco Ibarra', '38664', 'Acámbaro', 'Guanajuato', 'Aceptada', '2021-02-17', 'Gestoría, consultoría, trámites y servicios de internet  ', ''),
(29, 'Tortilleria de harina Don Luis', 'uploads/images/mi_negocio.jpg', 'RFC', '4171767006', '4171767006', '16 de Septiembre #917', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'Aceptada', '2021-02-18', 'Un producto básico en la mesa del mexicano. Prepara unas ricas quesadillas, Burritos, sincronizadas, o lo que se te entoje con nuestras deliciosas tortillas de harina, preparadas con la mejor calidad ', ''),
(30, 'Tortilleria de harina Don Luis', 'uploads/images/mi_negocio.jpg', 'RFC', '4171767006', '', '16 de Septiembre #917', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'En proceso', '2021-02-22', 'Tortilleria de harina Don Luis\r\nOfrece la mejor calidad y sabor en tortillas de Harina. \r\nTamaños:\r\nChica, mediana, grande y burrera. \r\n', NULL),
(31, 'Materiales Aly', 'uploads/images/mi_negocio.jpg', 'RFC', '4171198686', '4171198686', 'felipe ángeles s/n', 'Emilio Carranza', '38680', 'Acámbaro', 'Guanajuato', 'En proceso', '2021-02-28', 'materiales de barro para la construccion tabique,teja rustica,teja el aguila,baldosa,cintarrilla,pecho de paloma celocia y mas', NULL),
(32, 'Mi Enfermerita', 'uploads/images/mi_negocio.jpg', 'RFC', '4731115438', '4731115438', 'Manuel Doblado 1276', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'En proceso', '2021-03-13', 'Artículos de enfermería.\r\n', NULL),
(33, 'Inmobiliaria Confianza Corporativo y Asociados de Acámbaro', 'uploads/images/mi_negocio.jpg', 'RFC', '4171727849', '', 'Morelos 59-A, Col Centro, Acámbaro, Guanajuato', 'Centro', '38600', 'Acámbaro', 'Guanajuato', 'En proceso', '2021-03-31', 'Empresa dedicada al corretaje de bienes inmuebles.\r\nApoyamos con:\r\nPromoción de Venta\r\nGestión de Créditos Hipotecarios\r\nCompra de inmuebles\r\nAdministración de Renta\r\n\r\nInmuebles de cualquier tipo, ya', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL,
  `estatus` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `token` varchar(200) NOT NULL,
  `idRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `email`, `password`, `estatus`, `token`, `idRol`) VALUES
(1, 'Administrador', 'MiAcambaro', 'admin@miacambaro.mx', '91887091bb22e75a0c8a1c64d0629983', 'Activo', '390d30279176b331e95ea5c36900645e', 1),
(2, 'Colaborador', 'MiAcambaro', 'ventas@miacambaro.mx', '0e51b4d39d1869e68883860f165e5232', 'Activo', '5b024ff815b98e44e1bf7de43d93ef0c', 2);

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `usuarios_AFTER_DELETE` AFTER DELETE ON `usuarios` FOR EACH ROW BEGIN

END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `idCategoria_idx` (`idCategoria`),
  ADD KEY `idSolicitud_idx` (`idSolicitud`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idUsuario_idx` (`idUsuario`) USING BTREE,
  ADD KEY `idAnuncio_idx` (`idAnuncio`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `idRol_idx` (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7537;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idContacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idSolicitud_idx` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitudes` (`idSolicitud`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `idAnuncio_idx` FOREIGN KEY (`idAnuncio`) REFERENCES `anuncios` (`idAnuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `idRol_idx` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
