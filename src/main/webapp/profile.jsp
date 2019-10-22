<%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/21/19
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile Page</title>
</head>
<body>
    <% request.getParameter("username");%>
    <%@include file="partials/navbar.html"%>

    <h1>You have Successfully Signed In!</h1>

    <%@include file="partials/footer.html"%>

</body>
</html>
