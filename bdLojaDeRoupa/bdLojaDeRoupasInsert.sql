USE bdLojaDeRoupas

INSERT tbFabricante(nomeFabricante)
VALUES ('Malwee')
	, ('Marisol')
	, ('Cia da Malha')

SELECT * FROM tbFabricante 

DELETE FROM tbFabricante
WHERE idFabricante = 1

--Deu erro na tbFabricante pois ela está sendo chave estrangeira de outras tabelas, quando vc se relaciona com outras tabelas o relacionamento fica para sempre.

UPDATE tbFabricante 
SET nomeFabricante = 'Turma da Malha'
WHERE idFabricante = 3

INSERT tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissaoFuncionario, salarioFuncionario)
VALUES ('Osamu Dazai','20','08/08/2016',1800.50)
	, ('Atsushi Nakajima','19','09/03/2015',1950.50)

SELECT * FROM tbFuncionario

INSERT tbProduto(nomeProduto, precoProduto, dataEntregaProduto, estoqueProduto, idFabricante, idFuncionario)
VALUES ('Camiseta Cinza', 49.99, '05/10/2021', 80, 1, 1)
	, ('Camiseta Preta', 49.99, '05/10/2021', 50, 1, 1)
	, ('Camiseta Azul', 49.99, '05/10/2021', 88, 1, 1)
	, ('Conjunto preto Menino', 59.94, '08/10/2021', 60, 2, 2)
	, ('Conjunto bege Menino', 95.94, '08/10/2021', 70, 2, 2)
	, ('Camiseta Menino Verde', 22.95, '08/10/2021', 50, 2, 2)
	, ('Calça Moletom Preta', 89.95, '10/10/2021', 80, 3, 1)
	, ('Pijama Inverno Masculino', 89.95, '10/10/2021', 40, 3, 2)
	, ('Bermuda Tactel Masculino', 24.95, '10/10/2021', 90, 3, 1)

UPDATE tbProduto
SET estoqueProduto = 78
WHERE idProduto = 3

UPDATE tbProduto 
SET precoProduto = 79.94
WHERE idFabricante = 2


UPDATE tbProduto 
SET precoProduto = 115.94
WHERE idProduto = 5


UPDATE tbProduto 
SET precoProduto = 42.95
WHERE idProduto = 6

SELECT * FROM tbProduto

INSERT tbCliente(nomeCliente, idadeCliente)
VALUES ('Hwang Hyundin', 22)
	, ('Bang Chan', 23)
	, ('Lee Felix', 21)
	, ('Seungmin', 22)
	, ('Changbin', 22)

SELECT * FROM tbCliente

INSERT tbVendedor(nomeVendedor)
VALUES ('João Santana')
	, ('Raquel Torres')


SELECT * FROM tbVendedor 

INSERT tbVenda(dataVenda, totalVenda, idCliente, idVendedor)
VALUES ('25/09/2021', 99.98, 1, 1)
	, ('25/09/2021', 155.88, 2, 2)
	, ('25/09/2021', 114.90, 3, 1)
	, ('25/09/2021', 179.90, 4, 2)
	, ('25/09/2021', 118.89, 5, 1)

UPDATE tbVenda
SET totalVenda = 89.982
WHERE idVenda = 1


SELECT * FROM tbVenda

INSERT tbItensVenda(quantidadeItensVenda, subTotalItensVenda , idVenda, idProduto)
VALUES (3, 99.98, 1, 1)
	, (2, 155.88, 2, 3)
	, (3, 114.90, 3, 4)
	, (1, 118.89, 4, 6)
	, (4, 179.90, 5, 5)
	, (4, 179.90, 2, 2)
	, (1, 114.90, 3, 3)
	, (2, 99.98, 1, 9)
	, (2, 114.90, 4, 5)
	, (1, 99.98, 5, 8)

DELETE FROM tbItensVenda
WHERE  idItensVenda = 2

DELETE FROM tbItensVenda
WHERE  idItensVenda = 3
	
SELECT * FROM tbItensVenda

