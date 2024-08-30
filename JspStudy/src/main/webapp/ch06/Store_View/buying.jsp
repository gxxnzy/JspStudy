<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="div06_mission.Cart" %>
<%@ page import="java.util.*" %>

<%
String coffee = request.getParameter("coffee");
String ramen = request.getParameter("ramen");
String water = request.getParameter("water");

ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");

int index=1;
if (cart == null || cart.isEmpty()) {
    cart = new ArrayList<Cart>();
}else{
	index = cart.getLast().getIndex() + 1;
}


if (coffee!=null){
	int num = Integer.parseInt(coffee);
	 cart.add(new Cart(index,"coffee",2500,num));
} else if (ramen !=null){
	int num = Integer.parseInt(ramen);
	 cart.add(new Cart(index,"ramen",1500,num));
} else if (water !=null){
	int num = Integer.parseInt(water);
	 cart.add(new Cart(index,"water",800,num));
}

session.setAttribute("cart",cart);
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