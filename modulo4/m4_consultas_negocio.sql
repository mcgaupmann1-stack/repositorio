SELECT * FROM ventas;

--Consulta 1 — Resumen ejecutivo mensual 

SELECT 
    MONTH(fecha_venta) AS MES,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO
FROM 
    ventas
GROUP BY 
    MONTH(fecha_venta);

--Consulta 2 — Ranking de productos

SELECT TOP 5
    id_producto,
    SUM(cantidad) AS UNIDADES_VENDIDAS,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO
FROM 
    ventas
GROUP BY 
    id_producto
ORDER BY 
    TOTAL_FACTURADO DESC;

--Consulta 3 — Clientes recurrentes

SELECT 
    id_cliente,
    COUNT(*) AS CANTIDAD_PEDIDOS,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO
FROM 
    ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1


--Consulta 4 — Meses por encima/por debajo del promedio

SELECT 
    MONTH(fecha_venta) AS MES,
    SUM(cantidad * precio_unitario) AS TOTAL_MES, --total mensual por cada mes presente en la tabla

    CASE 
        WHEN SUM(cantidad * precio_unitario) > (

            --calcula promedio general de todos los meses
            SELECT AVG(total_mensual)
            FROM (
                SELECT 
                    MONTH(fecha_venta) AS mes,
                    SUM(cantidad * precio_unitario) AS total_mensual
                FROM ventas
                GROUP BY MONTH(fecha_venta)
            ) AS promedio_meses

        ) THEN 'Por encima'
        ELSE 'Por debajo'
    END AS RELACION_PROMEDIO

FROM ventas
GROUP BY MONTH(fecha_venta); -- agrupa por cada mes presente en la tabla (en este caso el mes 3 (marzo)

--HALLAZGOS: 
-- 1. El producto 1 concentra aproximadamente el 55.87% de la facturación total del mes, siendo el principal impulsor de ingresos.

-- 2. El producto 4 es el de menor desempeño, aportando solo el 5,58% de la facturación mensual.

-- 3. Los productos 5 y 6 tuvieron una sola venta.
