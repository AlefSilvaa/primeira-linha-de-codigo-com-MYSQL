CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
nome_cate VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (nome_cate)
VALUES ("Aves");

INSERT INTO tb_categoria (nome_cate)
VALUES ("Carne Vermelha");

INSERT INTO tb_categoria (nome_cate)
VALUES ("Carne Branca");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade VARCHAR(255) NOT NULL,
preco INT,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Picanha", "1kg", 100, 2);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Salmao", "3", 55, 3);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Chester", "1", 50, 1);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Filé mignon", "1kg", 150, 2);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Peito de frango", "1kg", 15, 1);

INSERT INTO tb_produto (nome, quantidade, preco, categorias_id)
VALUES ("Bacalhau", "2", 25, 3);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome  LIKE "%C%";

SELECT nome, quantidade, preco, tb_categoria.nome_cate FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categorias_id = tb_categoria.id;

SELECT nome, quantidade, preco, tb_categoria.nome_cate FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categorias_id = tb_categoria.id WHERE tb_categoria.nome_cate = "Aves";




