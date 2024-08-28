<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	System.out.print("loginResult.jsp::");
	System.out.print("id="+id);
	System.out.println("|password="+password);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/static/css/work.css">
</head>
<body>
전송 결과
<hr width="80%">
아이디: <%= id %>
패스워드: <%= password %>
</body>
</html>