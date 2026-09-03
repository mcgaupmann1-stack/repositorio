**Módulo 6 - Checkpoint 2: Modelo de Datos y Medidas DAX**

**Propósito del ejercicio**
En este módulo el objetivo es **darle inteligencia al modelo de datos**: configurar relaciones correctas, crear una tabla calendario para habilitar análisis temporal y escribir las cinco medidas DAX fundamentales que servirán de base para futuros reportes.

---

**Contexto**
Se trabajó sobre el archivo `Pipeline_ETL_Apellido_Nombre.pbix` proveniente del entregable anterior, que ya contenía las tablas limpias y con nomenclatura profesional.  
El objetivo fue transformarlo en un **modelo analítico completo** con relaciones, calendario y medidas DAX.

---

**Pasos realizados**

### 1. Configuración del modelo de relaciones
Se crearon las siguientes relaciones en la Vista de Modelo:

- **Dim_Clientes[id_cliente] → Fact_Ventas[id_cliente]**
- **Dim_Productos[id_producto] → Fact_Ventas[id_producto]**
- **Dim_Categorias[id_categoria] → Dim_Productos[id_categoria]**
- **Dim_Fechas[Date] → Fact_Ventas[fecha_venta]**

Todas las relaciones fueron configuradas con:
- Cardinalidad: **1:N**
- Dirección de filtro cruzado: **Única**
- Relación activa: **Sí**

---

### 2. Creación de la tabla calendario
Se generó la tabla `Dim_Fechas`

Columnas calculadas añadidas:
Año
Mes Número
Mes Nombre
Trimestre
Semana

La tabla fue marcada como tabla de fechas para habilitar funciones de inteligencia temporal.

---

### 3.Creación de la tabla de medidas
Se creó la tabla Medidas (ícono de calculadora) para centralizar todas las medidas DAX.
Se eliminó la columna por defecto para mantener la tabla exclusivamente de medidas.

La medida % Crecimiento Anual fue formateada como porcentaje.

---

### 4.Validación con Matriz

Se creó una página de reporte llamada Validación, con una matriz configurada en:

Filas: Dim_Fechas[Mes Nombre]
Columnas: Dim_Fechas[Año]
Valores: Total Ventas, Ventas YTD, Ventas LY, % Crecimiento Anual

Se verificaron los resultados esperados:
Ventas YTD acumula correctamente mes a mes.
Ventas LY muestra valores del año anterior y BLANK donde no hay período comparable.
% Crecimiento Anual refleja variaciones positivas o negativas según los datos.

**Criterios de aceptación cumplidos**

Relaciones configuradas con cardinalidad 1:N y dirección única.
Dim_Fechas marcada como tabla de fechas y relacionada con Fact_Ventas.
Tabla _Medidas creada con las cinco medidas DAX.
Validación correcta de YTD, LY y % Crecimiento Anual.
Uso de VAR y DIVIDE en la medida optimizada.
