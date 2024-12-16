<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Login</h1>
    <form action="LoginServlet" method="post">
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>
        <button type="submit">Login</button>
    </form>
    <button onclick="location.href='signup.jsp'">Sign Up</button>
</body>
</html>