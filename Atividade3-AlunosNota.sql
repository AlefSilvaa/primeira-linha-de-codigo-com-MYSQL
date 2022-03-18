-- Criando banco de dados
CREATE DATABASE at_atividade3;

-- Selecionar banco de dados
USE at_atividade3;

-- Criando tabela tb_alunonota
CREATE TABLE tb_alunonota(
id_ident bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sala VARCHAR(255) NOT NULL,
materia VARCHAR(255) NOT NULL,
nota int,
PRIMARY KEY (id_ident)
);

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("362", "Dean Whinchester", "1B", "Mátematica", 7.0);

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("275", "Sam Whinchester", "1B", "Mátematica", "10.0");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("134", "Bob Singler", "1B", "Mátematica", "9.0");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("202", "Ruby Granger", "1B", "Mátematica", "6.5");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("194", "Harry Potter", "1B", "Mátematica", "10.0");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("367", "Rony Wesley", "1B", "Mátematica", "5.5");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("287", "Dino Thomas", "1B", "Mátematica", "3.0");

INSERT INTO tb_alunonota (id_ident, nome, sala, materia, nota)
VALUES("436", "Will Bywers", "1B", "Mátematica", "10.0");

-- Listar todos os Produtos
SELECT * FROM tb_alunonota;

SELECT * FROM tb_alunonota WHERE nota > 7.0;  

SELECT * FROM tb_alunonota WHERE nota <= 7.0;

-- Atualizar dados da tabela
UPDATE tb_alunonota SET nota = 6.5 WHERE id_ident = 202;

UPDATE tb_alunonota SET nota = 5.5 WHERE id_ident = 367;

UPDATE tb_alunonota SET nota = 7.0 WHERE id_ident = 202;



/* Alterações na EStrutura*/
ALTER TABLE tb_alunonota MODIFY nota decimal(8,1);


