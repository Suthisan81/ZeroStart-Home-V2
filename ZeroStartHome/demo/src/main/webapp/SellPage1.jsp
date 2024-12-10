<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sell Property - Step 1</title>
</head>
<body>
    <h1>Sell Property - Step 1</h1>
    <form action="SellPage1Servlet?step=2" method="post">
        <label for="status">Status:</label>
        <select name="status" id="status">
            <option value="seller">Seller</option>
            <option value="broker">Broker</option>
        </select>
        <label for="propertyStatus">Property Status:</label>
        <select name="propertyStatus" id="propertyStatus">
            <option value="sell">Sell</option>
            <option value="down">Down</option>
            <option value="rent">Rent</option>
            <option value="lease">Lease</option>
        </select>
        <label for="type">Type:</label>
        <select name="type" id="type">
            <option value="condo">Condo</option>
            <option value="land">Land</option>
            <option value="villa">Villa</option>
            <option value="house">House</option>
            <option value="townhouse">Townhouse</option>
            <option value="apartment">Apartment</option>
        </select>
        <label for="location">Location:</label>
        <input type="text" name="location" id="location" required>
        <label for="propertyName">Property Name:</label>
        <input type="text" name="propertyName" id="propertyName" required>
        <label for="description">Description:</label>
        <textarea name="description" id="description" required></textarea>
        <button type="submit">Next</button>
    </form>
</body>
</html>