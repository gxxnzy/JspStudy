<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String data = request.getParameter("message");
	request.setAttribute("data",data);
	System.out.println("[dispatcher1.jsp]" + data); 
	String url = "dispatcher2.jsp";
	request.getRequestDispatcher(url).forward(request,response);
	%>
</body>
</html>