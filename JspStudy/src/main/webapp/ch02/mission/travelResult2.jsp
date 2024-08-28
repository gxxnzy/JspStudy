<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String[] cityArray = request.getParameterValues("city"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
전송 결과
<hr width="80%">
파라미터 값: <br>
<%
if(cityArray !=null){
	for(int i=0;i<cityArray.length;i++){
		out.print(cityArray[i]);
		out.print("&nbsp;&nbsp");
	}
}
%>
</body>
</html>