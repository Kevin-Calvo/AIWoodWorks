package com.AIWoodWorks.backend.model;

public class Design {

    private Long id;
    private String prompt;
    private String dimensions;

    public Design() {}

    public Design(Long id, String prompt, String dimensions) {
        this.id = id;
        this.prompt = prompt;
        this.dimensions = dimensions;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPrompt() {
        return prompt;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }
}