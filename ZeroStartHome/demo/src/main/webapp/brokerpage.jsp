<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Broker Page</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Brokers</h1>
    <form action="BrokerFilterServlet" method="get">
        <label for="city">City:</label>
        <select name="city" id="city">
            <option value="Bangkok">Bangkok</option>
            <option value="PathumThani">Pathum Thani</option>
            <option value="ChiangMai">Chiang Mai</option>
        </select>
        <button type="submit">Filter</button>
    </form>
    <div id="brokers">
        <c:forEach var="broker" items="${brokers}">
            <button onclick="location.href='broker.jsp?id=${broker.agentID}'">${broker.agentName}</button>
        </c:forEach>
    </div>
</body>
</html>