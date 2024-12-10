<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sell Property - Step 2</title>
</head>
<body>
    <h1>Sell Property - Step 2</h1>
    <form action="SellPage2Servlet?step=3" method="post">
        <label for="bedrooms">Bedrooms:</label>
        <input type="number" name="bedrooms" id="bedrooms" required>
        <label for="bathrooms">Bathrooms:</label>
        <input type="number" name="bathrooms" id="bathrooms" step="0.1" required>
        <label for="floor">Floor:</label>
        <input type="number" name="floor" id="floor" required>
        <label for="sqft">Square Feet:</label>
        <input type="number" name="sqft" id="sqft" step="0.1" required>
        <label for="price">Price:</label>
        <input type="number" name="price" id="price" required>
        <label for="exceptions">Exceptions:</label>
        <select name="exceptions" id="exceptions" multiple>
            <option value="foreignerquota">Foreigner Quota</option>
            <option value="petsallow">Pets Allow</option>
            <option value="duplex">Duplex</option>
            <option value="penthouse">Penthouse</option>
        </select>
        <label for="matterporturl">Matterport URL:</label>
        <input type="url" name="matterporturl" id="matterporturl">
        <label for="youtubeurl">YouTube URL:</label>
        <input type="url" name="youtubeurl" id="youtubeurl">
        <label for="tiktokurl">TikTok URL:</label>
        <input type="url" name="tiktokurl" id="tiktokurl">
        <button type="submit">Next</button>
    </form>
    <form action="sellpage.jsp?step=1" method="get">
        <button type="submit">Back</button>
    </form>
</body>
</html>