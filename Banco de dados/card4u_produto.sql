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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` smallint NOT NULL,
  `produto` varchar(100) NOT NULL,
  `valor` smallint NOT NULL,
  `grupo` varchar(100) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `situacao_avariado` enum('sim','nao') DEFAULT 'sim',
  `situacao_nacionalidade` enum('nacional','internacional') DEFAULT 'nacional',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Card Regular Taeyong Superm',35,'NCT','Card regular do grupo NCT, membro Taeyong, em perfeitas condições, envio fotos e videos na dm','nao','nacional'),(2,'Card Limited Lisa BLACKPINK',90,'BLACKPINK','Card limitado do grupo BLACKPINK, membro Lisa, em ótimo estado, envio fotos e videos na dm','nao','nacional'),(3,'Card Special Jungkook BTS',180,'BTS','Card especial do grupo BTS, membro Jungkook, excelente estado, envio fotos e videos na dm','nao','nacional'),(4,'Card Regular Suga BTS',40,'BTS','Card regular do grupo BTS, membro Suga, em boas condições, envio fotos e videos na dm','nao','internacional'),(5,'Card Tour Jisoo BLACKPINK',25,'BLACKPINK','Card exclusivo do grupo BLACKPINK, membro Jisoo, como novo, envio fotos e videos na dm','sim','nacional'),(6,'Card Concept Rose BLACKPINK',25,'BLACKPINK','Card raro do grupo BLACKPINK, membro Rose, em perfeito estado, envio fotos e videos na dm','nao','nacional'),(7,'Card Regular Mark NCT',35,'NCT','Card regular do grupo NCT, membro Mark, em ótimas condições, envio fotos e videos na dm','sim','nacional'),(8,'Card Special Haechan NCT',125,'NCT','Card especial do grupo NCT, membro Haechan, em muito bom estado, envio fotos e videos na dm','nao','internacional'),(9,'Card Limited Jennie BLACKPINK',75,'BLACKPINK','Card limitado do grupo BLACKPINK, membro Jennie, em excelente condição, envio fotos e videos na dm','sim','nacional'),(10,'Card Exclusive V BTS',455,'BTS','Card exclusivo do grupo BTS, membro V, como novo, envio fotos e videos na dm','nao','internacional');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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
