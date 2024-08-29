<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Attribute 조회
	<hr>
	<% String message = (String)session.getAttribute("message");
if(message != null){
%>
메시지: <%= message %>
<%
} else{
	out.println("메시지가 존재하지 않습니다.");
}

%>
<br><br>
<a href="index.jsp">{index}</a>
</body>
</html>