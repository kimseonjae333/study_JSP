<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pageInteger", 1000); //"key",value
pageContext.setAttribute("pageString", "페이지영역"); //"key",value
pageContext.setAttribute("pagePerson", new Person("이제훈", 40)); //"key",value
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextMain.jsp</title>
</head>
<body>
<h2> page 영역의 속성값 읽기 </h2>
<%
//메모리 주소가 변경되어 데이터가 소실되는 것을 막기 위해 auto-boxing 통해서 객체 타입으로 변환, 다시 풀어서 저장 
int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
String pString = pageContext.getAttribute("pageString").toString();
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
<li>Integer 객체 : <%= pInteger %></li>
<li>String 객체 : <%= pString %></li>
<li>Person 객체 : <%= pPerson.getName() %>, <%=pPerson.getAge() %></li>
</ul>

<h2>include 된 페이지 이동 후 pageContext 속성 읽기</h2>
<%@ include file = "Pageinclude.jsp" %>

<h2>페이지 이동 후 pageContext 속성 읽기</h2>
<a href = "PageLocation.jsp">Location 파일로 이동</a>
</body>
</html>