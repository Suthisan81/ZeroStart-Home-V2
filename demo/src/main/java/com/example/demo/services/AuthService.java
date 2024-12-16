package com.example.demo.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.example.demo.utils.DatabaseConnection;

public class AuthService {

    public boolean isAdmin(String email) {
        boolean isAdmin = false;
        String sql = "SELECT Role FROM Users WHERE Email = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String role = rs.getString("Role");
                if ("admin".equalsIgnoreCase(role)) {
                    isAdmin = true;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return isAdmin;
    }
}