<%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/21/19
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%-- JSP Directive --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

int x = 3;
x += 2;
String bob = "Hello";

%>

<html>
<head>
    <title>First JSP</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <%@include file="partials/navbar.html"%>
    <h1>Enter your name</h1>
    <form action="/display-name.jsp" method="post">
        <input type="text" name="display name" placeholder="Enter Name">
        <button>Submit</button>
<%--        <%@ include file="display-name.jsp"%>--%>
    </form>
<%@include file="partials/footer.html"%>
</body>
</html>