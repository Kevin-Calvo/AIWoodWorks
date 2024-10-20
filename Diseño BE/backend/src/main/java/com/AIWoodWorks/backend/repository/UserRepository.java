package com.AIWoodWorks.backend.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.AIWoodWorks.backend.model.Usuario;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class UserRepository {

    private static HikariDataSource dataSource;

    static {
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:sqlserver://sqldb-caso4-server.database.windows.net:1433;database=Proyecto;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
        config.setUsername("asaraya@sqldb-caso4-server");
        config.setPassword("Guachin321!");  
        config.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        config.setMaximumPoolSize(10);
        dataSource = new HikariDataSource(config);
    }

    public void save(Usuario user) {
        String SQL = "INSERT INTO Usuario (nombre, apellido, correo, password, telefono, idTipo, fechaLogUp) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setString(1, user.getNombre());
            pstmt.setString(2, user.getApellido());
            pstmt.setString(3, user.getCorreo());
            pstmt.setBytes(4, user.getPassword());  
            pstmt.setString(5, user.getTelefono());
            pstmt.setByte(6, user.getIdTipo());  
            pstmt.setDate(7, user.getFechaLogUp()); 
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Usuario findById(Long userId) {
        String SQL = "SELECT * FROM Usuario WHERE idUsuario = ?";
        Usuario user = null;

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setLong(1, userId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                user = new Usuario(
                    rs.getLong("idUsuario"),
                    rs.getString("nombre"),
                    rs.getString("apellido"),
                    rs.getString("correo"),
                    rs.getBytes("password"),  
                    rs.getString("telefono"),
                    rs.getByte("idTipo"),  
                    rs.getDate("fechaLogUp") 
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
