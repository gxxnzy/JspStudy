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
	String id = (String) session.getAttribute("id");
	if (id == null) {
		out.println("회원전용 페이지입니다.");
	%><a href="index.jsp">{Index}</a>
	<%
	} else {
	%>
	<a href="home.jsp">{Home}</a>
	<a href="index.jsp">로그아웃(<%= id%>님)</a>
	<%
	}
	%>
</body>
</html>