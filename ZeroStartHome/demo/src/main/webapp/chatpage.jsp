<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chat Page</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h1>Chat with Brokers</h1>
    <div id="chat">
        <c:forEach var="broker" items="${brokers}">
            <button onclick="location.href='chat.jsp?id=${broker.agentID}'">${broker.agentName}</button>
        </c:forEach>
    </div>
</body>
</html>