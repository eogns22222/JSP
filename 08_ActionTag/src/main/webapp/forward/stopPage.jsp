<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	
	/* String page_ = request.getParameter("forwardPage");
	String name = request.getParameter("name");	
	String age = request.getParameter("age");	
	String addr = request.getParameter("address");	
	System.out.println(page_);
	System.out.println(name);
	System.out.println(age);
	System.out.println(addr);
	
	response.sendRedirect("result.jsp");  */

%>
<!--  전송해준 파라메터 + 내가 보내고 싶은 데이터  -->
<jsp:forward page='<%=request.getParameter("forwardPage")%>'>
	<jsp:param name="tel" value="010-6537-3307"/>
</jsp:forward>