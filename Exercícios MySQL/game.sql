CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    classe VARCHAR (100),
    tipo_ataque VARCHAR (100)
);

INSERT INTO tb_classes (classe,tipo_ataque)
VALUES("Guerreiro","Ataque Físico");

INSERT INTO tb_classes (classe,tipo_ataque)
VALUES("Atirador","Ataque Físico");

INSERT INTO tb_classes (classe,tipo_ataque)
VALUES("Mago","Ataque Mágico");

INSERT INTO tb_classes (classe,tipo_ataque)
VALUES("Guardião","Ataque Físico");

INSERT INTO tb_classes (classe,tipo_ataque)
VALUES("Sacerdote","Ataque Mágico");

CREATE TABLE tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255),
    nivel INT,
    classificacao VARCHAR (2),
    poder_ataque INT,
    poder_defesa INT,
    id_classes BIGINT NOT NULL,
    FOREIGN KEY (id_classes) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Ryan",131,"SR","203902","5590",4);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Elesis",184,"T","460341","4064",1);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Mari",185,"T","513786","3285",3);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Grandiel",180,"SS","402103","4612",5);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Amy",180,"T","462062","4122",5);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Lire",147,"SR","385924","1984",2);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Lass",140,"SR","375812","2250",1);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Rey",189,"T","467945","3428",3);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("Cindy",175,"SR","455166","3875",3);

INSERT INTO tb_personagens(nome,nivel,classificacao,poder_ataque,poder_defesa,id_classes)
VALUES ("IO",180,"SS","475806","2781",2);

SELECT * FROM tb_personagens 
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%";

SELECT nome, nivel, classificacao, poder_ataque, poder_defesa, tb_classes.classe, tb_classes.tipo_ataque
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classes
ORDER BY nome;

SELECT nome, nivel, classificacao, poder_ataque, poder_defesa, tb_classes.classe, tb_classes.tipo_ataque
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classes
WHERE  classe = "Atirador"
ORDER BY nome;

SELECT tb_classes.classe, COUNT(nome) AS Quantidade
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classes
GROUP BY id_classes;