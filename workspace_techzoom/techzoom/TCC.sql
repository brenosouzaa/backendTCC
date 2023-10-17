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
'ADM',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('BRENO GUSTAVO',
'BRENO.SOUZA@GMAIL.COM',
'BSOUZA',
'ADM',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ERICK ARAUJO',
'ERICK.ARAUJO@GMAIL.COM',
'ARAUJOO',
'ADM',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('JOAO RODIGHERO ',
'JOAO.RODI@GMAIL.COM',
'JRODIGHERO',
'ADM',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('GABRIEL MARTINS',
'GABRIEEL.MARTINS@GMAIL.COM',
'GABRIELMTZ',
'USER',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('MATHEUS HENRIQUE',
'MATHEUS.HENRIQUE@GMAIL.COM',
'BOLANO',
'USER',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('RODRIGO SILVA',
'RODRIGO.SILVA@GMAIL.COM',
'RORO',
'USER',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ANNA JULLIA',
'ANNA.JU@GMAIL.COM',
'NAJU',
'USER',NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('DALISSON MAYCON',
'DALI.LOPES@GMAIL.COM',
'DALIMM',
'USER',NULL,
'ATIVO')
GO 

SELECT * FROM USUARIO
WHERE EMAIL = 'YASMIN.BECCA01@GMAIL.COM'

CREATE TABLE PRODUTO(
ID_PROD INT PRIMARY KEY IDENTITY NOT NULL,
NOME_PROD VARCHAR (100) NOT NULL,
foto VARBINARY(MAX) NULL,
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
VALUES( 'Iphone 15 Apple 6,7 iOS',
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
VALUES( 'Samsung Galaxy M53 6,7 ',
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
VALUES( 'Motorola-moto G53 6,5 ',
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
VALUES( 'Samsung Galaxy Tab S7 FE',
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
VALUES( 'Positivo Duo 2 em1 Intel',
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
NOME VARCHAR (100) NOT NULL,
AVALIAÇAO VARCHAR (5) NOT NULL,
DESCRIÇAO VARCHAR (250))
GO

INSERT INTO Comentarios
VALUES ( 'Nome Produto',
'Avaliaçao',
'Descriçao')
Go

INSERT INTO Comentarios
VALUES ( 'Nome Produto',
'Avaliaçao',
'Descriçao')
Go

INSERT INTO Comentarios
VALUES ( 'Nome Produto',
'Avaliaçao',
'Descriçao')
Go

INSERT INTO Comentarios
VALUES ( 'Nome Produto',
'Avaliaçao',
'Descriçao')
Go

INSERT INTO Comentarios
VALUES ( 'Nome Produto',
'Avaliaçao',
'Descriçao')
Go

