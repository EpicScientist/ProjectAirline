
DROP TABLE IF EXISTS `login_signup`;

CREATE TABLE `login_signup` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `UserName` varchar(15) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Userid_UNIQUE` (`UserId`),
  UNIQUE KEY `email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `login_signup` WRITE;

INSERT INTO `login_signup` VALUES (1,'gazi@g.com','g123','Gazi'),(2,'we@g.com','g123','we'),(3,'ashik@gmail','ashik','ashik'),(4,'sir@g.com','s123','sir'),(5,'new@g.com','n123','newTest');

UNLOCK TABLES;