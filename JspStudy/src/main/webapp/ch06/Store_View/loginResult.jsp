<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
session.setMaxInactiveInterval(60*5);
%>
    
 <% String id = request.getParameter("id");
 String pwd = request.getParameter("pwd");
 
 session.setAttribute("id",id);
 
 response.sendRedirect("home.jsp");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>