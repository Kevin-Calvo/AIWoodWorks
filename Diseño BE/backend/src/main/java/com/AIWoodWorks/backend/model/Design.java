package com.AIWoodWorks.backend.model;

import com.azure.spring.data.cosmos.core.mapping.Container;
import org.springframework.data.annotation.Id;

// Esta clase representa el modelo de imágenes almacenado en Cosmos DB
// El resto de la información relacionada con las imágenes está almacenada en la base de datos relacional
@Container(containerName = "images")
public class Design {

    @Id
    private String id;  // La clave principal que representará el identificador de la imagen
    private String imageUrl;  // URL o base64 de la imagen

    public Design() {}

    public Design(String id, String imageUrl) {
        this.id = id;
        this.imageUrl = imageUrl;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "Design{" +
                "id='" + id + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                '}';
    }
}
