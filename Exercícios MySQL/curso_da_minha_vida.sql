CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id  BIGINT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(100),
    sub_categoria VARCHAR (40)
);

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Ciência da Computação","Desenvolvimento Web");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Ciência da Computação","Desenvolvimento Mobile");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Ciência de Dados","Análise de Dados");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Ciência de Dados","Engenharia de Dados");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Ciência de Dados","Desenvolvimento de BI");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Negócios","Marketing Digital");

INSERT INTO tb_categorias(categoria,sub_categoria)
VALUES ("Negócios","Gestão de Projetos");

CREATE TABLE tb_cursos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    nivel VARCHAR(50) NOT NULL,
    gratuito BOOLEAN NOT NULL,
    instituicao VARCHAR(255) NOT NULL,
    duracao VARCHAR(20) NOT NULL,
    id_categorias BIGINT NOT NULL,
    preco DECIMAL(6,2),
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Introdução à Ciência da Computação com Python","Básico",true,"Universidade de São Paulo","28 horas", 0,1);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Bancos de Dados e SQL para Ciências de Dados","Básico",true,"IBM","14 horas",0,3);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Fundamentos do Gerenciamento de Projetos","Básico",false,"Google","15 horas",429.20,7);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Programa de cursos integrados Architecting with Google Compute Engine em Português","Intermediário",false,"Google Cloud","37 horas",431,4);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Programa de cursos integrados Data Engineer, Big Data and ML on Google Cloud em Português","Intermediário",false,"Google Cloud","52 horas",568.60,5);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Desenvolvimento back-end da IBM","Básico",false,"IBM","133 horas",659.99,1);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Desenvolvedor Android da Meta","Básico",false,"Meta","277 horas",789,2);

INSERT INTO tb_cursos(nome,nivel,gratuito,instituicao,duracao,preco,id_categorias)
VALUES ("Introdução a TCP/IP","Básico",true,"Yonsei University","7 horas",0.0,1);

SELECT nome, nivel, gratuito, instituicao, duracao, preco, tb_categorias.categoria, tb_categorias.sub_categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.id_categorias
WHERE preco > 500
ORDER BY nome;

SELECT nome, nivel, gratuito, instituicao, duracao, preco, tb_categorias.categoria, tb_categorias.sub_categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.id_categorias
WHERE preco BETWEEN 600 AND 1000
ORDER BY nome;

SELECT nome, nivel, gratuito, instituicao, duracao, preco, tb_categorias.categoria, tb_categorias.sub_categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.id_categorias
WHERE nome LIKE "%j%"
ORDER BY nome;

SELECT nome, nivel, gratuito, instituicao, duracao, preco, tb_categorias.categoria, tb_categorias.sub_categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.id_categorias
ORDER BY nome;

SELECT nome, nivel, gratuito, instituicao, duracao, preco, tb_categorias.categoria, tb_categorias.sub_categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.id_categorias
WHERE tb_categorias.categoria = "Ciência da Computação" AND tb_categorias.sub_categoria = "Desenvolvimento Web"
ORDER BY nome;