--Consulta 1 — Vista base del proyecto (INNER JOIN) 

SELECT 
	v.fecha_venta,
	c.nombre_cliente,
	c.segmento,
	t.region,
	p.nombre_producto,
	p.categoria,
	v.cantidad,
    p.precio,
	v.monto_total,
	v.canal_venta
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN territorios t ON v.id_territorio = t.id_territorio;


--Consulta 2 — Clientes sin ventas (LEFT JOIN) 

SELECT 
	c.nombre_cliente,
	c.email_cliente,
	c.fecha_alta
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;


--Consulta 3 — Productos sin ventas (LEFT JOIN) 

SELECT
	p.nombre_producto,
	p.categoria,
	p.precio
FROM productos p
LEFT JOIN ventas v ON p.id_producto = v.id_producto
WHERE v.id_producto IS NULL;


--Consulta 4 — Consolidado por canal (UNION ALL)

SELECT 
    v.canal,
    SUM(v.monto_total) AS total_por_canal
FROM(
	SELECT 
		v.id_venta,
		v.monto_total,
		'Online' AS canal
	FROM ventas v
	WHERE v.canal_venta = 'Online'

	UNION ALL

	SELECT 
		v.id_venta,
		v.monto_total,
		'Presencial' AS canal
	FROM ventas v
	WHERE v.canal_venta = 'Presencial'
) v
GROUP BY v.canal;
    

