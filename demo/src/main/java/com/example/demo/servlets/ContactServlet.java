package com.example.demo.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zerostarthome", "root", "password");
            String sql = "INSERT INTO Reports (FullName, PhoneNumber, Email, Title, Description) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, fullName);
            stmt.setString(2, phoneNumber);
            stmt.setString(3, email);
            stmt.setString(4, title);
            stmt.setString(5, description);
            stmt.executeUpdate();
            response.sendRedirect("homepage.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("connectpage.jsp");
        }
    }
}