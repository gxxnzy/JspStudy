<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
session.setMaxInactiveInterval(60 * 5);
%>
<%
String message = new String("Hello");
session.setAttribute("message", message);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Attribute 추가
<hr>
메시지를 생성하였습니다.
<br><br>
<a href="index.jsp">{index}</a>
</body>
</html>