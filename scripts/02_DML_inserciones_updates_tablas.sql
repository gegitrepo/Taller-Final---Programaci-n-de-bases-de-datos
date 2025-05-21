-- Las siguientes on las inserciones o actualizacione de los datos ya existentes en las tablas
-- para poder eralizar consultas y pruebas de la base de datos.


-- Inserciones para tabla promociones
INSERT INTO promociones (nombre, descripcion, porcentaje_descuento)
VALUES ('BONUS 10%', 'Recibe un 10% adicional en tu recarga', 10.0);

INSERT INTO promociones (nombre, descripcion, porcentaje_descuento)
VALUES ('Descuento Estudiante', 'Descuento exclusivo para estudiantes', 15.0);

INSERT INTO promociones (nombre, descripcion, porcentaje_descuento)
VALUES ('Bonus Madrugador', 'Recarga antes de las 9am y recibe un bonus', 5.0);

INSERT INTO promociones (nombre, descripcion, porcentaje_descuento)
VALUES ('Recarga Plus', 'Beneficio por recargar más de $50.000', 10.0);

INSERT INTO promociones (nombre, descripcion, porcentaje_descuento)
VALUES ('Bonus De Navidad', 'Beneficio por recargar más de $20.000 en diciembre', 20.0);

-- Inserciones para tabla dispositivos
INSERT INTO dispositivos (tipo, ubicacion) 
VALUES ('Torniquete', 'Estación Central - Entrada 1');

INSERT INTO dispositivos (tipo, ubicacion) 
VALUES ('Validador Móvil', 'Inspector Ruta 5');

INSERT INTO dispositivos (tipo, ubicacion) 
VALUES ('Torniquete', 'Estación Sur - Andén 2');

INSERT INTO dispositivos (tipo, ubicacion) 
VALUES ('Validador Bus', 'Bus Línea 21 - Unidad 45');

INSERT INTO dispositivos (tipo, ubicacion) 
VALUES ('Dispositivo Portátil', 'Operativo Especial Zona Norte');

select * from viajes;

-- Inserciones para tabla cambios_estado_tarjeta
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (1, 'inactiva', 'activa', '2024-10-02 16:28:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (1, 'activa', 'bloqueada', '2024-10-24 11:45:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (1, 'bloqueada', 'activa', '2024-12-22 10:42:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (1, 'activa', 'inactiva', '2024-07-01 11:11:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (1, 'inactiva', 'suspendida', '2024-05-27 12:51:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (2, 'suspendida', 'activa', '2024-12-25 14:02:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (2, 'activa', 'inactiva', '2025-03-06 04:43:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (2, 'inactiva', 'activa', '2025-01-17 04:01:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (2, 'activa', 'inactiva', '2025-05-09 00:52:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (2, 'inactiva', 'suspendida', '2024-06-26 18:38:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (3, 'activa', 'suspendida', '2024-12-09 15:57:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (3, 'suspendida', 'bloqueada', '2024-12-29 06:35:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (3, 'bloqueada', 'activa', '2024-10-07 01:18:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (3, 'activa', 'suspendida', '2024-07-04 10:33:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (3, 'suspendida', 'bloqueada', '2024-08-07 01:18:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (4, 'activa', 'inactiva', '2025-04-05 21:03:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (4, 'inactiva', 'activa', '2024-08-17 07:29:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (4, 'activa', 'suspendida', '2025-01-24 13:15:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (4, 'suspendida', 'bloqueada', '2024-11-25 09:43:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (4, 'bloqueada', 'suspendida', '2024-06-17 04:43:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (5, 'bloqueada', 'inactiva', '2025-05-10 06:14:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (5, 'inactiva', 'bloqueada', '2024-12-04 08:02:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (5, 'bloqueada', 'inactiva', '2025-03-05 04:29:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (5, 'inactiva', 'suspendida', '2024-09-27 05:35:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (5, 'suspendida', 'inactiva', '2024-12-31 12:45:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (6, 'suspendida', 'inactiva', '2024-10-04 21:29:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (6, 'inactiva', 'bloqueada', '2024-06-23 08:15:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (6, 'bloqueada', 'activa', '2025-03-25 00:54:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (6, 'activa', 'bloqueada', '2025-02-11 05:36:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (6, 'bloqueada', 'inactiva', '2025-04-23 03:04:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (7, 'bloqueada', 'suspendida', '2025-02-01 10:06:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (7, 'suspendida', 'bloqueada', '2024-06-24 08:42:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (7, 'bloqueada', 'activa', '2025-02-14 16:00:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (7, 'activa', 'bloqueada', '2024-11-02 10:23:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (7, 'bloqueada', 'activa', '2025-04-01 20:10:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (8, 'inactiva', 'activa', '2024-12-09 06:41:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (8, 'activa', 'bloqueada', '2025-03-19 05:29:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (8, 'bloqueada', 'activa', '2024-10-29 22:36:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (8, 'activa', 'suspendida', '2024-10-09 12:36:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (8, 'suspendida', 'inactiva', '2025-04-26 17:43:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (9, 'activa', 'bloqueada', '2025-04-30 02:24:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (9, 'bloqueada', 'activa', '2025-03-10 17:29:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (9, 'activa', 'bloqueada', '2024-06-23 10:24:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (9, 'bloqueada', 'inactiva', '2024-12-16 10:01:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (9, 'inactiva', 'bloqueada', '2025-04-27 01:55:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (10, 'bloqueada', 'inactiva', '2024-12-18 02:00:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (10, 'inactiva', 'bloqueada', '2025-02-05 18:45:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (10, 'bloqueada', 'activa', '2024-07-08 00:19:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (10, 'activa', 'inactiva', '2024-11-23 03:32:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (10, 'inactiva', 'bloqueada', '2025-04-16 20:35:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (11, 'activa', 'suspendida', '2025-01-16 12:43:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (11, 'suspendida', 'bloqueada', '2024-10-21 20:31:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (11, 'bloqueada', 'suspendida', '2024-08-25 08:38:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (11, 'suspendida', 'inactiva', '2024-07-01 21:52:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (11, 'inactiva', 'activa', '2025-01-14 02:53:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (12, 'activa', 'inactiva', '2024-06-18 16:23:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (12, 'inactiva', 'bloqueada', '2024-11-13 20:42:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (12, 'bloqueada', 'inactiva', '2024-05-28 18:33:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (12, 'inactiva', 'bloqueada', '2024-10-04 19:28:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (12, 'bloqueada', 'suspendida', '2025-05-19 08:20:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (13, 'inactiva', 'bloqueada', '2024-09-25 11:32:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (13, 'bloqueada', 'activa', '2025-02-11 15:41:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (13, 'activa', 'bloqueada', '2024-08-10 03:12:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (13, 'bloqueada', 'inactiva', '2024-07-28 13:00:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (13, 'inactiva', 'bloqueada', '2024-11-10 12:40:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (14, 'bloqueada', 'activa', '2024-07-12 08:54:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (14, 'activa', 'suspendida', '2024-11-15 05:49:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (14, 'suspendida', 'activa', '2024-07-07 12:20:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (14, 'activa', 'bloqueada', '2025-01-17 02:04:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (14, 'bloqueada', 'activa', '2024-07-03 04:24:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (15, 'suspendida', 'inactiva', '2025-01-24 20:36:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (15, 'inactiva', 'suspendida', '2025-05-10 02:14:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (15, 'suspendida', 'inactiva', '2024-10-24 23:50:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (15, 'inactiva', 'activa', '2025-04-28 00:38:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (15, 'activa', 'suspendida', '2025-04-19 23:45:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (16, 'inactiva', 'bloqueada', '2024-11-08 07:08:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (16, 'bloqueada', 'inactiva', '2024-11-17 01:48:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (16, 'inactiva', 'bloqueada', '2025-02-02 06:51:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (16, 'bloqueada', 'activa', '2024-06-03 00:20:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (16, 'activa', 'inactiva', '2024-05-23 03:35:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (17, 'inactiva', 'bloqueada', '2025-01-19 18:46:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (17, 'bloqueada', 'suspendida', '2025-03-23 21:41:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (17, 'suspendida', 'activa', '2024-10-03 12:17:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (17, 'activa', 'suspendida', '2025-04-08 04:09:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (17, 'suspendida', 'bloqueada', '2025-03-24 02:33:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (18, 'activa', 'bloqueada', '2024-09-18 17:22:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (18, 'bloqueada', 'suspendida', '2025-03-28 17:11:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (18, 'suspendida', 'bloqueada', '2025-01-20 11:39:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (18, 'bloqueada', 'inactiva', '2024-11-24 09:11:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (18, 'inactiva', 'activa', '2025-05-03 12:28:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (19, 'inactiva', 'suspendida', '2025-04-07 18:56:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (19, 'suspendida', 'activa', '2024-12-27 19:11:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (19, 'activa', 'inactiva', '2024-07-18 20:47:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (19, 'inactiva', 'suspendida', '2024-05-29 20:10:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (19, 'suspendida', 'inactiva', '2024-09-14 18:51:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (20, 'bloqueada', 'activa', '2024-06-23 19:18:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (20, 'activa', 'bloqueada', '2024-12-12 02:40:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (20, 'bloqueada', 'suspendida', '2024-11-12 19:04:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (20, 'suspendida', 'activa', '2024-08-03 01:04:00');
INSERT INTO cambios_estado_tarjeta (tarjeta_id, estado_anterior, estado_nuevo, fecha_cambio) VALUES (20, 'activa', 'suspendida', '2025-02-13 16:52:00');

-- Inserciones para tabla validaciones
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (1, 4, '2025-02-01 15:28:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (1, 2, '2025-03-25 11:44:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (1, 2, '2025-01-25 04:56:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (1, 1, '2025-04-25 06:57:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (1, 5, '2025-04-02 05:55:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (2, 2, '2025-02-13 02:28:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (2, 3, '2025-03-06 10:03:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (2, 3, '2025-02-14 03:06:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (2, 3, '2025-03-15 13:26:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (2, 5, '2025-04-02 03:57:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (3, 4, '2025-02-11 18:25:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (3, 2, '2025-04-25 08:33:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (3, 4, '2025-03-27 15:35:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (3, 4, '2025-04-11 05:24:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (3, 4, '2025-04-11 03:54:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (4, 3, '2025-02-12 14:08:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (4, 1, '2025-02-19 00:37:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (4, 4, '2025-01-30 16:39:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (4, 2, '2025-03-25 19:46:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (4, 5, '2025-02-19 17:11:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (5, 5, '2025-03-24 21:09:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (5, 4, '2025-03-28 01:39:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (5, 2, '2025-03-24 12:11:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (5, 2, '2025-02-11 15:44:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (5, 2, '2025-01-22 07:46:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (6, 2, '2025-02-02 23:22:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (6, 3, '2025-03-25 11:57:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (6, 1, '2025-02-19 22:34:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (6, 4, '2025-04-28 15:26:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (6, 3, '2025-03-20 07:21:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (7, 3, '2025-03-02 01:46:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (7, 5, '2025-02-14 18:09:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (7, 3, '2025-04-07 07:14:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (7, 3, '2025-04-10 01:53:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (7, 2, '2025-01-29 04:09:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (8, 1, '2025-04-16 11:55:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (8, 5, '2025-01-06 17:05:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (8, 1, '2025-01-19 18:28:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (8, 2, '2025-01-02 04:04:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (8, 1, '2025-03-10 13:41:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (9, 3, '2025-01-20 07:26:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (9, 5, '2025-04-03 16:04:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (9, 5, '2025-03-26 19:37:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (9, 3, '2025-03-16 14:31:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (9, 1, '2025-02-09 11:16:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (10, 2, '2025-03-19 22:05:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (10, 4, '2025-03-02 10:24:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (10, 5, '2025-04-02 14:50:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (10, 3, '2025-03-28 05:45:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (10, 1, '2025-02-05 08:51:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (11, 1, '2025-02-17 04:55:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (11, 2, '2025-02-16 19:05:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (11, 5, '2025-01-13 20:18:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (11, 3, '2025-02-19 21:42:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (11, 5, '2025-03-18 06:56:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (12, 1, '2025-01-16 06:09:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (12, 1, '2025-04-06 19:56:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (12, 2, '2025-02-11 02:51:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (12, 2, '2025-01-20 12:37:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (12, 3, '2025-03-23 23:50:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (13, 1, '2025-05-01 07:12:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (13, 2, '2025-04-12 11:44:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (13, 2, '2025-04-05 18:52:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (13, 2, '2025-03-25 13:04:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (13, 4, '2025-01-19 02:21:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (14, 2, '2025-03-05 06:33:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (14, 2, '2025-03-09 12:55:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (14, 1, '2025-01-09 06:21:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (14, 3, '2025-02-24 04:30:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (14, 4, '2025-03-17 15:40:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (15, 1, '2025-03-03 22:46:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (15, 2, '2025-01-05 12:28:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (15, 1, '2025-03-11 04:58:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (15, 2, '2025-04-17 00:29:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (15, 4, '2025-05-01 19:48:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (16, 5, '2025-04-27 04:39:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (16, 4, '2025-03-23 19:03:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (16, 4, '2025-02-13 23:49:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (16, 3, '2025-01-03 21:30:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (16, 1, '2025-02-12 12:10:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (17, 4, '2025-01-10 19:23:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (17, 3, '2025-04-01 10:57:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (17, 2, '2025-02-18 10:19:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (17, 2, '2025-01-05 21:57:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (17, 3, '2025-04-15 10:27:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (18, 5, '2025-02-06 05:50:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (18, 5, '2025-01-03 10:58:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (18, 3, '2025-01-08 08:29:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (18, 5, '2025-02-14 18:51:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (18, 5, '2025-01-15 09:07:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (19, 5, '2025-03-20 18:06:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (19, 5, '2025-04-03 19:17:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (19, 3, '2025-01-10 17:08:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (19, 3, '2025-01-10 10:43:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (19, 3, '2025-04-21 18:10:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (20, 2, '2025-03-01 03:11:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (20, 4, '2025-01-18 21:34:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (20, 4, '2025-04-16 15:09:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (20, 5, '2025-02-01 18:45:00');
INSERT INTO validaciones (viaje_id, dispositivo_id, fecha_validacion) VALUES (20, 5, '2025-03-31 07:40:00');

--Asignar promociones a registros reales para trabajar aoc la tabla promociones

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 1;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 2;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 3;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 4;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 5;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 6;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 7;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 8;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 9;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 10;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 11;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 12;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 13;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 14;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 15;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 16;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 17;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 18;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 19;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 20;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 21;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 22;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 23;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 24;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 25;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 26;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 27;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 28;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 29;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 30;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 31;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 32;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 33;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 34;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 35;

UPDATE recargas SET promocion_id = 1 WHERE recarga_id = 36;
UPDATE recargas SET promocion_id = 2 WHERE recarga_id = 37;
UPDATE recargas SET promocion_id = 3 WHERE recarga_id = 38;
UPDATE recargas SET promocion_id = 4 WHERE recarga_id = 39;
UPDATE recargas SET promocion_id = 5 WHERE recarga_id = 40;

-- Inserciones para tabla reportes_tarjeta

INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (1, 'deterioro', '2025-03-12 08:07:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (2, 'pérdida', '2025-02-01 16:00:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (3, 'pérdida', '2024-08-26 16:18:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (4, 'pérdida', '2025-03-03 02:48:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (5, 'pérdida', '2024-06-24 23:38:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (6, 'otro', '2024-12-31 09:05:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (7, 'robo', '2024-09-07 21:09:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (8, 'otro', '2024-11-05 02:14:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (9, 'robo', '2024-11-11 14:29:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (10, 'deterioro', '2025-01-22 15:02:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (11, 'robo', '2025-04-03 13:48:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (12, 'otro', '2024-09-25 10:17:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (13, 'robo', '2024-09-04 11:02:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (14, 'pérdida', '2024-07-11 08:37:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (15, 'pérdida', '2025-04-01 19:27:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (16, 'pérdida', '2024-08-04 11:19:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (17, 'pérdida', '2024-10-02 16:11:00', 'resuelto');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (18, 'robo', '2024-05-30 23:09:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (19, 'robo', '2025-03-14 14:50:00', 'pendiente');
INSERT INTO reportes_tarjeta (tarjeta_id, motivo, fecha_reporte, estado) VALUES (20, 'pérdida', '2024-07-28 07:49:00', 'resuelto');
