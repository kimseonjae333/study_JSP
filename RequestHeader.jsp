<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
<h2>요청 헤더 정보 출력</h2>
<%
Enumeration headers = request.getHeaderNames(); 
//Enumeration : 순번이 있는 배열 형태의 자료형
while(headers.hasMoreElements()){
	String headerName = (String)headers.nextElement();
	String headerValue = request.getHeader(headerName);
	out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
}
%>

</body>
</html>