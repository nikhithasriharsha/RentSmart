CREATE DATABASE `rent_smart` /*!40100 DEFAULT CHARACTER SET utf8 */;

DROP TABLE IF EXISTS `Apartments`;
CREATE TABLE `Apartments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Street` varchar(100) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `Num_Beds` int(11) NOT NULL,
  `Num_Baths` int(11) NOT NULL,
  `Sqft` int(11) DEFAULT NULL,
  `Expected_Rent` int(11) NOT NULL,
  `Available_Date` datetime DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `Apartments` WRITE;
/*!40000 ALTER TABLE `Apartments` DISABLE KEYS */;
INSERT INTO `Apartments` VALUES (1,'9090 Judicial Dr','San Diego','CA','92122',2,2,1100,2000,NULL,NULL),
                                (2,'9045','San Diego','CA','92122',1,1,875,0,NULL,NULL);
/*!40000 ALTER TABLE `Apartments` ENABLE KEYS */;
UNLOCK TABLES;
