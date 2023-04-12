CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tarja VARCHAR(15),
    setor VARCHAR (20) NOT NULL
);

INSERT INTO tb_categorias(tarja,setor)
VALUES ("Ausente","Medicamentos");

INSERT INTO tb_categorias(tarja,setor)
VALUES ("Amarela","Medicamentos");

INSERT INTO tb_categorias(tarja,setor)
VALUES ("Vermelha","Medicamentos");

INSERT INTO tb_categorias(tarja,setor)
VALUES ("Preta","Medicamentos");

INSERT INTO tb_categorias(setor)
VALUES ("Cosméticos");

INSERT INTO tb_categorias(setor)
VALUES ("Infantil");

CREATE TABLE tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(20),
    preco DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(300),
    id_categorias BIGINT NOT NULL,
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Nimesulida","Tratamento de uma variedade de condições que requeiram atividade anti-inflamatória, analgésica e antipirética","Nimesulida",6.99,2);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Insulina","Tratamento de Diabetes mellitus tipo 2 em adultos e também é indicado para o tratamento de Diabetes mellitus tipo 1 em adultos e em crianças com 2 anos de idade ou mais que necessitam de insulina basal (longa duração) para o controle da hiperglicemia (nível alto de açúcar no sangue)","Basaglar",99.99,3);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Venvance","O medicamento age estimulando o sistema nervoso central, aumentando a atenção e diminuindo a impulsividade","Takeda",364.60,4);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Glifage"," Pode ser usado junto com a insulinoterapia, na diabetes tipo 1, prevenção da diabetes tipo 2, em pré-diabéticos e síndrome do ovário policístico","Merk",8.42,3);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Fraldas Pampers","A cobertura suave como tecido oferece mais conforto ao seu bebê para uma maior comodidade","Pampers",27.90,6);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Fraldas Huggies Tripla Proteção","Fralda Huggies Turma Da Mônica Jumbo proporciona proteção por até 10 horas","Huggies",35.99,6);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Perfume Choc Egeo","A fragrância que você ama está de cara nova! Pensando nos nossos compromissos de sustentabilidade, O Boticário trouxe uma nova embalagem para sua fragrância preferida","O Boticário",45.90,5);

INSERT INTO tb_produtos(nome,descricao,marca,preco,id_categorias)
VALUES ("Effaclar Concentrado","Gel de limpeza ideal para peles oleosas a acneicas","La Roche Posay",38.79,5);

SELECT nome, descricao, marca, preco, tb_categorias.tarja, tb_categorias.setor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
WHERE preco > 50
ORDER BY nome;

SELECT nome, descricao, marca, preco, tb_categorias.tarja, tb_categorias.setor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
WHERE preco BETWEEN 5 AND 60
ORDER BY nome;

SELECT nome, descricao, marca, preco, tb_categorias.tarja, tb_categorias.setor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
WHERE nome LIKE "%c%"
ORDER BY nome;

SELECT nome, descricao, marca, preco, tb_categorias.tarja, tb_categorias.setor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
WHERE tb_categorias.setor = "Cosméticos"
ORDER BY nome;

SELECT nome, descricao, marca, preco, tb_categorias.tarja, tb_categorias.setor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
ORDER BY nome;