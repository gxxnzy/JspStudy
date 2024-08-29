<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date"%>
    <%@ page import="java.util.List, java.util.ArrayList" %>
    <%@ page import="div02_mission.LoginInfo"%>
    <% request.setCharacterEncoding("UTF-8");%>
    
    <% ArrayList<LoginInfo> loginList = (ArrayList<LoginInfo>)application.getAttribute("loginList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 현황

<table>
		<tr>
			<th>순번</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>로그인 일시</th>
		</tr>

		<%
		for (int i=0;i<loginList.size();i++) {
		%>
		<tr>
			<td><%= i %></td>
			<td><%= loginList.get(i).getId() %></td>
			<td><%= loginList.get(i).getPwd() %></td>
			<td><%= loginList.get(i).getDate()%></td>
		</tr>
<% } %>
	</table>
</body>
</html>