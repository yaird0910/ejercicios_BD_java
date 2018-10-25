-- MySQL dump 10.13  Distrib 5.5.34, for Win32 (x86)
--
-- Host: localhost    Database: libreria
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
create database libreria;
use libreria;
--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Cod_Cliente` int(11) NOT NULL DEFAULT '0',
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `compras` int(11) DEFAULT NULL,
  `total_compras` double DEFAULT NULL,
  PRIMARY KEY (`Cod_Cliente`),
  KEY `Nombre` (`nombre_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (11,'aldo','feliz ireta #47',3210993,0,0),(14,'alberto','ricardo arriaga #9',3631572,1,200),(24,'rodolfo','benefactor #168',3210429,0,0),(25,'Gerardo','zaragoza #621',3210432,0,0),(27,'saul','la soledad #403',3210709,0,0),(29,'fatima','venustiano carranza #453',3210496,0,0),(31,'joel','prados verdes #99',3210475,0,0),(38,'rocio','miguel angel #309',3210469,0,0),(40,'maria','robledo #20',3610671,0,0),(42,'alan','madero #39',3601588,0,0),(45,'vanesa','insurgentes #120',3636536,0,0),(47,'bruno','vicente ruiz #56',3210459,0,0),(51,'ernesto','solidaridad #306',3630124,0,0),(56,'pedro','reforma #540',3702946,0,0),(60,'brenda','zaragoza #703',3622791,0,0),(63,'Joaquin','zapata #205',3210472,0,0),(64,'carolina','madero #800',3421239,0,0),(67,'julio','loma linda #136',3276375,0,0),(70,'alvaro','manantiales #24',3351490,0,0),(72,'carla','lomas jardin #44',3631212,0,0),(74,'fernanda','veracruz #59',3121570,0,0),(77,'reguina','insurgentes #98',3457278,0,0),(79,'alejandra','pipila #4',3712415,0,0),(80,'yunuen','filipinas #104',3471190,2,399),(83,'talia','morelos #440',3590703,0,0),(87,'rodolfo','independencia #73',3210404,0,0),(90,'Ricardo','revolucion #42',3210411,0,0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `datos_basicos_emp`
--

DROP TABLE IF EXISTS `datos_basicos_emp`;
/*!50001 DROP VIEW IF EXISTS `datos_basicos_emp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `datos_basicos_emp` (
  `curp` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `puesto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `disponible`
--

DROP TABLE IF EXISTS `disponible`;
/*!50001 DROP VIEW IF EXISTS `disponible`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `disponible` (
  `nombre` tinyint NOT NULL,
  `existencias` tinyint NOT NULL,
  `caracteristicas` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `nombre` varchar(100) DEFAULT NULL,
  `curp` varchar(20) NOT NULL DEFAULT '',
  `telefono` int(11) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `fec_nac` date DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `Sueldo` double DEFAULT NULL,
  `sexo` varchar(5) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `ventas` double DEFAULT NULL,
  `total_ventas` double DEFAULT NULL,
  PRIMARY KEY (`curp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('Evelyn','AYAE921004',3124666,'Supervisor','1993-10-04','Lomas de Morelia',2000,'F',22,0,0),('Jorge','COAJ930212',3244478,'cargador','1993-02-12','Prados Verdes',1300,'M',21,0,0),('Yair','DIBY931009',3222222,'Supervisor','1993-10-09','Benefactor_Maya',2000,'M',21,1,399),('Alejandra','HEGA870504',3456678,'Operadora','1987-05-04','Industrial',1300,'F',27,0,0),('Geovanni','MAMG900712',3907712,'Bodeguero','1990-07-12','Lomas de Santiaguito',1700,'M',24,0,0),('Claudio','MOFC920504',3569845,'Supervisor','1992-05-04','Centro',2000,'M',22,0,0),('Alan','OKLA820531',2973114,'Cajero','1982-05-31','V.del_Pedregal',1500,'M',32,0,0),('Erick','ORRE930928',2333333,'Cajero','1993-09-28','Tres Puentes',1500,'M',21,1,0),('Denisse','ROAD960616',2378900,'Bodeguera','1996-06-16','Vasco de Quiroga',1700,'F',18,0,0),('Javier','VERJ901102',3224356,'Cajero','1990-11-02','Manantiales',1500,'M',24,0,0),('Carlos','VIAC910706 ',3527058,'Intendente','1991-07-06','Camelinas',1200,'M',23,0,0),('Raul','ZIGR931102',3679800,'Cajero','1993-11-02','Siervo de la Nacion',1500,'M',21,1,200);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger actualizar after insert on libreria.empleado for each row 
Begin
Insert into empleados_nuevos(nombre,curp,puesto,estado) values(new.nombre,new.curp,new.puesto,'A PRUEBA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados_nuevos`
--

DROP TABLE IF EXISTS `empleados_nuevos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados_nuevos` (
  `nombre` varchar(50) DEFAULT NULL,
  `curp` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_nuevos`
--

LOCK TABLES `empleados_nuevos` WRITE;
/*!40000 ALTER TABLE `empleados_nuevos` DISABLE KEYS */;
INSERT INTO `empleados_nuevos` VALUES ('Javier','VERJ901102','Cajero','A prueba');
/*!40000 ALTER TABLE `empleados_nuevos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `Cod_Libro` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(100) DEFAULT NULL,
  `Editorial` varchar(100) DEFAULT NULL,
  `Existencias` int(11) DEFAULT NULL,
  `Autor` varchar(100) DEFAULT NULL,
  `Caracteristicas` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_Libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1001,'Calculo_integral','Pearson',7,'Dennis_zill','Matematicas',1000),(1002,'Calculo_vectorial','Mc_graw_hill',7,'Alejandro_guzman','Matematicas',380),(1003,'Algebra_lineal','Mc_graw_hill',11,'Alejandro_diaz','Matematicas',399),(1004,'Calculo_integral','Pearson',10,'Daniel_ibarra','Matematicas',399),(1005,'Metodos_numericos','Pearson',10,'Luis_Romero','Matematicas',350),(1006,'Algebra','Mc_graw_hill',7,'Ana_Ramirez','Matematicas',420),(1007,'Geometria_y_trigonometria','Pearson',8,'Daniel_Mendez','Matematicas',350),(1008,'Geometria_analitica','Pearson',6,'Jorge_chavez','Matematicas',399),(1009,'Calculo_avanzado','Alfaomega',7,'Noemi_Arredondo','Matematicas',420),(1010,'Probabilidad_y_estadistica','Pearson',9,'Arturo_Rivera','Matematicas',250),(1011,'Metdodos_numericos','Mc_graw_hill',7,'Ignacio_Vega','Matematicas',230),(2001,'Base_de_datos','Pearson',9,'Victor_Hugo_Lopez','Computacion',450),(2002,'Programacion_en_c','Alfaomega',6,'Joyanes_zahonero','Computacion',480),(2003,'Programacion_en_java','Mc_graw_hill',8,'Deitel','Computacion',480),(2004,'Redes de computadoras','Longman',7,'Fernando_Ruiz','Computacion',420),(2006,'Sistemas_operativos','Pearson',8,'Manuel_Lopez','Computacion',500),(2007,'Telecomunicaciones','Mc_graw_hill',9,'Jose_Ortiz','Computacion',435),(2009,'UML','Alfaomega',9,'Carlos_Martinez','Computacion',420),(2010,'Programaci¢n_orientada_a_objetos','Logman',7,'Andres_Cervantes','Computacion',400),(3001,'Fisica_1','Pearson',9,'Tippens','Fisica',370),(3002,'Fisica_moderna','Pearson',11,'Eduardo_Salazar','Fisica',390),(3003,'Fisica_nuclear','Pearson',8,'Pablo_Carmona','Fisica',400),(4001,'Alta_creatividad','Pearson',8,'Hilda_ca¤eque','Administracion',170),(4002,'Padre_rico','Aguilar',7,'Robert_kiyosaki','Administracion',250);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `libros_esp`
--

DROP TABLE IF EXISTS `libros_esp`;
/*!50001 DROP VIEW IF EXISTS `libros_esp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `libros_esp` (
  `nombre` tinyint NOT NULL,
  `editorial` tinyint NOT NULL,
  `existencias` tinyint NOT NULL,
  `autor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `libros_mate`
--

DROP TABLE IF EXISTS `libros_mate`;
/*!50001 DROP VIEW IF EXISTS `libros_mate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `libros_mate` (
  `nombre` tinyint NOT NULL,
  `editorial` tinyint NOT NULL,
  `Existencias` tinyint NOT NULL,
  `autor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `RFC` varchar(20) NOT NULL DEFAULT '',
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `Num_Surtidos` int(11) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('CAGB7508117Z9','Editorial_V&R','Olivares_de_tzintzuntzan_#500',69429340,'Morelia',10,1),('CORG7605175M1','Distribuidora_El_arbol','Regimiento_de infanteria_#573',18532064,'Puebla',15,NULL),('FAGI6802187M1','Fernandez_Editores','Reforma_#397',73128439,NULL,NULL,NULL),('FLVO8911095Y2','Comercializadora_Revolucion','Av_Heroes de Nocupetaro_#408',52996435,'Leon',16,NULL),('GARC6203307W9','Editorial_Trillas','Siervo_de_la_nacion_#1068',99528750,'Morelia',NULL,0),('GRVO9104182Y5','Editorial_Santillana','Av._Universidad_#598',49235037,'Zapopan',NULL,NULL),('HEAR9907114K9','Editorial_longman','Universidad_#403',88444129,'Monterrey',7,NULL),('HUAF9008125N7','Editorial_alfaomega','Revolucion_#2004',66349974,'Puebla',NULL,NULL),('IBGM9506151U5','Editorial_pearson','Independencia_#355',55324967,'Queretaro',NULL,NULL),('JIME6709303P5','Distribuidora El libro','Av_Benito_juarez_#708',88552954,'Leon',5,NULL),('JUZP7702148I4','Editorial_Castillo','Solidaridad_#371',27305386,'Zapopan',NULL,NULL),('MARD9203297E9','Editorial_Mc_graw_hill','Periferico_#1089',55975477,'Morelia',10,0),('MARF8502269T2','Editorial_Larousse','Camelinas_#173',58375932,'Merida',NULL,NULL),('RAHK7806171X7','Editorial_Novelty','Felicitas_del_rio_#1045',85205926,'Queretaro',3,NULL),('TAPC8312238L0','Editorial_Patria','Madero_Poniente_#1193',85295476,'Guadalajara',NULL,NULL),('VEDL6909254K0','Editorial_love_food','Paseo_de_la_republica_#1087',64043751,'Morelia',NULL,0),('VEDM9705172Y5','Editorial_aguilar','Francisco_I_Madero_#809',44775216,'Tijuana',10,NULL);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surte`
--

DROP TABLE IF EXISTS `surte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surte` (
  `folio_surt` int(11) NOT NULL DEFAULT '0',
  `cod_libro` int(11) DEFAULT NULL,
  `RFC` varchar(100) DEFAULT NULL,
  `Fecha_Surt` date DEFAULT NULL,
  `Proveedor` varchar(100) DEFAULT NULL,
  `Supervisor` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`folio_surt`),
  KEY `cod_libro` (`cod_libro`),
  KEY `RFC` (`RFC`),
  CONSTRAINT `surte_ibfk_2` FOREIGN KEY (`RFC`) REFERENCES `proveedor` (`RFC`),
  CONSTRAINT `surte_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`Cod_Libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surte`
--

LOCK TABLES `surte` WRITE;
/*!40000 ALTER TABLE `surte` DISABLE KEYS */;
INSERT INTO `surte` VALUES (1,1001,'CAGB7508117Z9','2014-01-01','Editorial_V&R','Claudio',5),(3,1001,'CAGB7508117Z9','2014-01-02','Editorial_V&','Yair',6);
/*!40000 ALTER TABLE `surte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vende`
--

DROP TABLE IF EXISTS `vende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vende` (
  `folio` int(11) NOT NULL DEFAULT '0',
  `cod_libro` int(11) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `fec_ven` date DEFAULT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `nombre_empleado` varchar(100) DEFAULT NULL,
  `total_compra` int(11) DEFAULT NULL,
  PRIMARY KEY (`folio`),
  KEY `cod_libro` (`cod_libro`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `vende_ibfk_2` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`Cod_Cliente`),
  CONSTRAINT `vende_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`Cod_Libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vende`
--

LOCK TABLES `vende` WRITE;
/*!40000 ALTER TABLE `vende` DISABLE KEYS */;
INSERT INTO `vende` VALUES (1,1001,80,'2014-11-11','Juan','Yair',100);
/*!40000 ALTER TABLE `vende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `datos_basicos_emp`
--

/*!50001 DROP TABLE IF EXISTS `datos_basicos_emp`*/;
/*!50001 DROP VIEW IF EXISTS `datos_basicos_emp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datos_basicos_emp` AS select `empleado`.`curp` AS `curp`,`empleado`.`nombre` AS `nombre`,`empleado`.`puesto` AS `puesto` from `empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `disponible`
--

/*!50001 DROP TABLE IF EXISTS `disponible`*/;
/*!50001 DROP VIEW IF EXISTS `disponible`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `disponible` AS select `libro`.`Nombre` AS `nombre`,`libro`.`Existencias` AS `existencias`,`libro`.`Caracteristicas` AS `caracteristicas` from `libro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libros_esp`
--

/*!50001 DROP TABLE IF EXISTS `libros_esp`*/;
/*!50001 DROP VIEW IF EXISTS `libros_esp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libros_esp` AS select `libro`.`Nombre` AS `nombre`,`libro`.`Editorial` AS `editorial`,`libro`.`Existencias` AS `existencias`,`libro`.`Autor` AS `autor` from `libro` where (`libro`.`Caracteristicas` = 'Espa�ol') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libros_mate`
--

/*!50001 DROP TABLE IF EXISTS `libros_mate`*/;
/*!50001 DROP VIEW IF EXISTS `libros_mate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libros_mate` AS select `libro`.`Nombre` AS `nombre`,`libro`.`Editorial` AS `editorial`,`libro`.`Existencias` AS `Existencias`,`libro`.`Autor` AS `autor` from `libro` where (`libro`.`Caracteristicas` = 'Matematicas') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-03 23:01:21
