<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<h1>계산 결과</h1>
	
	<!-- HTML 주석  -->
	<%-- JSP 주석 --%>
	<% 
		// 폼에서 데이터 추출
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		// 방어적 코드 작성
		if(num1 == null || num1.trim().isEmpty()) {
			out.println("첫번째 숫자 입력해");
		} else if (num2 == null || num2.trim().isEmpty()) {
			out.println("두번째 숫자를 입력해주세요");	
		} else {
			int inputNum1 = Integer.parseInt(num1);
			int inputNum2 = Integer.parseInt(num2);
			int result = (inputNum1 + inputNum2);
			String plusValue = Integer.toString(result);
			
		 out.println("<p>결과는 " + plusValue + " ! 입니다</p>");
		}
		// 계산의 결과를 스트림을 통해 내려주기
		
		
		
	%>
	
	<a href="calculator_form.html">돌아가기</a>
	
	
</body>
</html>