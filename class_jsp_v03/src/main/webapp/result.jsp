<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>
	<h1>변환 결과</h1>
	
	<% 
		// 폼에서 데이터 추출
		String num1 = request.getParameter("num1");
		
		
		
		// 방어적 코드 작성
		if(num1 == null || num1.trim().isEmpty()) {
			out.println("cm를 입력하시오");
		} else {
			Double inputNum1 = Double.parseDouble(num1);
			
			Double result = (inputNum1 / 2.54);
			String inchValue = String.format("%.1f", result);
			
			DecimalFormat format = new DecimalFormat("###,###.##");
			String resultFormat = format.format(result);
				
		 out.println("<p>cm -> inch [ " + resultFormat + " ] Inch 입니다</p>");
		}
		// 계산의 결과를 스트림을 통해 내려주기
		
		
		
	%>
	
	<a href="form_page.jsp">돌아가기</a>
	
<%@ include file="footer.jsp" %>