<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println("loginForm.jsp"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
전송
<hr width="80%">
<form action="loginDispatcher.jsp" method="post">
id : <input type="text" name="id" ><br/>
password : <input type="password" name="password" ><br/>
<input type="submit" value="전송"><br>
<input type="reset" value="취소"><br>
</form>

</body>
</html>