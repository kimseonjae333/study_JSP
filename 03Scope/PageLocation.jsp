<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 링크로 이동된 페이지에서 page 영역의 속성값 읽기 </h2>
<%
//메모리 주소가 변경되어 데이터가 소실되는 것을 막기 위해 auto-boxing 통해서 객체 타입으로 변환, 다시 풀어서 저장 
Object pInteger = pageContext.getAttribute("pageInteger");
Object pString = pageContext.getAttribute("pageString");
Object pPerson = pageContext.getAttribute("pagePerson");
%>
<ul>
<li>Integer 객체 : <%= (pInteger == null)? "값 없음"  : pInteger %></li>
<li>String 객체 : <%= (pString == null)? "값 없음" : pString %></li>
<li>Person 객체 : <%= (pPerson == null)? "값 없음" : ((Person)pPerson).getName() %></li>
</ul>

</body>
</html>