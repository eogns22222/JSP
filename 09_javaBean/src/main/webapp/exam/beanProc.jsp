<%@page import="com.beans.FirstBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 받아온 내용을 Bean 에 저장 -->
<jsp:useBean id="firstBean" class="com.beans.FirstBean" scope="session"></jsp:useBean>

<%--
	String name = request.getParameter("userName");
	System.out.println(name);
	firstBean.setName(name); // 위에서 선언한 빈에 넣는다.
	response.sendRedirect("beanResult.jsp");

--%>

<!-- 
	name : 사용할 빈 이름, 
	property : 빈의 사용할 필드명, 
	value: 내가 직접 값을 넣고 싶을때, 
	pram: 파라메터 값을 넣고 싶을때  
-->
<jsp:setProperty name="firstBean" property="name" param="userName"/>
<!-- action tag 에는 redirect 가 없다. -->
<jsp:forward page="beanResult.jsp"/>