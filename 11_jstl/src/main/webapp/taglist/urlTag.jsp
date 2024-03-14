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
	<ul>
		<li>url 생성을 도와주는 기능을 한다.</li>
		<li>c:url value="생성할 url 값" val="저장할 변수명"</li>
		<li>c:param 을 이용해 파라메터를 추가할 수도 있다.</li>
	</ul>
	<!--
	https://search.daum.net/search?w=news&q=독도
	-->
	<c:url value="https://search.daum.net/search" var="searchUrl">
		<c:param name="w">news</c:param>
		<c:param name="q">독도</c:param>
	</c:url>
	
	<a href="${searchUrl}">다음 링크로 이동</a>
	
	<!-- 상대 경로 : 내 위치를 중심으로 표현한 경로 또는 주소 -->
	<ul>
		<li><a href="./setTag.jsp">현재 위치에 있는 setTag.jsp</a></li>
		<li><a href="../index.jsp">현재 위치에서 한칸 올라간 곳에 있는 index.jsp</a></li>
	</ul>
	
	<!-- 절대 경로 : 절대 위치(서버)로 부터 표현한 경로 또는 주소 -->
	<!-- http://localhost:8080/11_jstl/taglist/setTag.jsp -->
	<!-- http://localhost:8080/setTag.jsp -->
	<ul>
		<li><a href="/setTag.jsp">서버에 있는 setTag.jsp</a></li> <!-- 잘못된 경로 -->
		<li>
			<a href="/11_jstl/taglist/setTag.jsp">
				11_jstl 이라는 컨텍스 아래 taglist 라는 폴더 안에 있는 setTag.jsp
			</a>
		</li>
	</ul>
	
	<!-- curl 을 사용하면 절대경로의 context 경로를 신경 쓸 필요가 없어진다. -->
	<p><a href="<c:url value='/taglist/setTag.jsp'/>">setTag.jsp</a></p>
	
</body>
</html>
