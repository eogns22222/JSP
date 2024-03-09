<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<p>이름 : <span id="userName"></span></p>
	<p>성별 : <span id="gender"></span></p>
	<p>취미 : <span id="hobby"></span></p>
</body>
<script>
	var name = '<%=request.getParameter("userName")%>';
	var gender = '<%=request.getParameter("gender")%>';
	var hobby = [];
	
	/* $('#userName').html(name);
	$('#gender').html(gender); */
	document.getElementById('userName').innerHTML = name;
	document.getElementById('gender').innerHTML = gender;
	
	<%
		String[] hobbies = request.getParameterValues("hobby");
		for(String hobby : hobbies){
	%>
			hobby.push('<%=hobby%>');
	<%}%>
	
	document.getElementById('hobby').innerHTML = hobby.join(',');
	
	
</script>
</html>