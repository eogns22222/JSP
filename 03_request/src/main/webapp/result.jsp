<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// request 객체 : 요청하는 모든 정보를 담고있는 객체
	// jsp 에서 request 는 객체화 하지 않고 사용한다.
	// 미리 객체화해서 저장하고 있기 때문이다.(내장객체)
	
	String userName = request.getParameter("userName");
	System.out.println(userName);
	
	String gender = request.getParameter("gender");
	System.out.println(gender);
	
	// check 박스처럼 하나의 이름으로 여러값을 보낼때
	String hobbies[] = request.getParameterValues("hobby");
	System.out.println(Arrays.toString(hobbies));
	
%>
<!--  html 영역 -->
<p>userName : <%= userName %> </p>
<p>gender : 
	<% if( gender.equals("남자")){%>
			<%= gender %> 입니다.
	<% }else{%>
			<%=gender %> 입니다.
	<% }%>
</p>
<p>취미 : 
	<% for(int i = 0; i < hobbies.length; i++){%>
		<%=hobbies[i]%>
	<% }%>
	
</p>

<p>도메인 : <%=request.getServerName() %></p>
<p>포트번호 : <%=request.getServerPort() %></p>
<p>URL : <%=request.getRequestURI() %></p>
<!--  IPV6 알려줌  -->
<p>IP : <%=request.getRemoteAddr() %></p>