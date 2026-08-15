Qué transformaciones realizaste y en qué orden.
1 - Ingresé a Power BI Desktop
2 - Importé el archivo de ventas provisto utilizando el conector de .xlsx
3 - Verifiqué la vista previa de los datos antes de confirmar la carga
4 - Ingresé al Editor de Power Query para realizar las transformaciones
5 - Renombré las columnas
6 - Corregí los tipos de datos
7 - Normalicé la estructura
8 - Eliminé duplicados y nulos

Por qué elegiste cada tipo de dato.
A la fecha le puse tipo Date para que Power BI entienda que estoy trabajando con tiempo y no con texto.
A los montos les puse tipo Decimal porque son montos y puedo necesitar hacer cálculos con ellos
A los IDs que incluyen letras les asigné tipo de dato texto y al código de producto le asigné tipo Whole Number

Cómo resolviste los valores nulos y duplicados encontrados.
Eliminé duplicado luego de hacer la normalización y los valores nulos los elimine de la vista con el filtro

Qué criterio usaste para separar los datos del cliente de los de la transacción.
Separé los datos siguiendo la práctica del modelo estrella.  
Los datos del cliente (como nombre, email, teléfono, ciudad, provincia, segmento, si está o no activo, fecha de alta) son atributos que no cambian con cada compra y pertenecen a una tabla de dimensión que nombré como D_Clientes.
Los datos de producto (como descripción, rubro, precio unitario de venta) son atributos que pertenecen a una tabla de dimensión que nombre como D_Productos.
En cuanto a los datos de la transacción (como montos, descuentos, fechas y cantidades) son eventos que ocurren repetidamente y pertenecen a la tabla de hechos o F_Ventas.



