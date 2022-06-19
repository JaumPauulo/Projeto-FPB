-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: listatelefonica
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `compromisso`
--

DROP TABLE IF EXISTS `compromisso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compromisso` (
  `id_Compromisso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descrição` longtext NOT NULL,
  `data` date NOT NULL,
  `horario` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_Compromisso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compromisso`
--

LOCK TABLES `compromisso` WRITE;
/*!40000 ALTER TABLE `compromisso` DISABLE KEYS */;
INSERT INTO `compromisso` VALUES (1,'Aniversario','Aniversario do meu amigo Lucas','2022-07-15',13.00),(2,'Campeonato','Campeonato de Free Fire presencial','2023-03-08',15.00),(3,'Viagem','Viagem para Holanda','2023-03-08',1.00),(4,'Pedal','Pedal para praia de Cabo Branco','2022-08-13',22.00),(5,'Caldo de Cana','Tomar caldo de cana na lagoa','2022-06-17',10.40),(6,'Casamento','Casamento do primo','2024-08-20',17.00);
/*!40000 ALTER TABLE `compromisso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id_Contato` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero` int NOT NULL,
  `DDD` int NOT NULL,
  PRIMARY KEY (`id_Contato`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'Mikhael','MikhaelLeiteJr@gmail.com',988771234,83),(2,'João Paulo','JoãoPauloFF@gmail.com',988210945,83),(3,'Kevin Lucas','KevinLuquinhas07@gmail.com',986745590,88),(4,'Vittorio Augusto','VittorioAugusto002@gmail.com',988344951,83),(5,'Luis Gustavo','GustavoLuis9090@gmail.com',986943456,81),(6,'Lucas Emanuel','EmanuelL7@hotmail.com',989981265,85);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id_SMS` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `mensagem` longtext NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_SMS`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (1,'Cobrança','OII? NOS SOMOS DA OI. Passando para avisar do seu debito conosco negocie já!','2021-05-18'),(2,'Cobrança','CLARO? NOS SOMOS DA CLARO. Passando para avisar do seu debito conosco negocie já!','2021-07-20'),(3,'ENTREVISTA','Olá? Você vai vim fazer a entrevista de emprego?','2021-07-20'),(4,'Festa da Luz','Olá? A festa vai ser dahora emm, vai colar?','2022-10-10'),(5,'São João de Patos','São João vai ser amanhã!','2022-10-10'),(6,'Seguro automatico','Você vai querer fazer sua renovação?','2022-12-03');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'listatelefonica'
--

--
-- Dumping routines for database 'listatelefonica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 19:26:54
