
**Pre‑entrega: Modelo de Datos RetailPro**
Este módulo contiene la pre‑entrega evaluable del Módulo 2, donde se diseña el modelo relacional de RetailPro, aplicando las reglas de normalización hasta 3NF.
Este diseño será implementado en SQL en el Módulo 3, por lo que constituye la base estructural del proyecto final de análisis de ventas.

El objetivo de esta pre‑entrega es:

Diseñar el modelo ER completo del negocio.
Definir tablas, columnas, PK y FK.
Justificar formalmente la normalización hasta 3NF.
Conectar cada tabla con las preguntas de análisis del brief del Módulo 1.

No se escribe SQL en este módulo: el foco es diseño y normalización.

**Modelo de Datos RetailPro (ER)**
El modelo está compuesto por cuatro entidades principales:

**Clientes**
id_cliente (PK)
nombre_cliente
email_cliente
ciudad
fecha_alta
segmento
tipo_cliente

**Productos**
id_producto (PK)
nombre_producto
categoria
subcategoria
precio
costo
stock

--Territorios--
id_territorio (PK)
region
pais
zona

**Ventas**
id_venta (PK)
fecha_venta
id_cliente (FK → clientes)
id_producto (FK → productos)
id_territorio (FK → territorios)
cantidad
monto_total
canal_venta

**Justificación de Normalización (3NF)**
El modelo cumple con Tercera Forma Normal (3NF) porque:
Cada tabla tiene una clave primaria única.
Todos los atributos dependen completamente de su PK.
Se eliminaron dependencias parciales separando clientes, productos y territorios en tablas independientes.
Se evitaron dependencias transitivas: ningún atributo depende de otro que no sea la PK.
No hay redundancia de datos:
La información descriptiva de clientes, productos y territorios se almacena una sola vez.
La tabla Ventas solo guarda hechos transaccionales y referencia a las demás mediante FK.

**Conexión con el Brief del Módulo 1**
Cada tabla contribuye directamente a responder las preguntas estratégicas definidas en el Módulo 1:

**Ventas**
fecha_venta → evolución mensual de ventas
monto_total → ingresos totales
id_territorio → comparación entre regiones
canal_venta → desempeño por canal
id_producto → análisis por categoría y productos con caída

**Productos**
categoria, subcategoria → identificar qué categorías explican caídas
stock → relación entre ruptura de stock y caída de ventas
nombre_producto → mostrar productos afectados

**Territorios**
region → filtrar ventas por región (Norte, Sur, Este, Oeste)

**Clientes**
segmento, tipo_cliente → análisis por tipo de cliente
ciudad → distribución geográfica
fecha_alta → cohortes de clientes


Este módulo contiene:

El archivo PDF con el modelo ER completo
La justificación de normalización
La conexión con el brief de M1

📄 Modelo de Datos RetailPro  
./Modelo de datos RetailPro.pdf

📄 Pre‑entrega evaluable del Módulo 2  
./Pre-entrega evaluable del Módulo 2 — suma al proyecto.pdf
