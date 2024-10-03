-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalho
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `aplicativo`
--

DROP TABLE IF EXISTS `aplicativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicativo`
--

LOCK TABLES `aplicativo` WRITE;
/*!40000 ALTER TABLE `aplicativo` DISABLE KEYS */;
INSERT INTO `aplicativo` VALUES (1,'TikTok'),(2,'Instagram'),(3,'Facebook'),(4,'Whatsapp'),(5,'CapCut'),(6,'Telegram'),(7,'Snapchat'),(8,'Spotify'),(9,'Messenger'),(10,'Pinterest'),(11,'Netflix'),(12,'Twitter'),(13,'Amazon'),(14,'Youtube'),(15,'Shein'),(16,'Duolingo'),(17,'Truecaller'),(18,'PicsArt AI'),(19,'Temu'),(20,'tigrinho'),(21,'tigrinho'),(22,'tigrinho'),(23,'tigrinho'),(24,'tigrinho'),(25,'tigrinho'),(26,'tigrinho'),(27,'tigrinho'),(28,'tigrinho');
/*!40000 ALTER TABLE `aplicativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicativo_categoria`
--

DROP TABLE IF EXISTS `aplicativo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicativo_categoria` (
  `aplicativo_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`aplicativo_id`,`categoria_id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `aplicativo_categoria_ibfk_1` FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativo` (`id`),
  CONSTRAINT `aplicativo_categoria_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicativo_categoria`
--

LOCK TABLES `aplicativo_categoria` WRITE;
/*!40000 ALTER TABLE `aplicativo_categoria` DISABLE KEYS */;
INSERT INTO `aplicativo_categoria` VALUES (1,2),(1,3),(2,2),(3,2),(4,8),(5,9),(6,8),(7,2),(8,1),(8,3),(9,8),(10,4),(11,1),(11,3),(12,2),(12,7),(13,4),(14,3),(15,4),(16,8),(17,8),(18,3),(18,8),(19,4),(19,6),(20,5);
/*!40000 ALTER TABLE `aplicativo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicativo_plataforma`
--

DROP TABLE IF EXISTS `aplicativo_plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicativo_plataforma` (
  `aplicativo_id` int(11) NOT NULL,
  `plataforma_id` int(11) NOT NULL,
  PRIMARY KEY (`aplicativo_id`,`plataforma_id`),
  KEY `plataforma_id` (`plataforma_id`),
  CONSTRAINT `aplicativo_plataforma_ibfk_1` FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativo` (`id`),
  CONSTRAINT `aplicativo_plataforma_ibfk_2` FOREIGN KEY (`plataforma_id`) REFERENCES `plataforma` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicativo_plataforma`
--

LOCK TABLES `aplicativo_plataforma` WRITE;
/*!40000 ALTER TABLE `aplicativo_plataforma` DISABLE KEYS */;
INSERT INTO `aplicativo_plataforma` VALUES (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(8,1),(8,2),(8,3),(9,1),(9,2),(9,3),(10,1),(10,3),(11,1),(11,2),(11,3),(14,1),(14,3),(15,1),(15,3),(16,1),(17,1),(18,1),(19,1),(19,2),(20,5);
/*!40000 ALTER TABLE `aplicativo_plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Streaming'),(2,'Entreterimento'),(3,'Compras'),(4,'Jogos'),(5,'Apostas'),(6,'Conteúdo +18'),(7,'Mensagens'),(8,'Outro'),(9,'Streaming'),(10,'Rede Social'),(11,'Entreterimento'),(12,'Compras'),(13,'Jogos'),(14,'Apostas/ \'Recompensas\' '),(15,'Conteúdo +18'),(16,'Mensagens'),(17,'Outro'),(18,'apostas'),(19,'apostas'),(20,'apostas'),(21,'apostas'),(22,'apostas'),(23,'apostas'),(24,'apostas'),(25,'apostas'),(26,'apostas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `cpf` varchar(16) NOT NULL,
  `nome` varchar(512) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('000.000.000-01','Ana'),('000.000.000-02','Bruno'),('000.000.000-03','Carlos'),('000.000.000-04','Daniela'),('000.000.000-05','Eduardo'),('000.000.000-06','Fernanda'),('000.000.000-07','Gustavo'),('000.000.000-08','Helena'),('000.000.000-09','Igor'),('000.000.000-10','Juliana');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_aplicativo`
--

DROP TABLE IF EXISTS `pessoa_aplicativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_aplicativo` (
  `pessoa_cpf` varchar(16) NOT NULL,
  `aplicativo_id` int(11) NOT NULL,
  `tempo_uso` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`pessoa_cpf`,`aplicativo_id`),
  KEY `aplicativo_id` (`aplicativo_id`),
  CONSTRAINT `pessoa_aplicativo_ibfk_1` FOREIGN KEY (`pessoa_cpf`) REFERENCES `pessoa` (`cpf`),
  CONSTRAINT `pessoa_aplicativo_ibfk_2` FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_aplicativo`
--

LOCK TABLES `pessoa_aplicativo` WRITE;
/*!40000 ALTER TABLE `pessoa_aplicativo` DISABLE KEYS */;
INSERT INTO `pessoa_aplicativo` VALUES ('000.000.000-01',1,33),('000.000.000-01',2,118),('000.000.000-01',3,41),('000.000.000-01',4,106),('000.000.000-01',5,80),('000.000.000-02',1,29),('000.000.000-02',2,51),('000.000.000-02',3,117),('000.000.000-02',4,58),('000.000.000-02',5,3),('000.000.000-03',1,91),('000.000.000-03',2,44),('000.000.000-03',3,19),('000.000.000-03',4,120),('000.000.000-03',5,75),('000.000.000-04',1,49),('000.000.000-04',2,92),('000.000.000-04',3,101),('000.000.000-04',4,70),('000.000.000-04',5,3),('000.000.000-05',1,23),('000.000.000-05',2,67),('000.000.000-05',3,76),('000.000.000-05',4,37),('000.000.000-05',5,22),('000.000.000-06',1,24),('000.000.000-06',2,84),('000.000.000-06',3,37),('000.000.000-06',4,120),('000.000.000-06',5,46),('000.000.000-07',1,95),('000.000.000-07',2,71),('000.000.000-07',3,45),('000.000.000-07',4,71),('000.000.000-07',5,107),('000.000.000-08',1,100),('000.000.000-08',2,25),('000.000.000-08',3,34),('000.000.000-08',4,88),('000.000.000-08',5,119),('000.000.000-09',1,23),('000.000.000-09',2,66),('000.000.000-09',3,110),('000.000.000-09',4,100),('000.000.000-09',5,30),('000.000.000-10',1,29),('000.000.000-10',2,50),('000.000.000-10',3,33),('000.000.000-10',4,100),('000.000.000-10',5,60);
/*!40000 ALTER TABLE `pessoa_aplicativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'Mobile'),(2,'Desktop'),(3,'Web'),(4,'Mobile'),(5,'Desktop'),(6,'Web'),(7,'mobile'),(8,'phone'),(9,'mobile'),(10,'mobile'),(11,'mobile'),(12,'mobile'),(13,'mobile'),(14,'mobile'),(15,'mobile');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(512) NOT NULL,
  `conteudo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_post`
--

DROP TABLE IF EXISTS `tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_post` (
  `id_post` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_post`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  CONSTRAINT `tag_post_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`),
  CONSTRAINT `tag_post_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_post`
--

LOCK TABLES `tag_post` WRITE;
/*!40000 ALTER TABLE `tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trabalho'
--

--
-- Dumping routines for database 'trabalho'
--
/*!50003 DROP PROCEDURE IF EXISTS `insere_aplicativo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insere_aplicativo`(IN app_nome varchar(150), IN categoria_nome varchar(150), plataforma_nome varchar(150))
BEGIN
			declare id_app integer default 0;
            declare id_categoria integer default 0;
            declare id_plataforma integer default 0;
			-- insere o aplicativo, categoria e a plataforma rs (tudo tem auto increment graças a deus)
            INSERT INTO APLICATIVO(NOME) VALUES (app_nome);
            INSERT INTO CATEGORIA(NOME) VALUES (categoria_nome);
            INSERT INTO PLATAFORMA(NOME) VALUES (plataforma_nome);
			-- seleciona os ids temporários
			
            SET id_app = (SELECT ID FROM APLICATIVO WHERE NOME = app_nome limit 1);
            SET id_categoria = (SELECT ID FROM CATEGORIA WHERE NOME = categoria_nome limit 1);
            SET id_plataforma = (SELECT ID FROM PLATAFORMA WHERE NOME = plataforma_nome limit 1);
            
            -- faz os relacionamentos 
			INSERT INTO APLICATIVO_CATEGORIA() VALUES (id_app,id_categoria);
			INSERT INTO APLICATIVO_PLATAFORMA() VALUES (id_app,id_categoria);
            
            SELECT('Dados inseridos com sucesso!');
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ver_tempouso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_tempouso`(in nome_pessoa VARCHAR(100))
BEGIN
		DECLARE pessoa_cpf_v varchar(32) DEFAULT '123.456.789-0';
			SET pessoa_cpf_v = (SELECT cpf FROM pessoa WHERE nome = nome_pessoa);
		SELECT SUM(tempo_uso) as tempo_de_uso FROM PESSOA_APLICATIVO WHERE PESSOA_CPF = pessoa_cpf_v;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 14:06:18
