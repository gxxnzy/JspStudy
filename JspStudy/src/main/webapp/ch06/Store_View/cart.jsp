<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="div06_mission.Cart"%>
<%@ page import="java.util.*"%>
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
	<a href="buyingForm.jsp">상품</a>
	<a href="cart.jsp">{장바구니}</a>
	<a href="logout.jsp">로그아웃(<%=id%>님)
	</a>
	<hr>
	<%
	ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");
	int sumPrice = 0;
	if (cart == null || cart.size() == 0) {
        out.println("<h1>장바구니가 비어있습니다.</h1>");
    } else {
        out.println("<h1>장바구니 목록</h1>");
        out.println("<table border='1' cellpadding='5' cellspacing='0'>");
        out.println("<tr>");
        out.println("<th>순번</th>");
        out.println("<th>구매번호</th>");
        out.println("<th>상품명</th>");
        out.println("<th>가격</th>");
        out.println("<th>주문개수</th>");
        out.println("<th>삭제</th>");
        out.println("</tr>");
        
        for (int i=0;i<cart.size();i++) {
            out.println("<tr>");
            out.println("<td>" + (i+1) + "</td>");
            out.println("<td>" + cart.get(i).getIndex() + "</td>");
            out.println("<td>" + cart.get(i).getName() + "</td>");
            out.println("<td>" + cart.get(i).getPrice() + "원</td>");
            out.println("<td>" + cart.get(i).getNum() + "개</td>");
            out.println("<td>");
            out.println("<form action='deleteItem.jsp' method='post' style='display:inline;'>");
            out.println("<input type='hidden' name='index' value='" + i + "'/>");
            out.println("<input type='submit' value='삭제'/>");
            out.println("</form>");
            out.println("</td>");
            out.println("</tr>");
            sumPrice += cart.get(i).getPrice()*cart.get(i).getNum();
        }
        
        out.println("</table>");
        out.println("총 금액: "+sumPrice+"(원)");
    }
	}
	%>
</body>
</html>