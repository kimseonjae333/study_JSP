<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestForward.jsp</title>
</head>
<body>
<h2>forward로 전달된 페이지</h2>
<h4>RequestMain의 리퀘스트 영역 읽기</h4>
<%
Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>

	<ul>
		<li>String : <%= request.getAttribute("requestSring") %></li>
		<li>Person : <%= rPerson.getName() %>, <%=rPerson.getAge() %></li>
	</ul>
	
<h4>매개변수로 전달된 값 출력하기</h4>
<%
//2.han, eng => getParameter()
request.setCharacterEncoding("UTF-8");
out.println(request.getParameter("eng"));
out.println(request.getParameter("han"));
%>

</body>
</html>