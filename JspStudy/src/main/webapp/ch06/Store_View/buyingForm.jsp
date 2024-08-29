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
	<a href="home.jsp">Home</a>
	<a href="buyingForm.jsp">{상품}</a>
	<a href="cart.jsp">장바구니</a>
	<a href="logout.jsp">로그아웃(<%=id%>님)
	</a>
	<hr>
	<h2>장바구니에 담을 상품을 선택하세요.</h2>
	<form action="buying.jsp" method="post">
		<label for="coffee">믹스커피 (2500원): </label> <select name="coffee"
			id="coffee">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select> 개 <input type="submit" value="담기"> <input type="reset"
			value="취소">
	</form>
	<form action="buying.jsp" method="post">
		<label for="ramen">라면 (1500원): </label> <select name="ramen"
			id="ramen">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select> 개 <input type="submit" value="담기"> <input type="reset"
			value="취소">
	</form>
	<form action="buying.jsp" method="post">
		<label for="water">물 (800원): </label> <select name="water"
			id="water">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select> 개 <input type="submit" value="담기"> <input type="reset"
			value="취소">
	</form>
	<%
	}
	%>
</body>
</html>