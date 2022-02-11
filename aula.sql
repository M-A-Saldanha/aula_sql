CREATE TABLE pessoa (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
);

INSERT INTO pessoa (nome, nascimento) VALUES ('Marcelo', '1993-02-10');
INSERT INTO pessoa (nome, nascimento) VALUES ('Estefani', '1999-03-23');
INSERT INTO pessoa (nome, nascimento) VALUES ('Mateus', '1992-04-25');
INSERT INTO pessoa (nome, nascimento) VALUES ('Marco', '1992-04-25');

/* 
    Esse comando vai atualizar toda a tabela com o mesmo valor('Marco Antonio'),
    por que foi indicado um atributo genérico e não uma Primary Key.
*/
UPDATE pessoa SET nome='Marco Antonio';

UPDATE pessoa SET nome='Marcelo' WHERE id=1;
UPDATE pessoa SET nome='Estefani' WHERE id=2;
UPDATE pessoa SET nome='Mateus' WHERE id=3;
UPDATE pessoa SET nome='Marco' WHERE id=4;

/* 

 Usando o comando WHERE e escolhenda a chave primaria id é possivel atualizar o elemento correto.

*/

SELECT * FROM pessoa WHERE id=4;

DELETE   FROM pessoa WHERE id=4; /* Usado para deletar um elemento */

/* 
    É uma boa pratica conferir se informação está correta
    antes de deletar.
*/

INSERT INTO pessoa (nome, nascimento) VALUES ('Jorge', '1990-06-18');

SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nome DESC; /* Seleciona todos elementos da tabela pessoa e ordena pelo nome de forma decrescente  */

/* Altera a tabela e adiciona coluna genero como um varchar(,) não nulo depois da coluna nascimento */
ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento; 

UPDATE pessoa SET genero='M' WHERE id=1;
UPDATE pessoa SET genero='F' WHERE id=2;
UPDATE pessoa SET genero='M' WHERE id=3;
UPDATE pessoa SET genero='M' WHERE id=4;

/* ---- TABELA DE CONSULTAS ----*/

/* conta o numero de vezes que aquele elemento(genero) aparece na tabela */
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;