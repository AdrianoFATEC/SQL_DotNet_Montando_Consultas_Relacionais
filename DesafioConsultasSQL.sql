-- 1 - Obter o título e o ano dos filmes
SELECT Titulo, Ano FROM Filmes;

-- 2 - Obter o título e o ano dos filmes, ordenados em ordem crescente por ano
SELECT 
    Titulo, Ano, Duracao 
FROM 
    Filmes 
ORDER BY Ano ASC;

-- 3 - Obter informações do filme "De Volta para o Futuro", incluindo título, ano e duração
SELECT 
    Titulo, Ano, Duracao 
FROM 
    Filmes
WHERE Titulo = 'De Volta para o Futuro';

-- 4 - Listar filmes lançados no ano de 1997
SELECT 
    Titulo, Ano, Duracao 
FROM 
    Filmes
WHERE Ano = 1997;

-- 5 - Listar filmes lançados após o ano 2000
SELECT 
    Titulo, Ano, Duracao 
FROM 
    Filmes
WHERE Ano > 2000;

-- 6 - Obter filmes com duração entre 100 e 150 minutos, ordenados por duração em ordem crescente
SELECT 
    Titulo, Ano, Duracao 
FROM 
    Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao ASC;

-- 7 - Contar o número de filmes lançados a cada ano, ordenados pela soma da duração em ordem decrescente
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM
    Filmes
GROUP BY
    Ano
ORDER BY 
    SUM(Duracao) DESC;

-- 8 - Obter atores do gênero masculino, retornando o primeiro nome e o sobrenome
SELECT
    Id, PrimeiroNome, UltimoNome
FROM
    Atores
WHERE
    Genero = 'M';

-- 9 - Obter atrizes, retornando o primeiro nome e o sobrenome, ordenando pelo primeiro nome
SELECT
    Id, PrimeiroNome, UltimoNome
FROM
    Atores
WHERE
    Genero = 'F'
ORDER BY
    PrimeiroNome;

-- 10 - Obter o título do filme e o gênero
SELECT
    Filmes.Titulo, Generos.Descricao AS Genero
FROM
    Filmes
INNER JOIN
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11 - Obter o título do filme e o gênero "Mistério"
SELECT
    Filmes.Titulo, Generos.Descricao AS Genero
FROM
    Filmes
INNER JOIN
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Descricao = 'Mistério';

-- 12 - Obter o título do filme e os atores, incluindo o primeiro nome, o sobrenome e o papel desempenhado
SELECT
    Filmes.Titulo, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM
    Filmes
INNER JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;

