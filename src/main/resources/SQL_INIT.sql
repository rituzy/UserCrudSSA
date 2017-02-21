drop database test;
commit;
create database test;
commit;
use test;
CREATE TABLE user (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL DEFAULT '',
  age int DEFAULT NULL,
  isAdmin int DEFAULT false,
  createdDate DATE,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
commit;
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Vasia', '30', 0, '2017-01-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Fedya', '20', 0, '2017-02-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Petya', '10', 1, '2017-03-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Bender', '100500', 0, '2015-01-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Amigo', '33', 0, '2016-02-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Diego', '66', 0, '2012-02-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Antonio', '44', 0, '2012-11-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Fort Prefect', '100', 1, '2014-03-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Artur Dent', '35', 0, '2010-05-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Zafot Bibblebrox', '110', 0, '2014-11-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Marvin', '10', 0, '2009-04-01');
INSERT INTO user (name, age, isAdmin, createdDate) VALUES ('Delfin', '22', 0, '2010-10-01');

commit;