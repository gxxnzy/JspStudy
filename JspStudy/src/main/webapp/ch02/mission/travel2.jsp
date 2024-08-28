<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="travelResult2.jsp" method="post">
여행하고 싶은 도시를 선택하세요.(멀티 선택)<br><br>
<input type="checkbox" name="city" value="1" checked>런던 
<input type="checkbox" name="city" value="2">파리 
<input type="checkbox" name="city" value="3">베를린 
<input type="checkbox" name="city" value="4">로마 
<input type="checkbox" name="city" value="5">마드리드 <br><br>
<input type="submit" value="전송">
<input type="reset" value="다시입력">
</form>
</html>