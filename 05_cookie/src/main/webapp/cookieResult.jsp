<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키는 클라이언트로 부터 받아와야 하므로 request 로 불러야 한다.
	// 쿠키는 중복된 이름 사용이 불가능하며, 여러 이름으로 저장된다.
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(Cookie cookie : cookies){
%>
		<p><%=cookie.getName()%> :<%=cookie.getValue()%></p>
<% 
	}
%>
</body>
</html>