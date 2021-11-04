CREATE DATABASE bdCanil 

USE bdCanil
--DROP DATABASE bdCanil

CREATE TABLE tbCandidato(
	idCandidato INT PRIMARY KEY IDENTITY (1,1)
	,nomeCandidato VARCHAR (50) NOT NULL
	,cpfCandidato CHAR (11) NOT NULL
	,logradCandidato VARCHAR (30) NOT NULL
	,numLogradCandidato VARCHAR (5) NOT NULL
	,compCandidato VARCHAR (10)
	,bairroCandidato VARCHAR (30) NOT NULL
	,cepCandidato VARCHAR (30) NOT NULL 
	,cidadeCandidato VARCHAR (30) NOT NULL 
)
CREATE TABLE tbRaca(
	idRaca INT PRIMARY KEY IDENTITY (1,1)
	,nomeRaca VARCHAR (30) NOT NULL 
)
CREATE TABLE tbDoenca(
	idDoenca INT PRIMARY KEY IDENTITY (1,1)
	,nomeDoenca VARCHAR (30) NOT NULL
)
CREATE TABLE tbVacina(
	idVacina INT PRIMARY KEY IDENTITY (1,1)
	,nomeVacina VARCHAR (20) NOT NULL
)
CREATE TABLE tbFoneCandidato(
	idFoneCandidato INT PRIMARY KEY IDENTITY (1,1)
	,numFone VARCHAR (14) NOT NULL
	,idCandidato INT FOREIGN KEY REFERENCES tbCandidato(idCandidato)
)
CREATE TABLE tbAdocao(
	idAdocao INT PRIMARY KEY IDENTITY (1,1)
	,dataAdocao SMALLDATETIME NOT NULL
	,idCandidato INT FOREIGN KEY REFERENCES tbCandidato(idCandidato)
)
CREATE TABLE tbDog(
	idDog  INT PRIMARY KEY IDENTITY (1,1)
	,nomeDog VARCHAR (20) NOT NULL
	,idadeDog VARCHAR (15) NOT NULL 
	,estadoDog VARCHAR (30) NOT NULL 
	,idRaca INT FOREIGN KEY REFERENCES tbRaca(idRaca)
)
CREATE TABLE tbAdocaoDog(
	idAdocaoDog INT PRIMARY KEY IDENTITY (1,1)
	,idAdocao INT FOREIGN KEY REFERENCES tbAdocao(idadocao)
	,idDog INT FOREIGN KEY REFERENCES tbDog(idDog)
)

CREATE TABLE tbProntuario(
	idProntuario INT PRIMARY KEY IDENTITY (1,1)
	,idDog INT FOREIGN KEY REFERENCES tbDog(idDog)
	,idDoenca INT FOREIGN KEY REFERENCES tbDoenca(idDoenca)
)
CREATE TABLE tbCarteira(
	idCarteira INT PRIMARY KEY IDENTITY (1,1)
	,dataAplCarteira SMALLDATETIME NOT NULL
	,idDog INT FOREIGN KEY REFERENCES tbDog(idDog)
	,idVacina INT FOREIGN KEY REFERENCES tbVacina(idVacina)
)