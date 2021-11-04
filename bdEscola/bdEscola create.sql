CREATE DATABASE bdEscola

USE bdEscola

--DROP DATABASE bdEscola

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1)
	, nomeCurso VARCHAR(50) NOT NULL
	, cargahorariaCurso VARCHAR (6) NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	, nomeTurma VARCHAR(30) NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	, horarioTurma SMALLDATETIME NOT NULL
)

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	, nomeAluno VARCHAR (50) NOT NULL
	, dataNascimentoAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR(20) NOT NULL
	, naturalidadeAluno VARCHAR (30) NOT NULL
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	, idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)

