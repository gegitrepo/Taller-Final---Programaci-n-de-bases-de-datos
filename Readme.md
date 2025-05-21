# 📊 Proyecto Final - Base de Datos: Sistema de Recargas y Viajes

Este repositorio contiene la solución implementada para el proyecto final de la asignatura **Programación de Bases de Datos**. A partir de un sistema existente de recargas y viajes, se realizaron mejoras para ampliar sus funcionalidades y permitir mayor trazabilidad, auditoría y análisis.

---

## ✅ Funcionalidades implementadas

1. **Auditoría del estado de las tarjetas**
   - Registro histórico de cambios de estado de cada tarjeta.
   - Permite consultar eventos de bloqueo, activación, etc.

2. **Promociones aplicadas en recargas**
   - Asociación de promociones a recargas realizadas por los usuarios.
   - Posibilita el análisis comercial y de marketing.

3. **Registro de dispositivos de validación**
   - Vinculación de cada viaje con el dispositivo que lo validó.
   - Mejora la trazabilidad y estadísticas operativas.

4. **Mejora adicional propuesta**
   - [Aquí irá el nombre y descripción de la mejora adicional que definamos.]

---

## ⚙️ Instrucciones para ejecutar los scripts

Todos los scripts se encuentran en la carpeta [`scripts/`](./scripts). Se recomienda ejecutarlos en el siguiente orden:

1. `01_modificaciones_tablas.sql` – Alteraciones necesarias a tablas existentes.
2. `02_creacion_nuevas_tablas.sql` – Creación de nuevas entidades requeridas.
3. `03_carga_datos.sql` – Inserción de datos para pruebas (mínimo 100 registros por entidad nueva).
4. `04_consultas.sql` – Consultas solicitadas para validación de las mejoras.

> Asegúrate de ejecutar los scripts en una base de datos que ya contenga el esquema base original del sistema de recargas y viajes.

---

## 📐 Diagrama ER (cambios estructurales)

```mermaid
erDiagram
    TARJETAS ||--o{ CAMBIOS_ESTADO_TARJETA : registra
    RECARGAS ||--o{ PROMOCIONES : usa
    VIAJES ||--o{ VALIDACIONES : se_valida_con
    DISPOSITIVOS ||--o{ VALIDACIONES : valida

    CAMBIOS_ESTADO_TARJETA {
        int cambio_id PK
        int tarjeta_id FK
        string estado_anterior
        string estado_nuevo
        datetime fecha_cambio
    }

    PROMOCIONES {
        int promocion_id PK
        string nombre
        string descripcion
        float porcentaje_descuento
    }

    DISPOSITIVOS {
        int dispositivo_id PK
        string tipo
        string ubicacion
    }

    VALIDACIONES {
        int validacion_id PK
        int viaje_id FK
        int dispositivo_id FK
        datetime fecha_validacion
    }
```

## 📐 Diagrama ER (cambios aplicados)

```mermaid
erDiagram
    USUARIOS {
        int usuario_id PK
        string nombre
        string apellido
        string numero_contacto
        string correo_electronico
        string genero
        date fecha_nacimiento
        string direccion_residencia
        string numero_cedula
        string ciudad_nacimiento
        date fecha_registro
    }

    LOCALIDADES {
        int localidad_id PK
        string nombre
    }

    TARJETAS {
        int tarjeta_id PK
        int usuario_id FK
        date fecha_adquisicion
        string estado
        date fecha_actualizacion
    }

    PUNTOS_RECARGA {
        int punto_recarga_id PK
        string direccion
        float latitud
        float longitud
        int localidad_id FK
    }

    TARIFAS {
        int tarifa_id PK
        float valor
        date fecha
    }

    RECARGAS {
        int recarga_id PK
        date fecha
        float monto
        int punto_recarga_id FK
        int tarjeta_id FK
        int promocion_id FK
    }

    PROMOCIONES {
        int promocion_id PK
        string nombre
        string descripcion
        float porcentaje_descuento
    }

    CAMBIOS_ESTADO_TARJETA {
        int cambio_id PK
        int tarjeta_id FK
        string estado_anterior
        string estado_nuevo
        datetime fecha_cambio
    }

    DISPOSITIVOS {
        int dispositivo_id PK
        string tipo
        string ubicacion
    }

    VALIDACIONES {
        int validacion_id PK
        int viaje_id FK
        int dispositivo_id FK
        datetime fecha_validacion
    }

    ESTACIONES {
        int estacion_id PK
        string nombre
        string direccion
        int localidad_id
        float latitud
        float longitud
    }

    RUTAS {
        int ruta_id PK
        int estacion_origen_id FK
        int estacion_destino_id FK
    }

    ESTACIONES_INTERMEDIAS {
        int estacion_id PK "FK"
        int ruta_id PK "FK"
    }

    VIAJES {
        int viaje_id PK
        int estacion_abordaje_id FK
        date fecha
        int tarifa_id FK
        int tarjeta_id FK
    }

    REPORTES_TARJETA {
        int reporte_id PK
        int tarjeta_id FK
        string motivo
        datetime fecha_reporte
        string estado
    }

    %% Relaciones existentes
    USUARIOS ||--o{ TARJETAS : ""
    TARJETAS ||--o{ RECARGAS : ""
    PUNTOS_RECARGA ||--o{ RECARGAS : ""
    LOCALIDADES ||--o{ PUNTOS_RECARGA : ""
    LOCALIDADES ||--o{ ESTACIONES : ""
    ESTACIONES ||--o{ VIAJES : ""
    TARJETAS ||--o{ VIAJES : ""
    TARIFAS ||--o{ VIAJES : ""
    ESTACIONES ||--|{ RUTAS : ""
    ESTACIONES ||--|{ RUTAS : ""
    RUTAS ||--o{ ESTACIONES_INTERMEDIAS : ""
    ESTACIONES ||--o{ ESTACIONES_INTERMEDIAS : ""

    %% Nuevas relaciones
    RECARGAS }o--|| PROMOCIONES : "usa"
    TARJETAS ||--o{ CAMBIOS_ESTADO_TARJETA : "cambia_estado"
    VIAJES ||--o{ VALIDACIONES : "tiene"
    DISPOSITIVOS ||--o{ VALIDACIONES : "realiza"
    TARJETAS ||--o{ REPORTES_TARJETA : "reportada_en"

```

## 📐 Diagrama ER (esquema original)

```mermaid
erDiagram
    USUARIOS {
        int usuario_id PK
        string nombre
        string apellido
        string numero_contacto
        string correo_electronico
        string genero
        date fecha_nacimiento
        string direccion_residencia
        string numero_cedula
        string ciudad_nacimiento
        date fecha_registro
    }

    LOCALIDADES {
        int localidad_id PK
        string nombre
    }

    TARJETAS {
        int tarjeta_id PK
        int usuario_id FK
        date fecha_adquisicion
        string estado
        date fecha_actualizacion
    }

    PUNTOS_RECARGA {
        int punto_recarga_id PK
        string direccion
        float latitud
        float longitud
        int localidad_id FK
    }
        TARIFAS {
        int tarifa_id PK
        float valor
        date fecha
    }

    RECARGAS {
        int recarga_id PK
        date fecha
        float monto
        int punto_recarga_id FK
        int tarjeta_id FK
    }

    ESTACIONES {
        int estacion_id PK
        string nombre
        string direccion
        int localidad_id
        float latitud
        float longitud
    }

    RUTAS {
        int ruta_id PK
        int estacion_origen_id FK
        int estacion_destino_id FK
    }

    ESTACIONES_INTERMEDIAS {
        int estacion_id PK "FK"
        int ruta_id PK "FK"
    }

    VIAJES {
        int viaje_id PK
        int estacion_abordaje_id FK
        date fecha
        int tarifa_id FK
        int tarjeta_id FK
    }



    USUARIOS ||--o{ TARJETAS : ""
    TARJETAS ||--o{ RECARGAS : ""
    PUNTOS_RECARGA ||--o{ RECARGAS : ""
    LOCALIDADES ||--o{ PUNTOS_RECARGA : ""
    LOCALIDADES ||--o{ ESTACIONES : ""
    ESTACIONES ||--o{ VIAJES : ""
    TARJETAS ||--o{ VIAJES : ""
    TARIFAS ||--o{ VIAJES : ""
    ESTACIONES ||--|{ RUTAS : ""
	  ESTACIONES ||--|{ RUTAS : ""
    RUTAS ||--o{ ESTACIONES_INTERMEDIAS : ""
    ESTACIONES ||--o{ ESTACIONES_INTERMEDIAS : ""
```