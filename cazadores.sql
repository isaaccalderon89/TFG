
/*TABLA DETALLES*/

CREATE TABLE `detalles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `total` double NOT NULL,
  `libro_id` int DEFAULT NULL,
  `orden_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9sxka5jficlsjepc4oem454df` (`libro_id`),
  KEY `FKdurdo71oa161lmmal7oeaor74` (`orden_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles`
--

LOCK TABLES `detalles` WRITE;
INSERT INTO `detalles` VALUES (1,3,10,'1984 - GEORGE ORWEL',30,2,1),(2,2,7.8,'Matar a un Ruiseñor',15.6,4,2),(3,2,10,'1984 - GEORGE ORWEL',20,2,2),(4,2,10,'1984 - GEORGE ORWEL',20,2,3),(5,1,7.8,'Matar a un Ruiseñor',7.8,4,3),(6,1,7.8,'Matar a un Ruiseñor',7.8,1,4),(7,1,4,'Orgullo',4,6,4),(8,1,3,'Mola',3,5,4),(9,2,3,'Mola',6,5,5),(10,4,16,'arquitectura',64,2,5);
UNLOCK TABLES;

/*TABLA LIBROS*/
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` double NOT NULL,
  `sinopsis` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd32ydqw52st17vxwqkxa8kckk` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `libros` WRITE;
INSERT INTO `libros` VALUES (5,3,'mola.jpg',3,'\"La vida mola\" de Raúl Gómez es una lectura inspiradora y motivadora que te invita a aprovechar al máximo cada momento de la vida ','Mola',1),(6,3,'orgullo.jpeg',4,' Orgullo y Prejuicio\" es una fascinante novela que aborda el amor, el orgullo y las convenciones','Orgullo',1),(1,5,'matar a un ruiseñor.jpeg',8,' es una poderosa novela que aborda temas de injusticia racial y moralidad, ofreciendo una perspectiva conmovedora y profunda que te hará reflexionar sobre la sociedad y los valores humanos.','Matar a un Ruiseñor',1),(2,5,'arquitectura.jpg',16,'Ofrece principios y prácticas claras para diseñar y construir sistemas de software robustos, mantenibles y escalables.','arquitectura',1);
UNLOCK TABLES;


DROP TABLE IF EXISTS `ordenes`;

/*TABLA ORDENES*/
CREATE TABLE `ordenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaRecibida` datetime DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `total` double NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsqu43gsd6mtx7b1siww96324` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
INSERT INTO `ordenes` VALUES (1,'2023-05-28 17:07:33',NULL,'0000000001',30,1),(2,'2023-05-28 19:12:32',NULL,'0000000002',35.6,1),(3,'2023-05-29 17:06:13',NULL,'0000000003',27.8,2),(4,'2023-05-31 23:32:42',NULL,'0000000004',14.8,2),(5,'2023-06-02 08:59:48',NULL,'0000000005',70,2);
UNLOCK TABLES;

/*TABLA DE USUARIOS*/

DROP TABLE IF EXISTS `usuarios`;
/*TABLA USUARIO*/
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
INSERT INTO `usuarios` VALUES (1,'Azuquinqui','calderon@email.com','Isaac','1234',NULL,'ADMIN','Isaac'),(2,'Madrid','usuario@gmail.com','PruebaUsuario','123',NULL,'USER',NULL),(3,'Ajalvir','administrador@email.com','Admin','321',NULL,'ADMIN','Marcos');
UNLOCK TABLES;


-- Dump completed on 2023-06-02 21:10:11
