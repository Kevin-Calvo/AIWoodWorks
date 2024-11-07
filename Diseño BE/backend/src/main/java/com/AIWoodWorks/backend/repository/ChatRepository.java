package com.AIWoodWorks.backend.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.AIWoodWorks.backend.model.Chat;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class ChatRepository {

    private static HikariDataSource dataSource;

    static {
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:sqlserver://aiwoodworkssrvr.database.windows.net:1433;database=aiwoodworks_db;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
        config.setUsername("asaraya@aiwoodworkssrvr");
        config.setPassword("Guachin321!"); 
        config.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        config.setMaximumPoolSize(10);
        dataSource = new HikariDataSource(config);
    }
    

    public void save(Chat chat) {
        String SQL = "INSERT INTO Chats (message) VALUES (?)";

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setString(1, chat.getMessage());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Chat findById(Long chatId) {
        String SQL = "SELECT * FROM Chats WHERE id = ?";
        Chat chat = null;

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setLong(1, chatId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                chat = new Chat(rs.getLong("id"), rs.getString("message"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chat;
    }
}
