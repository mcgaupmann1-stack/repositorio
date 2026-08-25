
**Pre‑entrega: Cruzando tablas para enriquecer el análisis**

Este módulo forma parte del proyecto RetailPro, donde se construye una vista única que integra información de ventas, clientes, productos y territorios. 

El archivo principal de este módulo es:

m5_consultas_joins.sql

Aquí se encuentran las cuatro consultas solicitadas en los requisitos oficiales.

**Objetivo del módulo**
El objetivo es cruzar esas tablas para obtener una vista enriquecida que permita:

analizar ventas con información completa del cliente
identificar clientes sin compras
detectar productos sin movimiento
consolidar ventas por canal (online y presencial)

Consultas incluidas en el módulo
**1. Vista base del proyecto (INNER JOIN)**
Cruza las tablas de ventas, clientes, productos y territorios para obtener en una sola fila:

fecha
cliente
segmento
región
producto
categoría
cantidad
precio unitario
total de venta
canal

**2. Clientes sin ventas (LEFT JOIN)**
Identifica clientes registrados que nunca realizaron una compra.
La consulta muestra:

nombre
email
fecha de registro
Se utiliza LEFT JOIN y una condición IS NULL para detectar los casos sin ventas.

**3. Productos sin ventas (LEFT JOIN)**
Detecta productos del catálogo que no tienen movimiento.
La consulta muestra:

nombre del producto
categoría
precio
También utiliza LEFT JOIN con IS NULL.

**4. Consolidado por canal (UNION ALL)**
Combina ventas Online y Presencial en un solo resultado, agregando una columna que identifica el canal.
Luego se realiza un GROUP BY para obtener el total por canal.


