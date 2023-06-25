CREATE DATABASE IF NOT EXISTS empresa
DEFAULT character set utf8
DEFAULT collate utf8_general_ci;

USE empresa;

CREATE TABLE salarios(
work_year year,
job_title varchar(30),
experience_level varchar(30),
salary int
);

ALTER TABLE salarios
ADD COLUMN id_salarios int FIRST;

ALTER TABLE salarios
ADD PRIMARY KEY (id_salarios);

ALTER TABLE salarios
MODIFY id_salarios int NOT NULL DEFAULT ' ' AUTO_INCREMENT;

INSERT INTO salarios(id_salarios, work_year, job_title, experience_level, salary)
VALUES('1','2023', 'ML Engineer', 'MI', '30000'),
('2','2028', 'ML Enginer', 'MI', '3000'),
('3','2023', 'Data Scientist', 'SE', '175000'),
('4','2023', 'Applied Scientist', 'SE', '222222'),
('5','2023', 'Applied Scientist', 'SE', '222220'),
('6','2023', 'Data Analyst', 'MI', '150000');

SELECT * FROM salarios;

UPDATE salarios
SET salary = '30000'
WHERE id_salarios = 2;

UPDATE salarios
SET work_year = '2023'
WHERE id_salarios = 2;

UPDATE salarios
SET salary = '222220'
WHERE job_title = 'Applied Scientist'
LIMIT 1;