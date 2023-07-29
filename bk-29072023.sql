CREATE DATABASE  IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Blog`
--

LOCK TABLES `Blog` WRITE;
/*!40000 ALTER TABLE `Blog` DISABLE KEYS */;
INSERT INTO `Blog` VALUES ('cocina basada en plantas','basicos en la cocina');
/*!40000 ALTER TABLE `Blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'Manuel','Aguilar','33116624','manuel@gmail.com',15678945,'Entre Rios 2307','Olivos'),(2,'Nicolas','Montagnani','33678790','nicolas@yahoo.com',1566541323,'Lorenzo Vidaschi 30','Monteverde'),(3,'Lucia','Otero','30281872','lua@gmail.com',1534567823,'Pacheco 2345','Munro'),(4,'Perla','Parati','28982673','perla@hotmail.com',159838763,'Av. Maipú 5655','Vicente Lopez'),(5,'Karen','Filippino','33435612','karen@hotmail.com.ar',11236789,'Rodrigo Pertegas 34','Villa Ballester'),(6,'Carolina','Elche','123456789','caro@gmail.com',1234567890,'Gran Vía 23','Ensanche');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_clientes`
--

LOCK TABLES `log_clientes` WRITE;
/*!40000 ALTER TABLE `log_clientes` DISABLE KEYS */;
INSERT INTO `log_clientes` VALUES (1,6,'root@localhost','INSERCIÓN','2023-07-29','12:22:27');
/*!40000 ALTER TABLE `log_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_pedidos`
--

LOCK TABLES `log_pedidos` WRITE;
/*!40000 ALTER TABLE `log_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (10,1,'2023-06-10 10:10:10',23,'Olivos'),(11,4,'2023-06-12 13:15:10',56,'Vicente Lopez'),(12,3,'2023-06-12 15:45:20',34,'Munro'),(13,2,'2023-06-15 20:10:10',23,'Monteverde'),(14,2,'2023-06-15 20:10:10',23,'Monteverde');
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (8,'Higiene',0,4,10),(12,'Limpieza',18,12,18),(23,'Alimentos',20,7,12),(34,'Alimentos',15,4,8),(56,'Higiene',30,10,15);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Repartos`
--

LOCK TABLES `Repartos` WRITE;
/*!40000 ALTER TABLE `Repartos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-29 17:48:46
