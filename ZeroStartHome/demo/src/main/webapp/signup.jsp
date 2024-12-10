<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
    <meta charset="UTF-8">
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Sign Up</h1>
    <form action="SignupServlet" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" id="fullName" required>
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" name="phoneNumber" id="phoneNumber" required>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" name="confirmPassword" id="confirmPassword" required>
        <button type="submit">Sign Up</button>
    </form>
</body>
</html>