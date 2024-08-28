<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("name");
String hakbun = request.getParameter("hakbun");
String sex = request.getParameter("gender");
String major = request.getParameter("major");

if(sex.equals("man")){
	sex="남자";
}else if(sex.equals("woman")){
	sex="여자";
}

if(major.equals("1")){
	major="국문학";
}else if(major.equals("2")){
	major="영문학";
}
else if(major.equals("3")){
	major="수학";
}
else if(major.equals("4")){
	major="정치학";
}
else if(major.equals("5")){
	major="체육학";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
전송 결과
<hr width="80%">
성명: <%=name%><br>
학번: <%=hakbun %><br>
성별: <%=sex %>
학과: <%=major %>
</body>
</html>