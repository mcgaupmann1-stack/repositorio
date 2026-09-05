# RetailPro - Análisis de Caída de Ventas en Categoría Notebooks

[![SQL Server](https://img.shields.io/badge/SQL%20Server-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/sql-server)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)

## 📌 Descripción del Proyecto

**RetailPro** es una solución integral de análisis de datos para el sector retail diseñada para transformar datos transaccionales y operativos en hallazgos estratégicos accionables. 

El objetivo principal de este proyecto es **investigar y diagnosticar la caída del 15% en las ventas de la categoría *Notebooks* en la región Norte durante el último trimestre**. 

--

## 📊 Hallazgos Clave (Key Insights)

El análisis evalúa cuál de las siguientes tres hipótesis explica la caída del 15% en la región Norte:

- 📦 **Quiebre de Stock:** Medición de días sin inventario disponible en las tiendas de la región Norte. 
- 🏬 **Mix de Canal:** Comparativa de rendimiento y migración de ventas entre Venta Presencial y Venta Online. 
- 🏷️ **Variación de Precio:** Análisis del Precio poco competitivo. 

---

## ✨ Características Principales

- **Análisis de Causa Raíz (Root Cause Analysis):** Descomposición multidimensional del rendimiento de la categoría *Notebooks*.
- **Modelado de Datos Robusto (SQL Server):** Diseño e implementación de esquemas en estrella (Star Schema) optimizados para consultas analíticas de alto rendimiento.
- **Consultas Avanzadas y Métricas Clave:** Métricas de crecimiento interanual (YoY), tasa de quiebre de stock, precio promedio ponderado (WAP) y distribución por canal mediante scripts SQL modularizados.
- **Dashboard Ejecutivo Interactivo (Power BI):** Panel visual con capacidad de *drill-down* para alta gerencia y líderes de categoría.
- **Enfoque Orientado a Decisiones de Negocio:** Recomendaciones estratégicas basadas en evidencia cuantitativa para recuperar el volumen de ventas en la región Norte.

---

## 🛠️ Tecnologías Utilizadas

- **Base de Datos:** Microsoft SQL Server
- **Lenguaje de Consulta:** SQL
- **Visualización & BI:** Microsoft Power BI
- **Control de Versiones & Documentación:** GitHub / Git

---
## 📐 Modelo de Datos (Data Model)

(./Modelo de datos RetailPro.pdf)
---

## 📈 KPIs Principales y Métricas Calculadas

Para diagnosticar con precisión la causa de la caída en las ventas, se definieron e implementaron las siguientes métricas clave:

| KPI / Métrica | Lógica / Cálculo | Propósito del Diagnóstico |
| :--- | :--- | :--- |
| **Total Ventas** | `SUM(monto_total) FROM ventas` | Monto total facturado en el periodo analizado. |
| **Ticket Promedio** | `SUM(monto_total) / COUNT(id_venta)` | Valor promedio de cada transacción de venta. |
| **Variación % de Ventas (MoM)** | `((Ventas_mes_actual - Ventas_mes_anterior) / Ventas_mes_anterior) * 100` | Compara las ventas del mes actual contra el mes anterior para detectar caídas o subas. |
| **Participación por Categoría** | `SUM(monto_total) por categoría / SUM(monto_total) total` | Porcentaje que representa cada categoría de producto sobre el total vendido. |
| **Rotación de Stock** | `Unidades vendidas del mes / Stock promedio del mismo mes` | Indica cuántas veces se vendió y repuso el inventario de un producto, calculado sobre una base mensual. |
--

## 📂 Estructura del Repositorio

```text
RetailPro/
├── README.md                   # Documentación principal del proyecto
├── docs/                       # Documentación adicional y diccionario de datos
│   └── data_dictionary.md      # Descripción técnica de las tablas y campos
├── sql/                        # Scripts SQL ordenados por etapa de ejecución
│   ├── 01_schema_definition.sql # Creación de tablas y relaciones (DDL)
│   ├── 02_data_ingestion.sql   # Carga y limpieza de datos transaccionales (DML)
│   └── 03_diagnostic_queries.sql# Consultas analíticas para el diagnóstico del problema
└── powerbi/                    # Archivos y visualización de BI
    ├── RetailPro_Executive_Dashboard.pbix # Dashboard interactivo de Power BI
    └── screenshots/            # Capturas de pantalla del dashboard
```

---

## 🚀 Instrucciones Paso a Paso: Cómo Ejecutar los Scripts SQL

Sigue estas instrucciones para replicar el entorno de base de datos e implementar el análisis en tu instancia local de **SQL Server**.

### Prerrequisitos
- Tener instalado **Microsoft SQL Server** (2019 o superior) o SQL Server Express.
- Tener instalado **SQL Server Management Studio (SSMS)** o **Azure Data Studio**.

---

### Paso 1: Clonar el Repositorio
Abre tu terminal o Git Bash y clona el proyecto en tu equipo:

```bash
git clone https://github.com/tu-usuario/RetailPro.git
cd RetailPro
```

---

### Paso 2: Crear la Base de Datos y el Esquema
1. Abre **SQL Server Management Studio (SSMS)** y conéctate a tu servidor.
2. Abre y ejecuta el script `sql/01_schema_definition.sql`.
   
Este script creará la base de datos `RetailProDB` y la estructura de tablas necesarias (`FactVentas`, `DimProducto`, `DimRegión`, `DimCanal`, `DimInventario`, `DimTiempo`).

---

### Paso 3: Carga de Datos Transaccionales
1. Ejecuta el script `sql/02_data_ingestion.sql` en la base de datos `RetailProDB`.
2. Este script insertará el conjunto de datos de prueba, asegurando la integridad referencial de las claves primarias y foráneas.

---

### Paso 4: Ejecución de Consultas Diagnóstico
1. Ejecuta el script `sql/03_diagnostic_queries.sql`.
2. Las consultas evaluarán sistemáticamente:
   - **Evaluación de Precios:** Comparativa de precios promedios Trimestre Actual vs. Trimestre Anterior en la región Norte.
   - **Evaluación de Inventarios:** Días acumulados de quiebre de stock por SKU de Notebooks.
   - **Evaluación de Canales:** Distribución porcentual de ventas según el canal (Físico vs. Online).

---

### Paso 5: Conexión con Power BI
1. Abre el archivo `powerbi/RetailPro_Executive_Dashboard.pbix` en **Power BI Desktop**.
2. Actualiza la cadena de conexión del origen de datos para apuntar a tu servidor local de SQL Server (`localhost` o nombre de instancia).
3. Haz clic en **Aplicar cambios** para refrescar los informes.
