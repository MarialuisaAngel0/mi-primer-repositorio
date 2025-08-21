-- Crear la base de datos
CREATE DATABASE importacion_vehiculos;

-- Conectarse a la base de datos
\c importacion_vehiculos;

CREATE TABLE lote_importacion (
    id_lote SERIAL PRIMARY KEY,
    fecha_llegada DATE NOT NULL,
    pais_origen VARCHAR(100) NOT NULL
);

CREATE TABLE concesionario (
    id_concesionario SERIAL PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    persona_contacto VARCHAR(100)
);

CREATE TABLE vehiculo (
    numero_serie VARCHAR(50) PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    anio_fabricacion INT CHECK (anio_fabricacion >= 1886), -- primer auto
    velocidad_maxima NUMERIC(5,2),
    precio_declarado NUMERIC(12,2) NOT NULL,
    id_lote INT NOT NULL REFERENCES lote_importacion(id_lote) ON DELETE CASCADE,
    id_concesionario INT NOT NULL REFERENCES concesionario(id_concesionario) ON DELETE SET NULL
);