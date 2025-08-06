CREATE DATABASE IF NOT EXISTS HotelDB;
USE HotelDB 

CREATE TABLE IF NOT EXISTS clientes(
	cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    movil VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL);


CREATE TABLE IF NOT EXISTS reservas(
	reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inicio DATE,
    fecha_final DATE,
    dias VARCHAR(20),
    numero_personas INT,
    cliente_id INT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
    ON DELETE SET NULL
    );
    
CREATE TABLE IF NOT EXISTS habitaciones(
	habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20),
    planta VARCHAR(20),
    letra VARCHAR(20),
    estado TINYINT,
    ocupada TINYINT,
    cliente_id INT NULL,
    reserva_id INT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
    ON DELETE SET NULL,
    FOREIGN KEY (reserva_id) REFERENCES reservas(reserva_id)
    ON DELETE SET NULL
);
    

    
    
    