

CREATE DATABASE db_generation_game_online5;

USE db_generation_game_online5;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
habilidade VARCHAR(255),
arma VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (nome, habilidade, arma)
VALUES ("Elfo", "Corte da arvore sagrada", "Espada");

INSERT INTO tb_classe (nome, habilidade, arma)
VALUES ("Mago", "Chuva de raios", "Cajado");

INSERT INTO tb_classe (nome, habilidade, arma)
VALUES ("Anão", "Corte duplo", "Espada");

INSERT INTO tb_classe (nome, habilidade, arma)
VALUES ("Demonio", "Chamas do purgatorio", "Maõs");

INSERT INTO tb_classe (nome, habilidade, arma)
VALUES ("Humano", "Flecha flamejante", "arco e flecha");



SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nivel int,
ataque int,
defesa int,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classes_id)
VALUES ("Elfo", 1000, 10500, 3000, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classes_id)
VALUES ("Saley", 1000, 3500, 2245, 2);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classes_id)
VALUES ("Yurun", 800, 1020, 1000, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classes_id)
VALUES ("Sordian", 1000, 10000, 2500, 4);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classes_id)
VALUES ("Bjorn", 500, 1050, 1500, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem ORDER BY nome;

SELECT * FROM tb_pesonagem ORDER BY nome DESC;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;



