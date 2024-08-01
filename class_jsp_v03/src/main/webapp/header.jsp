<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인치변환기</title>
<style>
.head{
	display : flex;
	flex-direction : row;
	justify-content: space-between;
	align-items:center;
	margin: 0;
	padding: 10xp;
	background-color: black;
	color: white;
	height: 40px;
	
	
	
}
.buttons{
	background-color: black;
	color: white;
}


.inchConvert {
	display: flex;
	height: 100vh;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-color: #f0f0f0;
}

.container {
	background-color: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0 0.1);
	width: 300px;
}

form {

}

label {
	display: flex;
	justify-content: start;
}

input[type="number"] {
	margin-bottom: 10px;
	width : 290px;
}

input[type="submit"] {
	display: flex;
	width : 300px;
	height : 30px;
	margin-top: 15px;
}

input[type="submit"]:hover {
	background-color: #45a049;
	color: white;
}
</style>

</head>
<body>
	
		<div class="head">
			<div>인치 변환기</div>
				<div>
					<button class="buttons"><a href="form_page.jsp">홈</a></button>
					<button class="buttons">로그인</button>
				</div>
		</div>
	