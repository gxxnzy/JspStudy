<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%><!-- JSTL Core Tag -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
}

th {
	padding: 5px 10px;
	background-color: #D5DBDB;
}

td {
	padding: 5px 10px;
}
</style>
</head>
<body>

	<%-- 
	// ==================================================
	// # for-each 방식
	// ================================================== --%>
	<%
	String[] stringArray = { "A", "B", "C", "D", "E" };
	%>

	<%-- 
	// --------------------------------------------------
	// # varStatus
	// -------------------------------------------------- --%>
	<%-- table --%>
	<table>
		<tr>
			<th>count</th>
			<th>index</th>
			<th>current</th>
			<th>first</th>
			<th>last</th>
		</tr>
		<c:forEach var="i" items="<%=stringArray%>" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${status.index}</td>
				<td>${status.current}</td>
				<td>${status.first}</td>
				<td>${status.last}</td>
			</tr>
		</c:forEach>
	</table>
	<br>

	<%-- 
	// --------------------------------------------------
	// # 값
	// -------------------------------------------------- --%>
	<c:forEach var="i" items="<%=stringArray%>">
		${i}
	</c:forEach>
</body>
</html>