

--Consulta 1 — Resumen ejecutivo mensual 

SELECT 
    MONTH(fecha_venta) AS MES,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO,
    COUNT(*) AS CANTIDAD_DE_PEDIDOS,
    AVG(cantidad * precio_unitario) AS TICKET_PROMEDIO
FROM 
    ventas
GROUP BY 
    MONTH(fecha_venta);

--Consulta 2 — Ranking de productos

SELECT 
    id_producto,
    SUM(cantidad) AS UNIDADES_VENDIDAS,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO
FROM 
    ventas
GROUP BY 
    id_producto
ORDER BY 
    TOTAL_FACTURADO DESC
LIMIT 5; --modificado para que funcione en MYSQL


--Consulta 3 — Clientes recurrentes

SELECT 
    id_cliente,
    COUNT(*) AS CANTIDAD_PEDIDOS,
    SUM(cantidad * precio_unitario) AS TOTAL_FACTURADO
FROM 
    ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1;


--Consulta 4 — Meses por encima/por debajo del promedio

SELECT 
    EXTRACT(MONTH FROM fecha_venta) AS MES,  --modificado para que funcione en MYSQL
    SUM(cantidad * precio_unitario) AS TOTAL_MES, --total mensual por cada mes presente en la tabla

    CASE 
        WHEN SUM(cantidad * precio_unitario) > (

            --calcula promedio general de todos los meses
            SELECT AVG(total_mensual)
            FROM (
                SELECT 
                    EXTRACT(MONTH FROM fecha_venta) AS mes,  --modificado para que funcione en MYSQL
                    SUM(cantidad * precio_unitario) AS total_mensual
                FROM ventas
                GROUP BY EXTRACT(MONTH FROM fecha_venta)  --modificado para que funcione en MYSQL
            ) AS promedio_meses

        ) THEN 'Por encima'
        ELSE 'Por debajo'
    END AS RELACION_PROMEDIO

FROM ventas
GROUP BY EXTRACT(MONTH FROM fecha_venta); -- agrupa por cada mes presente en la tabla (en este caso el mes 3 (marzo)
--se realizó el cambio para que la consulta funcione en MySQL
