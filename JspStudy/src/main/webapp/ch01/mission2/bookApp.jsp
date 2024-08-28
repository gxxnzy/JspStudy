<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="div01_jsp.book.Book" %>
    
<% Book b1 = new Book();
	b1.setCategory("만화");
	b1.setTitle("열혈강호");
	b1.setAuthor("전극진,양재현");
	b1.setPublisher("대원씨아이");
	b1.setPrice(4500);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

도서정보
<%=b1.getCategory() %>
</body>
</html>