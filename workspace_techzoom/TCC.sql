USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'bdTechZoom')
DROP DATABASE bdTechZoom
GO

CREATE DATABASE bdTechZoom
GO

USE bdTechZoom
GO

CREATE TABLE Usuario
( 
   id            INT IDENTITY,
   nome          VARCHAR(100)	NOT NULL,
   email         VARCHAR(100)	NOT NULL,
   senha         VARCHAR(100)	NOT NULL,
   nivelAcesso   VARCHAR(10)    NULL, -- ADM, TEC ou USER
   foto		 VARBINARY(MAX) NULL,
   statusUsuario VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

   PRIMARY KEY (id)
)

INSERT INTO USUARIO
VALUES('YASMIN BECCA',
'YASMIN.BECCA01@GMAIL.COM',
'04062005',
'ADM',
NULL,
'ATIVO')

UPDATE USUARIO
SET senha= '12345'
WHERE nome='YASMIN BECCA'

GO

	
INSERT INTO USUARIO
VALUES('JULIO CESAR',
'JULIOCESAR@GMAIL.COM',
'JULIOC',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('BRENO GUSTAVO',
'BRENO.SOUZA@GMAIL.COM',
'BSOUZA',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ERICK ARAUJO',
'ERICK.ARAUJO@GMAIL.COM',
'ARAUJOO',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('MATEUS GONÇALVES',
'MATEUS.TETEU@GMAIL.COM',
'TETEU',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('JOAO RODIGHERO ',
'JOAO.RODI@GMAIL.COM',
'JRODIGHERO',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('GABRIEL MARTINS',
'GABRIEEL.MARTINS@GMAIL.COM',
'GABRIELMTZ',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('MATHEUS HENRIQUE',
'MATHEUS.HENRIQUE@GMAIL.COM',
'BOLANO',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('RODRIGO SILVA',
'RODRIGO.SILVA@GMAIL.COM',
'RORO',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ANNA JULLIA',
'ANNA.JU@GMAIL.COM',
'NAJU',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('DALISSON MAYCON',
'DALI.LOPES@GMAIL.COM',
'DALIMM',
'USER',
NULL,
'ATIVO')
GO 

INSERT INTO USUARIO
VALUES('VITOR REBOREDA',
'VVREBOREDA@GMAIL.COM',
'REBOBECCA',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ISABELLE BECCA',
'ISA.BECCA@GMAIL.COM',
'ISA28',
'USER',
NULL,
'ATIVO')
GO

SELECT * FROM USUARIO
---WHERE EMAIL = 'YASMIN.BECCA01@GMAIL.COM'

CREATE TABLE PRODUTO(
ID_PROD INT PRIMARY KEY IDENTITY NOT NULL,
NOME_PROD VARCHAR (100) NOT NULL,
foto		 VARBINARY(MAX) NULL,
CATEGORIA_ID VARCHAR (100) NOT NULL)
GO

INSERT INTO PRODUTO
VALUES( 'Iphone XR Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 11 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 12 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 13 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy A54 6,4 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy S23 6,8 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy S21 6,4 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy A34 6,6 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G84 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola Edge 30 Neo 6,3 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G53 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G73 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'All in One LG Celeron',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Gamer Completo RGB Intel Core I5',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Completo Intel Core I5',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Dell Inspiron 24 All in One 13a',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Completo Intel Core I7',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Gamer Completo Intel Core i5 6 Geração',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab S6 Lite',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab A7 Lite',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab A8',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Apple IPAD',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Acer Aspire 5',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Positivo Duo 2 em 1 Intel',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Book Celeron-6305',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Alienware M18 i9',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Asus Vivobook 15',
NULL,
'Notebook')
GO

SELECT * FROM Produto



CREATE TABLE CATEGORIA(
ID INT PRIMARY KEY IDENTITY NOT NULL,
NOME VARCHAR (100) NOT NULL)
GO

INSERT INTO CATEGORIA
VALUES ( 'Smartphone')
GO

INSERT INTO Categoria 
VALUES ( 'Computador')
GO

INSERT INTO Categoria 
VALUES ( 'Tablet')
GO

INSERT INTO Categoria 
VALUES ( 'Notebook')
GO


SELECT * FROM Categoria

CREATE TABLE COMENTARIOS(
ID INT PRIMARY KEY IDENTITY NOT NULL,
NOME_PROD VARCHAR (100) NOT NULL,
NOME_USUARIO VARCHAR (100) NOT NULL,
AVALIAÇAO VARCHAR (5) NOT NULL,
DESCRIÇAO VARCHAR (250))
GO

INSERT INTO Comentarios
VALUES ( 'Iphone XR Apple 6,1 iOS',
'YASMIN BECCA',
'5',
'É um smartphone iOS de bom nível, ótimo para fotos, que pode satisfazer até o mais exigente dos usuários')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone XR Apple 6,1 iOS',
'ISABELLE BECCA',
'3',
'Preço acima de concorrentes')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 11 Apple 6,1 iOS',
'JULIO CESAR',
'4',
'É um ótimo custo-benefício')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 11 Apple 6,1 iOS',
'BRENO GUSTAVO',
'3',
'A câmera possui nitidez nas imagens e nas cores, alta resolução e boa estabilização')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 12 Apple 6,1 iOS',
'ERICK ARAUJO',
'4',
'Câmera potente, design refinado e nostálgico, além de ótimo desempenho da bateria com apps, vídeos e música')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 12 Apple 6,1 iOS',
'JOAO RODIGHERO',
'3',
'É um celular com ótimo desempenho para uso diário e jogos pesados')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 13 Apple 6,1 iOS',
'GABRIEL MARTINS',
'3',
'Tela sem frequência alta, mas de ótima qualidade')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 13 Apple 6,1 iOS',
'MATHEUS HENRIQUE',
'3',
'É superior ao iPhone 12')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A54 6,4',
'RODRIGO SILVA',
'4',
'Melhor visibilidade ao ar livre')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A54 6,4',
'ANNA JULLIA',
'4',
'Pratico e eficiente')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S23 6,8',
'DALISSON MAYCON',
'4',
'Características inovadoras que o tornam uma excelente opção para qualquer tipo de utilização')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S23 6,8',
'VITOR REBOREDA',
'4',
'Ficou mais agradável de acessar, já que os dedos ficam posicionados naturalmente.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S21 6,4',
'ISABELLE BECCA',
'5',
'É um baita aparelho e conheço pessoas muito felizes com ele')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S21 6,4',
'JULIO CESAR',
'4',
'O desempenho é agradável, a tela e as câmeras são de qualidade, o carregamento super-rápido de 25 W é ótimo')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A34 6,6',
'YASMIN BECCA',
'4',
'Carrega super rápido, é ótimo')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A34 6,6',
'VITOR REBOREDA',
'4',
'Não deixa a desejar para um celular nessa faixa de preço')

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G84 6,5',
'BRENO GUSTAVO',
'3',
'Smartphone intermediário possui design moderno e excelente tela.')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G84 6,5',
'DALISSON MAYCON',
'3',
'Ultrafino e leve')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola Edge 30 Neo 6,3',
'ERICK ARAUJO',
'4',
'Câmeras de boa qualidade e estabilização óptica')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola Edge 30 Neo 6,3',
'ANNA JULLIA',
'3',
'Ultrafino e leve')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G53 6,5',
'JOAO RODIGHERO',
'3',
'Falta um refino por parte da Motorola para ser ainda melhor')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G53 6,5',
'RODRIGO SILVA',
'4',
'O Moto G53 não faz feio ao fotografar à noite e não apresenta imagens muito granuladas como ainda é comum em celulares do segmento')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G73 6,5',
'GABRIEL MARTINS',
'4',
'Ótimo desempenho em ambientes com muita ou pouca luz,')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G73 6,5',
'MATHEUS HENRIQUE',
'2',
'Não mudou muito em relação ao que a empresa utilizou nos antigos')
Go

INSERT INTO Comentarios
VALUES ( 'All in One LG Celeron',
'MATHEUS HENRIQUE',
'5',
'Ele simplesmente executa toda e qualquer tarefa ')
Go

INSERT INTO Comentarios
VALUES ( 'All in One LG Celeron',
'ANNA JULLIA',
'2',
'Processador e muito fraco já para tarefas comuns,')
Go

INSERT INTO Comentarios
VALUES ( 'Gamer Completo RGB Intel Core I5',
'ISABELLE BECCA',
'5',
'O computador é maravilhoso! ')
Go

INSERT INTO Comentarios
VALUES ( 'Gamer Completo RGB Intel Core I5',
'BRENO GUSTAVO',
'4',
'Muito rápido para realizar as tarefas')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I5',
'JULIO CESAR',
'3',
'Bom e vale o valor que paguei')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I5',
'RODRIGO SILVA',
'2',
'Não recomendo, o meu deu pau na tela em um mês de uso')
Go

INSERT INTO Comentarios
VALUES ( 'Dell Inspiron 24 All in One 13a',
'YASMIN BECCA',
'4',
'Muito bom e rápido, excelente desempenho')
Go

INSERT INTO Comentarios
VALUES ( 'Dell Inspiron 24 All in One 13a',
'GABRIEL MARTINS',
'4',
'É bonito. Está atendendo às minhas expectativas.')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I7',
'DALISSON MAYCON',
'4',
'Ótimos processadores')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I7',
'JOAO RODIGHERO',
'3',
'Veio tudo certo, porém o preço que cobram pelas peças ultrapassadas não faz o cliente ter interesse pelo produto')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab S6 Lite',
'RODRIGO SILVA',
'4',
'Boa qualidade de áudio, tela grande com boa resolução.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab S6 Lite',
'ANNA JULLIA',
'4',
'É um excelente produto, mas é importante ressaltar que outros tablets já foram lançados e que superam')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A7 Lite',
'DALISSON MAYCON',
'4',
'É um tablet compacto com bom desempenho')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A7 Lite',
'ISABELLE BECCA',
'4',
'Parceiro excepcional para trabalhar e estudar.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A8',
'VITOR REBOREDA',
'4',
'Ele tem ótimas características, como o fato de ter bastante memória RAM')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A8',
'GABRIEL MARTINS',
'4',
'Qualidade de som impressionante, bateria com longa duração')
Go

INSERT INTO Comentarios
VALUES ( 'Apple IPAD',
'MATHEUS HENRIQUE',
'5',
'Comprei para estudos e é fácil de carregar e contém todos os recursos que um estudante precisa')
Go

INSERT INTO Comentarios
VALUES ( 'Apple IPAD',
'ISABELLE BECCA',
'3',
'Modelo básico')
Go

INSERT INTO Comentarios
VALUES ( 'Acer Aspire 5',
'DALISSON MAYCON',
'4',
'É simples, funcional e tem um bom custo-benefício')
Go

INSERT INTO Comentarios
VALUES ( 'Acer Aspire 5',
'ANNA JULLIA',
'5',
'Processador excelente, uso mtas coisas ao mesmo tempo e não trava')
Go

INSERT INTO Comentarios
VALUES ( 'Positivo Duo 2 em 1 Intel',
'GABRIEL MARTINS',
'5',
'Fácil de carregar, versátil e muito prático')
Go

INSERT INTO Comentarios
VALUES ( ' Positivo Duo 2 em 1 Intel',
'VITOR REBOREDA',
'4',
'O notebook é muito bonito, compacto e tem suprido minhas necessidades. A bateria dura o necessário, a tela tem uma imagem muito boa')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Book Celeron-6305',
'RODRIGO SILVA',
'4',
'Silencioso e com boa autonomia')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Book Celeron-6305',
'ISABELLE BECCA',
'3',
'É um ótimo produto, pena que a bateria é algo que deixa a desejar')
Go

INSERT INTO Comentarios
VALUES ( 'Alienware M18 i9',
'RODRIGO SILVA',
'4',
'Impressione seus competidores com a tela de 18 polegadas')
Go

INSERT INTO Comentarios
VALUES ( 'Alienware M18 i9',
'MATHEUS HENRIQUE',
'3',
'Potente e elegante')
Go

INSERT INTO Comentarios
VALUES ( 'Asus Vivobook 15',
'VITOR REBOREDA',
'4',
'É um notebook premium ideal para quem realiza tarefas de alto desempenho no PC e precisa trabalhar de qualquer lugar.')
Go

INSERT INTO Comentarios
VALUES ( 'Asus Vivobook 15',
'ERICK ARAUJO',
'5',
'Aparelho de entrada com visual bonito e excelente custo-benefício')
Go

SELECT * FROM Comentarios




