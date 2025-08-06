CREATE VIEW VistaEmpleadoProyectos AS
SELECT 
	e.nombre AS 'Nombre',
    e.apellido AS 'Apellido',
    d.nombre AS 'Departamento'
FROM empleados AS e
LEFT JOIN departamentos AS d
ON e.depto_id = d.depto_id 
