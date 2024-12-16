package com.example.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SellPage2Servlet")
public class SellPage2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("bedrooms", request.getParameter("bedrooms"));
        session.setAttribute("bathrooms", request.getParameter("bathrooms"));
        session.setAttribute("floor", request.getParameter("floor"));
        session.setAttribute("sqft", request.getParameter("sqft"));
        session.setAttribute("price", request.getParameter("price"));
        session.setAttribute("exceptions", request.getParameterValues("exceptions"));
        session.setAttribute("matterporturl", request.getParameter("matterporturl"));
        session.setAttribute("youtubeurl", request.getParameter("youtubeurl"));
        session.setAttribute("tiktokurl", request.getParameter("tiktokurl"));
        response.sendRedirect("sellpage.jsp?step=3");
    }
}