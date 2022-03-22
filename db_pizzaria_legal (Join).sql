CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
preco int,
tempo_entrega VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (preco, tempo_entrega) -- Quatro Queijo
VALUES (50, "45min");

INSERT INTO tb_categoria (preco, tempo_entrega) -- portuguesa
VALUES (45, "35min");

INSERT INTO tb_categoria (preco, tempo_entrega) -- Bacon
VALUES (60, "40min");

INSERT INTO tb_categoria (preco, tempo_entrega) -- Atum
VALUES (35, "30min");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sabor VARCHAR(255) NOT NULL,
quantidade int,
endereco VARCHAR(255) NOT NULL,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizza (nome, sabor, quantidade, endereco, categorias_id)
VALUES ("Dean", "Bacon", 1, "rua 22", 3);

INSERT INTO tb_pizza (nome, sabor, quantidade, endereco, categorias_id)
VALUES ("Galadriel", "Quatro Queijo", 1, "rua 12", 1);

INSERT INTO tb_pizza (nome, sabor, quantidade, endereco, categorias_id)
VALUES ("Yurun", "Portuguesa", 1, "rua 30", 2);

INSERT INTO tb_pizza (nome, sabor, quantidade, endereco, categorias_id)
VALUES ("paulo", "Atum", 1, "Rua 20", 4);

SELECT * FROM tb_pizza;

SELECT id, tempo_entrega, CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS preco1 FROM tb_categoria;


SELECT * FROM tb_categoria WHERE preco > 45;

SELECT * FROM tb_categoria WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT nome, sabor, quantidade, endereco,  tb_categoria.tempo_entrega, preco FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categorias_id  = tb_categoria.id;

ALTER TABLE tb_categoria MODIFY preco decimal(8,2);