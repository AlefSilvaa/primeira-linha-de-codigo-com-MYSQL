CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
nome_cat VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (nome_cat)
VALUES ("Cosmeticos");

INSERT INTO tb_categoria (nome_cat)
VALUES ("Remedios");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco int,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, categorias_id)
VALUES ("Dorflex", 15, 2);

INSERT INTO tb_produto (nome, preco, categorias_id)
VALUES ("Shampoo", 25, 1);

INSERT INTO tb_produto (nome, preco, categorias_id)
VALUES ("Dipirona", 7, 2);

INSERT INTO tb_produto (nome, preco, categorias_id)
VALUES ("Sabonete", 5, 1);

SELECT * FROM tb_produto; 

SELECT nome, preco, CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produto;



SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT nome, preco, tb_categoria.nome_cat FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categorias_id = tb_categoria.id;

SELECT nome, preco, tb_categoria.nome_cat FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categorias_id = tb_categoria.id  WHERE tb_categoria.nome_cat = "Cosmeticos";

ALTER TABLE tb_produto MODIFY preco decimal(8,2);



