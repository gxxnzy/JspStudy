<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
String idSave = request.getParameter("idSave");
if(idSave==null){
	idSave="false";
}

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

if(idSave.equals("true")){
	
	Cookie cookie = new Cookie("id", id);
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(3600);
	response.addCookie(cookie);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디:
	<%=id%><br> 패스워드:
	<%=password%><br>

	<%
	if (idSave.equals("true")) {
		out.println("아이디 저장: O");
	} else {
		out.println("아이디 저장: X");
	}
	%>
	<a href="login.jsp">{로그인}</a>
</body>
</html>