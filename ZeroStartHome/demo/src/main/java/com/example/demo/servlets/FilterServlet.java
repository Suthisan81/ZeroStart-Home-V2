package com.example.demo.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FilterServlet")
public class FilterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String minPrice = request.getParameter("minPrice");
        String maxPrice = request.getParameter("maxPrice");

        List<Property> properties = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zerostarthome", "root", "password");
            String sql = "SELECT * FROM Properties WHERE Type = ? AND Price BETWEEN ? AND ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, type);
            stmt.setString(2, minPrice);
            stmt.setString(3, maxPrice);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Property property = new Property();
                property.setPropertyID(rs.getInt("PropertyID"));
                property.setPropertyName(rs.getString("PropertyName"));
                property.setPrice(rs.getDouble("Price"));
                // Set other property fields
                properties.add(property);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("properties", properties);
        request.getRequestDispatcher("filteredResults.jsp").forward(request, response);
    }
}