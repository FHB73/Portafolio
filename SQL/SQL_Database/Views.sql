CREATE VIEW VistaEmpleadosTecnologia AS
SELECT nombre, apellido, email
FROM empleados
WHERE depto_id = 1;

SELECT * FROM VistaEmpleadosTecnologia 