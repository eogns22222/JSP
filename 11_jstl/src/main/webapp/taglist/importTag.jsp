<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 특정 페이지를 불러오는 역할 -->
	<%-- <c:import url="../index.jsp"/> --%>
	
	<!-- 외부 페이지도 불러 올 수 있다. -->
	<!-- https://www.youtube.com/results?search_query=jsp -->
	<c:import url="https://www.youtube.com/results">
		<c:param name="search_query">jsp</c:param>
	</c:import>
	
	
</body>
</html>