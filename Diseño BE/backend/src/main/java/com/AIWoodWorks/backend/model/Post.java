package com.AIWoodWorks.backend.model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Post {

    private Long idPost;
    private Long idMueble;
    private LocalDate fechaPublicacion;
    private BigDecimal presupuesto;

    public Post() {}

    public Post(Long idPost, Long idMueble, LocalDate fechaPublicacion, BigDecimal presupuesto) {
        this.idPost = idPost;
        this.idMueble = idMueble;
        this.fechaPublicacion = fechaPublicacion;
        this.presupuesto = presupuesto;
    }

    public Long getIdPost() {
        return idPost;
    }

    public void setIdPost(Long idPost) {
        this.idPost = idPost;
    }

    public Long getIdMueble() {
        return idMueble;
    }

    public void setIdMueble(Long idMueble) {
        this.idMueble = idMueble;
    }

    public LocalDate getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(LocalDate fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public BigDecimal getPresupuesto() {
        return presupuesto;
    }

    public void setPresupuesto(BigDecimal presupuesto) {
        this.presupuesto = presupuesto;
    }
}
