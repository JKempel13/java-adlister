<%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/22/19
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%--Create a branch named "jsp-practice" off of the "jsp-and-jstl-solution" tag and pair up to do the following:--%>

<%--#### Color Page--%>

<%--A user goes to a url "/pickcolor.jsp". On the "pickcolor.jsp" page, the user is prompted to enter their favorite color. Upon clicking submit, they are redirected to a page with a background color of their favorite color.--%>

<%--- use a POST request on the form--%>
<%--- use two JSPs--%>
<%--- use style tags--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String color = request.getParameter("color");%>
<html>
<head>
    <title>Favorite Color Page</title>
</head>
<body>
    <form action="/bgColor.jsp" method="POST">
        <h1>Pick your favorite color</h1>
        <input type="color" id="color" name="color" placeholder="Favorite Color">
        <button>Submit</button>
    </form>
</body>
</html>
