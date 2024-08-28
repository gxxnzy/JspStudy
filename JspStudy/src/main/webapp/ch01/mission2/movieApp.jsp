<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="div01_jsp.movie.Movie"%>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<Movie> movieList = new ArrayList<Movie>();

Movie m1 = new Movie("탑건: 메버릭", "액션", "조셉 코신스키", 110);
Movie m2 = new Movie("아바나: 물의 길", "SF", "제임스 카메론", 192);
Movie m3 = new Movie("소울", "드라마", "피트 닥터", 107);

movieList.add(m1);
movieList.add(m2);
movieList.add(m3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	if (movieList.size() == 0) {
		out.println("데이터가 없습니다.");
	} else {
	%>

	<table>
		<tr>
			<th>제목</th>
			<th>카테고리</th>
			<th>감독</th>
			<th>상영시간</th>
		</tr>

		<%
		for (Movie movie : movieList) {
		%>
		<tr>
			<td><%=movie.getTitle()%></td>
			<td><%=movie.getCategory()%></td>
			<td><%=movie.getDirector()%></td>
			<td><%=movie.getRunningTime()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>

</body>
</html>