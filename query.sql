CREATE TABLE `cliente` (
  `cpf` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `datNasc` date DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=9103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` VALUES (73,'Marta Sidney','1970-04-15'),(1234,'Fernanda Marinho','1998-12-05'),(3456,'Davi Passos','1973-02-10'),(5678,'Jose Geraldo Silva','1982-05-03'),(9102,'Alice Alves','1981-07-03');

--
-- Table structure for table `estaciona`
--


CREATE TABLE `estaciona` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `patio_num` int DEFAULT NULL,
  `veiculo_placa` varchar(8) DEFAULT NULL,
  `dtEntrada` date DEFAULT NULL,
  `dtSaida` date DEFAULT NULL,
  `hrEntrada` varchar(10) DEFAULT NULL,
  `hrSaida` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `patio_num` (`patio_num`),
  KEY `veiculo_placa` (`veiculo_placa`),
  CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`patio_num`) REFERENCES `patio` (`num`),
  CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`veiculo_placa`) REFERENCES `veiculo` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estaciona`
--

INSERT INTO `estaciona` VALUES (1,2,'JJJ-2020','2020-09-10','2020-09-11','12:00','09:00'),(2,1,'GGG-1010','2020-11-01','2020-11-01','14:00','18:00'),(3,1,'HHH-1010','2020-06-10','2020-06-15','16:37','08:00'),(4,3,'JJJ-2020','2019-01-25','2019-01-25','07:30','18:47'),(5,4,'FFF-9999','2018-09-08','2018-09-08','10:03','14:06'),(6,3,'HHH-1010','2009-04-10','2009-04-10','12:34','13:33'),(7,4,'YYY-0101','2020-05-10','2020-05-10','14:46','18:23'),(8,3,'UUU-5555','2020-10-13','2020-10-13','12:03','13:50'),(9,1,'TTT-3333','2020-10-13','2020-10-13','09:12','15:33'),(10,2,'JEG-1010','2020-10-13','2020-10-13','10:08','20:18'),(11,1,'HHH-1010','2020-10-31','2020-10-31','17:38','19:45');

--
-- Table structure for table `modelo`
--


CREATE TABLE `modelo` (
  `codMod` int NOT NULL AUTO_INCREMENT,
  `desc_2` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`codMod`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelo`
--

INSERT INTO `modelo` VALUES (1,'Fiesta'),(2,'Gol'),(3,'Corola'),(4,'Fiat Uno'),(5,'Corsa'),(6,'HB20');

--
-- Table structure for table `patio`
--


CREATE TABLE `patio` (
  `num` int NOT NULL AUTO_INCREMENT,
  `ender` varchar(40) DEFAULT NULL,
  `capacidade` int DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patio`
--

INSERT INTO `patio` VALUES (1,'Rua A',100),(2,'Rua B',50),(3,'Rua C',75),(4,'Rua D',65);

--
-- Table structure for table `veiculo`
--


CREATE TABLE `veiculo` (
  `placa` varchar(8) NOT NULL,
  `modelo_codMod` int DEFAULT NULL,
  `cliente_cpf` int DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`placa`),
  KEY `modelo_codMod` (`modelo_codMod`),
  KEY `cliente_cpf` (`cliente_cpf`),
  CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`modelo_codMod`) REFERENCES `modelo` (`codMod`),
  CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`cliente_cpf`) REFERENCES `cliente` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `veiculo`
--

INSERT INTO `veiculo` VALUES ('AAA-2222',1,5678,'Azul'),('BBB-5555',5,1234,'Prata'),('FFF-9999',2,73,'Verde'),('GGG-1010',5,3456,'Prata'),('HHH-1010',1,1234,'Branco'),('JEG-1010',2,9102,'Verde'),('JJJ-2020',3,9102,'Dourado'),('TTT-3333',3,3456,'Branco'),('UUU-5555',4,5678,'Vermelho'),('YYY-0101',6,73,'Vermelho');








 -- QUAIS PESSOAS ESTAO ESTACIONADAS
 select * from cliente; -- cliente
 select * from modelo; -- car model
 select * from patio; -- endereços
 select * from veiculo; -- placas e clientes
 




