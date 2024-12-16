<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.models.Property" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Filtered Results</title>
</head>
<body>
    <h2>Filtered Properties</h2>
    <c:forEach var="property" items="${properties}">
        <div>
            <h3>${property.propertyName}</h3>
            <p>Price: ${property.price}</p>
            <!-- Display other property details -->
        </div>
    </c:forEach>
</body>
</html>