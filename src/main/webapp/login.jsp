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
    <title>Login</title>
</head>
<body>
    <h1>Enter Username and Password</h1>
    <form action="/profile.jsp" method="POST">
        <%
            if(request.getParameter("username")!=null && request.getParameter("username").equalsIgnoreCase("admin") && request.getParameter("password").equalsIgnoreCase("password")) {
                response.sendRedirect("/profile.jsp");
            }
        %>
        <label for="username">Enter Username</label>
        <input id="username" type="text" name="username" placeholder="Enter username"> <br>
        <label for="password">Enter Password</label>
        <input id="password" type="password" name="password" placeholder="Enter password"> <br>
        <button>Submit</button>
    </form>

</body>
</html>