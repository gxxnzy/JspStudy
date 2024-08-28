<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String city = request.getParameter("city"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
전송결과
<hr width="80%">
파라미터 값: <%=city%>
<br><br>
<a href="travel.jsp">{입력 화면}</a>
</body>
</html>