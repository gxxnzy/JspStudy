<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Cookie 확인</h2>
<hr>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0;i<cookies.length;i++){
		String cookieName = cookies[i].getName();
		String cookieValue = cookies[i].getValue();
		out.println(String.format("%s : %s<br/>",cookieName,cookieValue));
	}
}else{
	out.println("쿠키가 없습니다.");
}
%>
<a href="index.jsp">{Index}</a>
</body>
</html>