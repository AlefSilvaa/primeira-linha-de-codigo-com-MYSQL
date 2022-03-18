-- Criando banco de dados
CREATE DATABASE db_atividade1;

s-- selecionar banco de daods
USE db_atividade1;

-- Criar tabela tb_funcionarios
CREATE TABLE tb_funcionarios(
id_func bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade int,
def VARCHAR(255) NOT NULL,
salario decimal NOT NULL, 
PRIMARY KEY (id_func)
);

-- Inserir dados na tabela
INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("135", "Dean Whinchester", 28, "não", 2500);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("111", "Sam Whinchester", 21, "não", 2500);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("236", "Bob Singler", 45, "sim", 20100);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("675", "John Whinchester", 40, "não", 3000);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("903", "Mary Whinchester", 38, "não", 3500);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("204", "Castiel", 35, "não", 2000);

INSERT INTO tb_funcionarios (id_func, nome, idade, def, salario)
VALUES ("136", "Dean Whinchester", 28, "não", 2500);

-- Listar todos os produtos
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario <= 2000;

SELECT id_func, nome, idade, def, CONCAT('R$', FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_funcionarios; 


-- atualizar dados dentro da tabela
DELETE FROM tb_funcionarios WHERE id_func = 135;

UPDATE tb_funcionarios SET salario = 1900 WHERE id_func = 204;  

/* Alteraçoes na estrutura */
ALTER TABLE tb_funcionarios MODIFY salario decimal(8,2);

