<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sell Property</title>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <c:choose>
        <c:when test="${param.step == null || param.step == '1'}">
            <jsp:include page="sellpage1.jsp" />
        </c:when>
        <c:when test="${param.step == '2'}">
            <jsp:include page="sellpage2.jsp" />
        </c:when>
        <c:when test="${param.step == '3'}">
            <jsp:include page="sellpage3.jsp" />
        </c:when>
    </c:choose>
</body>
</html>