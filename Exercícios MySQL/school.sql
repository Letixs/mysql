CREATE DATABASE db_school;

USE db_school;

CREATE TABLE tb_students(
	id BIGINT AUTO_INCREMENT,
    nameStudent VARCHAR(255) NOT NULL,
    cpf VARCHAR(9) NOT NULL UNIQUE,
	grade VARCHAR(100) NOT NULL,
	mathAverage decimal(3,1),
	statusStudent VARCHAR(50) NOT NULL,
	PRIMARY KEY(id)
);

SELECT * FROM tb_students;

INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Nara Gonçalves","815305714","1º ano do Ensino Médio",7.8,"Aprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Rafael Santos","825406486","1º ano do Ensino Médio",6.4,"Aprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Maria Dantas","197349548","2º ano do Ensino Fundamental",5.6,"Reprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Lucas Almeida","249458180","3º ano do Ensino Médio",8.1,"Aprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Arnaldo Nunes","109245874","5º ano do Ensino Fundamental",4.3,"Reprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Eduarda Abrantes","792373476","2º ano do Ensino Médio",9.8,"Aprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Camille Mendes","529512344","8º ano do Ensino Fundamental",10.0,"Aprovado");
INSERT INTO tb_students (nameStudent,cpf,grade,mathAverage,statusStudent)
VALUES ("Roberto Chaves","204834642","6º ano do Ensino Médio",3.5,"Aprovado");

SELECT * FROM tb_students 
WHERE mathAverage > 7.0;

SELECT * FROM tb_students 
WHERE mathAverage < 7.0;

UPDATE tb_students SET statusStudent = "Reprovado"
WHERE id = 8;
