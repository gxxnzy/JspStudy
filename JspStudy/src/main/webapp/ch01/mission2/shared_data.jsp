<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%! 
	private int totalCnt = 0;

	public int getTotalCnt() {
		return totalCnt;
	}
	
	public void plusTotalCnt() {
		totalCnt = totalCnt + 1;
	}
%>
<%	
	int cnt = 0;
	cnt = cnt + 1;
	
	plusTotalCnt();	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
totalCnt=<%= getTotalCnt()%>
<br>
cnt=<%=cnt%>

</body>
</html>