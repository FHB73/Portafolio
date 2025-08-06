WITH lista_primer_ep AS (SELECT 
serie_id,
MIN(fecha_estreno) AS fecha_primer_ep
FROM episodios
GROUP BY serie_id)

SELECT 
	s.titulo AS 'Título de la Serie',
    e.fecha_primer_ep AS 'Fecha del Primer Episodio'
FROM series AS s
INNER JOIN lista_primer_ep AS e
ON s.serie_id = e.serie_id
ORDER BY e.fecha_primer_ep ASC


WITH lista_año_lanzamiento AS(SELECT
	año_lanzamiento AS 'Año de laznzamiento',
    COUNT(genero) AS 'Género'
FROM series
WHERE genero = 'Ciencia ficción'
GROUP BY año_lanzamiento
ORDER BY año_lanzamiento ASC)

SELECT *  FROM lista_año_lanzamiento

SELECT 
	titulo,
	año_lanzamiento,
	ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM series

SELECT
	temporada,
    titulo,
    fecha_estreno,
    ROW_NUMBER() OVER (PARTITION BY temporada ORDER BY fecha_estreno DESC) AS ranking_temporada
FROM episodios

SELECT
	temporada,
    titulo,
    rating_imdb,
	ROW_NUMBER() OVER (PARTITION BY temporada ORDER BY rating_imdb DESC) as 'Ranking IMDB'
FROM episodios
WHERE serie_id = 2

SELECT 
    titulo,
    rating_imdb,
    RANK() OVER (ORDER BY rating_imdb DESC) AS 'ranking_imdb'
FROM episodios

SELECT
	titulo,
    duracion,
    DENSE_RANK() OVER (ORDER BY duracion DESC) AS 'ranking_por_duración'
FROM episodios

SELECT
	titulo,
    descripcion
FROM episodios
WHERE descripcion REGEXP('londres')
    
    


    

