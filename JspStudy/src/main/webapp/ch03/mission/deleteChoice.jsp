<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete2.jsp" method="post">
		<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				String cookieName = cookies[i].getName();
				String cookieValue = cookies[i].getValue();
		%>
		<input type="checkbox" name="cookieName" value="<%=cookieName%>"><%=cookieName%>:<%=cookieValue%><br>
		<%
		}
		} else {
		out.println("쿠키가 없습니다.");
		}
		%>

		<input type="submit" value="삭제" /> 
		<input type="reset" value="reset" />
	</form>
	<a href="index.jsp">{Index}</a>
</body>
</html>