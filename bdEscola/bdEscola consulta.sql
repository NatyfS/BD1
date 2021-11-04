USE bdEscola

--1
SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG', dataNascimentoAluno AS 'Data de Nascimento' 
FROM tbAluno​
WHERE naturalidadeAluno LIKE '%SP%'

--2
SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG' 
FROM tbAluno​
WHERE nomeAluno LIKE 'P%'

--3
SELECT nomeCurso AS 'Nome dos Cursos' 
FROM tbCurso
WHERE cargahorariaCurso >= 2000

--4
SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG' 
FROM tbAluno​
WHERE nomeAluno LIKE '%Silva%'

--5
SELECT nomeAluno AS 'Nome Aluno', dataNascimentoAluno AS 'Data de Nascimento' 
FROM tbAluno​
WHERE MONTH (dataNascimentoAluno) = 03

--6
SELECT idAluno AS 'Código do Aluno', dataMatricula AS 'Data da Matricula' 
FROM tbMatricula
WHERE MONTH (dataMatricula) = 05

--7
SELECT idAluno AS 'Código do Aluno'  
FROM tbMatricula
WHERE idTurma = 1

--8
SELECT idAluno AS 'Código do Aluno'  
FROM tbMatricula
WHERE idTurma = 2

--9
SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento', rgAluno AS 'RG do Aluno', naturalidadeAluno AS 'Naturalidade do Aluno' 
FROM tbAluno

--10
SELECT nomeTurma AS 'Nome Turma', idCurso AS 'Código do Curso', horarioTurma AS 'Horario turma' 
FROM tbTurma

