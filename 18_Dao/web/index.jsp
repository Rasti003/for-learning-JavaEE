<%--
  Created by IntelliJ IDEA.
  User: przem
  Date: 2017-12-10
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Library Viewer</title>
</head>
<body>
<h1>Biblioteka viewer</h1>
<form action="BookServlet" method="post">
  <input placeHolder="ISBN" type="text" name="isbn">
  <br>
  <input placeHolder="Tytuł" type="text" name="title">
  <br>
  <input placeHolder="Opis" type="text" name="description">
  <br>
  Szukaj: <input type="radio" name="option" value="search"> Dodaj: <input type="radio" name="option" value="add">
  Modyfikuj: <input type="radio" name="option" value="update"> Usuń: <input type="radio" name="option" value="delete">
  <br>
  <input type="submit" value="Wyślij">
</form>

</body>
</html>