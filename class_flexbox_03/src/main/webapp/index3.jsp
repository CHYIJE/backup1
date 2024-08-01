<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
display : flex;


}

.container1 {
	
	flex-wrap: wrap;
	
	justify-content: center;
	align-content: center;
	border: 2px solid #333;
	background-color: yellow;
	height: 600px;
	width: 300px;
}



.item {
	/* width: calc(33.333% - 10px); */

	background-color: #990000;
	justify-content: center;
	align-items: center;
	color: white;
	width : 100px;
	padding: 20px;
	text-align: center;
	border-radius: 5px;
}

.order-1 {
	order: 1;
}

.order-2 {
	order: 2;
}

/* 지정하지 않으면 더 우선순위를 가진다. */
.order-3 {
	order: 3;
}

/* flex-grow 속성은 특정 아이템 더 많은 공간을 차지해야 할 때 사용 */
.grow-1 {
	flex-grow: 1;
}

/* flex-shrink 속성은(공간이 부족할 때 얼마나 줄어들지를 결정)
	   특정 아이템이 줄어들면서 다른 아이템과 균형을 맞추어야 할 때 활용한다.
	*/
.shrink-1 {
	flex-shrink: 1;
}

.basis-100 {
	flex-basis: 300px;
}

/* flex(단축 속성) - flex-grow, flex-shrink, flex-basis를 한번에 설정하는 속성이다. */
.flex-combined {
	flex: 1 1 300px;
}
</style>
</head>
<body>
	<%--
	HTML + Java 
	http://localhost:8080/fx/index.jsp
	http://localhost:8080/fx	
--%>


	<div class="container1">
		<div class="item">item1</div>

	</div>


	<div class="container1">
		<div class="item">item2</div>
	</div>

	<div class="container1">
		<div class="item">item3</div>
	</div>



</body>
</html>