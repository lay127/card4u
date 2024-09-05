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
-- Table structure for table `registro_de_compras`
--

DROP TABLE IF EXISTS `registro_de_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_de_compras` (
  `id` smallint NOT NULL,
  `nome_do_comprador` varchar(100) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `valor` smallint NOT NULL,
  `frete` smallint NOT NULL,
  `meio_de_pagamento` enum('pix','debito','credito','boleto') DEFAULT NULL,
  `situacao_nacionalidade` enum('nacional','internacional') DEFAULT 'nacional',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_de_compras`
--

LOCK TABLES `registro_de_compras` WRITE;
/*!40000 ALTER TABLE `registro_de_compras` DISABLE KEYS */;
INSERT INTO `registro_de_compras` VALUES (1,'Pedro Rodriguez Martins','Rua Rosas, 43, Bairro Talco, Cidade Novo Rodo, Estado Minas Gerais CPF 45555123',79,12,'pix','nacional'),(2,'Ana Beatriz Souza','Avenida das Flores, 27, Centro, Cidade Verde, Estado São Paulo CPF 12345678',85,15,'boleto','internacional'),(3,'Carlos Eduardo Lima','Rua dos Pinheiros, 15, Jardim Primavera, Cidade Azul, Estado Rio de Janeiro CPF 23456789',92,10,'credito','nacional'),(10,'Pedro Rodriguez Martins','Rua Rosas, 43, Bairro Talco, Cidade Novo Rodo, Estado Minas Gerais CPF 45555123',79,12,'pix','nacional'),(11,'Ana Beatriz Souza','Avenida das Flores, 27, Centro, Cidade Verde, Estado São Paulo CPF 12345678',85,15,'boleto','internacional'),(12,'Carlos Eduardo Lima','Rua dos Pinheiros, 15, Jardim Primavera, Cidade Azul, Estado Rio de Janeiro CPF 23456789',92,10,'credito','nacional'),(13,'Maria Clara Oliveira','Praça Central, 9, Vila Nova, Cidade Alegre, Estado Paraná CPF 34567890',70,20,'debito','nacional'),(14,'João Pedro Costa','Rua das Acácias, 18, Bairro dos Coqueiros, Cidade Verde, Estado Minas Gerais CPF 45678901',88,14,'pix','internacional'),(15,'Fernanda Silva','Avenida São João, 34, Centro, Cidade Natal, Estado Rio Grande do Norte CPF 56789012',95,16,'boleto','internacional'),(16,'Lucas Martins','Rua das Orquídeas, 22, Jardim dos Lírios, Cidade Rosa, Estado São Paulo CPF 67890123',78,13,'credito','internacional'),(17,'Tatiane Pereira','Avenida das Palmeiras, 55, Bairro das Palmeiras, Cidade Nova, Estado Goiás CPF 78901234',83,18,'debito','internacional'),(18,'Eduardo Santos','Rua dos Jacarandás, 11, Vila dos Girassóis, Cidade Tropical, Estado Bahia CPF 89012345',90,11,'pix','nacional'),(19,'Juliana Mendes','Praça das Estrelas, 8, Bairro das Estrelas, Cidade Dourada, Estado Pernambuco CPF 90123456',82,17,'boleto','internacional');
/*!40000 ALTER TABLE `registro_de_compras` ENABLE KEYS */;
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
