
-- aca estan las consultas que se van a realizar para obtener la informacion necesaria

-- ¿que usuarios y que numero de tarjeta tienen actualmente tarjetas inactivas, y cuando se realizo el cambio de estado?

SELECT DISTINCT ON (c.tarjeta_id)
    u.nombre,
    u.apellido,
    t.tarjeta_id,
    c.estado_anterior,
    c.estado_nuevo,
    c.fecha_cambio
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
JOIN usuarios u ON t.usuario_id = u.usuario_id
WHERE c.estado_nuevo = 'inactiva'
ORDER BY c.tarjeta_id, c.fecha_cambio DESC;

-- ¿que usuarios y cual tarjeta ha tenido mas cambios de estado?

SELECT 
    u.nombre,
    u.apellido,
    t.tarjeta_id,	
    COUNT(*) AS total_cambios
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
JOIN usuarios u ON t.usuario_id = u.usuario_id
GROUP BY u.nombre, u.apellido, t.tarjeta_id
ORDER BY total_cambios DESC
LIMIT 10;

--¿Cuántas veces ha cambiado de estado cada tarjeta?

SELECT c.tarjeta_id, COUNT(*) AS cambios
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
GROUP BY c.tarjeta_id;

--¿Qué tarjetas cambiaron de estado en el último mes?

SELECT t.tarjeta_id, c.estado_anterior, c.estado_nuevo, c.fecha_cambio
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
WHERE c.fecha_cambio >= CURRENT_DATE - INTERVAL '1 month';

--¿Qué usuarios han tenido tarjetas que pasaron por estado “bloqueada”?

SELECT DISTINCT u.usuario_id, u.nombre, u.apellido
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
JOIN usuarios u ON t.usuario_id = u.usuario_id
WHERE c.estado_nuevo = 'bloqueada';

--¿Qué usuarios tienen más tarjetas que hayan pasado por el estado "inactiva" al menos una vez?

SELECT u.usuario_id, u.nombre, COUNT(DISTINCT t.tarjeta_id) AS tarjetas_inactivas
FROM cambios_estado_tarjeta c
JOIN tarjetas t ON c.tarjeta_id = t.tarjeta_id
JOIN usuarios u ON t.usuario_id = u.usuario_id
WHERE c.estado_nuevo = 'inactiva'
GROUP BY u.usuario_id, u.nombre
ORDER BY tarjetas_inactivas DESC;



--¿Qué dispositivo ha realizado más validaciones?

SELECT d.dispositivo_id, d.tipo, COUNT(*) AS total_validaciones
FROM validaciones v
JOIN dispositivos d ON v.dispositivo_id = d.dispositivo_id
GROUP BY d.dispositivo_id, d.tipo
ORDER BY total_validaciones DESC
LIMIT 1;

--¿Cuántas validaciones se hicieron en total por tipo de dispositivo?

SELECT d.tipo, COUNT(*) AS total_validaciones
FROM validaciones v
JOIN dispositivos d ON v.dispositivo_id = d.dispositivo_id
GROUP BY d.tipo
ORDER BY total_validaciones DESC;

--¿Cuántas validaciones hizo cada dispositivo, incluyendo el total de viajes asociados?

SELECT 
    d.dispositivo_id,
    d.tipo,
    COUNT(v.validacion_id) AS total_validaciones,
    COUNT(DISTINCT vj.viaje_id) AS total_viajes
FROM dispositivos d
JOIN validaciones v ON d.dispositivo_id = v.dispositivo_id
JOIN viajes vj ON v.viaje_id = vj.viaje_id
GROUP BY d.dispositivo_id, d.tipo
ORDER BY total_validaciones DESC;

--¿Cuál fue la fecha de validación más reciente por cada tipo de dispositivo y estación de abordaje?

SELECT 
    d.tipo,
    vj.estacion_abordaje_id,
    MAX(v.fecha_validacion) AS ultima_validacion
FROM validaciones v
JOIN dispositivos d ON v.dispositivo_id = d.dispositivo_id
JOIN viajes vj ON v.viaje_id = vj.viaje_id
GROUP BY d.tipo, vj.estacion_abordaje_id
ORDER BY ultima_validacion DESC;

-- ¿Cuántos viajes por tipo de dispositivo ocurrieron en cada mes del año 2025?

SELECT 
    d.tipo,
    EXTRACT(MONTH FROM v.fecha_validacion) AS mes,
    COUNT(*) AS total
FROM validaciones v
JOIN dispositivos d ON v.dispositivo_id = d.dispositivo_id
JOIN viajes vj ON v.viaje_id = vj.viaje_id
WHERE EXTRACT(YEAR FROM v.fecha_validacion) = 2025
GROUP BY d.tipo, mes
ORDER BY d.tipo, mes;

--¿Cuál es el monto total recargado por cada tipo de promoción?

SELECT 
    p.nombre AS promocion,
    SUM(r.monto) AS total_recargado
FROM recargas r
JOIN promociones p ON r.promocion_id = p.promocion_id
GROUP BY p.nombre
ORDER BY total_recargado DESC;

--¿Qué puntos de recarga han registrado más recargas con promociones activas?

SELECT 
    pr.direccion,
    COUNT(*) AS total_con_promocion
FROM recargas r
JOIN promociones p ON r.promocion_id = p.promocion_id
JOIN puntos_recarga pr ON r.punto_recarga_id = pr.punto_recarga_id
GROUP BY pr.direccion
ORDER BY total_con_promocion DESC;

--¿Qué usuarios han recargado más dinero usando promociones del tipo "bonus"?

SELECT 
    u.nombre,
    u.apellido,
    SUM(r.monto) AS total_recargado
FROM recargas r
JOIN promociones p ON r.promocion_id = p.promocion_id
JOIN tarjetas t ON r.tarjeta_id = t.tarjeta_id
JOIN usuarios u ON t.usuario_id = u.usuario_id
WHERE p.nombre ILIKE '%bonus%'
GROUP BY u.usuario_id, u.nombre, u.apellido
ORDER BY total_recargado DESC;

--¿Cuántas recargas por localidad con promociones activas?

SELECT 
    l.nombre AS localidad,
    COUNT(*) AS recargas_con_promocion
FROM recargas r
JOIN promociones p ON r.promocion_id = p.promocion_id
JOIN puntos_recarga pr ON r.punto_recarga_id = pr.punto_recarga_id
JOIN localidades l ON pr.localidad_id = l.localidad_id
GROUP BY l.nombre
ORDER BY recargas_con_promocion DESC;


-- ¿Que usuarios que han reportado más tarjetas?

SELECT 
    usuarios.usuario_id,
    usuarios.nombre,
    usuarios.apellido,
    COUNT(*) AS "# Reportes"
FROM usuarios
JOIN tarjetas ON usuarios.usuario_id = tarjetas.usuario_id
JOIN reportes_tarjeta ON tarjetas.tarjeta_id = reportes_tarjeta.tarjeta_id
GROUP BY usuarios.usuario_id, usuarios.nombre, usuarios.apellido
ORDER BY "# Reportes" DESC
LIMIT 10;

--Tarjetas reportadas por motivo y fecha (últimos 6 meses)

SELECT 
    tarjetas.tarjeta_id,
    reportes_tarjeta.motivo,
    reportes_tarjeta.estado,
    reportes_tarjeta.fecha_reporte
FROM reportes_tarjeta
JOIN tarjetas ON reportes_tarjeta.tarjeta_id = tarjetas.tarjeta_id
WHERE reportes_tarjeta.fecha_reporte >= CURRENT_DATE - INTERVAL '6 months'
ORDER BY reportes_tarjeta.fecha_reporte DESC;