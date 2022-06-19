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

INSERT INTO `compromisso` VALUES (1,'Aniversario','Aniversario do meu amigo Lucas','2022-07-15',13.00),(2,'Campeonato','Campeonato de Free Fire presencial','2023-03-08',15.00),(3,'Viagem','Viagem para Holanda','2023-03-08',1.00),(4,'Pedal','Pedal para praia de Cabo Branco','2022-08-13',22.00),(5,'Caldo de Cana','Tomar caldo de cana na lagoa','2022-06-17',10.40),(6,'Casamento','Casamento do primo','2024-08-20',17.00);
INSERT INTO `contato` VALUES (1,'Mikhael','MikhaelLeiteJr@gmail.com',988771234,83),(2,'João Paulo','JoãoPauloFF@gmail.com',988210945,83),(3,'Kevin Lucas','KevinLuquinhas07@gmail.com',986745590,88),(4,'Vittorio Augusto','VittorioAugusto002@gmail.com',988344951,83),(5,'Luis Gustavo','GustavoLuis9090@gmail.com',986943456,81),(6,'Lucas Emanuel','EmanuelL7@hotmail.com',989981265,85);
INSERT INTO `sms` VALUES (1,'Cobrança','OII? NOS SOMOS DA OI. Passando para avisar do seu debito conosco negocie já!','2021-05-18'),(2,'Cobrança','CLARO? NOS SOMOS DA CLARO. Passando para avisar do seu debito conosco negocie já!','2021-07-20'),(3,'ENTREVISTA','Olá? Você vai vim fazer a entrevista de emprego?','2021-07-20'),(4,'Festa da Luz','Olá? A festa vai ser dahora emm, vai colar?','2022-10-10'),(5,'São João de Patos','São João vai ser amanhã!','2022-10-10'),(6,'Seguro automatico','Você vai querer fazer sua renovação?','2022-12-03');

select * from sms

