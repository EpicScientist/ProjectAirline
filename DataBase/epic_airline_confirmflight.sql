
DROP TABLE IF EXISTS `confirmflight`;

CREATE TABLE `confirmflight` (
  `TicketNumber` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FromCity` varchar(15) NOT NULL,
  `ToCity` varchar(15) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Plane` varchar(15) NOT NULL,
  `Cabin` varchar(15) NOT NULL,
  PRIMARY KEY (`TicketNumber`),
  UNIQUE KEY `TicketNumber_UNIQUE` (`TicketNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2018011 DEFAULT CHARSET=utf8;

LOCK TABLES `confirmflight` WRITE;

INSERT INTO `confirmflight` VALUES (2018000,'dhaka','Canada','2018-03-11','Biman','Business'),(2018001,'doha','Canada','2018-03-07','Emerits','Economy'),(2018002,'Rome','London','2018-03-19','Biman','Economy'),(2018003,'doha','London','2018-03-23','TurkishAirline','Economy'),(2018004,'-1','-1','2018-03-08','-1','-1'),(2018005,'Rome','dhaka','2018-03-06','Emerits','FristClass'),(2018006,'dhaka','London','2018-03-21','QatarAirline','Business'),(2018007,'Rome','Canada','2018-03-19','QatarAirline','Economy'),(2018008,'Rome','London','2018-03-07','Emerits','FristClass'),(2018009,'Rome','dhaka','2018-03-06','TurkishAirline','Business'),(2018010,'Rome','dhaka','2018-03-15','Biman','FristClass');

UNLOCK TABLES;