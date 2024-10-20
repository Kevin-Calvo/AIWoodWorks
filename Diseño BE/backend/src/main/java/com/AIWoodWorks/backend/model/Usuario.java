package com.AIWoodWorks.backend.model;

public class Usuario {
    
    private Long idUsuario;
    private String nombre;
    private String apellido;
    private String correo;
    private byte[] password;  // Varbinary en SQL corresponde a byte[] en Java
    private String telefono;
    private Byte idTipo;  // tinyint en SQL corresponde a Byte en Java
    private java.sql.Date fechaLogUp;  // Tipo date en SQL corresponde a java.sql.Date

    public Usuario() {}

    public Usuario(Long idUsuario, String nombre, String apellido, String correo, byte[] password, String telefono, Byte idTipo, java.sql.Date fechaLogUp) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.password = password;
        this.telefono = telefono;
        this.idTipo = idTipo;
        this.fechaLogUp = fechaLogUp;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public byte[] getPassword() {
        return password;
    }

    public void setPassword(byte[] password) {
        this.password = password;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Byte getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(Byte idTipo) {
        this.idTipo = idTipo;
    }

    public java.sql.Date getFechaLogUp() {
        return fechaLogUp;
    }

    public void setFechaLogUp(java.sql.Date fechaLogUp) {
        this.fechaLogUp = fechaLogUp;
    }
}
