USE bdRh

INSERT tbDepto(nomeDepto)
VALUES ('Comercial')
	, ('Diretoria')
	, ('Rh')
	, ('Tecnologia da Informação')
	, ('Vendas')

SELECT * FROM tbDepto

INSERT tbProjeto(nomeProjeto, cargaHorariaProjeto)
VALUES ('Adoção de softwares de gestão','40:00')
	, ('Definição de cargos e funções','40:00')
	, ('Oferecimento de planos de carreira','40:00')
	, ('Revisão da carteira de benefícios da empresa','40:00')
	, ('Programas de integração de novos colaboradores','40:00')

SELECT * FROM tbProjeto


INSERT tbFuncionario(nomeFuncionario, cpfFuncionario, rgFuncionario, 
	dtNasctoFuncionario, salarioFuncionario, idDepto)
VALUES ('Clara Maria Gomes', '564.098.678.90', '123456',
	'20/09/2001', 2000.50, 2)
	, ('Henrique Silvestre De Sousa', '456.275.863.98', '785362',
	'25/01/2004', 2750.50, 1)
	, ('Gabriel Filho Junior', '456.684.053.34', '286496',
	'29/02/2000', 2300.40, 3)
	, ('Silvia Santos Alburquerque', '847.556.452.64', '678439',
	'30/03/1979', 5800.40, 4)
	, ('Marcos Henrick Langa', '432.564.098.87', '985373',
	'08/09/1960', 2500.00 , 5)

SELECT * FROM tbFuncionario

INSERT tbFuncionarioProjeto(qtdeHoras, idFuncionario, idProjeto)
VALUES ('08:00', 1, 1)
	, ('08:00', 2, 2)
	, ('08:00', 3, 3)
	, ('08:00', 4, 4)
	, ('08:00', 5, 5)

SELECT * FROM  tbFuncionarioProjeto
	
INSERT tbFoneFuncionario(numFone, idFuncionario)
VALUES ('97786.4532', 2)
	, ('93472.2345', 1)
	, ('98769.6543', 3)
	, ('95574.6543', 5)
	, ('96296.6543', 4)

SELECT * FROM  tbFoneFuncionario

INSERT tbConjuge(nomeConjuge, idFuncionario)
VALUES ('Enzo Carlos Gomes',1)
	, ('Valentina Gomes De Souza',2)
	, ('Maria Eduarda Junior',3)
	, ('Dazai Kuroko Alburquerque',4)
	, ('Lalisa Manoban Langa',5)

SELECT * FROM  tbConjuge

INSERT tbDependente(nomeDependente, dtNasctoDependente, idFuncionario)
VALUES ('Antonieta Maria Gomes', '26/06/1970', 1)
	, ('Sthefane Carla De Sousa', '26/06/1969', 2)
	, ('Shangai Yamaha Junior', '26/06/1996', 3)
	, ('Seungmin Yoshio Alburquerque', '26/06/1971', 4)
	, ('Lee Felix Chan ', '26/06/1980', 5)

SELECT * FROM  tbDependente
	
