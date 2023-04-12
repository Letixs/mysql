CREATE DATABASE db_services;

USE db_services;

CREATE TABLE tb_collaborators(
	id BIGINT AUTO_INCREMENT,
	nameCollaborator VARCHAR(255) NOT NULL,
    cpf VARCHAR(9) NOT NULL UNIQUE,
    office VARCHAR(255) NOT NULL,
    salary DECIMAL (9,2) NOT NULL,
    start_collaboration DATE NOT NULL,
    PRIMARY KEY(id)
);

SELECT * FROM tb_collaborators;

INSERT INTO tb_collaborators (nameCollaborator,cpf,office,salary,start_collaboration)
VALUES ("Rodrigo Silva","926456834","Analista",3500.00,'2020-03-09');
INSERT INTO tb_collaborators (nameCollaborator,cpf,office,salary,start_collaboration)
VALUES ("Maria Abrantes","152729319","Desenvolvedora Jr",4600.00,'2021-11-23');
INSERT INTO tb_collaborators (nameCollaborator,cpf,office,salary,start_collaboration)
VALUES ("Gustavo José","462712845","Recepcionista",3000.00,'2018-06-24');
INSERT INTO tb_collaborators (nameCollaborator,cpf,office,salary,start_collaboration)
VALUES ("Ana Mendes","456723456","Desenvolvedora Sênior",23000.00,'2017-10-10');
INSERT INTO tb_collaborators (nameCollaborator,cpf,office,salary,start_collaboration)
VALUES ("Amanda Neves","145347987","Gestora de Projetos",4100.00,'2022-04-07');

SELECT * FROM tb_collaborators 
WHERE salary > 2000;

SELECT * FROM tb_collaborators 
WHERE salary < 2000;

UPDATE tb_collaborators SET office = "Desenvolvedora Pleno", salary = 12000.00
WHERE id = 2;