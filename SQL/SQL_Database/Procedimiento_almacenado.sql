DELIMITER //

CREATE PROCEDURE AgregarDepartamento(IN _nombre VARCHAR(255), IN _ubicacion VARCHAR(255), _email_jefe VARCHAR(255))
BEGIN
	START TRANSACTION;
    SAVEPOINT Prevalidacion;
    
    INSERT INTO departamentos(nombre, ubicacion, email_jefe)
    VALUES (nombre, ubicacion, email_jefe);
    
    ROLLBACK TO Prevalidacion;
END //

DELIMITER ;
