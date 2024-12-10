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
import javax.servlet.http.HttpSession;

@WebServlet("/SellPage3Servlet")
public class SellPage3Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String status = (String) session.getAttribute("status");
        String propertyStatus = (String) session.getAttribute("propertyStatus");
        String type = (String) session.getAttribute("type");
        String location = (String) session.getAttribute("location");
        String propertyName = (String) session.getAttribute("propertyName");
        String description = (String) session.getAttribute("description");
        int bedrooms = Integer.parseInt((String) session.getAttribute("bedrooms"));
        double bathrooms = Double.parseDouble((String) session.getAttribute("bathrooms"));
        int floor = Integer.parseInt((String) session.getAttribute("floor"));
        double sqft = Double.parseDouble((String) session.getAttribute("sqft"));
        double price = Double.parseDouble((String) session.getAttribute("price"));
        String[] exceptions = (String[]) session.getAttribute("exceptions");
        String matterporturl = (String) session.getAttribute("matterporturl");
        String youtubeurl = (String) session.getAttribute("youtubeurl");
        String tiktokurl = (String) session.getAttribute("tiktokurl");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zerostarthome", "root", "password");
            String sql = "INSERT INTO Properties (PropertyName, AgentID, Type, LocationID, Description, Price, Bedrooms, Bathrooms, Sqft, PropertyStatus, MatterportURL, YouTubeURL, TikTokURL, Parameter) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, propertyName);
            stmt.setInt(2, 1); // Assuming AgentID is 1 for now
            stmt.setString(3, type);
            stmt.setInt(4, 1); // Assuming LocationID is 1 for now
            stmt.setString(5, description);
            stmt.setDouble(6, price);
            stmt.setInt(7, bedrooms);
            stmt.setDouble(8, bathrooms);
            stmt.setDouble(9, sqft);
            stmt.setString(10, propertyStatus);
            stmt.setString(11, matterporturl);
            stmt.setString(12, youtubeurl);
            stmt.setString(13, tiktokurl);
            stmt.setString(14, String.join(",", exceptions));
            stmt.executeUpdate();
            response.sendRedirect("homepage.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("sellpage3.jsp");
        }
    }
}