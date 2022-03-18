-- Criando banco de dados
CREATE DATABASE at_atividade2;

-- selecionar banco de daods
USE tb_atividade2;

-- Criando tabela tb_produtoscomp
CREATE TABLE tb_produtoscomp(
id_code bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
quantidade int,
preco decimal NOT NULL,
PRIMARY KEY (id_code)

);
-- Inserir dados na tabela
INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("111", "Placa de Vídeo", "Gigabyte", 30, 1300);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("112", "Placa de Vídeo", "ASUS", 25, 3000);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("113", "Processador", "Intel", 90, 1300);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("114", "Processador", "AMD", 60, 1900);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("115", "Placa mãe", "ASUS", 25, 935.63);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("116", "Placa mãe", "Gigabyte", 30, 3229.90);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("117", "SSD", "Kingston", 40, 217.97);

INSERT INTO tb_produtoscomp (id_code, nome, marca, quantidade, preco)
VALUES ("118", "SSD", "San Disk", 35, 200);

-- Listar todos os produtos
SELECT * FROM tb_produtoscomp;

SELECT * FROM tb_produtoscomp WHERE preco > 500;

SELECT * FROM tb_produtoscomp WHERE preco < 500;

SELECT 	id_code, nome, marca, quantidade, CONCAT('R$', FORMAT(Preco, 2, 'pt_BR')) AS preco FROM tb_produtoscomp;

-- Atualizar os dados da tabela
UPDATE tb_produtoscomp SET preco = 217.97 WHERE id_code = 117;

UPDATE tb_produtoscomp  SET quantidade = 40 WHERE id_code = 118;


/* Alterações na EStrutura*/
ALTER TABLE tb_produtoscomp MODIFY preco decimal(8,2);
