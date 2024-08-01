<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 그 잡채</title>
</head>
<body>
	<h2>구단왕 김구구단</h2>
	<%
		String mHidden = "이방원";
	
	%>
	
	<form action="result.jsp" method="get">
		<input type="hidden" name="mHidden" value="<%= mHidden %>">
		<input type="number" id="number" name="number" value="7">
		
		<input type="submit" value="구구단 가즈아">
	</form>
</body>
</html>