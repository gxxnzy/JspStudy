<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	text-align:center;
}
</style>
</head>
<body>
	로그인
	<hr width="60%">
	<form action="loginResult.jsp" method="post">
		아이디 : <input type="text" name="id" required ><br>
		비밀번호 : <input type="password" name="pwd" required ><br>
		<input type="submit" value="로그인"> 
	</form>
	<br>
	<br>
	<a href="index.jsp">{Index}</a>
</body>
</html>