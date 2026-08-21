
**Pre-entrega: Consultas SQL de negocio**
Título: Extrayendo métricas clave con SQL

Utilizando la Base de Datos creada en el módulo 3, se escriben las primeras consultas que responden a preguntas de negocio.

Instrucciones
Sobre la base de datos Ventas_Tech_DB creada en M3, escribí las siguientes consultas en un archivo llamado m4_consultas_negocio.sql. Trabajamos solo sobre la tabla ventas (recordá que tiene id_cliente, id_producto, cantidad, precio_unitario y fecha_venta). Por ahora trabajamos con los IDs.

Consulta 1 — Resumen ejecutivo mensual Total facturado, cantidad de pedidos y ticket promedio, agrupados por mes. Calculá el total como cantidad * precio_unitario. Usá alias descriptivos en español y agrupá por mes con EXTRACT(MONTH FROM fecha_venta).

Consulta 2 — Ranking de productos Top 5 de id_producto por total facturado, mostrando las unidades vendidas (SUM(cantidad)) y el total generado. Usá GROUP BY id_producto, ORDER BY y limitá el resultado a 5.

Consulta 3 — Clientes recurrentes id_cliente que hayan realizado más de un pedido, mostrando la cantidad de pedidos y el total gastado. Usá GROUP BY id_cliente y HAVING COUNT(*) > 1.

Consulta 4 — Meses por encima/por debajo del promedio Total facturado por mes, con una columna adicional que etiquete con CASE WHEN si ese mes quedó 'Por encima' o 'Por debajo' del promedio mensual general.

Bloque de cierre Al final del archivo agregá un bloque de comentarios -- con 3 hallazgos concretos que encontraste al revisar los resultados. Por ejemplo: "El producto 1 concentra el 40% de la facturación del trimestre."


