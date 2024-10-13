CREATE TABLE "Proyecto"(
    "idProyecto" BIGINT NOT NULL,
    "Estado" BIGINT NOT NULL,
    "Inicio" DATE NOT NULL,
    "Final" DATE NOT NULL,
    "Costo" BIGINT NOT NULL,
    "IdOferta" BIGINT NOT NULL
);
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_idproyecto_primary" PRIMARY KEY("idProyecto");
CREATE TABLE "Estado"(
    "idEstado" BIGINT NOT NULL,
    "Descripcion" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Estado" ADD CONSTRAINT "estado_idestado_primary" PRIMARY KEY("idEstado");
CREATE TABLE "MaterialMueble"(
    "idMaterialMueble" BIGINT NOT NULL,
    "idOferta" BIGINT NOT NULL,
    "idMaterial" VARCHAR(255) NOT NULL,
    "Descripcion" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idmaterialmueble_primary" PRIMARY KEY("idMaterialMueble");
CREATE TABLE "IARequest"(
    "idRequest" BIGINT NOT NULL,
    "Prompt" VARCHAR(255) NOT NULL,
    "Imagen" BIGINT NOT NULL,
    "idUsuario" BIGINT NOT NULL,
    "TipoMueble" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "IARequest" ADD CONSTRAINT "iarequest_idrequest_primary" PRIMARY KEY("idRequest");
CREATE TABLE "Post"(
    "idPost" BIGINT NOT NULL,
    "Date" DATETIME NOT NULL,
    "Estado" BIGINT NOT NULL,
    "idIARequest" BIGINT NOT NULL
);
ALTER TABLE
    "Post" ADD CONSTRAINT "post_idpost_primary" PRIMARY KEY("idPost");
CREATE TABLE "Fabricante"(
    "idFabricante" BIGINT NOT NULL,
    "Descripbigintcion" VARCHAR(200) NOT NULL,
    "idUsuario" BIGINT NOT NULL
);
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idfabricante_primary" PRIMARY KEY("idFabricante");
CREATE TABLE "Usuario"(
    "idUsuario" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL,
    "Correo" VARCHAR(255) NOT NULL,
    "Passwordvarchar" VARBINARY(MAX) NOT NULL,
    "Telefono" VARCHAR(255) NOT NULL,
    "Tipo" BIGINT NOT NULL,
    "FechaLogUp" DATE NULL
);
ALTER TABLE
    "Usuario" ADD CONSTRAINT "usuario_idusuario_primary" PRIMARY KEY("idUsuario");
CREATE TABLE "BitacoraFabricante"(
    "idBitacoraFabricante" BIGINT NOT NULL,
    "idFabricante" BIGINT NOT NULL,
    "bigint" BINARY(16) NOT NULL,
    "descripcion" VARCHAR(255) NOT NULL,
    "costo" BIGINT NOT NULL
);
ALTER TABLE
    "BitacoraFabricante" ADD CONSTRAINT "bitacorafabricante_idbitacorafabricante_primary" PRIMARY KEY("idBitacoraFabricante");
CREATE TABLE "Oferta"(
    "idOferta" BIGINT NOT NULL,
    "idFabricante" BIGINT NOT NULL,
    "Costo" BIGINT NOT NULL,
    "idPost" BIGINT NOT NULL
);
ALTER TABLE
    "Oferta" ADD CONSTRAINT "oferta_idoferta_primary" PRIMARY KEY("idOferta");
CREATE TABLE "Material"(
    "idMaterial" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Material" ADD CONSTRAINT "material_idmaterial_primary" PRIMARY KEY("idMaterial");
CREATE TABLE "Ciudad"(
    "idCiudad" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL,
    "idPais" BIGINT NOT NULL
);
CREATE INDEX "ciudad_idciudad_index" ON
    "Ciudad"("idCiudad");
ALTER TABLE
    "Ciudad" ADD CONSTRAINT "ciudad_idciudad_primary" PRIMARY KEY("idCiudad");
CREATE TABLE "UsuarioUbicacion"(
    "idUsuarioUbicacion" BIGINT NOT NULL,
    "idUsuario" BIGINT NOT NULL,
    "idUbicacion" BIGINT NOT NULL,
    "Latitud" DECIMAL(9, 6) NOT NULL,
    "Longitud" BIGINT NOT NULL,
    "zipcode" VARCHAR(9) NOT NULL,
    "Direccion" VARCHAR(255) NOT NULL,
    "idCiudad" BIGINT NOT NULL
);
CREATE INDEX "usuarioubicacion_idusuarioubicacion_index" ON
    "UsuarioUbicacion"("idUsuarioUbicacion");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idusuarioubicacion_primary" PRIMARY KEY("idUsuarioUbicacion");
CREATE TABLE "TipoMueble"(
    "idTipo" BIGINT NOT NULL,
    "Nombre" NVARCHAR(255) NOT NULL,
    "Descripcion" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "TipoMueble" ADD CONSTRAINT "tipomueble_idtipo_primary" PRIMARY KEY("idTipo");
CREATE TABLE "Pais"(
    "idPais" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL
);
CREATE INDEX "pais_idpais_index" ON
    "Pais"("idPais");
ALTER TABLE
    "Pais" ADD CONSTRAINT "pais_idpais_primary" PRIMARY KEY("idPais");
CREATE TABLE "TipoUsuario"(
    "idTipo" BIGINT NOT NULL,
    "nombreUsuario" BIGINT NOT NULL
);
ALTER TABLE
    "TipoUsuario" ADD CONSTRAINT "tipousuario_idtipo_primary" PRIMARY KEY("idTipo");
ALTER TABLE
    "IARequest" ADD CONSTRAINT "iarequest_tipomueble_foreign" FOREIGN KEY("TipoMueble") REFERENCES "TipoMueble"("idTipo");
ALTER TABLE
    "Oferta" ADD CONSTRAINT "oferta_idfabricante_foreign" FOREIGN KEY("idFabricante") REFERENCES "Fabricante"("idFabricante");
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idfabricante_foreign" FOREIGN KEY("idFabricante") REFERENCES "BitacoraFabricante"("idBitacoraFabricante");
ALTER TABLE
    "Oferta" ADD CONSTRAINT "oferta_idpost_foreign" FOREIGN KEY("idPost") REFERENCES "Post"("idPost");
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_estado_foreign" FOREIGN KEY("Estado") REFERENCES "Estado"("idEstado");
ALTER TABLE
    "Ciudad" ADD CONSTRAINT "ciudad_idpais_foreign" FOREIGN KEY("idPais") REFERENCES "Pais"("idPais");
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_idoferta_foreign" FOREIGN KEY("IdOferta") REFERENCES "Oferta"("idOferta");
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idmaterial_foreign" FOREIGN KEY("idMaterial") REFERENCES "Material"("idMaterial");
ALTER TABLE
    "Usuario" ADD CONSTRAINT "usuario_tipo_foreign" FOREIGN KEY("Tipo") REFERENCES "TipoUsuario"("idTipo");
ALTER TABLE
    "IARequest" ADD CONSTRAINT "iarequest_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idciudad_foreign" FOREIGN KEY("idCiudad") REFERENCES "Ciudad"("idCiudad");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idoferta_foreign" FOREIGN KEY("idOferta") REFERENCES "Oferta"("idOferta");
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "Post" ADD CONSTRAINT "post_idiarequest_foreign" FOREIGN KEY("idIARequest") REFERENCES "IARequest"("idRequest");
ALTER TABLE
    "Post" ADD CONSTRAINT "post_estado_foreign" FOREIGN KEY("Estado") REFERENCES "Estado"("idEstado");