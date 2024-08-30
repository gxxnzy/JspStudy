<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%><!-- JSTL Core Tag -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align:center;
}
</style>
</head>
<body>
	<%-- 
	// ==================================================
	// # 변수 생성
	// ================================================== --%>
	<c:set var="age" value="18" />
	<c:set var="avg" value="80" />

	<%-- 
	// ==================================================
	// # choose, when, otherwise
	// ================================================== --%>
	<c:choose>
		<c:when test="${age >= 18}">성인</c:when>
		<c:otherwise>미성년자</c:otherwise>
	</c:choose>
	<br>

	<c:choose>
		<c:when test="${ avg >= 90 }">A</c:when>
		<c:when test="${ avg >= 80 }">B</c:when>
		<c:when test="${ avg >= 70 }">C</c:when>
		<c:when test="${ avg >= 60 }">D</c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose>

</body>
</html>