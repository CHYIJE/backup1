<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다</title>
</head>
<body>
	<%
	// http://localhost:8080/jsp/welcome.jsp
	// session 객체를 사용하여 사용자 정보 여부를 확인하자.
	String username = (String) session.getAttribute("username");

	if (username == null || username.trim().isEmpty()) {
		// request 객체에서 사용자 정보를 추출하자.
		username = request.getParameter("username");
		if (username != null && !username.trim().isEmpty()) {
			// 여기에 들어 온다면 최초 요청이 아닐까??
			// 폼 데이터 있는지 없는지 학인 ... 가정 있다면
			session.setAttribute("username", "조맹덕");
			session.setAttribute("visitCount", 1);
		} else {
			
		Integer visitCount = (Integer)session.getAttribute("visitCount");		
			
		if (visitCount == null) {
			visitCount = 1;
		
		} else {
			visitCount++;
		}
		session.setAttribute("visitCount", visitCount);
	
		}
	}

		
	
	
	
	%>
	
	<h2>
		환영합니다,
		<%=username%></h2>
	<p>
		방문 횟수 :
		<%=session.getAttribute("visitCount")%>
	</p>
</body>
</html>