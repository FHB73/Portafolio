SELECT 
	series.titulo AS 'Titulo de la serie',
    series.año_lanzamiento AS 'Año de lanzamiento',
    series.genero AS 'Género',
    AVG(episodios.rating_imdb) AS 'Rating Promedio IMDB'
FROM
	series
JOIN
	episodios ON Series.serie_id = Episodios.serie_id
WHERE
	series.genero IN (SELECT DISTINCT genero,
						COUNT(genero) AS 'Cantidad de series'
						FROM series
						GROUP BY genero
						ORDER BY COUNT(genero) DESC
						LIMIT 3)

GROUP BY
	Series.series_id
ORDER BY
	'Rating promedio IMDB' DESC
