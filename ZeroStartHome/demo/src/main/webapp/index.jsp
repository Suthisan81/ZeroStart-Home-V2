<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Homepage</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Welcome to ZeroStartHome</h1>
    <form action="SearchServlet" method="get">
        <input type="text" name="search" placeholder="Search...">
        <button type="submit">Search</button>
    </form>
    <h2>Recommended Rent</h2>
    <button onclick="location.href='PropertyID0001.jsp'">PropertyID0001</button>
    <h2>Recommended Sell</h2>
    <button onclick="location.href='PropertyID0002.jsp'">PropertyID0002</button>
    <h2>Recommended Broker</h2>
    <button onclick="location.href='AgentID0392.jsp'">AgentID0392</button>
</body>
</html>