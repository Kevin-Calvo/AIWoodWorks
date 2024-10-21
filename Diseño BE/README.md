# Diseño del Backend

### Avance 2:
Ahora con los cambios, el diagrama se mantiene dentro del Scope del proyecto.

# Eplicación del diagrama final

## Diagrama de Clases

![Diagrama de Clases](./Diagrama%20de%20Clases%20Version%20Final.png)

Capas del sistema:

- **Modelo (Entities)**: Contiene las entidades que representan los objetos clave del sistema.
- **Controllers (Controladores)**: Gestionan las solicitudes HTTP entrantes.
- **Services (Servicios)**: Implementan la lógica de negocio del sistema.
- **Repository (Repositorios)**: Encapsulan la lógica para la interacción con la base de datos.
- **3rd Party Services (Servicios de Terceros)**: Interactúan con APIs de terceros para generar los diseños.

### Modelo

1. **Post**
   - Representa una publicación de diseño.
   - Atributos:
     - `idPost`: Identificador único.
     - `idMueble`: Identificador del mueble asociado.
     - `fechaPublicacion`: Fecha en que se publicó el diseño.
     - `presupuesto`: Presupuesto asignado para la construcción del mueble.
   - Métodos: 
     - `getIdPost()`, `getIdMueble()`, `getFechaPublicacion()`, `getPresupuesto()`

2. **Usuario**
   - Representa a los usuarios del sistema.
   - Atributos:
     - `idUsuario`: Identificador único.
     - `nombre`, `apellido`, `correo`, `telefono`: Información de contacto.
     - `foto`: Fotografía del usuario (como byte array).
     - `fechaLogUp`: Fecha de registro del usuario.
   - Métodos:
     - Getters y setters para todos los atributos.

3. **Design**
   - Representa un diseño generado a partir de un `prompt`.
   - Atributos:
     - `id`: Identificador único.
     - `prompt`: Texto descriptivo que se utiliza para generar el diseño.
     - `dimensions`: Dimensiones del diseño.
   - Métodos:
     - Getters y setters para todos los atributos.

4. **Chat**
   - Representa un mensaje o conversación entre el usuario y el fabricante.
   - Atributos:
     - `id`: Identificador único.
     - `message`: Contenido del mensaje.
   - Métodos:
     - Getters y setters para todos los atributos.

### Controladores

1. **PostController**
   - Interactúa con `PostService` para gestionar las publicaciones.
   - Métodos:
     - `createPost()`: Crea una nueva publicación de diseño.
     - `getPostById()`: Recupera una publicación por su ID.

2. **UserController**
   - Gestiona las operaciones relacionadas con los usuarios mediante `UserService`.
   - Métodos:
     - `createUser()`: Registra un nuevo usuario.
     - `getUserById()`: Obtiene un usuario por su ID.

3. **DesignController**
   - Gestiona los diseños generados a partir de `prompts` a través de `DesignService`.
   - Métodos:
     - `createDesign()`: Genera un nuevo diseño.
     - `getDesignById()`: Recupera un diseño por su ID.
     - `getHistoryByUser()`: Recupera el historial de diseños de un usuario.

4. **ChatController**
   - Controla la mensajería entre usuarios y fabricantes utilizando `ChatService`.
   - Métodos:
     - `sendMessage()`: Envía un mensaje en un chat.
     - `getChatHistory()`: Recupera el historial de mensajes de un chat.

### Servicios

1. **PostService**
   - Implementa la lógica de negocio para las publicaciones.
   - Interactúa con `PostRepository` para almacenar y recuperar publicaciones.

2. **UserService**
   - Gestiona la creación de usuarios y la recuperación de datos de usuario.
   - Interactúa con `UserRepository`.

3. **DesignService**
   - Se encarga de la creación de diseños utilizando `OpenAIService` y `DesignRepository`.
   - Los diseños se generan a partir de `prompts`, y el estado del diseño puede ser consultado a través de `getDesignStatus()`.

4. **ChatService**
   - Gestiona la mensajería entre los usuarios y fabricantes usando el servicio de mensajería en tiempo real `LiveChatService`.

### Repositorios

1. **PostRepository**
   - Gestiona la conexión con la base de datos para almacenar y recuperar publicaciones.

2. **UserRepository**
   - Gestiona las operaciones de base de datos relacionadas con los usuarios.

3. **DesignRepository**
   - Gestiona las operaciones de base de datos para almacenar y recuperar diseños generados.

### Servicios de Terceros

1. **OpenAIService**
   - Utiliza la API de OpenAI para generar diseños a partir de `prompts`.

2. **MidJourneyAIService, FluxAIService, DallEAIServices**
   - APIs de terceros adicionales que también generan diseños y permiten consultar el estado de los mismos.

3. **LiveChatService**
   - Gestiona los mensajes en tiempo real entre los usuarios y los fabricantes.

# Diagrama de Bloques

![Diagrama de Bloques](./Diagrama%20de%20bloques%20version%20final.png)

Capas del Sistema:

- **Model**: Define las entidades principales que se utilizan en el sistema.
- **Controllers**: Son los responsables de gestionar las solicitudes HTTP entrantes y derivarlas al servicio correspondiente.
- **Services**: Contienen la lógica de negocio del sistema. Procesan las solicitudes de los controladores y se comunican con los repositorios y servicios de terceros.
- **Repository**: Encargados de gestionar las conexiones con las bases de datos y realizar las operaciones CRUD (Crear, Leer, Actualizar, Borrar).
- **3rd Party Services**: Servicios externos que permiten generar los diseños solicitados y gestionar la comunicación en tiempo real.

## Modelo

- **Post**: Representa una publicación de diseño.
- **Service**: Representa una solicitud de servicio relacionada con la creación de diseños.
- **Design**: Entidad que contiene los datos de un diseño generado por IA.
- **Chat**: Gestiona los mensajes entre los usuarios y los fabricantes.

## Controladores

- **PostController**: Gestiona las solicitudes relacionadas con las publicaciones de diseño.
- **UserController**: Gestiona las solicitudes relacionadas con los usuarios.
- **DesignController**: Gestiona las solicitudes para la generación de diseños.
- **ChatController**: Gestiona la comunicación entre usuarios y fabricantes.

## Servicios

- **PostService**: Implementa la lógica de negocio relacionada con las publicaciones.
- **UserService**: Gestiona la creación y recuperación de información de usuarios.
- **DesignService**: Genera los diseños basados en IA y gestiona el historial de diseños.
- **ChatService**: Gestiona la mensajería en tiempo real entre los usuarios y los fabricantes.

## Repositorios

- **PostRepository**: Interactúa con la base de datos para almacenar y recuperar publicaciones.
- **UserRepository**: Gestiona las operaciones en la base de datos para los usuarios.
- **DesignRepository**: Se encarga de las operaciones de almacenamiento y recuperación de los diseños generados.

## Bases de Datos

- **Azure SQL**: Base de datos utilizada para almacenar publicaciones y usuarios.
- **CosmosDB**: Base de datos NoSQL utilizada para almacenar los diseños generados.

## Servicios Externos

- **OpenAI, MidJourney, FLUX 1, DALL-E 3**: APIs de terceros que permiten generar los diseños solicitados.
- **LiveChat**: Servicio de mensajería en tiempo real que permite la comunicación entre los usuarios y los fabricantes.
