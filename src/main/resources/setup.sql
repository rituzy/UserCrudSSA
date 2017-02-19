create database test;
commit;
use test;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `age` int DEFAULT NULL,
  `isAdmin` int DEFAULT NULL,
  `createdDate` DATE 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
commit;
INSERT INTO `user` (`name`, `age`) VALUES ('Vasia', '30');
commit;