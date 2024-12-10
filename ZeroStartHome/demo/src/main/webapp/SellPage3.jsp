<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sell Property - Step 3</title>
</head>
<body>
    <h1>Sell Property - Step 3</h1>
    <form action="SellPage3Servlet" method="post">
        <p>Price: ${sessionScope.price}</p>
        <p>Property Name: ${sessionScope.propertyName}</p>
        <p>Location: ${sessionScope.location}</p>
        <p>Square Feet: ${sessionScope.sqft}</p>
        <p>Floor: ${sessionScope.floor}</p>
        <p>Bedrooms: ${sessionScope.bedrooms}</p>
        <p>Bathrooms: ${sessionScope.bathrooms}</p>
        <p>Exceptions: ${sessionScope.exceptions}</p>
        <p>Description: ${sessionScope.description}</p>
        <button type="submit">Publish</button>
    </form>
    <form action="sellpage.jsp?step=2" method="get">
        <button type="submit">Back</button>
    </form>
</body>
</html>