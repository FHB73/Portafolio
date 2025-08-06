-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB?
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.

SELECT genero ,COUNT(genero) as cantidad_generos FROM series
GROUP BY genero
ORDER BY cantidad_generos DESC

-- Esta consulta SQL nos permite ver cuántas series hay en cada género dentro de la base de datos NetflixDB. 
-- Agrupando las series por su género y contándolas, podemos identificar cuáles géneros son más prevalentes.

-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.

SELECT 
s.titulo as 'Nombre de la serie',
COUNT(episodio_id) as 'Numero de episodio',
AVG(e.rating_imdb) as IMDB
FROM series as s
INNER JOIN episodios as e
ON s.serie_id = e.serie_id
GROUP BY s.titulo
ORDER BY IMDB DESC
LIMIT 3

-- ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT 
s.titulo as 'Nombre de la serie',
SUM(e.duracion) as Duración
FROM episodios as e
LEFT JOIN series as s
ON s.serie_id = e.serie_id
WHERE s.titulo = 'Stranger Things'

