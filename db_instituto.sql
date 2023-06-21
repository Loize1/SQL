CREATE DATABASE IF NOT EXISTS instituto 
default character set utf8
default collate utf8_general_ci;

USE instituto;
CREATE TABLE IF NOT EXISTS cursos(
nome varchar(10) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int, 
ano year DEFAULT '2023'
);

ALTER TABLE cursos
ADD COLUMN professor varchar(20);

ALTER TABLE cursos
ADD COLUMN codigocurso int FIRST;

ALTER TABLE cursos
MODIFY professor varchar(30);

ALTER TABLE cursos
MODIFY codigocurso int NOT NULL AUTO_INCREMENT DEFAULT ' ' ;

ALTER TABLE cursos
ADD COLUMN livro varchar(30) AFTER descricao;

ALTER TABLE cursos
CHANGE COLUMN professor prof varchar(40) NOT NULL DEFAULT ' ';

ALTER TABLE cursos
DROP COLUMN codigocurso;

ALTER TABLE cursos
DROP COLUMN prof;

ALTER TABLE cursos
RENAME TO ensino;

ALTER TABLE ensino
ADD COLUMN idcurso int FIRST;

ALTER TABLE ensino
ADD PRIMARY KEY (idcurso);

INSERT INTO ensino 
(nome, carga, ano)
VALUES 
('java', '102', '2022');

SELECT * FROM ensino;

DROP TABLE ensino











