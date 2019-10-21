<%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/21/19
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>

    <h1>Your name is: <%= request.getParameter ("display name")%> </h1>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>"name" parameter: <%= request.getParameter("display name") %></p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>

</body>
</html>
