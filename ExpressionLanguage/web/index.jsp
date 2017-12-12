<%--
  Created by IntelliJ IDEA.
  User: przem
  Date: 2017-12-12
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Witaj ${param.firstname}</title>
  </head>

  <body>
  <h1>Witaj ${param.firstname}</h1>
  <jsp:useBean id="user" class="pl.rasti003.ExprLang.model.User" scope="session">
    <jsp:setProperty name="user" property="firstname" value="${param.firstname}"/>
    <jsp:setProperty name="user" property="lastname" value="${param.lastname}"/>
  </jsp:useBean>

  Atrybut ustawiony na podstawie parametru: ${sessionScope.user.firstname}<br>

  Równy: ${2 == 2} lub ${2 eq 2}<br>
  Różny: ${2 != 2}<br>
  Większy: ${2 > 2} lub ${2 gt 2}<br>
  Większy równy: ${2 >= 2} lub ${2 ge 2}<br>
  Mniejszy: ${2 < 2} lub ${2 lt 2}<br>
  Mniejszy równy: ${2 <= 2} lub ${2 le 2}<br>
  Koniunkcja: ${true && false} lub ${true and false}<br>
  Alternatywa: ${true || false} lub ${true or false}<br>
  Negacja: ${!true} lub ${not true}<br>
  Null check: ${empty header['user-agent']}<br>

  Twoja przeglądarka: ${header['user-agent'] }
  </body>
</html>
