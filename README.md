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

02. How many concurrent users should the system support?
    El sistema debería soportar al menos 500 usuarios concurrentes en la fase inicial. A medida que crezcamos, debería poder escalar para soportar hasta 5,000 usuarios concurrentes sin degradación del rendimiento.

03. What are the performance benchmarks for critical operations?
    Las operaciones críticas como la generación de diseños por la AI y el envío de solicitudes a los fabricantes deberían completarse en menos de 15 segundos máximo. Cualquier operación que tarde más de 5 segundos sería considerada una falla de rendimiento.

### Scalability

04. How should the system handle increased load or data volume over time?
    El sistema debe estar preparado para usar un servicio de autoescalado en la nube para manejar aumentos en el tráfico y el volumen de datos, especialmente durante eventos de marketing o temporadas altas. 
    

05. Are there any specific scalability requirements for different components of the system?
    La parte de AI debe ser modular y escalar horizontalmente, permitiendo la adición de más instancias de generación de modelos si aumenta la demanda.
    Los componentes relacionados con el almacenamiento de datos (como las solicitudes y respuestas de fabricantes) deben utilizar bases de datos escalables, como bases de datos distribuidas o sistemas con particionamiento horizontal.

### Reliability

06. What is the acceptable downtime for the system?
    Se espera un tiempo de inactividad máximo de 4 horas al mes (99.5% de disponibilidad). Preferiblemente, el tiempo de inactividad se programaría durante horarios de bajo tráfico.

07. How should the system handle failures and ensure data integrity?
    El sistema debe ser tolerante a fallos, con capacidades de conmutación por error automáticas (failover) para la AI y los servidores de base de datos.
    Se debe implementar un sistema de transacciones que garantice que las solicitudes de diseño y los pedidos de fabricación se guarden correctamente, incluso si ocurre una falla.

08. What are the backup and recovery procedures?
    Deben realizarse copias de seguridad automáticas diarias de las bases de datos y del sistema de archivos, con opciones de recuperación rápida en menos de 30 minutos.

### Availability

09. What are the uptime requirements for the system?
    El sistema debe tener al menos un 99.5% de disponibilidad, lo que implica menos un par de horas de inactividad al mes.

10. Are there specific times when the system must be available without fail?
    El sistema debe estar siempre disponible durante horarios comerciales estándar (de 8 AM a 8 PM) y en eventos de marketing o campañas especiales.

### Interoperability

21. Are there any standards or protocols that the system must adhere to?

### Compliance
22. What legal and regulatory requirements must the system comply with?
23. Are there industry-specific standards that need to be followed?

### Extensibility
24. How should the system be designed to accommodate future enhancements?
25. Are there specific areas where extensibility is critical?

### Localization
26. What are the requirements for supporting multiple languages and regions?
27. How should the system handle different date, time, and currency formats?

### Documentation
28. What documentation is required for users, administrators, and developers?
29. How should the documentation be maintained and updated?
