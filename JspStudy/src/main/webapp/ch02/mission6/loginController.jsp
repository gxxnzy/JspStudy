<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="div02_mission.LoginInfo"%>
<%@ page import="java.util.List,java.util.ArrayList"%>
<%@ page import="java.util.Date" %>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

LoginInfo loginInfo = new LoginInfo();
loginInfo.setId(id);
loginInfo.setPwd(pwd);
loginInfo.setDate(new Date());

ArrayList<LoginInfo> loginList = (ArrayList<LoginInfo>)application.getAttribute("loginList");
if (loginList == null) {
	loginList = new ArrayList<LoginInfo>();
}
loginList.add(loginInfo);
application.setAttribute("loginList", loginList);

String url = "loginStatus.jsp";
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