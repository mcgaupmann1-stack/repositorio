
**Módulo 6 - Pipeline ETL Completo en Power BI**

**Propósito**
Construcción de un pipeline ETL en Power BI para transformar datos crudos del sistema de ventas de TechStore en un modelo confiable, limpio y documentado.
Este archivo .pbix servirá como base sólida para futuros reportes y visualizaciones.

**Dataset**
Archivo: Pipeline_ETL_Dataset.xlsx  
Tablas incluidas:
clientes (12 registros, con duplicados y nulos)
productos (13 registros, con duplicados y nulos)
ventas (50 transacciones limpias)
categorias (4 categorías limpias)

**Pasos realizados**
Conexión a la fuente de datos
   - Importación de las cuatro tablas desde Excel a Power BI.
   - Ingreso directo al Editor de Power Query.

**Perfilado de datos**
   - Activación de herramientas de diagnóstico: calidad, distribución y perfil de columnas.
   - Identificación de duplicados y valores nulos en tablas críticas.

**Transformaciones aplicadas**
Dim_Clientes
Eliminación de duplicado en id_cliente.
Reemplazo de nulos:
email → "No disponible"
ciudad → "No especificado"   
justificación: Se identificaron 2 registros con valores nulos: uno en el campo email y otro en ciudad. 
Se optó por no eliminar los registros para preservar la información válida restante de cada cliente. Los nulos fueron reemplazados por las etiquetas 'No disponible' (email) y 'No especificado' (ciudad), aplicadas en Power Query como paso documentado dentro de la consulta de transformación.

Dim_Productos
Eliminación de duplicado en id_producto = 103.
Reemplazo de nulo en precio:
Se completó con el valor real observado en las 5 ventas registradas (dato verificable).
Justificación: Al no existir variación entre las transacciones, se utilizó ese valor para completar el campo nulo, por tratarse de un dato real y verificable, y no una estimación.

Reemplazo de nulo en categoria:
Se asignó "Sin Categoría".
Justificación: no había evidencia suficiente para inferir categoría correcta.  Esto preserva la integridad del registro para otros análisis (ingresos, ventas) sin introducir una categorización no verificada que pudiera distorsionar los reportes agregados por categoría.

Fact_Ventas
Merge con Dim_Productos para enriquecer con nombre_producto y categoria.

Dim_Categorias
Tabla cargada sin modificaciones.

Nomenclatura profesional
Renombrado de consultas:
clientes → Dim_Clientes
productos → Dim_Productos
categorias → Dim_Categorias
ventas → Fact_Ventas

**Documentación en lenguaje M**
Se agregaron comentarios técnicos en el Editor Avanzado.

**Verificación final**
Conteo de filas coherente:
Dim_Clientes → 11
Dim_Productos → 12
Fact_Ventas → 50
Dim_Categorias → 4

Sin errores ni advertencias en la carga.
