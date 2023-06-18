CREATE TABLE pessoas (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(30) NOT NULL,
  nascimento date,
  sexo enum('F','M'),
  peso decimal(5,2), 
  altura decimal(3,2),
  nacionalidade varchar(20) default 'Brasil'
  primary key(id)
) default charset = utf8;