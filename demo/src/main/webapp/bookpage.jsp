<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Booklist</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Favorite Items</h1>
    <div id="favorites">
        <c:forEach var="property" items="${favorites}">
            <button onclick="location.href='property.jsp?id=${property.propertyID}'">${property.propertyName}</button>
        </c:forEach>
    </div>
</body>
</html>