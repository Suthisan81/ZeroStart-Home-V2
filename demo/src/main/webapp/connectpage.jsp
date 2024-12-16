<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact Us</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Contact Us</h1>
    <form action="ContactServlet" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" id="fullName" required>
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" name="phoneNumber" id="phoneNumber" required>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <label for="title">Title:</label>
        <input type="text" name="title" id="title" required>
        <label for="description">Description:</label>
        <textarea name="description" id="description" required></textarea>
        <button type="submit">Send</button>
    </form>
</body>
</html>