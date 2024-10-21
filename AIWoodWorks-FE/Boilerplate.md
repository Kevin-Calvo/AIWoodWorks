Explicación de los diferentes folders y archivos del boilerplate

- node_modules
En este folder nos encontramos varios paquetes incluidos en el proyecto para brindar varias funcionalidades como módulos de desarrollo o bibliotecas.

- src
Aquí encontramos los archivos jsx y css de las pantallas de la aplicación:
    + App: La página principal que se ve al iniciar la aplicación. Tiene acceso a las opciones para login y register.
    + AppReg: Igual a la anterior pero sería la que se ve una vez el usuario haya iniciado sesión. Con acceso al perfil del usuario y hacer requests de la AI.
    + Chat: El chat donde se mantendrá contacto entre el cliente y el fabricante seleccionado. Hay una opción para proceder a pago una vez se llegue a un acuerdo.
    + Login: El espacio donde el usuario puede iniciar sesión.
    + Register: El usuario puede crear su cuenta aquí, se le piden varios datos como nombre, email, contraseña, localización, teléfono, entre otros.
    + main: El archivo que llama a lo que será la página principal cuando se corre el programa.
    + Payment: Una vez se llega a un trato en el chat, se puede proceder a pagar con tarjeta o sinpe.
    + Profile: Se puede ver el perfil del usuario con toda la información que se agregó durante el registro.
    + Request: El usuario puede hacer una request a una inteligencia artificial que puede generar el diseño de un mueble basado en su descripción.

- .gitignore
Archivo de configuración en los proyectos de Git que especifica qué archivos o directorios deben ser ignorados por el control de versiones. Cualquier archivo o carpeta listados en este archivo no serán incluidos en los commits, es decir, Git no los rastreará.

- eslint.config.js
Archivo de configuración para ESLint, se utiliza para analizar el código en busca de problemas de estilo o errores de calidad en el código de JavaScript o JSX.

- index.html
El archivo principal de una aplicación web y sirve como la plantilla base para cargar tu aplicación en el navegador.

- package-lock.json
Archivo generado automáticamente por npm (Node Package Manager) cuando se instala un paquete utilizando npm install.

- package.json
Componente esencial en proyectos de Node.js y JavaScript. Su función principal es describir el proyecto y gestionar sus dependencias.

- vite.config.js
La configuración de Vite, una herramienta de construcción y servidor de desarrollo para proyectos de JavaScript. Este archivo permite personalizar el comportamiento de Vite y agregar funcionalidades adicionales.