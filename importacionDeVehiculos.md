# 📦 Registro de Importación de Vehículos

## 1. Análisis del Enunciado
Una empresa de importación recibe vehículos provenientes de diferentes países.  
Cada vehículo pertenece a un *lote de importación* y se asigna a un *concesionario local*.

## 2. Entidades Identificadas

### 🚗 Vehículo
- *Clave primaria:* numero_serie
- *Atributos:*
  - numero_serie (VARCHAR(50)) → Identificador único
  - modelo (VARCHAR(100)) → Modelo del vehículo
  - marca (VARCHAR(50)) → Marca del vehículo
  - anio_fabricacion (INT) → Año de fabricación
  - velocidad_maxima (NUMERIC(5,2)) → Velocidad máxima (km/h)
  - precio_declarado (NUMERIC(12,2)) → Precio declarado en USD
  - id_lote (INT) → Lote de importación (FK)
  - id_concesionario (INT) → Concesionario asignado (FK)

---

### 📦 Lote de Importación
- *Clave primaria:* id_lote
- *Atributos:*
  - id_lote (SERIAL) → Identificador del lote
  - fecha_llegada (DATE) → Fecha de llegada
  - pais_origen (VARCHAR(100)) → País de origen

---

### 🏢 Concesionario
- *Clave primaria:* id_concesionario
- *Atributos:*
  - id_concesionario (SERIAL) → Identificador del concesionario
  - nombre_comercial (VARCHAR(100)) → Nombre comercial
  - direccion (VARCHAR(200)) → Dirección
  - persona_contacto (VARCHAR(100)) → Persona de contacto

---

## 3. Modelo Relacional
- Cada *vehículo* pertenece a un *lote* (relación 1:N).
- Cada *vehículo* se asigna a un *concesionario* (relación 1:N).

---

