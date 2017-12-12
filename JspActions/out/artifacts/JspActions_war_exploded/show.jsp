<%--
  Created by IntelliJ IDEA.
  User: przem
  Date: 2017-12-11
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Twoje dane</title>
</head>
<body>
<h1>Twoje dane:</h1>
<jsp:useBean id="user" class="pl.rasti.javaee.JspActions.model.User" scope="page">
    <jsp:setProperty property="*" name="user"/>
</jsp:useBean>


<p>Imię: <jsp:getProperty property="firstname" name="user"/></p>
<p>Nazwisko: <jsp:getProperty property="lastname" name="user"/></p>
</body>
</html>