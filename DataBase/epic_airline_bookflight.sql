
DROP TABLE IF EXISTS `bookflight`;

CREATE TABLE `bookflight` (
  `FlightNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FromCity` varchar(22) NOT NULL,
  `ToCity` varchar(22) NOT NULL,
  `AvailableSeats` int(10) unsigned NOT NULL,
  `Plane` varchar(20) NOT NULL,
  `Cabin` varchar(10) NOT NULL,
  PRIMARY KEY (`FlightNumber`),
  UNIQUE KEY `FlightNumber_UNIQUE` (`FlightNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

LOCK TABLES `bookflight` WRITE;

INSERT INTO `bookflight` VALUES (11,'dhaka','doha',5,'QatarAirline','Business'),(12,'Rome','London',4,'Emerits','FristClass'),(13,'doha','dhaka',2,'Biman','Economy'),(14,'NY','Canada',6,'TurkishAirline','Business');


UNLOCK TABLES;
