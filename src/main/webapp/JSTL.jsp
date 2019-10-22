<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/21/19
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>

<%

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>JSTL Example</title>
</head>
<body>
    <h1>JSTL Examples</h1>

    <c:if test="${2<3}">
        <h2>Will Display</h2>
    </c:if>

    <ol>
        <c:forEach var="favFood" items="${favFoods}">
            <li>${favFood}</li>
        </c:forEach>
    </ol>

</body>
</html>
