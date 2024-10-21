# AIWoodWorks

AIWoodWorks es una página web donde los usuarios podrán crear sus propios muebles con ayuda de inteligencia artificial. 
La página tiene un servicio de IA donde los usuarios podrán describir su idea, y en base a la descripción la IA les generará el diseño de su mueble. 
También podrán ayudar a mejorar el diseño adjuntando imágenes de diseños similares al que quiere. 
AIWoodWorks también se encargará de conectar a los usuarios con fabricantes que estén dispuestos a volver su diseño en realidad.

## Requerimientos

### Prioridad 1:

- Registro de fabricantes
- Registro de usuario
- Inicio de sesión
- Solicitud a la IA del diseño
- Crear post de la solicitud.
- Fabricantes pueden ver solicitudes.
- Chat de negocio.
- Sellar del trato
- Chat se queda abierto
- Historial de chat
- Cierre y cobro final
- Manejar usuarios
- Administración de pedidos

### Prioridad 2:

- Reseñas / Calificaciones
- Olvidé mi contraseña
- Cotización del fabricante
- Notificaciones
- Resolución de disputas
- Reportes de transacciones
- Configuración de tarifas e impuestos

### Prioridad 3:

- Explorar / Variar diseños
- Historial de pedidos
- Historial de trabajos
- Actualización del estado del pedido
- Coordinación del envío

## Diagrama:
![Diagrama en blanco](https://github.com/user-attachments/assets/273c3994-7fa5-494d-9343-8503b997053f)



## Problem Statement y Storyboard:
![diagramaStoryboard](https://github.com/user-attachments/assets/ce4f88ed-641a-4ee9-afe2-19671f006959)

### Problem Statement:

Reducir el tiempo entre el momento en que se crea el diseño y se elige el fabricante

### Storyboard:
![crazy8](https://github.com/user-attachments/assets/08ea6f7f-d97c-450d-93d2-c43d53188f5c)

1. Primer el usuario hace una request a la AI de la página para generar un mueble que se adapte a lo que el usuario pide.
2. La AI genera el mueble, el usuario puede elegir si hacer cambios o decidirse por un diseño.
3. Se publica el diseño y se le recomienda a fabricantes, y estos deciden si están interesados.
4. El usuario recibe una lista de interesados, y puede ver sus perfiles para decidir cuál fabricante quiere que le ayude.
5. Una vez escogido el fabricante, él y el usuario pueden discutir datos de la oferta como materiales, costo, tiempo de producción, envío, entre otros.
6. El usuario puede sellar el trato una vez se llega a un acuerdo y de esta manera proceder al trabajo y métodos de pago.


-------------------------------------------------------------------------------------------------------------------------------------------------------------


## Non Functional Requirements

A continuación se provee un conjunto de preguntas o checklist que facilita la identificación de múltiples atributos no funcionales de un sistema o desarrollo :

### Performance

01. What are the expected response times for different functions under normal and peak load conditions?

     Para generar un diseño de mueble por la AI, esperamos tiempos de respuesta de entre 1 a 3 segundos en condiciones normales. En momentos de alta carga, debería mantenerse por debajo de los 5 segundos.
    Para las solicitudes a los fabricantes, el sistema debe enviar la petición en menos de 10 segundos, pero la respuesta del fabricante dependerá de su disponibilidad.

3. How many concurrent users should the system support?

   El sistema debería soportar al menos 500 usuarios concurrentes en la fase inicial. A medida que crezcamos, debería poder escalar para soportar hasta 5,000 usuarios concurrentes sin degradación del rendimiento.

5. What are the performance benchmarks for critical operations?

     Las operaciones críticas como la generación de diseños por la AI y el envío de solicitudes a los fabricantes deberían completarse en menos de 15 segundos máximo. Cualquier operación que tarde más de 5 segundos sería considerada una falla de rendimiento.

### Scalability

04. How should the system handle increased load or data volume over time?

     El sistema debe estar preparado para usar un servicio de autoescalado en la nube para manejar aumentos en el tráfico y el volumen de datos, especialmente durante eventos de marketing o temporadas altas. 
    

6. Are there any specific scalability requirements for different components of the system?
  
    La parte de AI debe ser modular y escalar horizontalmente, permitiendo la adición de más instancias de generación de modelos si aumenta la demanda.
    Los componentes relacionados con el almacenamiento de datos (como las solicitudes y respuestas de fabricantes) deben utilizar bases de datos escalables, como bases de datos distribuidas o sistemas con particionamiento horizontal.

### Reliability

06. What is the acceptable downtime for the system?

     Se espera un tiempo de inactividad máximo de 4 horas al mes (99.5% de disponibilidad). Preferiblemente, el tiempo de inactividad se programaría durante horarios de bajo tráfico.

8. How should the system handle failures and ensure data integrity?
  
    El sistema debe ser tolerante a fallos, con capacidades de conmutación por error automáticas (failover) para la AI y los servidores de base de datos.
    Se debe implementar un sistema de transacciones que garantice que las solicitudes de diseño y los pedidos de fabricación se guarden correctamente, incluso si ocurre una falla.

9. What are the backup and recovery procedures?

     Deben realizarse copias de seguridad automáticas diarias de las bases de datos y del sistema de archivos, con opciones de recuperación rápida en menos de 30 minutos.

### Availability

09. What are the uptime requirements for the system?

     El sistema debe tener al menos un 99.5% de disponibilidad, lo que implica menos un par de horas de inactividad al mes.

11. Are there specific times when the system must be available without fail?

     El sistema debe estar siempre disponible durante horarios comerciales estándar (de 8 AM a 8 PM) y en eventos de marketing o campañas especiales.

### Security
11. What are the security requirements for data storage and transmission?

    Los datos sensibles, como la información de los usuarios, deben estar guardados en las bases de datos CosmosDB, SQL Server o Azure SQL Database.

12. How should user authentication and authorization be managed?

    La autenticación y autorización de datos deben ser manejada por OAuth 2.0 y se utilizarán tokens de acceso (JWT) con tiempos de expiración definidos.

13. Are there any compliance requirements related to data security?

    El sistema debe proteger los datos personales de los usuarios cumpliendo con las leyes acorde al país en el que se encuentre el sistema (Ley 8968 de Costa Rica para la protección de datos personales y la ISO Norma internacional).

### Usability
14. What are the usability standards for the user interface?

    La interfaz de usuario debe proporcionar consistencia, facilidad de uso y un tiempo de respuesta rápido (no más de un segundo).

15. How should the system accommodate users with disabilities?

    El sistema debe cumplir con las pautas WCAG 2.1 para permitirle accesibilidad web a las personas con discapacidades.

16. Are there specific requirements for user training and documentation?

    Se proveerá un video manual de usuario donde se explicará la funcionalidad del sistema y se proporcionará una documentación clara y detallada, en inglés y en español.

### Maintainability
17. How easy should it be to update and modify the system?

    El sistema estará diseñado con una arquitectura de microservicios, lo que permitirá que cada componente que requiera de actualización o modificación, se podrá realizar sin afectar a los demás componentes.

18. What are the requirements for logging and monitoring system performance?

    Se deben utilizar herramientas (ELK Stack) para registrar eventos y monitorear el rendimiento del sistema en tiempo real. El sistema debe generar alertas automáticas cuando se detecten problemas, y ofrecer una visualización clara del rendimiento para facilitar la toma de decisiones.

19. How should the system handle version control and deployment?

    Se debe utilizar Git para manejar el control de versiones, con un flujo de trabajo basado en ramas (GitFlow). Los despliegues deben gestionarse a través de Docker, permitiendo una facil escalabilidad.

### Interoperability
20. How should the system integrate with existing software and hardware?

    El sistema debe poder integrarse mediante APIs REST, haciendo uso de formatos estándar como JSON. Debe haver compatibilidad con sistemas de terceros, como PayPal y Sinpe para pagos, LiveChat para comunicaciones, y Trustpilot para reseñas de usuarios.

21. Are there any standards or protocols that the system must adhere to?

    Como opera en Estados Unidos y Costa Rica, deberá seguir los estándares de ambos países. Entre estos estándares se encuentra la regulación para protección de datos, ciberseguridad, protección de menores de edad, seguridad de pagos y para asegurar la accesibilidad.
    
### Compliance
22. What legal and regulatory requirements must the system comply with?

    Debe cumplir con las normas sobre protección y manejo de datos de usuario, de contenido para menores de edad, de accesibilidad y de seguridad en los métodos de pago. Para Estados Unidos estas normas serían: CCPA, COPPA, PCI DSS, y ADA. En Costa Rica debe seguir las leyes 7600 y 8968. En ambos debe mantenerse según estándares como ISO/IEC 27001 para la seguridad de información y privacidad de datos. Además debe cumplir con el pago de impuestos correspondiente para cada país.
    
24. Are there industry-specific standards that need to be followed?

    AIWoodWorks deberá crear diseños que cumplan con los siguientes estándares:
    - ANSI/BIFMA (Business and Institutional Furniture Manufacturers Association)
    - ASTM International
    - FSC (Forest Stewardship Council)
    - EPA (Environmental Protection Agency)
    - OSHA (Occupational Safety and Health Administration)
    - INTECO (Instituto de Normas Técnicas de Costa Rica)
    - Ley Forestal 7575
    Estas normativas asegurarán que los diseños y productos vendidos através de AIWoodWorks serán seguros, duraderos, sostenibles con el medio ambiente y ergonómicos. AIWoodWorks deberá concentrarse en eso a la hora de la generación del diseño, y para asegurar la calidad de los muebles vendidos, se reservará el derecho de admisión para fabricantes. Solo se aceptarán fabricantes en la aplicación que puedan cumplir con estos estándares.

### Extensibility
24. How should the system be designed to accommodate future enhancements?
    
    AIWoodWorks se desarrollará con el uso de microservicios para asegurar que cada función pueda aumentar su capacidad en caso de ser necesario a futuro. Estos servicios deberán ser implementados de forma modular, o sea que son aislados uno del otro, por lo que, por ejemplo, un cambio en la forma de creación de diseños, no debería afectar el registro de usuarios. También deberá ser desarrollado por medio de APIs que garanticen que la implementación de nuevas funciones no interfiera con las funciones ya definidas. Se deberán utilizar patrones de diseño como Decorator, Observer y Strategy que permitan implementar nuevas funciones a objetos ya existentes sin afectar las funciones anteriores.
    
25. Are there specific areas where extensibility is critical?
    
    La extensibilidad es crítica en la base de datos, la creación de diseños y la integración de nuevos socios (fabricantes). Bases de datos y creación de diseños debe podr ampliar su capacidad a medida que crezca la app. La integración de nuevos fabricantes, debe tomar en cuenta la posibilidad de que a futuro se agreguen fabricantes con distintas características como estilo de producción y sus necesidades de negoico.

### Localization
26. What are the requirements for supporting multiple languages and regions?
    
    AiWoodWorks deberá poder ser usada en Estados Unidos y en Costa Rica, por lo que deberá tener la opción de cambiar entre inglés y español. También debe tener encuenta el soporte para distintos formatos de fechas (hora, dia, mes y año), tipos de monedas, formatos numéricos y medidas.
    
27. How should the system handle different date, time, and currency formats?
    
    Se deberá implementar un sistema flexible que modifique los datos según la región de entrega del producto. Como los fabricantes son estáticos y no cambian de zona, ellos verán la información siempre en el mismo formato. Sin embargo, para los clientes, deberá cambiar su zona y la zona de entrega, si están encargando un mueble desde Costa Rica pero se entregará y fabricará en Estados Unidos, el formato de fecha, tiempo y moneda deberá apegarse al de la zona de entrega y por ende al del fabricante.
    
### Documentation
28. What documentation is required for users, administrators, and developers?
    
    Usuarios: Manual de usuario, políticas de uso, soporte y contacto.
    Administradores: Guía de administración, mantenimiento del sistema, políticas de seguridad, guía sobre manejo de incidencias.
    Developers: Guía de desarrollo, guía de APIs, procedimientos de implementación, diagrama de bases, diagrama de clases, capas de clases, control de versiones.
    
29. How should the documentation be maintained and updated?
    
    La documentación se debe de mantener en un repositorio, en este caso se usará Google Drive. Toda la documentación debe de tener un responsable que se encargue de que se mantenga actualizada y veráz. La documentación debe de ser actualizada cada vez que haya un cambio, se debe mantener un control de los cambios y periodicamente se debe de revisar para asegurarse de que si se esté actualizando.


### Elementos UI

![matrixUI](https://github.com/user-attachments/assets/5666066a-0d43-497a-bb89-a4b0193137d1)

### Pantallas

Main page:
Aquí se tiene la primera pantalla que se ve al entrar a la aplicación web. En esta se verán los posts subidos por usuarios, pero no se podrá interactuar con la interfaz a menos que el usuario tenga su cuenta. Puede iniciar sesión o registrarse desde aquí.
![App](https://github.com/user-attachments/assets/26e18c71-07e2-4931-8416-6b0fb3e4e27a)

Main page user:
Una vez el usuario haya ingresado sesión esta pantalla principal se vería igual pero con la opción de acceder a su perfil. Además podrá interactuar con posts e iniciar una request a la AI.
![AppReg](https://github.com/user-attachments/assets/d180acf7-81cc-42fb-8903-f0bfefbcaa8c)

Chat page:
Cuando se cumplió con una request y se puso en contacto con otro usuario, se podrá acceder a la pantalla de chat donde se pueden enviar mensajes y comunicar entre sí. Existe un botón para sellar el trato que lleva al usuario a la pantalla de proceso de pago.
![Chat](https://github.com/user-attachments/assets/fd76bc4e-4f68-45fa-80cf-394d3368af52)

Login:
El usuario puede elegir hacer proceso de login con su correo electrónico y contraseña para iniciar sesión.
![Login](https://github.com/user-attachments/assets/0ab8eb74-d3c5-4819-a740-af7071730685)

Registration:
Si el usuario no tiene una cuenta, puede proceder a registrarse con algunos de sus datos personales como nombre, correo, localización, número de teléfono, y se pregunta si trabaja en el área de creación de muebles.
![Register](https://github.com/user-attachments/assets/acffec12-4f7c-4f9d-83f7-0ac0a289b9bc)

Profile page:
En la página para ver su perfil de usuario se muestra la información que se le pidió en el proceso de registro a la aplicación.
![Profile](https://github.com/user-attachments/assets/d80bd8e6-dca7-454e-b560-88367e983832)

AI Request:
Cuando el usuario desea hacer una request a la AI, tiene acceso a esta pantalla. Aquí puede enviar prompts a la AI, la cual responderá con diseños que el usuario haya descrito. Una vez se decidió el usuario por un deseño puede seleccionar para proceder con el siguiente paso y buscar a un especialista.
![Request](https://github.com/user-attachments/assets/9f3667ee-f720-483b-b0da-dadedc4660fa)

Payment page:
Una vez que se llegó a un acuerdo con el especialista, se puede sellar el trato, lo cual lleva a la pantalla de pago. Se puede realizar con tarjeta o sinpe. Se le piden los datos de la tarjeta o número de teléfono dependiendo del método.
![Payment](https://github.com/user-attachments/assets/a2c5f98e-be7b-4bc4-8df2-984296dab013)

