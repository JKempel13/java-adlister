<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="model.Contact" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: jasonkempel
  Date: 10/21/19
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%

        List<Contact> contacts = Arrays.asList(
                new Contact("Bob Smith", "2105556677"),
                new Contact("Jane Smith", "2105555577"),
                new Contact("Cathy Smith", "2105656677")
        );

        request.setAttribute("contacts", contacts);

        request.setAttribute("loggedInUser", new User("Jane Smith"));

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contacts</title>
    <style>
        div {
            background: burlywood;
            color: white;
            margin: 1em 0;
            padding: 1em;
            border-radius: .2em;
        }
    </style>
</head>
<body>

<h1>Contacts</h1>
<c:forEach var="contact" items="${contacts}">
    <div>
        <h3>${contact.name}</h3>
        <h3>Phone Number: ${contact.number}</h3>
    </div>

    <c:if test="${contact.name.equalsIgnoreCase(loggedInUser.name)}">
        <a href="">Edit Contact</a>
    </c:if>
</c:forEach>

</body>
</html>
