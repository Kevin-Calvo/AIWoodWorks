-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-10-20 14:59:40.327

-- tables
-- Table: Ciudad
CREATE TABLE Ciudad (
    idCiudad bigint  NOT NULL,
    idEstado bigint  NOT NULL,
    nombre varchar(100)  NOT NULL,
    CONSTRAINT Ciudad_pk PRIMARY KEY  (idCiudad)
);

-- Table: Direccion
CREATE TABLE Direccion (
    idDireccion bigint  NOT NULL,
    idCiudad bigint  NOT NULL,
    calle varchar(100)  NOT NULL,
    numero int  NOT NULL,
    codigoPostal varchar(9)  NOT NULL,
    geolocalizacion geography  NOT NULL,
    CONSTRAINT Direccion_pk PRIMARY KEY  (idDireccion)
);

-- Table: Estado
CREATE TABLE Estado (
    idEstado bigint  NOT NULL,
    idPais int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    CONSTRAINT Estado_pk PRIMARY KEY  (idEstado)
);

-- Table: Fabricante
CREATE TABLE Fabricante (
    idFabricante bigint  NOT NULL,
    descripcion nvarchar(max)  NOT NULL,
    idUsuario bigint  NOT NULL,
    CONSTRAINT Fabricante_pk PRIMARY KEY  (idFabricante)
);

-- Table: FabricanteMaterial
CREATE TABLE FabricanteMaterial (
    idFabricanteMaterial int  NOT NULL,
    idFabricante bigint  NOT NULL,
    idMaterial int  NOT NULL,
    detalle nvarchar(MAX)  NOT NULL,
    CONSTRAINT FabricanteMaterial_pk PRIMARY KEY  (idFabricanteMaterial)
);

-- Table: FabricanteTipoMueble
CREATE TABLE FabricanteTipoMueble (
    idFabricanteTipoMueble int  NOT NULL,
    idFabricante bigint  NOT NULL,
    idTipoMueboe int  NOT NULL,
    descripcion nvarchar(MAX)  NOT NULL,
    CONSTRAINT FabricanteTipoMueble_pk PRIMARY KEY  (idFabricanteTipoMueble)
);

-- Table: IARequest
CREATE TABLE IARequest (
    idIARequest bigint  NOT NULL,
    idUsuario bigint  NOT NULL,
    fecha datetime  NOT NULL,
    prompt nvarchar(max)  NOT NULL,
    idMueble bigint  NOT NULL,
    CONSTRAINT IARequest_pk PRIMARY KEY  (idIARequest)
);

-- Table: Material
CREATE TABLE Material (
    idMaterial int  NOT NULL,
    nombre nvarchar(100)  NOT NULL,
    CONSTRAINT Material_pk PRIMARY KEY  (idMaterial)
);

-- Table: MaterialMueble
CREATE TABLE MaterialMueble (
    idMaterialMueble bigint  NOT NULL,
    idMueble bigint  NOT NULL,
    idMaterial int  NOT NULL,
    descripcion nvarchar(MAX)  NOT NULL,
    CONSTRAINT MaterialMueble_pk PRIMARY KEY  (idMaterialMueble)
);

-- Table: Modificacion
CREATE TABLE Modificacion (
    idModificacion bigint  NOT NULL,
    idIARequest bigint  NOT NULL,
    prompt nvarchar(max)  NOT NULL,
    fecha datetime  NOT NULL,
    idMueble bigint  NOT NULL,
    CONSTRAINT Modificacion_pk PRIMARY KEY  (idModificacion)
);

-- Table: Mueble
CREATE TABLE Mueble (
    idMueble bigint  NOT NULL,
    descripcion nvarchar(max)  NOT NULL,
    idTipoMueble int  NOT NULL,
    CONSTRAINT Mueble_pk PRIMARY KEY  (idMueble)
);

-- Table: MuebleImagen
CREATE TABLE MuebleImagen (
    idMuebleImagen bigint  NOT NULL,
    idRespuesta bigint  NOT NULL,
    idImagen nvarchar(100)  NOT NULL,
    descripcion nvarchar(max)  NOT NULL,
    CONSTRAINT MuebleImagen_pk PRIMARY KEY  (idMuebleImagen)
);

-- Table: Oferta
CREATE TABLE Oferta (
    idOferta bigint  NOT NULL,
    idPost bigint  NOT NULL,
    idFabricante bigint  NOT NULL,
    fecha datetime  NOT NULL,
    costo money  NOT NULL,
    posibleFinal date  NOT NULL,
    descripcion nvarchar(max)  NOT NULL,
    CONSTRAINT Oferta_pk PRIMARY KEY  (idOferta)
);

-- Table: Pais
CREATE TABLE Pais (
    idPais int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    CONSTRAINT Pais_pk PRIMARY KEY  (idPais)
);

-- Table: Post
CREATE TABLE Post (
    idPost bigint  NOT NULL,
    idMueble bigint  NOT NULL,
    fechaPublicacion datetime  NOT NULL,
    presupuesto money  NOT NULL,
    CONSTRAINT Post_pk PRIMARY KEY  (idPost)
);

-- Table: PostFabricante
CREATE TABLE PostFabricante (
    idPostFabricante bigint  NOT NULL,
    idPost bigint  NOT NULL,
    idFabricante bigint  NOT NULL,
    fecha datetime  NOT NULL,
    CONSTRAINT PostFabricante_pk PRIMARY KEY  (idPostFabricante)
);

-- Table: Recomendacion
CREATE TABLE Recomendacion (
    idRecomendacion bigint  NOT NULL,
    idMueble bigint  NOT NULL,
    idFabricante bigint  NOT NULL,
    prioridad tinyint  NOT NULL,
    CONSTRAINT Recomendacion_pk PRIMARY KEY  (idRecomendacion)
);

-- Table: Tipo
CREATE TABLE Tipo (
    idTipo tinyint  NOT NULL,
    nombre varchar(30)  NOT NULL,
    CONSTRAINT Tipo_pk PRIMARY KEY  (idTipo)
);

-- Table: TipoMueble
CREATE TABLE TipoMueble (
    idTipoMueble int  NOT NULL,
    nombre nvarchar(100)  NOT NULL,
    CONSTRAINT TipoMueble_pk PRIMARY KEY  (idTipoMueble)
);

-- Table: Usuario
CREATE TABLE Usuario (
    idUsuario bigint  NOT NULL,
    nombre varchar(100)  NOT NULL,
    apellido varchar(100)  NOT NULL,
    correo varchar(256)  NOT NULL,
    password varbinary(100)  NOT NULL,
    telefono varchar(15)  NOT NULL,
    idTipo tinyint  NOT NULL,
    fechaLogUp date  NOT NULL,
    CONSTRAINT Usuario_pk PRIMARY KEY  (idUsuario)
);

-- Table: UsuarioDireccion
CREATE TABLE UsuarioDireccion (
    idUsuarioDireccion bigint  NOT NULL,
    idUsuario bigint  NOT NULL,
    idDireccion bigint  NOT NULL,
    CONSTRAINT UsuarioDireccion_pk PRIMARY KEY  (idUsuarioDireccion)
);

-- foreign keys
-- Reference: Ciudad_Estado (table: Ciudad)
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_Estado
    FOREIGN KEY (idEstado)
    REFERENCES Estado (idEstado)
    ON DELETE  CASCADE;

-- Reference: Direccion_Ciudad (table: Direccion)
ALTER TABLE Direccion ADD CONSTRAINT Direccion_Ciudad
    FOREIGN KEY (idCiudad)
    REFERENCES Ciudad (idCiudad)
    ON DELETE  CASCADE;

-- Reference: Estado_Pais (table: Estado)
ALTER TABLE Estado ADD CONSTRAINT Estado_Pais
    FOREIGN KEY (idPais)
    REFERENCES Pais (idPais)
    ON DELETE  CASCADE;

-- Reference: FabricanteMaterial_Fabricante (table: FabricanteMaterial)
ALTER TABLE FabricanteMaterial ADD CONSTRAINT FabricanteMaterial_Fabricante
    FOREIGN KEY (idFabricante)
    REFERENCES Fabricante (idFabricante);

-- Reference: FabricanteMaterial_Material (table: FabricanteMaterial)
ALTER TABLE FabricanteMaterial ADD CONSTRAINT FabricanteMaterial_Material
    FOREIGN KEY (idMaterial)
    REFERENCES Material (idMaterial);

-- Reference: FabricanteTipoMueble_Fabricante (table: FabricanteTipoMueble)
ALTER TABLE FabricanteTipoMueble ADD CONSTRAINT FabricanteTipoMueble_Fabricante
    FOREIGN KEY (idFabricante)
    REFERENCES Fabricante (idFabricante);

-- Reference: FabricanteTipoMueble_TipoMueble (table: FabricanteTipoMueble)
ALTER TABLE FabricanteTipoMueble ADD CONSTRAINT FabricanteTipoMueble_TipoMueble
    FOREIGN KEY (idTipoMueboe)
    REFERENCES TipoMueble (idTipoMueble);

-- Reference: Fabricante_Usuario (table: Fabricante)
ALTER TABLE Fabricante ADD CONSTRAINT Fabricante_Usuario
    FOREIGN KEY (idUsuario)
    REFERENCES Usuario (idUsuario);

-- Reference: IARequest_Mueble (table: IARequest)
ALTER TABLE IARequest ADD CONSTRAINT IARequest_Mueble
    FOREIGN KEY (idMueble)
    REFERENCES Mueble (idMueble);

-- Reference: IARequest_Usuario (table: IARequest)
ALTER TABLE IARequest ADD CONSTRAINT IARequest_Usuario
    FOREIGN KEY (idUsuario)
    REFERENCES Usuario (idUsuario);

-- Reference: MaterialMueble_Material (table: MaterialMueble)
ALTER TABLE MaterialMueble ADD CONSTRAINT MaterialMueble_Material
    FOREIGN KEY (idMaterial)
    REFERENCES Material (idMaterial);

-- Reference: MaterialMueble_Mueble (table: MaterialMueble)
ALTER TABLE MaterialMueble ADD CONSTRAINT MaterialMueble_Mueble
    FOREIGN KEY (idMueble)
    REFERENCES Mueble (idMueble);

-- Reference: Modificacion_IARequest (table: Modificacion)
ALTER TABLE Modificacion ADD CONSTRAINT Modificacion_IARequest
    FOREIGN KEY (idIARequest)
    REFERENCES IARequest (idIARequest);

-- Reference: Modificacion_Mueble (table: Modificacion)
ALTER TABLE Modificacion ADD CONSTRAINT Modificacion_Mueble
    FOREIGN KEY (idMueble)
    REFERENCES Mueble (idMueble);

-- Reference: MuebleImagen_Mueble (table: MuebleImagen)
ALTER TABLE MuebleImagen ADD CONSTRAINT MuebleImagen_Mueble
    FOREIGN KEY (idRespuesta)
    REFERENCES Mueble (idMueble);

-- Reference: Mueble_TipoMueble (table: Mueble)
ALTER TABLE Mueble ADD CONSTRAINT Mueble_TipoMueble
    FOREIGN KEY (idTipoMueble)
    REFERENCES TipoMueble (idTipoMueble);

-- Reference: Oferta_Fabricante (table: Oferta)
ALTER TABLE Oferta ADD CONSTRAINT Oferta_Fabricante
    FOREIGN KEY (idFabricante)
    REFERENCES Fabricante (idFabricante);

-- Reference: Oferta_Post (table: Oferta)
ALTER TABLE Oferta ADD CONSTRAINT Oferta_Post
    FOREIGN KEY (idPost)
    REFERENCES Post (idPost);

-- Reference: PostFabricante_Fabricante (table: PostFabricante)
ALTER TABLE PostFabricante ADD CONSTRAINT PostFabricante_Fabricante
    FOREIGN KEY (idFabricante)
    REFERENCES Fabricante (idFabricante);

-- Reference: PostFabricante_Post (table: PostFabricante)
ALTER TABLE PostFabricante ADD CONSTRAINT PostFabricante_Post
    FOREIGN KEY (idPost)
    REFERENCES Post (idPost);

-- Reference: Post_Mueble (table: Post)
ALTER TABLE Post ADD CONSTRAINT Post_Mueble
    FOREIGN KEY (idMueble)
    REFERENCES Mueble (idMueble);

-- Reference: Recomendacion_Fabricante (table: Recomendacion)
ALTER TABLE Recomendacion ADD CONSTRAINT Recomendacion_Fabricante
    FOREIGN KEY (idFabricante)
    REFERENCES Fabricante (idFabricante);

-- Reference: Recomendacion_Mueble (table: Recomendacion)
ALTER TABLE Recomendacion ADD CONSTRAINT Recomendacion_Mueble
    FOREIGN KEY (idMueble)
    REFERENCES Mueble (idMueble);

-- Reference: UsuarioDireccion_Direccion (table: UsuarioDireccion)
ALTER TABLE UsuarioDireccion ADD CONSTRAINT UsuarioDireccion_Direccion
    FOREIGN KEY (idDireccion)
    REFERENCES Direccion (idDireccion)
    ON DELETE  CASCADE;

-- Reference: UsuarioDireccion_Usuario (table: UsuarioDireccion)
ALTER TABLE UsuarioDireccion ADD CONSTRAINT UsuarioDireccion_Usuario
    FOREIGN KEY (idUsuario)
    REFERENCES Usuario (idUsuario)
    ON DELETE  CASCADE;

-- Reference: Usuario_Tipo (table: Usuario)
ALTER TABLE Usuario ADD CONSTRAINT Usuario_Tipo
    FOREIGN KEY (idTipo)
    REFERENCES Tipo (idTipo);

-- End of file.

