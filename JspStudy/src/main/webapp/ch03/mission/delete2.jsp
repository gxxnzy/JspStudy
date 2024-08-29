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
String[] cookies = request.getParameterValues("cookieName");

if(cookies!=null && cookies.length >0){
	for(String cookieName : cookies){
		
		Cookie newCookie = new Cookie(cookieName,"");
		newCookie.setPath(request.getContextPath());
		newCookie.setMaxAge(0);
		response.addCookie(newCookie);
	}
}
response.sendRedirect("select.jsp");
%>
</body>
</html>