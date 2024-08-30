<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



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
	EL
	<hr width="80%">

	1 + 1 = ${1 + 1}<br> 
	2 - 2 = ${2 - 2}<br>
	3 * 2 = ${3 * 2}<br>
	10 / 3 = ${10 / 3}<br>
	
	<%-- 나누기. 몫 아님. 몫 연산자는 없음 --%>
	10 % 3 = ${10 % 3}<br>
	
	<%-- greater than : >, gt--%>
	크다 : ${3 > 2 } or ${3 gt 2 }<br>
	
	<%-- greater equal : >= ge --%>
	크거나 같다 : ${3 >= 2 }<br>
	
	<%-- less than : <, lt --%>
	작다 : ${3 < 2 }<br>
	
	<%-- less equal : <=, le --%>
	작거나 같다: ${3 <= 2 }<br>
	
	<%-- equal : ==, eq --%>
	같다 : ${3 == 2 }<br>
	
	<%-- not equal : !=, ne --%>
	같지 않다 : ${3 != 2 }<br>


</body>
</html>