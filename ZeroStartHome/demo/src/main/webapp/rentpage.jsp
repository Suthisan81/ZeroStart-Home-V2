<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Rent Page</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Rent Properties</h1>
    <form action="FilterServlet" method="post">
        <label for="type">Type:</label>
        <select name="type" id="type">
            <option value="condo">Condo</option>
            <option value="land">Land</option>
            <option value="villa">Villa</option>
            <option value="house">House</option>
            <option value="townhouse">Townhouse</option>
            <option value="apartment">Apartment</option>
        </select>
        <label for="minPrice">Min Price:</label>
        <input type="number" name="minPrice" id="minPrice">
        <label for="maxPrice">Max Price:</label>
        <input type="number" name="maxPrice" id="maxPrice">
        <button type="submit">Filter</button>
    </form>
    <div id="results">
        <jsp:include page="filteredResults.jsp" />
    </div>
</body>
</html>