CREATE DATABASE db_shop;

USE db_shop;

CREATE TABLE tb_products(
	id BIGINT AUTO_INCREMENT,
    nameProduct varchar(255) NOT NULL,
    brand varchar(255),
    quantity int,
    price decimal(6,2),
    category varchar(255),
    primary key(id)
);

SELECT * FROM tb_products;

INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("S8 Ultra","Samsung",354,7499.00,"Eletrônicos");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Headphone Cloud Stinger","HyperX",58,156.00,"Eletrônicos");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Conjunto Panelas Cerâmica","Hércules",34,414.69,"Cozinha");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Liquidificador Turbo Power","Mondial",124,109.89,"Eletrodomésticos");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Notebook Book Intel Core i7","Samsung",156,3220.00,"Eletrônicos");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Conjunto Potes Herméticos","Eletrolux",251,89.00,"Cozinha");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Aspirador de Pó Vertical","Philco",109,299.00,"Eletrônicos");
INSERT INTO tb_products (nameProduct,brand,quantity,price,category)
VALUES ("Sofá Retrátil","Suede",23,2120.00,"Casa");

SELECT * FROM tb_products 
WHERE  price > 500;

SELECT * FROM tb_products 
WHERE  price < 500;

UPDATE tb_products SET category = "Móveis"
WHERE id = 7;
