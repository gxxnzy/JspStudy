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
	<c:set var="color" value="black" />
	<%--  black, red  --%>
	<c:set var="score" value="20" />

	<%-- 
	// ==================================================
	// # IF
	// ================================================== --%>
	<!-- eq : 같다. -->
	<c:if test="${color eq 'black'}" var="result1">
		${color}
	</c:if>
	| result1 = ${result1}
	<br>

	<!-- ne : 같지 않다.-->
	<c:if test="${score ne 10}" var="result3">
		${score}는 10이 아님
	</c:if>
	| result3 = ${result3}
	<br>

	<!-- != : 같지 않다.-->
	<c:if test="${color !=  null}" var="result2">
		${color}는 not null
	</c:if>
	| result2 = ${result2}
	<br>

	<!-- >= : 크거나 같다.-->
	<c:if test="${score >= 10}" var="result4">
		${score}는 10보다 크다
	</c:if>
	| result4 =${result4}

</body>
</html>