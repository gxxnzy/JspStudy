<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String data = (String)request.getAttribute("data");
System.out.println("[dispatcher2.jsp]" + data); 

String url = "result.jsp";
request.getRequestDispatcher(url).forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>