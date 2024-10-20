package com.AIWoodWorks.backend.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.AIWoodWorks.backend.model.Design;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class DesignRepository {

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

    public void save(Design design) {
        String SQL = "INSERT INTO Designs (prompt, dimensions) VALUES (?, ?)";

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setString(1, design.getPrompt());
            pstmt.setString(2, design.getDimensions());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Design findById(Long designId) {
        String SQL = "SELECT * FROM Designs WHERE id = ?";
        Design design = null;

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setLong(1, designId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                design = new Design(rs.getLong("id"), rs.getString("prompt"), rs.getString("dimensions"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return design;
    }
}
