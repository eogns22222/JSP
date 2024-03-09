<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h3>여기는 메인 영역입니다.</h3>
	<ul>
	<% for(int i = 1; i <= 10; i++) {%>
		<li><%= i %></li>
	<% }%>
	</ul>
	
	<!-- <ul>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
		<li>7</li>
		<li>8</li>
		<li>9</li>
		<li>10</li>
	</ul>  -->
	<%@ include file="footer.jsp" %>
</body>
</html>