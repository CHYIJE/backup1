<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>폼 제출 결과 확인 페이지</h1>
	<%
	String username = request.getParameter("username");
	String[] hobbies = request.getParameterValues("hobbies");
	String faColor = request.getParameter("favoriteColor");
	%>
	<p>
		Username :
		<%=username%></p>

	<%
	if (hobbies != null) {
	%>
	<p>Hobbies :</p>
	<ul>
		<%
		for (String bobby : hobbies) {
		%>
		<li><%=bobby%></li>
		<%
		}
		%>

	</ul>
	<%
	} else {
	%>
	<p>선택된 취미가 없습니다</p>
	<%
	}
	%>
	
	<p> color : <%= faColor != null ? faColor : "선택한 나라가 없습니다." %>

</body>
</html>