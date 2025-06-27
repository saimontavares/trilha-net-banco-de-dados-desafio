-- 1
SELECT Nome, Ano
FROM Filmes;

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome='De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano=1997;

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano>2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao>100 AND Duracao<150
ORDER BY Duracao;

--7
SELECT Ano, COUNT(Ano)
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC;

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero='M';

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome;

--10
SELECT Nome, Genero
FROM Filmes, (FilmesGenero INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Filmes.Id = FilmesGenero.IdFilme;

--11
SELECT Nome, Genero
FROM Filmes, (FilmesGenero INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Filmes.Id = FilmesGenero.IdFilme AND Genero = 'Mistério';

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM 
	(Filmes INNER JOIN ElencoFilme ON Filmes.Id = IdFilme)
		INNER JOIN
		Atores ON IdAtor = Atores.Id;