package com.example.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SellPage1Servlet")
public class SellPage1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("status", request.getParameter("status"));
        session.setAttribute("propertyStatus", request.getParameter("propertyStatus"));
        session.setAttribute("type", request.getParameter("type"));
        session.setAttribute("location", request.getParameter("location"));
        session.setAttribute("propertyName", request.getParameter("propertyName"));
        session.setAttribute("description", request.getParameter("description"));
        response.sendRedirect("sellpage.jsp?step=2");
    }
}