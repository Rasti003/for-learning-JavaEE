<%--
  Created by IntelliJ IDEA.
  User: przem
  Date: 2017-12-11
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
</head>
<body>
<h1>Strona główna</h1>
<form action="show.jsp">
  Imię: <input type="text" name="first">
  <br>
  Nazwisko: <input type="text" name="last">
  <br>
  <input type="submit" value="Wyślij">
</form>
<a href="forward.jsp">Forward</a>
<br>
<a href="include.jsp">Include</a>
</body>
</html>