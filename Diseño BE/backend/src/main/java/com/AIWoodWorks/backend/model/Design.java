package com.AIWoodWorks.backend.model;

import org.springframework.data.annotation.Id;

import com.azure.spring.data.cosmos.core.mapping.Container;

// Esta clase representa el modelo de imágenes almacenado en Cosmos DB
// El resto de la información relacionada con las imágenes está almacenada en la base de datos relacional
@Container(containerName = "images")
public class Design {

    @Id
    private String id;  // La clave principal que representará el identificador de la imagen
    private String dimensions;
    private String prompt;

    public Design() {}

    public Design(String id, String prompt, String dimensions) {
        this.id = id;
        this.dimensions = dimensions;
        this.prompt = prompt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }

    public String getPrompt() {
        return prompt;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt;
    }
}
