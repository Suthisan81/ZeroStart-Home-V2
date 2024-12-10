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

@WebServlet("/BrokerFilterServlet")
public class BrokerFilterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city = request.getParameter("city");
        List<Broker> brokers = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zerostarthome", "root", "password");
            String sql = "SELECT * FROM Agents WHERE City = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, city);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Broker broker = new Broker();
                broker.setAgentID(rs.getInt("AgentID"));
                broker.setAgentName(rs.getString("AgentName"));
                brokers.add(broker);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("brokers", brokers);
        request.getRequestDispatcher("brokerpage.jsp").forward(request, response);
    }
}