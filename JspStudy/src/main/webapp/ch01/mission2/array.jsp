<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!String names[] = { "kim", "lee", "song" };%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/static/css/work.css">
<title>Insert title here</title>
</head>
<body>
	<%
	for (int i = 0; i < names.length; i++) {
		out.print(names[i] + "&nbsp;");
	}
	%>
	<br>
	<br>
	<%
	for (int i = 0; i < names.length; i++) {
	%>
	<%=names[i]%>
	<%
	}
	%>
	<br>
	<br>

	<table>
		<tr>
			<th>번호</th>
			<th>값</th>
		</tr>
		<%
		for (int i = 0; i < names.length; i++) {
		%>
		<tr>
			<td>i=[<%=i%>]
			</td>
			<td><%=names[i]%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>