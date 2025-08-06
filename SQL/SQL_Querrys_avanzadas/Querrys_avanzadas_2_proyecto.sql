WITH mejores_episodios AS (
	SELECT 
		serie_id,
        COUNT(episodio_id) AS numero_episodios,
        AVG(rating_imdb) AS calidad_episodios
	FROM episodios
    GROUP BY serie_id)

SELECT 
	s.titulo AS 'Título',
    m.numero_episodios AS 'Número de episodios',
    m.calidad_episodios AS 'Calidad de los episodios'
FROM series AS s
INNER JOIN mejores_episodios AS m
ON s.serie_id = m.serie_id
ORDER BY m.calidad_episodios DESC