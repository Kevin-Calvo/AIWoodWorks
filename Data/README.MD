# Diseño de las bases de datos

## Explicacion
En la base de datos sql, se almacenarán todos los datos relacionados a usuarios, IARequest, posteos, ofertas y proyectos. CosmosDB se utilizará únicamente para almacenar las imagenes generadas por la IA para los muebles o subidas por los fabricantes para su bitacora. 

En la base de datos sql se almacenará una bitacora para los fabricantes que ayuden al sistema a sugerir posibles fabricantes, basandose en su geolocalización y en el tipo de muebles, materiales y costo de sus proyectos anteriores. A partir de un IARequest, se podrá generar un posteo. Los posteos podrán recibir múltiples ofertas por parte de distintos fabricantes. Una vez que se haya terminado de negociar, se podrá comenzar un proyecto partiendo de una de las ofertas. La IA generará múltiples imagenes para cada mueble y también los fabricantes podrán subir múltiples imágenes para los muebles de su bitácora, por lo que se tiene la tabla que asocia un mueble con una imágen.
## Avance:

### Avance 1:
Inicio de diseño de tablas

### Avance 2:
Cambio de diseño en tablas de IARequest, post, oferta, proyecto y relacionadas.
Cambio de tipos de datos en columnas.
Agregar columnas zipcode en Ubicacion.

La idea de este diseño es que por medio de la bitacora la IA pueda ofrecer distintos fabricantes que mejor se adapten a los post, según el tipo de mueble, material, costo, ubicación. Los fabricantes en su descripción pueden agregar información sobre su forma de trabajar para que cuando el usuario va a elegir pueda guiarse por eso. De un IARequest se puede generar un post, el post puede recibir multiples ofertas y de una oferta se puede crear un proyecto.

## Faltante:

### Azure SQL Server

- Ejemplos
- Script de llenado

### CosmosDB

- modelaje/ORM
