
**Ventas_Tech_DB — Script SQL del Modelo Relacional**
Este módulo contiene el script SQL que construye la base de datos Ventas_Tech_DB, utilizada como fuente de datos para el proyecto final de Business Intelligence del curso de Data Analyst.
El objetivo es crear un modelo relacional limpio, normalizado y con integridad referencial, que permita registrar productos, clientes, categorías y ventas.

El archivo ventas_tech_db.sql realiza las siguientes acciones:

Crea la base de datos Ventas_Tech_DB.
Elimina las tablas existentes respetando el orden inverso de dependencias (ventas → productos → clientes → categorías).
Construye las cuatro tablas principales del modelo:

categorias
clientes
productos
ventas

Define claves primarias y foráneas para asegurar integridad referencial.
Aplica restricciones NOT NULL, UNIQUE y DEFAULT en campos críticos.
Carga datos iniciales:

4 categorías
5 clientes
6 productos
10 ventas

Incluye consultas de verificación para confirmar que las tablas se cargaron correctamente.

El modelo sigue una estructura relacional clásica para sistemas de ventas:
**Tabla categorías**
id_categoria (PK)
nombre_categoria
descripcion

**Tabla clientes**
id_cliente (PK)
nombre
email (UNIQUE)
ciudad
fecha_registro

**Tabla productos**
id_producto (PK)
nombre_producto
id_categoria (FK → categorias)
precio
stock
activo

**Tabla ventas**
id_venta (PK)
id_cliente (FK → clientes)
id_producto (FK → productos)
cantidad
precio_unitario
fecha_venta

Este diseño cumple con 3NF, evita duplicación de datos y garantiza consistencia entre entidades.

**Cómo ejecutar el script**
1) Abrí tu entorno SQL (PostgreSQL, SQL Server o MySQL según tu setup).
2) Copiá el contenido del archivo ventas_tech_db.sql.
3) Ejecutá el script completo:

Primero se eliminarán las tablas existentes.
Luego se crearán las nuevas tablas.
Finalmente se insertarán los datos iniciales.

Verificá la carga ejecutando:
SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;

Si todas las tablas muestran registros, la base quedó correctamente creada.
