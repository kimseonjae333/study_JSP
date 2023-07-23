<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageInclude.jsp</title>
</head>
<body>
<h3> include 된 페이지 </h3>
<%
pageContext.removeAttribute("pageInteger");
Object pInteger2 = pageContext.getAttribute("pageInteger");
Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul>
<li>Integer 객체 : <%= (pInteger2 == null) ? "값 없음" : pInteger2 %></li>
<li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
<li>Person 객체 : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>


</body>
</html>