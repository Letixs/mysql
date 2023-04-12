CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tamanho VARCHAR (7) NOT NULL,
    tipo VARCHAR (7) NOT NULL
);

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Pequena","Salgada");

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Média","Salgada");

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Grande","Salgada");

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Pequena","Doce");

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Média","Doce");

INSERT INTO tb_categorias(tamanho,tipo)
VALUES ("Grande","Doce");

CREATE TABLE tb_pizzas(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    borda CHAR(3) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    id_categorias BIGINT NOT NULL,
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Mussarela","Mussarela, orégano, azeitona","Sim",31.99,1);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Calabresa","Mussarela,calabresa,cebola,orégano","Sim",60,3);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Frango com Catupiry","Mussarela,frango,cebola,catupiry","Não",45,2);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Frango com Cheddar","Mussarela,frango,cebola,cheddar","Sim",31.99,1);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Chocolate com Morango","Chocolate,morango","Não",65,6);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Portuguesa","Mussarela,presunto,ervilha,palmito,calabresa,cebola,ovo,bacon,tomate","Sim",31.99,1);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Romeu e Julieta","Mussarela,goiabada,leite condensado","Não",75,5);

INSERT INTO tb_pizzas (nome,descricao,borda,preco,id_categorias)
VALUES ("Prestígio","Chocolate e Coco","Sim",70,5);

SELECT nome, descricao, borda, preco, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categorias
WHERE preco > 45
ORDER BY nome;

SELECT nome, descricao, borda, preco, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categorias
WHERE preco BETWEEN 50 AND 100
ORDER BY nome;

SELECT nome, descricao, borda, preco, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categorias
WHERE nome LIKE "%m%"
ORDER BY nome;

SELECT nome, descricao, borda, preco, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categorias
ORDER BY nome;

SELECT nome, descricao, borda, preco, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categorias
WHERE tb_categorias.tipo = "Doce"
ORDER BY nome;