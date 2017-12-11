<%--
  Created by IntelliJ IDEA.
  User: przem
  Date: 2017-12-10
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>

<%@page import="pl.rasti003.javaee.model.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         %>
<% Book book = (Book)request.getAttribute("book"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>Wynik zapytania <%= request.getAttribute("option") %></h1>
<p>W wyniku Twojego zapytania otrzymano następujacy wynik:</p>
<p>Tytuł: <%= book.getTitle() %><br>
    ISBN: <%= book.getIsbn() %><br>
    Opis: <%= book.getDescription() %></p>
</body>
</html>