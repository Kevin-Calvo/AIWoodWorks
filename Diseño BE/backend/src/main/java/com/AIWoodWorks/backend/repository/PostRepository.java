package com.AIWoodWorks.backend.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.AIWoodWorks.backend.model.Post;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class PostRepository {

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

    public void save(Post post) {
        String SQL = "INSERT INTO Posts (title, content) VALUES (?, ?)";

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setString(1, post.getTitle());
            pstmt.setString(2, post.getContent());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Post findById(Long postId) {
        String SQL = "SELECT * FROM Posts WHERE id = ?";
        Post post = null;

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setLong(1, postId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                post = new Post(rs.getLong("id"), rs.getString("title"), rs.getString("content"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return post;
    }
}
