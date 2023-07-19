<%@ page import="common.Person" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationResult.jsp</title>
</head>
<body>
<h2> application 영역 속성 읽기 </h2>
<%
Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");

Set<String> keys = maps.keySet();
for(String key : keys){
	Person person = maps.get(key);
	out.println(String.format("이름: %s, 나이: %d<br/>", person.getName(), person.getAge()));
}
%>
</body>
</html>