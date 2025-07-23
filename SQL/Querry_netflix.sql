'Pregunta 1'
'¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?'

SELECT actores.nombre,count(actuaciones.actor_id) as número_de_actuaciones 
FROM actores, actuaciones 
WHERE actores.actor_id = actuaciones.actor_id
GROUP BY actor_id
ORDER BY número_de_actuaciones DESC

'Pregunta 2'
'Cual es la serie con mejor rating promedio segun imdb?'

SELECT series.titulo, avg(episodios.rating_imdb) as IMDB
FROM series, episodios
WHERE series.serie_id = episodios.serie_id
GROUP BY series.serie_id
ORDER BY IMDB DESC

'Pregunta 3'
'¿Cual es el episodio con la duración más larga?'

SELECT series.titulo, episodios.episodio_id, episodios.titulo, episodios.duracion
FROM series, episodios
WHERE series.serie_id = episodios.serie_id
GROUP BY series.titulo, episodios.episodio_id, episodios.titulo
ORDER BY duracion DESC
