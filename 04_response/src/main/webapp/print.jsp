<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  페이지 출력은 총 3가지 방법이 있다.  -->
	
	<%="<p>첫번째, 스크립틀릿 출력문을 이용한 방법</p>" %>
	<% out.print("<p>두번째, out.print() 를 이용한 방법</p>"); %>
	<% response.getWriter().write("세번째, response 객체를 이용한 방법"); %>
	
	<!--  
		out 객체는 response 의 자식이다. 그렇기 때문에 response 보다 느리다.
		스크립틀릿 출력문은 out 객체로 만들어 졌다. 그러므로 둘의 속도는 같다.
		그러므로 위에있는 것이 먼저 찍힌다.
		response > scriptlet == out
		response, out : java 영역에서 사용하는 것이 좋다.
		스크립틀릿 출력문 : html 영역에서 사용하는 것이 좋다.
	  -->
</body>
</html>