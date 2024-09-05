-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: card4u
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `idade` tinyint NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` char(13) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `senha` char(8) NOT NULL DEFAULT 'Senha1*',
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Tatiane Rocha','0123457890',31,'TatianeRocha31@gmail.com','55559874247','Distrito Federal','J6!u9#1'),('Roberta Catones Amandes','10924725632',19,'RobertaCatones17@gmail.com','5555987423875','Minas Gerais','Usas1%w1'),('Carlos Alberto Silva','2345789101',22,'CarlosSilva22@gmail.com','55559874239','São Paulo','R$4h8@t1'),('Ana Paula Santos','3457890123',30,'AnaSantos30@gmail.com','55559874240','Rio de Janeiro','T5r$8&v2'),('Juliana Almeida','4567901234',25,'JulianaAlmeida25@gmail.com','55559874241','Minas Gerais','P@ssw0rd'),('Fernando Costa','5678012345',27,'FernandoCosta27@gmail.com','55559874242','Bahia','F3rN@d0'),('Mariana Lima','6789013456',21,'MarianaLima21@gmail.com','55559874243','Pernambuco','Q2w3e4r'),('João Pedro Oliveira','7890234567',24,'JoaoOliveira24@gmail.com','55559874244','Rio Grande do Sul','Zx#7y8L'),('Larissa Ferreira','8901245678',28,'LarissaFerreira28@gmail.com','55559874245','Ceará','D7t@1oP'),('Lucas Martins','9012346789',26,'LucasMartins26@gmail.com','55559874246','São Paulo','N0v@5rX');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-05 20:04:54
