**Pre‑entrega: Boceto del Dashboard Ejecutivo RetailPro**
Este módulo contiene el boceto estratégico del dashboard que será implementado en Power BI. El objetivo es planificar la estructura visual y narrativa del reporte antes de construirlo, siguiendo las buenas prácticas del rol de analista de datos.

**1. Propósito del Dashboard**
Identificar qué factores explican la caída de ventas en la región Norte y permitir a los gerentes tomar decisiones operativas sobre stock, precios y desempeño por categoría.

Esta frase se basa en la pregunta diagnóstica definida en el brief del Módulo 1.

**2. Diseño del Layout (Patrón de lectura en Z)**
El boceto del dashboard fue diseñado siguiendo el patrón de lectura en Z, priorizando la información crítica en la parte superior y dejando el detalle para el final.

**Zona superior — Zona de Oro (KPIs principales)**
Incluye los 4 KPIs más relevantes del proyecto, seleccionados por su conexión directa con la pregunta estratégica del M1:

Total de Ventas
Variación % de Ventas (MoM)
Ticket Promedio
Rotación de Stock

Estos indicadores permiten detectar rápidamente la caída, entender su magnitud y evaluar señales de quiebre de stock.

**Zona media izquierda — Tendencia temporal**
Gráfico de líneas que muestra la evolución mensual de ventas.
Este tipo de visual es ideal para identificar patrones, estacionalidad y caídas progresivas en el tiempo.

**Zona media derecha — Comparación entre categorías o regiones**
Gráfico de barras para comparar el desempeño entre:

Categorías (Notebooks, Monitores, Periféricos, Accesorios, Otros)
o
Regiones / territorios

El gráfico de barras facilita detectar rápidamente qué categoría o región explica la caída.

**Zona inferior — Detalle de transacciones**
Incluye la tabla detallada de transacciones, con campos como:

Fecha
Región
Categoría
Producto
Canal
Monto

Esta zona funciona como espacio de drill‑down, diferenciando claramente el detalle del resumen superior.

**3. Justificación del diseño**
KPIs seleccionados para la Zona de Oro
Los cuatro KPIs están directamente vinculados con las preguntas del brief del M1:

Total de Ventas y Variación MoM permiten medir la caída.
Ticket Promedio ayuda a entender si el problema es de volumen o de valor.
Rotación de Stock conecta con la hipótesis de quiebre de stock como causa de la caída.

**Gráfico de líneas para la tendencia**
Es la visual más efectiva para mostrar evolución temporal y detectar caídas, picos o estacionalidad.

**Gráfico de barras para la comparación**
Permite comparar categorías o regiones de forma clara y directa, ideal para identificar qué segmento explica la caída.

**Diferenciación entre resumen y detall**e
Resumen: KPIs + gráficos superiores (visión ejecutiva).
Detalle: tabla inferior (visión operativa).
Esto respeta la estructura típica de dashboards ejecutivos y facilita la toma de decisiones.

