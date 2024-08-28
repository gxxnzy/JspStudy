<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	System.out.print("loginDispatcher.jsp::");
	System.out.print("id="+id);
	System.out.println("|password="+password);
%>

<% request.getRequestDispatcher("loginResult.jsp").forward(request,response); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/static/css/work.css">
</head>
<body>

</body>
</html>