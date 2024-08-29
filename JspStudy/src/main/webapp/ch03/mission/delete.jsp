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
Cookie[] cookies = request.getCookies();

if(cookies!=null && cookies.length >0){
	for(Cookie cookie : cookies){
		String name = cookie.getName();
		
		Cookie newCookie = new Cookie(name,"");
		newCookie.setPath(request.getContextPath());
		newCookie.setMaxAge(0);
		response.addCookie(newCookie);
	}
}
response.sendRedirect("select.jsp");
%>
</body>
</html>