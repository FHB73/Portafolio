SELECT titulo FROM series
WHERE serie_id IN(SELECT serie_id FROM episodios GROUP BY serie_id HAVING AVG(rating_imdb) >= 8)

SELECT 
	nombre, 
    IF(YEAR(fecha_nacimiento) > 2000, 'Young', 'Old') as 'Categoría actores'
FROM actores


SELECT 
titulo,
CASE 
	WHEN año_lanzamiento < 2010 THEN "Antigua"
    ELSE "Reciente"
    END AS 'Antigüedad'
FROM series

SELECT 
titulo,
CASE 
    WHEN genero = 'Drama' THEN 'Dramático'
    WHEN genero = 'Comedia' THEN 'Divertido'
    ELSE 'Otro'
    END AS 'Categoría de Género'
FROM series

SELECT 
    titulo,
    CAST(año_lanzamiento as VARCHAR) as 'Año de Lanzamiento'
FROM series

SELECT 
	fecha_estreno, 
	YEAR(fecha_estreno), 
    MONTH(fecha_estreno), 
    DAY(fecha_estreno)
FROM episodios

SELECT 
	fecha_estreno,
	DATE_ADD(fecha_estreno, INTERVAL 30 DAY)
FROM episodios

SELECT 
	*,
    DATEDIFF(CURDATE(), fecha_estreno) 
AS 'Días desde el estreno'
FROM episodios
	
SELECT 
	titulo,
    UPPER(titulo) AS 'Título en mayusculas'
FROM series

SELECT
	titulo,
    LOWER(titulo) AS 'Título en minusculas'
FROM series

SELECT
	titulo,
    CONCAT(titulo, ' (',año_lanzamiento,')') AS 'Título del año' 
FROM series

SELECT
	titulo,
    duracion / 60.0 AS 'Horas completas',
    ROUND(duracion / 60.0, 0) AS 'Horas completas redondeadas'
FROM episodios

SELECT 
	titulo,
    duracion,
    CEILING(duracion / 60.0) AS 'Horas completas'
FROM episodios

SELECT
	titulo,
    duracion,
    FLOOR(duracion / 60.0) AS 'Horas completas'
FROM episodios

SELECT 
    CEILING(rating_imdb) as 'rating_redondeado'
FROM episodios