CREATE TABLE "Proyecto"(
    "idProyecto" BIGINT NOT NULL,
    "idFabricante" BIGINT NOT NULL,
    "idUsuario" BIGINT NOT NULL,
    "Estado" BIGINT NOT NULL,
    "Inicio" DATE NOT NULL,
    "Final" DATE NOT NULL,
    "Costo" BIGINT NOT NULL,
    "Mueble" BIGINT NOT NULL
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
    "idMueble" BIGINT NOT NULL,
    "idMaterial" BIGINT NOT NULL,
    "Descripcion" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idmaterialmueble_primary" PRIMARY KEY("idMaterialMueble");
CREATE TABLE "Mueble"(
    "idMueble" BIGINT NOT NULL,
    "Descripcion" VARCHAR(255) NOT NULL,
    "ImagenID" BIGINT NOT NULL,
    "Tipo" BIGINT NOT NULL
);
ALTER TABLE
    "Mueble" ADD CONSTRAINT "mueble_idmueble_primary" PRIMARY KEY("idMueble");
CREATE TABLE "IARequest"(
    "idRequest" BIGINT NOT NULL,
    "Prompt" VARCHAR(255) NOT NULL,
    "Imagen" BIGINT NOT NULL,
    "idUsuario" BIGINT NOT NULL
);
ALTER TABLE
    "IARequest" ADD CONSTRAINT "iarequest_idrequest_primary" PRIMARY KEY("idRequest");
CREATE TABLE "Fabricante"(
    "idFabricante" BIGINT NOT NULL,
    "Descripcion" BIGINT NOT NULL,
    "idUsuario" BIGINT NOT NULL
);
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idfabricante_primary" PRIMARY KEY("idFabricante");
CREATE TABLE "Usuario"(
    "idUsuario" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL,
    "Correo" VARCHAR(255) NOT NULL,
    "Password" VARCHAR(255) NOT NULL,
    "Telefono" VARCHAR(255) NOT NULL,
    "Tipo" BIGINT NOT NULL,
    "FechaLogUp" DATE NULL
);
ALTER TABLE
    "Usuario" ADD CONSTRAINT "usuario_idusuario_primary" PRIMARY KEY("idUsuario");
CREATE TABLE "BitacoraFabricante"(
    "idBitacoraFabricante" BIGINT NOT NULL,
    "idFabricante" BIGINT NOT NULL,
    "imagen" BINARY(16) NOT NULL,
    "descripcion" VARCHAR(255) NOT NULL,
    "costo" BIGINT NOT NULL
);
ALTER TABLE
    "BitacoraFabricante" ADD CONSTRAINT "bitacorafabricante_idbitacorafabricante_primary" PRIMARY KEY("idBitacoraFabricante");
CREATE TABLE "Ubicacion"(
    "idUbicacion" BIGINT NOT NULL,
    "Direccion" VARCHAR(255) NOT NULL,
    "idCiudad" BIGINT NOT NULL
);
CREATE INDEX "ubicacion_idubicacion_index" ON
    "Ubicacion"("idUbicacion");
ALTER TABLE
    "Ubicacion" ADD CONSTRAINT "ubicacion_idubicacion_primary" PRIMARY KEY("idUbicacion");
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
    "Longitud" BIGINT NOT NULL
);
CREATE INDEX "usuarioubicacion_idusuarioubicacion_index" ON
    "UsuarioUbicacion"("idUsuarioUbicacion");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idusuarioubicacion_primary" PRIMARY KEY("idUsuarioUbicacion");
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
CREATE TABLE "Material"(
    "idMaterial" BIGINT NOT NULL,
    "Nombre" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Material" ADD CONSTRAINT "material_idmaterial_primary" PRIMARY KEY("idMaterial");
CREATE TABLE "TipoMueble"(
    "idTipoMueble" BIGINT NOT NULL,
    "Nombre" NVARCHAR(255) NOT NULL,
    "Descripcion" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idfabricante_foreign" FOREIGN KEY("idFabricante") REFERENCES "BitacoraFabricante"("idBitacoraFabricante");
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_mueble_foreign" FOREIGN KEY("Mueble") REFERENCES "Mueble"("idMueble");
ALTER TABLE
    "Ciudad" ADD CONSTRAINT "ciudad_idpais_foreign" FOREIGN KEY("idPais") REFERENCES "Pais"("idPais");
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_idfabricante_foreign" FOREIGN KEY("idFabricante") REFERENCES "Fabricante"("idFabricante");
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idmueble_foreign" FOREIGN KEY("idMueble") REFERENCES "Mueble"("idMueble");
ALTER TABLE
    "Usuario" ADD CONSTRAINT "usuario_tipo_foreign" FOREIGN KEY("Tipo") REFERENCES "TipoUsuario"("idTipo");
ALTER TABLE
    "IARequest" ADD CONSTRAINT "iarequest_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "Ubicacion" ADD CONSTRAINT "ubicacion_idciudad_foreign" FOREIGN KEY("idCiudad") REFERENCES "Ciudad"("idCiudad");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "MaterialMueble" ADD CONSTRAINT "materialmueble_idmaterial_foreign" FOREIGN KEY("idMaterial") REFERENCES "Material"("idMaterial");
ALTER TABLE
    "Proyecto" ADD CONSTRAINT "proyecto_estado_foreign" FOREIGN KEY("Estado") REFERENCES "Estado"("idEstado");
ALTER TABLE
    "Fabricante" ADD CONSTRAINT "fabricante_idusuario_foreign" FOREIGN KEY("idUsuario") REFERENCES "Usuario"("idUsuario");
ALTER TABLE
    "UsuarioUbicacion" ADD CONSTRAINT "usuarioubicacion_idubicacion_foreign" FOREIGN KEY("idUbicacion") REFERENCES "Ubicacion"("idUbicacion");
ALTER TABLE
    "TipoMueble" ADD CONSTRAINT "tipomueble_idtipomueble_foreign" FOREIGN KEY("idTipoMueble") REFERENCES "Mueble"("Tipo");