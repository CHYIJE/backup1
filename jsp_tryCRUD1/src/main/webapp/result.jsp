<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 확인 페이지</title>
</head>
<body>
	<h2>결과 확인 페이지</h2>
	<% 
		String message = request.getParameter("message");
		if("create-success".equals(message)) {
			out.println("<p>게시글 작성 성공!</p>");
		} else if ("delete-success".equals(message)) {
			out.println("<p>게시글 삭제에 성공</p>");	
		} else if ("update-success".equals(message)) {
			out.println("<p>게시글 수정 성공</p>");				
		} else {
			out.println("<p>작업 실패</p>");
		} 
	%>
	<br><br>
	<a href="createPost.jsp">게시글 작성 페이지</a>
	
	<a href="read-posts">게시글 리스트</a>
	
</body>
</html>