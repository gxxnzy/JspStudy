<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="div06_mission.Cart"%>
<%@ page import="java.util.*"%>

<%
ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");

int index = Integer.parseInt(request.getParameter("index"));
System.out.println(index);

if (cart != null && cart.size() > 0) {
    cart.remove(index);
}

// 세션에 업데이트된 장바구니를 저장합니다.
session.setAttribute("cart", cart);

// 장바구니 페이지로 리다이렉트합니다.
response.sendRedirect("cart.jsp");
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