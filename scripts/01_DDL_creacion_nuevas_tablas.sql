    --crear la copia de la base de datos en la cual vamos a trabajar
CREATE DATABASE sistema_recargas_viajes_gonzalo_gonzalez_3b WITH TEMPLATE sistema_recargas_viajes OWNER admin;

--aca comenzamos a crear las tablas nuevas que vamos a implementar en la base de datos
-- Tabla de promociones aplicadas a recargas
CREATE TABLE promociones (
    promocion_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    porcentaje_descuento FLOAT
);

-- modificamos la tabla de recargas para incluir la columna promocion_id
-- y establecer la relación con la tabla promociones
ALTER TABLE recargas
ADD COLUMN promocion_id INT REFERENCES promociones(promocion_id);


-- Tabla para registrar cambios de estado en tarjetas
CREATE TABLE cambios_estado_tarjeta (
    cambio_id SERIAL PRIMARY KEY,
    tarjeta_id INT NOT NULL REFERENCES tarjetas(tarjeta_id),
    estado_anterior VARCHAR(50),
    estado_nuevo VARCHAR(50),
    fecha_cambio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de dispositivos de validación
CREATE TABLE dispositivos (
    dispositivo_id SERIAL PRIMARY KEY,
    tipo VARCHAR(50),
    ubicacion TEXT
);

-- Tabla intermedia para registrar validaciones de viajes
CREATE TABLE validaciones (
    validacion_id SERIAL PRIMARY KEY,
    viaje_id INT NOT NULL REFERENCES viajes(viaje_id),
    dispositivo_id INT NOT NULL REFERENCES dispositivos(dispositivo_id),
    fecha_validacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--Punto Final crear la tabla para la propuesta de mejora

CREATE TABLE reportes_tarjeta (
    reporte_id SERIAL PRIMARY KEY,
    tarjeta_id INT NOT NULL REFERENCES tarjetas(tarjeta_id),
    motivo TEXT NOT NULL,
    fecha_reporte TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'pendiente' -- otros posibles valores: 'resuelto', 'en proceso'
);


