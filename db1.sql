-- Criar banco de dados
CREATE DATABASE db_quintanda;

-- Selecionar o Banco de dados
USE db_quintanda;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("XUXU", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-04-18", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2022-04-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("banana", 1000, "2022-04-20", 10.50);

-- Listar todos os produtos
SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos where preco > 10.00;

SELECT * FROM tb_produtos where preco > 10.00 AND quantidade < 50;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;



-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

UPDATE tb_produtos SET quantidade = 20 WHERE id = 7;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET preco = 8.50;

DELETE FROM tb_produtos WHERE id = 3; 

DELETE FROM tb_produtos WHERE id = 6;

DELETE FROM tb_produtos

/* Alterações na EStrutura*/

ALTER TABLE tb_produtos MODIFY preco decimal(8,2); 

ALTER TABLE tb_produtos ADD descricao varchar(255); 

ALTER TABLE tb_produtos DROP descricao;

-- ALTER TABLE tb_produtos CHANGE precov preco decimal(8,2);

DROP DATABASE db_quitanda;





