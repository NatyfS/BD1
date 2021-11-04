CREATE DATABASE bdLojaDeRoupas

USE bdLojaDeRoupas

--DROP DATABASE bdLojaDeRoupas

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(40) NOT NULL
)

CREATE TABLE tbFuncionario(
	idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (40) NOT NULL
	, idadeFuncionario VARCHAR (3) NOT NULL
	, dataAdmissaoFuncionario SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL 
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProduto VARCHAR (35) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, dataEntregaProduto SMALLDATETIME NOT NULL
	, estoqueProduto VARCHAR (100)
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (40)
	, idadeCliente VARCHAR (3) NOT NULL
)

CREATE TABLE tbVendedor(
	idVendedor INT PRIMARY KEY IDENTITY (1,1)
	, nomeVendedor VARCHAR (40) NOT NULL
)

CREATE TABLE tbVenda (
	idVenda INT PRIMARY KEY IDENTITY (1,1)
	, dataVenda SMALLDATETIME NOT NULL
	, totalVenda SMALLMONEY NOT NULL
	, idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
	, idVendedor INT FOREIGN KEY REFERENCES tbVendedor (idVendedor)
)

CREATE TABLE tbItensVenda (
	idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	, quantidadeItensVenda VARCHAR (20)
	, subTotalItensVenda SMALLMONEY NOT NULL
	, idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	, idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)

)