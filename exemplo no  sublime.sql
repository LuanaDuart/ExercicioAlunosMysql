DROP DATABASE IF EXISTS exemplo00;
CREATE DATABASE exemplo00;
USE exemplo00;
CREATE TABLE alunos(
    nome VARCHAR(100),
    idade tinyint
);

/*
TIPOS PARA INTEIROS
TINYINT:      -128 .. 127
SMALLINT:    -32728..32727
MEDIUMINT:  -8388608..8388607
INT:       -2147483648..2147483647
LONG:     -2^63..2^63-1
*/
DELETE FROM alunos WHERE nome <> '';
INSERT INTO alunos VALUE ('Henrique', 21);
INSERT INTO alunos VALUE ('Leonardo', 21);
INSERT INTO alunos VALUE ('Gustavo', 22);
INSERT INTO alunos VALUE ('Lucas', 16);
INSERT INTO alunos VALUE ('Logan', 18);
INSERT INTO alunos VALUE ('Guilherme', 17);

SELECT * FROM alunos;

SELECT * 
    FROM alunos 
    WHERE idade = 21;
DROP TABLE IF EXISTS gordices;
CREATE TABLE gordices(
    nome       VARCHAR(100),
    preco      DOUBLE,
    quantidade SMALLINT UNSIGNED,
    ativo      BOOLEAN DEFAULT true
);
INSERT INTO gordices (nome, preco, quantidade)
VALUES
('X-CALABRIA', 17.0, 1),
('Pizza calabresa', 58, 60),
('Batata Recheada calabresa', 12, 1),
('Pastel de Calabresa', 5, 1),
('Kalzone de Calabresa', 6.5, 1),
('Porção de calabresa com Cebola', 15, 1),
('Coxinha de Calabresa', 3.5, 1),
('X-Bacon', 15.75, 1),
('Pizza de Bacon', 15, 20),
('Coxinha de Bacon', 3.5, 1);

SELECT nome 'Nome', preco 'Preço' 
    FROM gordices
    ORDER BY nome DESC;

SELECT preco 
    FROM gordices
    ORDER BY preco ASC;

INSERT INTO gordices (nome, preco, quantidade)
VALUE
('Pizza de Abacate', 5, 1);

#BUSCAR NA COLUNA DE NOME ONDE CONTÉM 
#texto Calabresa no começo
SELECT *
    FROM gordices
    WHERE nome LIKE '%CALABRESA';

-- Soma os registros da coluna preço
SELECT SUM(preco) FROM gordices;

-- Média dos registros da coluna preço
SELECT AVG(preco) FROM gordices;

-- Retorna o registro com o menor preço
SELECT nome, MIN(preco) FROM gordices;

-- Retorna o registro com o maior preço
SELECT nome, MAX(preco) FROM gordices;


-- Retorna a quantidade de registros
SELECT COUNT(nome) FROM alunos;

SELECT COUNT(nome) FROM alunos WHERE nome LIKE 'L%';

CREATE TABLE eventos (
    nome VARCHAR(100),
    data_evento date
);

INSERT INTO eventos VALUES
('Comi Con', '1994-12-28'),
('Warung with Solumn', '2018-10-26');

EXERCICIO00000001
DROP DATABASE IF EXISTS exercicio01;
CREATE DATABASE exercicio01;
USE exercicio01;
CREATE TABLE nomes(
    nome VARCHAR(100),
    cpf VARCHAR(14),
    rg VARCHAR(12),
    datanascimentto DATE,
    idade tinyint
);

INSERT INTO nomes VALUE ('Erick Bryan Enrico Vieira', '699.734.958-70', '90.745.276-0 2', '1989-05-28', 29);
INSERT INTO nomes VALUE ('Samuel Ruan Dias', '90.745.276-0', '55.318.691-7', '1988-02-08', 30);
INSERT INTO nomes VALUE ('Fábio Benjamin Souza', '522.445.349-60', '54.715.232-2', '1970-22-03', 48);
INSERT INTO nomes VALUE ('Elias Miguel Aparicio ', '293.928.821-65', '12.680.444-8', '1986-07-06', 32);
INSERT INTO nomes VALUE ('Alexandre Gustavo Cardoso', '617.408.878-24 ', '8.888.574-4', '2003-04-15', 15);
INSERT INTO nomes VALUE ('Kauê Lucca Duarte', '943.163.990-47', '46.977.509-9', '1965-06-15', 53);
INSERT INTO nomes VALUE ('Marcos Bryan Guilherme Mendes', '955.129.235-95', '84.050.077-4', '2015-02-06', 3);
INSERT INTO nomes VALUE ('Benedito Pedro Carlos da Mota', '510.505.472-50', '43.588.124-3', '1981-04-19', 37);
INSERT INTO nomes VALUE ('Luís Igor Barbosa', '370.570.311-06', '40.651.407-0', '2013-05-06', 5);
INSERT INTO nomes VALUE ('José Heitor Ramos', '675.624.925-81', '83.962.258-2', '1965-04-11', 53);
INSERT INTO nomes VALUE ('Lucca Tiago Galvão', '788.124.508-57', '3.293.335-6', '1977-06-17', 41);
INSERT INTO nomes VALUE ('Tiago Edson Oliveira', '389.969.352-39', '8.198.446-9', '1977-06-09', 41);
INSERT INTO nomes VALUE ('Enrico Julio Fábio Martins', '529.078.166-83', '99.886.242-3', '2017-03-11', 1);
INSERT INTO nomes VALUE ('Oliver Victor Benjamin da Mota', '798.556.805-02', '5.103.578-9', '1985-03-27', 33);
INSERT INTO nomes VALUE ('Bryan Caio Lopes', '213.217.201-30', '12.949.454-9', '1970-06-18', 48);

SELECT * FROM nomes;

EXERCICIO000022
DROP DATABASE IF EXISTS exercicio02;
CREATE DATABASE exercicio02;
USE exercicio02;
CREATE TABLE enderecos(
    estado CHAR(2),
    cidade VARCHAR(140),
    bairro VARCHAR(120),
    cep CHAR(10),
    logradouro VARCHAR(250),
    numero SMALLINT,
    complemento TEXT
);
INSERT INTO enderecos VALUE ('AC', 'Rio Branco', 'Ayrton Senna', '69.911-866', 'Estrada Deputado José Rui da Silveira Lino', '282', 'Casa');
INSERT INTO enderecos VALUE ('SC', 'Biguaçu', 'Fundos', '88.161-400', null, '995', null);
INSERT INTO enderecos VALUE ('MG', 'Santa Luzia', 'Padre Miguel', '33.082-050', 'Rua Buenos Aires', '371', 'Apartamento');
INSERT INTO enderecos VALUE (null, 'BA', 'São Tomé de Paripe', '40.800-361', 'Travessa Luís Hage', '685', null);
INSERT INTO enderecos VALUE ('MG', 'Ipatinga', 'Vila Celeste', null, 'Rua Antônio Boaventura Batista', '645', null);
INSERT INTO enderecos VALUE ('RS', 'Passo Fundo', 'Nenê Graeff', '99.030-250', null, '154', null);
INSERT INTO enderecos VALUE ('AM', 'Manaus', 'Petrópolis', '69.079-300', 'Rua Coronel Ferreira Sobrinho', '264', 'Fundos');
INSERT INTO enderecos VALUE ('TO', 'Gurupi', 'Muniz Santana', '77.402-130', 'Rua Adelmo Aires Negri', '794', null);
INSERT INTO enderecos VALUE (null, 'AC', 'Preventório', null, 'Beco da Ligação II', '212', 'Bloco B');
INSERT INTO enderecos VALUE ('AP', 'Santana', 'Comercial', '68.925-073', 'Rua Calçoene', '648', null);
INSERT INTO enderecos VALUE ('PB', 'Cabedelo', 'Camalaú', '58.103-052', 'Rua Siqueira Campos', '249', null);

SELECT estado 'UF', cidade 'Cidade', bairro 'Bairro', cep 'CEP', logradouro 'Logradouro', numero 'Numero', complemento 'Complemento'
    
   FROM enderecos
   ORDER BY estado ASC

 EXERCICIO0003
 
DROP DATABASE IF EXISTS exercicio03;
CREATE DATABASE exercicio03;
USE exercicio03;
CREATE TABLE champions(
    nome VARCHAR(30),
    descricao VARCHAR(40),
    habilidade1 VARCHAR(50),
    habilidade2 VARCHAR(50),
    habilidade3 VARCHAR(50),
    habilidade4 VARCHAR(50),
    habilidade5 VARCHAR(50)
);

INSERT INTO champions VALUE ('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shunpo', 'Lótus da Mort');INSERT INTO champions VALUE ('Yasuo', null, 'Estilo do Errante', 'Tempestade de Aço', 'Parede de Vento', 'Espada Ágil', 'Último Suspiro');
INSERT INTO champions VALUE ('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo', null, null, null, null);
INSERT INTO champions VALUE ('Vayne', 'a Caçadora Noturna', 'Caçadora Noturna', 'Rolamento', 'Dardos de Prata', 'Condenar', 'Hora Final');
INSERT INTO champions VALUE ('Lee Sin', 'o Monge Cego', 'Agitação', 'Onda Sônica Ataque Ressonante', 'Proteger Vontade de Ferro', 'Tempestade Mutilar', null);
INSERT INTO champions VALUE ('Vi', 'a Defensora de Piltover', 'Blindagem', null, 'Pancada Certeira', 'Força Excessiva', 'Saque e Enterrada');
INSERT INTO champions VALUE ('Diana', 'o Escárnio da Lua', 'Espada de Prata Lunar', 'Golpe Crescente', 'Cascata Lívida', 'Colapso Minguante', 'Zênite Lunar');
INSERT INTO champions VALUE ('Annie', 'a Criança Sombria', 'Piromania', 'Desintegrar', 'Incinerar', 'Escudo Fundido', 'Invocar:Tibbers');
INSERT INTO champions VALUE ('Aatrox', null, 'Poço de Sangue', 'Voo Sombrio', 'Sede de Sangue / Preço em Sangue', 'Lâminas da Aflição', 'Massacre');

SELECT nome 'Nome', descricao 'Descrição', habilidade1 'Habilidade 1', habilidade2 'Habilidade 2', habilidade3 'Habilidade 3', habilidade4 'Habilidade 4',
       habilidade5 'Habilidade 5' FROM champions ORDER BY n
  
  EXERCICIOPOKEMON
  DROP DATABASE IF EXISTS exemplo05;
CREATE DATABASE exemplo05;
USE exemplo05;

CREATE TABLE pokemons(
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    nome                VARCHAR(255),
    codigo              VARCHAR(4),
    categoria           VARCHAR(255),
    altura              FLOAT,
    peso                FLOAT,
    hp                  INT,
    ataque              INT,
    defesa              INT,
    especial_ataque     INT,
    especial_defesa     INT,
    velocidade          INT,
    descricao           TEXT
 );
INSERT INTO pokemons (nome, codigo, categoria, descricao, altura, peso, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade) VALUES

EX1
SELECT
   ataque, especial_ataque, defesa, especial_defesa FROM pokemons;
EX02
sselect
   nome, categoria, ataque FROM pokemons;
SELECT nome
   FROM pokemons
   ORDER BY ataque ASC;
EX3
SELECT
   altura, peso, peso / (altura * altura) FROM pokemons;
EX04
SELECT
   peso, altura, peso/(altura * altura)
   FROM pokemons
   ORDER BY peso/(altura * altura) DESC;
exemplo05
SELECT
   nome, CHARACTER_LENGTH(CONCAT(NOME))
   FROM pokemons
   ORDER BY nome DESC;
EX06
SELECT
   nome, LENGTH(nome)
   FROM pokemons
   WHERE LENGTH(nome) > 10
   ORDER BY nome DESC;
 EX07
 SELECT nome, categoria, ataque FROM pokemons WHERE ataque = (SELECT MIN(ataque) FROM pokemons) ORDER BY nome;

 EX08
 SELECT ataque, especial_ataque, nome, defesa, especial_defesa FROM pokemons ORDER BY ataque;

 EX09
 SELECT AVG(ataque) FROM pokemons;

EX10
 SELECT SUM(ataque) FROM pokemons;

 EX11
 SELECT AVG(especial_ataque) FROM pokemons WHERE nome LIKE 'P%';

 EXERCICIO TABELA DE CIDADES

 DROP DATABASE IF EXISTS exemplo06;
CREATE DATABASE exemplo06;
USE exemplo06;
DROP TABLE IF EXISTS cidades;
CREATE TABLE cidades (
    estado CHAR(2),
    cidade VARCHAR(100)
);
EX1
SELECT estado, cidade FROM cidades;

EX02
SELECT cidade FROM cidades WHERE cidade LIKE 'A%';

EX03
SELECT cidade FROM cidades WHERE cidade LIKE '%apar%' ORDER BY cidade;

EX04
SELECT cidade FROM cidades WHERE cidade LIKE 'W%' ORDER BY cidade;

exemplo05
SELECT estado, cidade FROM cidades WHERE cidade LIKE '%tuba' ORDER BY estado DESC;
 
EX06     
SELECT COUNT(cidade) FROM cidades WHERE estado LIKE 'SC%';

EX07
SELECT COUNT(cidade) FROM cidades WHERE estado LIKE 'SP%';

EX08
ELECT cidade, LENGTH(cidade)
   FROM cidades
   WHERE LENGTH(cidade) = 10
   ORDER BY cidade ASC;

EXERCICIO TABELA alunos

DROP DATABASE IF EXISTS exemplo07;
CREATE DATABASE exemplo07;
USE exemplo07;
DROP TABLE IF EXISTS alunos;
CREATE TABLE alunos (
  nome VARCHAR(100),
  cpf CHAR(14),
  nick VARCHAR(100),
  signo VARCHAR(100),
  numero_favorito VARCHAR(100),
  cor_preferida VARCHAR(100),
  nota_1 FLOAT,
  nota_2 FLOAT,
  nota_3 FLOAT,
  nota_4 FLOAT,
  data_nascimento DATETIME
);
EX1
SELECT * FROM alunos; 

EX02
SELECT nome FROM alunos WHERE nota_1 > 9.0;  

EX03

SELECT nome, nota_1, nota_2, nota_3, nota_4 ,((nota_1 + nota_2 + nota_3 + nota_4)/4) 'Média' FROM alunos ORDER BY nome;

EX04
SELECT SUM(nota_1) FROM alunos;

exemplo05
SELECT AVG(nota_2) FROM alunos;

EX07
SELECT nome, nota_1, nota_2, nota_3, nota_4, MAX(nome) FROM alunos;

EX08
SELECT COUNT(nome) FROM alunos WHERE nome LIKE 'FRANCISCO%';

EX09
SELECT COUNT(nome) FROM alunos WHERE nome LIKE '%Luc%;'

EX10
SELECT nome, signo, data_nascimento FROM alunos WHERE signo like '%Áries%' ORDER BY nome;
