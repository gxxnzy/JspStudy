<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="div01_jsp.bean.menu.Coffee" %>
<% 
Coffee c1 = new Coffee("아메리카노", 1500, "콜롬비아 수프리모");
Coffee c2 = new Coffee("라떼", 2000, "에티오피아 예가체프");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print("메뉴 : " + c1.getName() + " 가격 : " + c1.getPrice() + " 이름: " + c1.getName());
%>
<br>
<%
out.print("메뉴 : " + c2.getName() + " 가격 : " + c2.getPrice() + " 이름: " + c2.getName());
%>
</body>
</html>