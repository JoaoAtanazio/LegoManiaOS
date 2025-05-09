-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: legomania
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `idade` int NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `id_usuario` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `FK_cliente_id_usuario` (`id_usuario`),
  KEY `fk_funcionario_cliente` (`id_funcionario`),
  CONSTRAINT `FK_cliente_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  CONSTRAINT `fk_funcionario_cliente` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos Magno',45,'98765432101',NULL,'carlos.magno@hotmail.com','2023-01-15','carlos123',1,1),(2,'Ana Paula',32,'87654321012',NULL,'ana.paula@gmail.com','2023-01-16','ana12345',2,2),(3,'Roberto Carlos',50,'76543210923',NULL,'roberto.carlos@yahoo.com','2023-01-17','roberto1',3,3),(4,'Juliana Almeida',28,'65432109834',NULL,'juliana.almeida@outlook.com','2023-01-18','juliana1',4,4),(5,'Marcos Vinicius',35,'54321098745',NULL,'marcos.vinicius@gmail.com','2023-01-19','marcos123',5,5),(6,'Fernanda Montenegro',60,'43210987656',NULL,'fernanda.montenegro@hotmail.com','2023-01-20','fernanda1',6,6),(7,'Ricardo Eletro',48,'32109876567','12345678000101','ricardo.eletro@gmail.com','2023-01-21','ricardo12',7,7),(8,'Patricia Abravanel',42,'21098765478',NULL,'patricia.abravanel@yahoo.com','2023-01-22','patricia1',8,8),(9,'Silvio Santos',85,'10987654389','23456789000112','silvio.santos@sbt.com.br','2023-01-23','silvio123',9,9),(10,'Fausto Silva',70,'09876543210','34567890000123','fausto.silva@dominio.com','2023-01-24','fausto123',10,10),(11,'Xuxa Meneghel',55,'98765432101',NULL,'xuxa.meneghel@gmail.com','2023-01-25','xuxa1234',11,11),(12,'Luciano Huck',48,'87654321012',NULL,'luciano.huck@globo.com','2023-01-26','luciano12',12,12),(13,'Angélica',45,'76543210923',NULL,'angelica@hotmail.com','2023-01-27','angelica1',13,13),(14,'Gugu Liberato',65,'65432109834',NULL,'gugu.liberato@record.com.br','2023-01-28','gugu1234',14,14),(15,'Hebe Camargo',32,'54321098745',NULL,'hebe.camargo@sbt.com.br','2023-01-29','hebe1234',15,15),(16,'Ronaldo Fenômeno',43,'43210987656',NULL,'ronaldo.fenomeno@gmail.com','2023-01-30','ronaldo1',16,16),(17,'Romário',54,'32109876567',NULL,'romario@senado.gov.br','2023-01-31','romario12',17,17),(18,'Neymar Jr',29,'21098765478',NULL,'neymar.jr@psg.com','2023-02-01','neymar123',18,18),(19,'Marta Silva',34,'10987654389',NULL,'marta.silva@selecao.com.br','2023-02-02','marta123',19,19),(20,'Ayrton Senna',88,'09876543210',NULL,'ayrton.senna@f1.com.br','2023-02-03','senna123',20,20),(21,'Emicida',37,'98765432101',NULL,'emicida@rap.com.br','2023-02-04','emicida12',21,21),(22,'Anitta',28,'87654321012',NULL,'anitta@funk.com','2023-02-05','anitta123',22,22),(23,'Ivete Sangalo',47,'76543210923',NULL,'ivete.sangalo@axé.com.br','2023-02-06','ivete123',23,23),(24,'Caetano Veloso',77,'65432109834',NULL,'caetano.veloso@mpb.com.br','2023-02-07','caetano1',24,24),(25,'Gilberto Gil',77,'54321098745',NULL,'gilberto.gil@mpb.com.br','2023-02-08','gilberto1',25,25),(26,'Maria Bethânia',73,'43210987656',NULL,'maria.bethania@mpb.com.br','2023-02-09','bethania1',26,26),(27,'Gal Costa',74,'32109876567',NULL,'gal.costa@mpb.com.br','2023-02-10','gal12345',27,27),(28,'Chico Buarque',76,'21098765478',NULL,'chico.buarque@mpb.com.br','2023-02-11','chico123',28,28),(29,'Elis Regina',45,'10987654389',NULL,'elis.regina@mpb.com.br','2023-02-12','elis1234',29,29),(30,'Tom Jobim',65,'09876543210',NULL,'tom.jobim@mpb.com.br','2023-02-13','jobim123',30,30),(31,'Jorge Amado',32,'98765432101',NULL,'jorge.amado@literatura.com.br','2023-02-14','amado123',31,31),(32,'Paulo Coelho',72,'87654321012',NULL,'paulo.coelho@alquimista.com','2023-02-15','coelho12',32,32),(33,'Clarice Lispector',67,'76543210923',NULL,'clarice.lispector@literatura.com.br','2023-02-16','clarice1',33,33),(34,'Machado de Assis',45,'65432109834',NULL,'machado.assis@literatura.com.br','2023-02-17','assis123',34,34),(35,'Oscar Niemeyer',65,'54321098745',NULL,'oscar.niemeyer@arquitetura.com.br','2023-02-18','niemeyer',35,35),(36,'Tarsila do Amaral',74,'43210987656',NULL,'tarsila.amaral@arte.com.br','2023-02-19','tarsila1',36,36),(37,'Cândido Portinari',32,'32109876567',NULL,'portinari@arte.com.br','2023-02-20','portinari',37,37),(38,'Pelé',79,'21098765478',NULL,'pele@rei.com.br','2023-02-21','pele1234',38,38),(39,'Garrincha',12,'10987654389',NULL,'garrincha@futebol.com.br','2023-02-22','garrincha',39,39),(40,'Zico',66,'09876543210',NULL,'zico@futebol.com.br','2023-02-23','zico1234',40,40),(41,'Sócrates',55,'98765432101',NULL,'socrates@futebol.com.br','2023-02-24','socrates1',41,41),(42,'Tostão',72,'87654321012',NULL,'tostao@futebol.com.br','2023-02-25','tostao12',42,42),(43,'Rivelino',73,'76543210923',NULL,'rivelino@futebol.com.br','2023-02-26','rivelino1',43,43),(44,'Jairzinho',74,'65432109834',NULL,'jairzinho@futebol.com.br','2023-02-27','jair1234',44,44),(45,'Didi',6,'54321098745',NULL,'didi@futebol.com.br','2023-02-28','didi1234',45,45),(46,'Vavá',66,'43210987656',NULL,'vava@futebol.com.br','2023-03-01','vava1234',46,46),(47,'Ademir da Guia',76,'32109876567',NULL,'ademir.guia@futebol.com.br','2023-03-02','guia1234',47,47),(48,'Leônidas',34,'21098765478',NULL,'leonidas@futebol.com.br','2023-03-03','leonidas1',48,48),(49,'Friedenreich',23,'10987654389',NULL,'fried@futebol.com.br','2023-03-04','fried123',49,49),(50,'Domingos da Guia',54,'09876543210',NULL,'domingos.guia@futebol.com.br','2023-03-05','domingos1',50,50),(51,'Zizinho',65,'98765432101',NULL,'zizinho@futebol.com.br','2023-03-06','zizinho1',51,51),(52,'Nilton Santos',65,'87654321012',NULL,'nilton.santos@futebol.com.br','2023-03-07','nilton12',52,52),(53,'Djalma Santos',65,'76543210923',NULL,'djalma.santos@futebol.com.br','2023-03-08','djalma12',53,53),(54,'Carlos Alberto',56,'65432109834',NULL,'carlos.alberto@futebol.com.br','2023-03-09','alberto1',54,54),(55,'Roberto Carlos',46,'54321098745',NULL,'roberto.carlos@futebol.com.br','2023-03-10','carlos123',55,55),(56,'Cafu',49,'43210987656',NULL,'cafu@futebol.com.br','2023-03-11','cafu1234',56,56),(57,'Lúcio',41,'32109876567',NULL,'lucio@futebol.com.br','2023-03-12','lucio123',57,57),(58,'Thiago Silva',36,'21098765478',NULL,'thiago.silva@futebol.com.br','2023-03-13','thiago12',58,58),(59,'Dunga',56,'10987654389',NULL,'dunga@futebol.com.br','2023-03-14','dunga123',59,59),(60,'Taffarel',53,'09876543210',NULL,'taffarel@futebol.com.br','2023-03-15','taffarel1',60,60);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`),
  KEY `FK_fornecedor_id_usuario` (`id_usuario`),
  CONSTRAINT `FK_fornecedor_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'12345678000101',1,'(11) 98765-4321','Rua das Peças, 100 - São Paulo/SP',NULL,'TechParts Brasil'),(2,'23456789000112',2,'(19) 98765-4321','Av. Tecnologia, 200 - Campinas/SP',NULL,'Componentes Eletrônicos Ltda'),(3,'34567890000123',3,'(21) 98765-4321','Rua dos Processadores, 300 - Rio de Janeiro/RJ',NULL,'Distribuidora de Hardware'),(4,'45678901000134',4,'(31) 98765-4321','Av. das Memórias, 400 - Belo Horizonte/MG',NULL,'Fornecedora de Peças C&A'),(5,'56789012000145',5,'(51) 98765-4321','Rua dos Importados, 500 - Porto Alegre/RS',NULL,'Importadora TechNow'),(6,'67890123000156',6,'(41) 98765-4321','Av. dos Componentes, 600 - Curitiba/PR',NULL,'Eletronic Parts'),(7,'78901234000167',7,'(81) 98765-4321','Rua das Placas, 700 - Recife/PE',NULL,'Distribuidora Master'),(8,'89012345000178',8,'(71) 98765-4321','Av. dos Bits, 800 - Salvador/BA',NULL,'Fornecedora Digital'),(9,'90123456000189',9,'(85) 98765-4321','Rua dos Chips, 900 - Fortaleza/CE',NULL,'Tech Import'),(10,'01234567000190',10,'(92) 98765-4321','Av. das Fontes, 1000 - Manaus/AM',NULL,'Componentes Brasil'),(11,'12345678000101',11,'(61) 98765-4321','Rua dos Cabos, 1100 - Brasília/DF',NULL,'Peças & Cia'),(12,'23456789000112',12,'(48) 98765-4321','Av. dos Fios, 1200 - Florianópolis/SC',NULL,'Distribuidora de Componentes'),(13,'34567890000123',13,'(27) 98765-4321','Rua dos Resistores, 1300 - Vitória/ES',NULL,'Fornecedora Tech'),(14,'45678901000134',14,'(62) 98765-4321','Av. dos Capacitores, 1400 - Goiânia/GO',NULL,'Importadora de Peças'),(15,'56789012000145',15,'(84) 98765-4321','Rua dos Transistores, 1500 - Natal/RN',NULL,'Eletrônicos Brasil'),(16,'67890123000156',16,'(83) 98765-4321','Av. dos Diodos, 1600 - João Pessoa/PB',NULL,'Distribuidora de Hardware Nacional'),(17,'78901234000167',17,'(82) 98765-4321','Rua dos Circuitos, 1700 - Maceió/AL',NULL,'Fornecedora Master Tech'),(18,'89012345000178',18,'(79) 98765-4321','Av. dos Indutores, 1800 - Aracaju/SE',NULL,'Componentes Importados'),(19,'90123456000189',19,'(86) 98765-4321','Rua dos Relés, 1900 - Teresina/PI',NULL,'Tech Distribuidora'),(20,'01234567000190',20,'(91) 98765-4321','Av. dos Transformadores, 2000 - Belém/PA',NULL,'Peças Eletrônicas'),(21,'12345678000101',21,'(98) 98765-4321','Rua dos Fusíveis, 2100 - São Luís/MA',NULL,'Distribuidora de Componentes Eletrônicos'),(22,'23456789000112',22,'(65) 98765-4321','Av. dos Conectores, 2200 - Cuiabá/MT',NULL,'Fornecedora Nacional'),(23,'34567890000123',23,'(67) 98765-4321','Rua dos Soquetes, 2300 - Campo Grande/MS',NULL,'Importadora de Hardware'),(24,'45678901000134',24,'(69) 98765-4321','Av. dos Plugues, 2400 - Porto Velho/RO',NULL,'Eletrônicos & Cia'),(25,'56789012000145',25,'(68) 98765-4321','Rua dos Cabos, 2500 - Rio Branco/AC',NULL,'Distribuidora Tech'),(26,'67890123000156',26,'(96) 98765-4321','Av. dos Adaptadores, 2600 - Macapá/AP',NULL,'Fornecedora de Componentes'),(27,'78901234000167',27,'(63) 98765-4321','Rua dos Inversores, 2700 - Palmas/TO',NULL,'Peças Importadas'),(28,'89012345000178',28,'(95) 98765-4321','Av. dos Reguladores, 2800 - Boa Vista/RR',NULL,'Distribuidora de Eletrônicos'),(29,'90123456000189',29,'(27) 98765-4321','Rua dos Conversores, 2900 - Vitória/ES',NULL,'Fornecedora de Hardware'),(30,'01234567000190',30,'(11) 98765-4321','Av. dos Sensores, 3000 - São Paulo/SP',NULL,'Componentes Digitais'),(31,'12345678000101',31,'(21) 98765-4321','Rua dos Atuadores, 3100 - Rio de Janeiro/RJ',NULL,'Tech Fornecedora'),(32,'23456789000112',32,'(31) 98765-4321','Av. dos Controladores, 3200 - Belo Horizonte/MG',NULL,'Distribuidora de Peças'),(33,'34567890000123',33,'(51) 98765-4321','Rua dos Displays, 3300 - Porto Alegre/RS',NULL,'Fornecedora Eletrônica'),(34,'45678901000134',34,'(41) 98765-4321','Av. dos LEDs, 3400 - Curitiba/PR',NULL,'Importadora de Componentes'),(35,'56789012000145',35,'(81) 98765-4321','Rua dos Botões, 3500 - Recife/PE',NULL,'Peças Nacionais'),(36,'67890123000156',36,'(71) 98765-4321','Av. dos Interruptores, 3600 - Salvador/BA',NULL,'Distribuidora de Eletrônicos Nacionais'),(37,'78901234000167',37,'(85) 98765-4321','Rua dos Potenciômetros, 3700 - Fortaleza/CE',NULL,'Fornecedora Tech Brasil'),(38,'89012345000178',38,'(92) 98765-4321','Av. dos Encoders, 3800 - Manaus/AM',NULL,'Componentes Import'),(39,'90123456000189',39,'(61) 98765-4321','Rua dos Servos, 3900 - Brasília/DF',NULL,'Distribuidora de Peças Eletrônicas'),(40,'01234567000190',40,'(48) 98765-4321','Av. dos Motores, 4000 - Florianópolis/SC',NULL,'Fornecedora Nacional de Hardware'),(41,'12345678000101',41,'(27) 98765-4321','Rua dos Drivers, 4100 - Vitória/ES',NULL,'Importadora de Eletrônicos'),(42,'23456789000112',42,'(62) 98765-4321','Av. dos Receptores, 4200 - Goiânia/GO',NULL,'Peças & Componentes'),(43,'34567890000123',43,'(84) 98765-4321','Rua dos Transceptores, 4300 - Natal/RN',NULL,'Distribuidora Tech Brasil'),(44,'45678901000134',44,'(83) 98765-4321','Av. dos Modulos, 4400 - João Pessoa/PB',NULL,'Fornecedora de Peças Digitais'),(45,'56789012000145',45,'(82) 98765-4321','Rua dos Shields, 4500 - Maceió/AL',NULL,'Componentes Eletrônicos Nacionais'),(46,'67890123000156',46,'(79) 98765-4321','Av. dos Kits, 4600 - Aracaju/SE',NULL,'Distribuidora de Hardware Digital'),(47,'78901234000167',47,'(86) 98765-4321','Rua dos Breakouts, 4700 - Teresina/PI',NULL,'Fornecedora Tech Import'),(48,'89012345000178',48,'(91) 98765-4321','Av. dos Expansores, 4800 - Belém/PA',NULL,'Peças Eletrônicas Nacionais'),(49,'90123456000189',49,'(98) 98765-4321','Rua dos Conversores, 4900 - São Luís/MA',NULL,'Distribuidora de Componentes Digitais'),(50,'01234567000190',50,'(65) 98765-4321','Av. dos Interfaces, 5000 - Cuiabá/MT',NULL,'Fornecedora Nacional de Eletrônicos'),(51,'12345678000101',51,'(67) 98765-4321','Rua dos Bridges, 5100 - Campo Grande/MS',NULL,'Importadora de Peças Digitais'),(52,'23456789000112',52,'(69) 98765-4321','Av. dos Hubs, 5200 - Porto Velho/RO',NULL,'Eletrônicos & Componentes'),(53,'34567890000123',53,'(68) 98765-4321','Rua dos Switches, 5300 - Rio Branco/AC',NULL,'Distribuidora de Peças Nacionais'),(54,'45678901000134',54,'(96) 98765-4321','Av. dos Routers, 5400 - Macapá/AP',NULL,'Fornecedora de Hardware Nacional'),(55,'56789012000145',55,'(63) 98765-4321','Rua dos Gateways, 5500 - Palmas/TO',NULL,'Componentes & Peças'),(56,'67890123000156',56,'(95) 98765-4321','Av. dos Access Points, 5600 - Boa Vista/RR',NULL,'Distribuidora Tech Nacional'),(57,'78901234000167',57,'(27) 98765-4321','Rua dos Repetidores, 5700 - Vitória/ES',NULL,'Fornecedora de Eletrônicos Digitais'),(58,'89012345000178',58,'(11) 98765-4321','Av. dos Extensores, 5800 - São Paulo/SP',NULL,'Peças & Hardware'),(59,'90123456000189',59,'(21) 98765-4321','Rua dos Splitters, 5900 - Rio de Janeiro/RJ',NULL,'Distribuidora de Componentes Nacionais'),(60,'01234567000190',60,'(31) 98765-4321','Av. dos Combinadores, 6000 - Belo Horizonte/MG',NULL,'Fornecedora Tech Eletrônicos');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `cep` int NOT NULL,
  `idade` int NOT NULL,
  `funcao` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `fk_funcionario_id_usuario` (`id_usuario`),
  CONSTRAINT `fk_funcionario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Robert Downey Jr','12345678901',NULL,8500.00,12345678,45,'Gerente','robertodowneyjr@gmail.com',1),(2,'Chris Evans','23456789012',NULL,7500.00,23456789,38,'Técnico Senior','chris.evans@outlook.com',2),(3,'Scarlett Johansson','34567890123',NULL,7200.00,34567890,37,'Atendente Pleno','scarlett.johansson@yahoo.com',3),(4,'Mark Ruffalo','45678901234',NULL,6800.00,45678901,42,'Estoquista','mark.ruffalo@gmail.com',4),(5,'Pedro Silva','56789012345',NULL,5500.00,56789012,29,'Técnico','pedro.silva@hotmail.com',5),(6,'Ana Souza','67890123456',NULL,5200.00,67890123,31,'Atendente','ana.souza@gmail.com',6),(7,'Carlos Oliveira','78901234567',NULL,5800.00,78901234,35,'Técnico','carlos.oliveira@outlook.com',7),(8,'Maria Santos','89012345678',NULL,5300.00,89012345,28,'Atendente','maria.santos@gmail.com',8),(9,'João Pereira','90123456789',NULL,6200.00,90123456,40,'Técnico Pleno','joao.pereira@yahoo.com',9),(10,'Lucas Fernandes','01234567890',NULL,5400.00,1234567,32,'Atendente','lucas.fernandes@gmail.com',10),(11,'Juliana Rodrigues','12345098765',NULL,5900.00,12345098,33,'Técnica','juliana.rodrigues@hotmail.com',11),(12,'Fernando Alves','23456109876',NULL,5100.00,23456109,27,'Atendente','fernando.alves@gmail.com',12),(13,'Amanda Lima','34567210987',NULL,5600.00,34567210,30,'Técnica','amanda.lima@outlook.com',13),(14,'Ricardo Souza','45678321098',NULL,6500.00,45678321,39,'Técnico Senior','ricardo.souza@gmail.com',14),(15,'Patricia Oliveira','56789432109',NULL,5200.00,56789432,26,'Atendente','patricia.oliveira@yahoo.com',15),(16,'Bruce Wayne','67890543210',NULL,9000.00,67890543,45,'Gerente','bruce.wayne@gmail.com',16),(17,'Clark Kent','78901654321',NULL,7000.00,78901654,38,'Técnico','clark.kent@hotmail.com',17),(18,'Diana Prince','89012765432',NULL,7100.00,89012765,36,'Atendente Senior','diana.prince@gmail.com',18),(19,'Barry Allen','90123876543',NULL,6700.00,90123876,32,'Técnico','barry.allen@outlook.com',19),(20,'Arthur Curry','01234987654',NULL,6400.00,1234987,40,'Estoquista','arthur.curry@gmail.com',20),(21,'Tony Stark','12345098765',NULL,8800.00,12345098,44,'Técnico Senior','tony.stark@yahoo.com',21),(22,'Peter Parker','23456109876',NULL,5300.00,23456109,25,'Atendente','peter.parker@gmail.com',22),(23,'Steve Rogers','34567210987',NULL,7200.00,34567210,39,'Técnico Pleno','steve.rogers@hotmail.com',23),(24,'Natasha Romanoff','45678321098',NULL,6900.00,45678321,35,'Atendente Pleno','natasha.romanoff@gmail.com',24),(25,'Thiago Silva','56789432109',NULL,5600.00,56789432,31,'Técnico','thiago.silva@outlook.com',25),(26,'Laura Santos','67890543210',NULL,5400.00,67890543,29,'Atendente','laura.santos@gmail.com',26),(27,'Rafael Oliveira','78901654321',NULL,6100.00,78901654,33,'Técnico','rafael.oliveira@yahoo.com',27),(28,'Camila Rodrigues','89012765432',NULL,5200.00,89012765,28,'Atendente','camila.rodrigues@gmail.com',28),(29,'Gustavo Alves','90123876543',NULL,5800.00,90123876,34,'Técnico','gustavo.alves@hotmail.com',29),(30,'Isabela Lima','01234987654',NULL,5300.00,1234987,27,'Atendente','isabela.lima@gmail.com',30),(31,'Marcos Souza','12345098765',NULL,5900.00,12345098,36,'Técnico','marcos.souza@outlook.com',31),(32,'Bianca Oliveira','23456109876',NULL,5100.00,23456109,26,'Atendente','bianca.oliveira@gmail.com',32),(33,'Leonardo Fernandes','34567210987',NULL,5600.00,34567210,30,'Técnico','leonardo.fernandes@yahoo.com',33),(34,'Valentina Rodrigues','45678321098',NULL,5200.00,45678321,28,'Atendente','valentina.rodrigues@gmail.com',34),(35,'Henrique Alves','56789432109',NULL,5700.00,56789432,32,'Técnico','henrique.alves@hotmail.com',35),(36,'Sofia Lima','67890543210',NULL,5400.00,67890543,29,'Atendente','sofia.lima@gmail.com',36),(37,'Eduardo Souza','78901654321',NULL,6000.00,78901654,35,'Técnico','eduardo.souza@outlook.com',37),(38,'Larissa Oliveira','89012765432',NULL,5300.00,89012765,27,'Atendente','larissa.oliveira@gmail.com',38),(39,'Bruno Fernandes','90123876543',NULL,5800.00,90123876,33,'Técnico','bruno.fernandes@yahoo.com',39),(40,'Carolina Rodrigues','01234987654',NULL,5200.00,1234987,26,'Atendente','carolina.rodrigues@gmail.com',40),(41,'Daniel Alves','12345098765',NULL,5900.00,12345098,34,'Técnico','daniel.alves@hotmail.com',41),(42,'Fernanda Lima','23456109876',NULL,5400.00,23456109,30,'Atendente','fernanda.lima@gmail.com',42),(43,'Guilherme Souza','34567210987',NULL,5700.00,34567210,32,'Técnico','guilherme.souza@outlook.com',43),(44,'Helena Oliveira','45678321098',NULL,5200.00,45678321,28,'Atendente','helena.oliveira@gmail.com',44),(45,'Igor Fernandes','56789432109',NULL,5600.00,56789432,31,'Técnico','igor.fernandes@yahoo.com',45),(46,'Jessica Rodrigues','67890543210',NULL,5300.00,67890543,29,'Atendente','jessica.rodrigues@gmail.com',46),(47,'Kaique Alves','78901654321',NULL,5800.00,78901654,33,'Técnico','kaique.alves@hotmail.com',47),(48,'Leticia Lima','89012765432',NULL,5400.00,89012765,30,'Atendente','leticia.lima@gmail.com',48),(49,'Marcelo Souza','90123876543',NULL,6000.00,90123876,35,'Técnico','marcelo.souza@outlook.com',49),(50,'Nathalia Oliveira','01234987654',NULL,5200.00,1234987,27,'Atendente','nathalia.oliveira@gmail.com',50),(51,'Osvaldo Fernandes','12345098765',NULL,5700.00,12345098,34,'Técnico','osvaldo.fernandes@yahoo.com',51),(52,'Priscila Rodrigues','23456109876',NULL,5300.00,23456109,29,'Atendente','priscila.rodrigues@gmail.com',52),(53,'Quiteria Alves','34567210987',NULL,5600.00,34567210,32,'Técnica','quiteria.alves@hotmail.com',53),(54,'Renato Lima','45678321098',NULL,5500.00,45678321,31,'Técnico','renato.lima@gmail.com',54),(55,'Sabrina Souza','56789432109',NULL,5200.00,56789432,28,'Atendente','sabrina.souza@outlook.com',55),(56,'Tiago Oliveira','67890543210',NULL,5800.00,67890543,33,'Técnico','tiago.oliveira@gmail.com',56),(57,'Ursula Fernandes','78901654321',NULL,5400.00,78901654,30,'Atendente','ursula.fernandes@yahoo.com',57),(58,'Vitor Rodrigues','89012765432',NULL,5700.00,89012765,32,'Técnico','vitor.rodrigues@gmail.com',58),(59,'Wagner Alves','90123876543',NULL,5500.00,90123876,31,'Técnico','wagner.alves@hotmail.com',59),(60,'Xuxa Lima','01234987654',NULL,5300.00,1234987,29,'Atendente','xuxa.lima@gmail.com',60);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordem_servico`
--

DROP TABLE IF EXISTS `ordem_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem_servico` (
  `Id_usuario` int NOT NULL,
  `ID_OS` int NOT NULL,
  `Marca_aparelho` varchar(40) DEFAULT NULL,
  `Nome_Cliente` varchar(50) DEFAULT NULL,
  `Prioridade` varchar(30) DEFAULT NULL,
  `Status_` varchar(30) DEFAULT NULL,
  `Data_` date DEFAULT NULL,
  PRIMARY KEY (`ID_OS`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `ordem_servico_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_servico`
--

LOCK TABLES `ordem_servico` WRITE;
/*!40000 ALTER TABLE `ordem_servico` DISABLE KEYS */;
INSERT INTO `ordem_servico` VALUES (1,1,'Samsung','Carlos Magno','Alta','Em andamento','2023-03-01'),(2,2,'Apple','Ana Paula','Média','Aguardando peças','2023-03-02'),(3,3,'Xiaomi','Roberto Carlos','Baixa','Concluído','2023-03-03'),(4,4,'Motorola','Juliana Almeida','Alta','Em andamento','2023-03-04'),(5,5,'LG','Marcos Vinicius','Média','Aguardando aprovação','2023-03-05'),(6,6,'Samsung','Fernanda Montenegro','Baixa','Cancelado','2023-03-06'),(7,7,'Apple','Ricardo Eletro','Alta','Em andamento','2023-03-07'),(8,8,'Xiaomi','Patricia Abravanel','Média','Aguardando peças','2023-03-08'),(9,9,'Motorola','Silvio Santos','Baixa','Concluído','2023-03-09'),(10,10,'LG','Fausto Silva','Alta','Em andamento','2023-03-10'),(11,11,'Samsung','Xuxa Meneghel','Média','Aguardando aprovação','2023-03-11'),(12,12,'Apple','Luciano Huck','Baixa','Cancelado','2023-03-12'),(13,13,'Xiaomi','Angélica','Alta','Em andamento','2023-03-13'),(14,14,'Motorola','Gugu Liberato','Média','Aguardando peças','2023-03-14'),(15,15,'LG','Hebe Camargo','Baixa','Concluído','2023-03-15'),(16,16,'Samsung','Ronaldo Fenômeno','Alta','Em andamento','2023-03-16'),(17,17,'Apple','Romário','Média','Aguardando aprovação','2023-03-17'),(18,18,'Xiaomi','Neymar Jr','Baixa','Cancelado','2023-03-18'),(19,19,'Motorola','Marta Silva','Alta','Em andamento','2023-03-19'),(20,20,'LG','Ayrton Senna','Média','Aguardando peças','2023-03-20'),(21,21,'Samsung','Emicida','Baixa','Concluído','2023-03-21'),(22,22,'Apple','Anitta','Alta','Em andamento','2023-03-22'),(23,23,'Xiaomi','Ivete Sangalo','Média','Aguardando aprovação','2023-03-23'),(24,24,'Motorola','Caetano Veloso','Baixa','Cancelado','2023-03-24'),(25,25,'LG','Gilberto Gil','Alta','Em andamento','2023-03-25'),(26,26,'Samsung','Maria Bethânia','Média','Aguardando peças','2023-03-26'),(27,27,'Apple','Gal Costa','Baixa','Concluído','2023-03-27'),(28,28,'Xiaomi','Chico Buarque','Alta','Em andamento','2023-03-28'),(29,29,'Motorola','Elis Regina','Média','Aguardando aprovação','2023-03-29'),(30,30,'LG','Tom Jobim','Baixa','Cancelado','2023-03-30'),(31,31,'Samsung','Jorge Amado','Alta','Em andamento','2023-03-31'),(32,32,'Apple','Paulo Coelho','Média','Aguardando peças','2023-04-01'),(33,33,'Xiaomi','Clarice Lispector','Baixa','Concluído','2023-04-02'),(34,34,'Motorola','Machado de Assis','Alta','Em andamento','2023-04-03'),(35,35,'LG','Oscar Niemeyer','Média','Aguardando aprovação','2023-04-04'),(36,36,'Samsung','Tarsila do Amaral','Baixa','Cancelado','2023-04-05'),(37,37,'Apple','Cândido Portinari','Alta','Em andamento','2023-04-06'),(38,38,'Xiaomi','Pelé','Média','Aguardando peças','2023-04-07'),(39,39,'Motorola','Garrincha','Baixa','Concluído','2023-04-08'),(40,40,'LG','Zico','Alta','Em andamento','2023-04-09'),(41,41,'Samsung','Sócrates','Média','Aguardando aprovação','2023-04-10'),(42,42,'Apple','Tostão','Baixa','Cancelado','2023-04-11'),(43,43,'Xiaomi','Rivelino','Alta','Em andamento','2023-04-12'),(44,44,'Motorola','Jairzinho','Média','Aguardando peças','2023-04-13'),(45,45,'LG','Didi','Baixa','Concluído','2023-04-14'),(46,46,'Samsung','Vavá','Alta','Em andamento','2023-04-15'),(47,47,'Apple','Ademir da Guia','Média','Aguardando aprovação','2023-04-16'),(48,48,'Xiaomi','Leônidas','Baixa','Cancelado','2023-04-17'),(49,49,'Motorola','Friedenreich','Alta','Em andamento','2023-04-18'),(50,50,'LG','Domingos da Guia','Média','Aguardando peças','2023-04-19'),(51,51,'Samsung','Zizinho','Baixa','Concluído','2023-04-20'),(52,52,'Apple','Nilton Santos','Alta','Em andamento','2023-04-21'),(53,53,'Xiaomi','Djalma Santos','Média','Aguardando aprovação','2023-04-22'),(54,54,'Motorola','Carlos Alberto','Baixa','Cancelado','2023-04-23'),(55,55,'LG','Roberto Carlos','Alta','Em andamento','2023-04-24'),(56,56,'Samsung','Cafu','Média','Aguardando peças','2023-04-25'),(57,57,'Apple','Lúcio','Baixa','Concluído','2023-04-26'),(58,58,'Xiaomi','Thiago Silva','Alta','Em andamento','2023-04-27'),(59,59,'Motorola','Dunga','Média','Aguardando aprovação','2023-04-28'),(60,60,'LG','Taffarel','Baixa','Cancelado','2023-04-29');
/*!40000 ALTER TABLE `ordem_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pecas_estoque`
--

DROP TABLE IF EXISTS `pecas_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas_estoque` (
  `id_peca` int NOT NULL,
  `id_usuario` int NOT NULL,
  `Quantidade` int NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `id_fornecedor` int NOT NULL,
  PRIMARY KEY (`id_peca`),
  KEY `FK_pecas_id_usuario` (`id_usuario`),
  KEY `fk_fornecedor_pecas` (`id_fornecedor`),
  CONSTRAINT `fk_fornecedor_pecas` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`),
  CONSTRAINT `FK_pecas_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas_estoque`
--

LOCK TABLES `pecas_estoque` WRITE;
/*!40000 ALTER TABLE `pecas_estoque` DISABLE KEYS */;
INSERT INTO `pecas_estoque` VALUES (1,1,50,'Placa-mãe Intel H410',1),(2,2,30,'Processador Core i5 10400F',2),(3,3,40,'Memória RAM 8GB DDR4',3),(4,4,25,'SSD 240GB SATA',4),(5,5,20,'HD 1TB SATA',5),(6,6,15,'Placa de Vídeo GTX 1650',6),(7,7,10,'Fonte 500W 80 Plus',7),(8,8,35,'Gabinete ATX',8),(9,9,50,'Cooler para Processador',9),(10,10,60,'Teclado Mecânico',10),(11,11,45,'Mouse Gamer',11),(12,12,30,'Monitor 24\" Full HD',12),(13,13,20,'Webcam HD',13),(14,14,25,'Headset Gamer',14),(15,15,40,'Mousepad Grande',15),(16,16,50,'Cabo HDMI 2.0',16),(17,17,60,'Adaptador USB-C para HDMI',17),(18,18,35,'Hub USB 3.0',18),(19,19,25,'Cartão de Memória 128GB',19),(20,20,30,'Pen Drive 64GB',20),(21,21,20,'Tela iPhone 11',21),(22,22,15,'Bateria iPhone 12',22),(23,23,25,'Conector de Carga Samsung',23),(24,24,30,'Display Xiaomi Redmi Note 9',24),(25,25,20,'Bateria Samsung Galaxy S20',25),(26,26,15,'Câmera Traseira iPhone 13',26),(27,27,10,'Conector de Áudio Samsung',27),(28,28,25,'Microfone iPhone',28),(29,29,30,'Vibracall Samsung',29),(30,30,20,'Placa de Rede Wi-Fi',30),(31,31,15,'Módulo Bluetooth',31),(32,32,25,'Speaker iPhone',32),(33,33,30,'Fone de Ouvido Samsung',33),(34,34,20,'Carregador Wireless',34),(35,35,25,'Capa Traseira iPhone 12',35),(36,36,30,'Película Vidro iPhone 13',36),(37,37,20,'Cabo Lightning Original',37),(38,38,25,'Cabo USB-C Samsung',38),(39,39,30,'Carregador Turbo 30W',39),(40,40,20,'Dock Station USB-C',40),(41,41,15,'Hub HDMI USB-C',41),(42,42,25,'Adaptador Ethernet USB',42),(43,43,30,'Cooler para Notebook',43),(44,44,20,'Suporte para Notebook',44),(45,45,25,'Mesa Digitalizadora',45),(46,46,30,'Webcam 4K',46),(47,47,20,'Microfone Condensador',47),(48,48,15,'Interface de Áudio USB',48),(49,49,25,'Controlador MIDI USB',49),(50,50,30,'Teclado MIDI 25 Teclas',50),(51,51,20,'Placa de Som Externa',51),(52,52,25,'Mixer USB',52),(53,53,30,'Fone de Ouvido Profissional',53),(54,54,20,'Microfone Lapela',54),(55,55,15,'Suporte para Microfone',55),(56,56,25,'Braço Articulado para Webcam',56),(57,57,30,'Ring Light 18\"',57),(58,58,20,'Green Screen',58),(59,59,25,'Suporte Tripe para Celular',59),(60,60,30,'Gimbal para Smartphone',60);
/*!40000 ALTER TABLE `pecas_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `Id_perfil` int NOT NULL,
  `nome_cargo` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'ADMINISTRADOR'),(2,'TECNICO'),(3,'ATENDENTE'),(4,'ESTOQUISTA');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Id_usuario` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `Senha` varchar(16) DEFAULT NULL,
  `Data_Cadastro` date DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `id_perfil` int NOT NULL,
  PRIMARY KEY (`Id_usuario`),
  KEY `fk_usuario_perfil` (`id_perfil`),
  CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`Id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'robertodowneyjr@gmail.com','Robert Downey Jr','senha123','2023-01-15','12345678901',2),(2,'chris.evans@outlook.com','Chris Evans','marvel123','2023-01-16','23456789012',1),(3,'scarlett.johansson@yahoo.com','Scarlett Johansson','viuvanegra','2023-01-17','34567890123',2),(4,'mark.ruffalo@gmail.com','Mark Ruffalo','hulk1234','2023-01-18','45678901234',2),(5,'pedro.silva@hotmail.com','Pedro Silva','pedro123','2023-01-19','56789012345',2),(6,'ana.souza@gmail.com','Ana Souza','ana12345','2023-01-20','67890123456',2),(7,'carlos.oliveira@outlook.com','Carlos Oliveira','carlos123','2023-01-21','78901234567',2),(8,'maria.santos@gmail.com','Maria Santos','maria123','2023-01-22','89012345678',2),(9,'joao.pereira@yahoo.com','João Pereira','joao1234','2023-01-23','90123456789',2),(10,'lucas.fernandes@gmail.com','Lucas Fernandes','lucas123','2023-01-24','01234567890',2),(11,'juliana.rodrigues@hotmail.com','Juliana Rodrigues','juliana12','2023-01-25','12345098765',2),(12,'fernando.alves@gmail.com','Fernando Alves','fernando1','2023-01-26','23456109876',2),(13,'amanda.lima@outlook.com','Amanda Lima','amanda123','2023-01-27','34567210987',2),(14,'ricardo.souza@gmail.com','Ricardo Souza','ricardo12','2023-01-28','45678321098',2),(15,'patricia.oliveira@yahoo.com','Patricia Oliveira','patricia1','2023-01-29','56789432109',2),(16,'bruce.wayne@gmail.com','Bruce Wayne','batman123','2023-01-30','67890543210',2),(17,'clark.kent@hotmail.com','Clark Kent','superman1','2023-01-31','78901654321',2),(18,'diana.prince@gmail.com','Diana Prince','wonder123','2023-02-01','89012765432',2),(19,'barry.allen@outlook.com','Barry Allen','flash123','2023-02-02','90123876543',2),(20,'arthur.curry@gmail.com','Arthur Curry','aquaman1','2023-02-03','01234987654',2),(21,'tony.stark@yahoo.com','Tony Stark','ironman1','2023-02-04','12345098765',3),(22,'peter.parker@gmail.com','Peter Parker','spiderman','2023-02-05','23456109876',3),(23,'steve.rogers@hotmail.com','Steve Rogers','capamerica','2023-02-06','34567210987',3),(24,'natasha.romanoff@gmail.com','Natasha Romanoff','blackwidow','2023-02-07','45678321098',3),(25,'thiago.silva@outlook.com','Thiago Silva','thiago123','2023-02-08','56789432109',3),(26,'laura.santos@gmail.com','Laura Santos','laura123','2023-02-09','67890543210',3),(27,'rafael.oliveira@yahoo.com','Rafael Oliveira','rafael123','2023-02-10','78901654321',3),(28,'camila.rodrigues@gmail.com','Camila Rodrigues','camila12','2023-02-11','89012765432',3),(29,'gustavo.alves@hotmail.com','Gustavo Alves','gustavo1','2023-02-12','90123876543',3),(30,'isabela.lima@gmail.com','Isabela Lima','isabela12','2023-02-13','01234987654',3),(31,'marcos.souza@outlook.com','Marcos Souza','marcos123','2023-02-14','12345098765',3),(32,'bianca.oliveira@gmail.com','Bianca Oliveira','bianca12','2023-02-15','23456109876',4),(33,'leonardo.fernandes@yahoo.com','Leonardo Fernandes','leo12345','2023-02-16','34567210987',4),(34,'valentina.rodrigues@gmail.com','Valentina Rodrigues','valentina','2023-02-17','45678321098',4),(35,'henrique.alves@hotmail.com','Henrique Alves','henrique1','2023-02-18','56789432109',4),(36,'sofia.lima@gmail.com','Sofia Lima','sofia1234','2023-02-19','67890543210',4),(37,'eduardo.souza@outlook.com','Eduardo Souza','dudu123','2023-02-20','78901654321',3),(38,'larissa.oliveira@gmail.com','Larissa Oliveira','lari1234','2023-02-21','89012765432',2),(39,'bruno.fernandes@yahoo.com','Bruno Fernandes','bruno123','2023-02-22','90123876543',2),(40,'carolina.rodrigues@gmail.com','Carolina Rodrigues','carol123','2023-02-23','01234987654',1),(41,'daniel.alves@hotmail.com','Daniel Alves','daniel12','2023-02-24','12345098765',2),(42,'fernanda.lima@gmail.com','Fernanda Lima','nanda123','2023-02-25','23456109876',2),(43,'guilherme.souza@outlook.com','Guilherme Souza','gui12345','2023-02-26','34567210987',2),(44,'helena.oliveira@gmail.com','Helena Oliveira','helena12','2023-02-27','45678321098',2),(45,'igor.fernandes@yahoo.com','Igor Fernandes','igor1234','2023-02-28','56789432109',2),(46,'jessica.rodrigues@gmail.com','Jessica Rodrigues','jessica1','2023-03-01','67890543210',2),(47,'kaique.alves@hotmail.com','Kaique Alves','kaique12','2023-03-02','78901654321',2),(48,'leticia.lima@gmail.com','Leticia Lima','lele1234','2023-03-03','89012765432',2),(49,'marcelo.souza@outlook.com','Marcelo Souza','marcel1','2023-03-04','90123876543',2),(50,'nathalia.oliveira@gmail.com','Nathalia Oliveira','nathi123','2023-03-05','01234987654',2),(51,'osvaldo.fernandes@yahoo.com','Osvaldo Fernandes','osvaldo1','2023-03-06','12345098765',2),(52,'priscila.rodrigues@gmail.com','Priscila Rodrigues','pri12345','2023-03-07','23456109876',4),(53,'quiteria.alves@hotmail.com','Quiteria Alves','quite123','2023-03-08','34567210987',4),(54,'renato.lima@gmail.com','Renato Lima','renato12','2023-03-09','45678321098',4),(55,'sabrina.souza@outlook.com','Sabrina Souza','sabrina1','2023-03-10','56789432109',4),(56,'tiago.oliveira@gmail.com','Tiago Oliveira','tiago123','2023-03-11','67890543210',4),(57,'ursula.fernandes@yahoo.com','Ursula Fernandes','ursula12','2023-03-12','78901654321',4),(58,'vitor.rodrigues@gmail.com','Vitor Rodrigues','vitor123','2023-03-13','89012765432',4),(59,'wagner.alves@hotmail.com','Wagner Alves','wagner12','2023-03-14','90123876543',4),(60,'xuxa.lima@gmail.com','Xuxa Lima','xuxa1234','2023-03-15','01234987654',4);
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

-- Dump completed on 2025-05-09 16:47:55
