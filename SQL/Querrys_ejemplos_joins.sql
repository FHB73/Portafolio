SELECT * FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id

SELECT 
s.titulo as titulo_serie, 
e.titulo as titulo_episodio,
e.duracion as duracion
FROM episodios as e
INNER JOIN series as s
ON e.serie_id = s.serie_id
WHERE s.titulo = 'Stranger Things'

SELECT 
s.titulo as 'Título de la serie',
e.titulo as 'Título del episodio',
e.rating_imdb as 'Rating IMDB'
FROM episodios as e
INNER JOIN series as s
ON e.serie_id = s.serie_id
ORDER BY s.titulo ASC

SELECT 
s.titulo as 'Título de la serie',
e.titulo as 'Título del episodio',
e.rating_imdb as 'rating_imdb'
FROM episodios as e
LEFT JOIN series as s
ON e.serie_id = s.serie_id
WHERE  s.titulo = 'Stranger things'
ORDER BY e.rating_imdb DESC

SELECT 
s.titulo as 'Título de la serie',
e.titulo as 'Título del episodio',
e.duracion as 'Duración'
FROM episodios as e
RIGHT JOIN series as s
ON e.serie_id = s.serie_id
WHERE e.duracion >= 30
ORDER BY s.titulo 


