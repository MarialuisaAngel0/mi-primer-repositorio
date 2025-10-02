## 1. Clientes de Brasil

```sql
SELECT first_name, last_name, email 
FROM customer 
WHERE country = 'Brazil' 
ORDER BY last_name ASC;
```

Esta consulta busca en la tabla `customer` todos los clientes de **Brasil** y muestra su **nombre, apellido y correo electrónico**, ordenados alfabéticamente por apellido.

---

## 2. Álbumes de AC/DC

```sql
SELECT a.title 
FROM album a 
JOIN artist ar ON a.artist_id = ar.artist_id 
WHERE ar.name = 'AC/DC';
```

Muestra los **títulos de todos los álbumes** cuyo artista sea **AC/DC**.

---

## 3. Canciones con "love" en el título

```sql
SELECT track_id, name, album_id 
FROM track 
WHERE name ILIKE '%love%';
```

Devuelve todas las canciones cuyo **nombre contiene "love"**, mostrando su **ID, nombre y el álbum al que pertenecen**.

---

## 4. Facturas mayores a 10

```sql
SELECT invoice_id, invoice_date, billing_country, total 
FROM invoice 
WHERE total > 10.00 
ORDER BY total DESC;
```

Lista todas las facturas con un **total mayor a 10**, mostrando su **ID, fecha, país de facturación y total**, ordenadas de mayor a menor total.

---

## 5. Últimos 5 clientes registrados

```sql
SELECT customer_id, first_name, last_name, country 
FROM customer 
ORDER BY customer_id DESC 
LIMIT 5;
```

Muestra los **5 clientes más recientes**, con su **ID, nombre, apellido y país**, ordenados de mayor a menor ID.

---

## 6. Canciones más largas que 5 minutos

```sql
SELECT track_id, name, milliseconds / 60000.0 AS duration_minutes 
FROM track 
WHERE milliseconds > 300000;
```

Devuelve todas las canciones con duración **mayor a 5 minutos**, mostrando su **ID, nombre y duración en minutos**.

---

## 7. Total de clientes por país

```sql
SELECT country, COUNT(*) AS total_clients 
FROM customer 
GROUP BY country 
ORDER BY total_clients DESC;
```

Cuenta cuántos clientes hay por **país**, mostrando la cantidad y ordenando de **mayor a menor**.

---

## 8. Empleados con cargo "Sales Support Agent"

```sql
SELECT employee_id, first_name, last_name, title, hire_date 
FROM employee 
WHERE title = 'Sales Support Agent';
```

Muestra todos los empleados que son **agentes de soporte de ventas**, con su **ID, nombre, apellido, título y fecha de contratación**.

---

## 9. Top 10 canciones más largas

```sql
SELECT track_id, name, milliseconds / 60000.0 AS duration_minutes 
FROM track 
ORDER BY milliseconds DESC 
LIMIT 10;
```

Lista las **10 canciones más largas**, mostrando su **ID, nombre y duración en minutos**.

---

## 10. Clientes con apellido que empieza con "S"

```sql
SELECT customer_id, first_name, last_name, country 
FROM customer 
WHERE last_name ILIKE 'S%';
```

Devuelve todos los clientes cuyo **apellido empieza con “S”**, mostrando su **ID, nombre, apellido y país**.