<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%	
	SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");	
	long add_date = dateformat.parse(request.getParameter("add_date")).getTime();
	//타임스탬프? 날짜 한번 더 형변환
	
	int add_int = Integer.parseInt(request.getParameter("add_int"));
	String add_str = request.getParameter("add_str");
	
	//헤더에 값 추가
	response.addDateHeader("MyBirthday", add_date); //추가
	response.addIntHeader("MyNumber", add_int); //8080
	//response.setIntHeader("myNumber",1000); //수정
	response.addIntHeader("MyNumber", 1000); //추가
	response.addHeader("MyName", add_str);	
	response.setHeader("MyName", "박보검"); //수정
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseHeader.jsp</title>
</head>
<body>
<h2> 응답 헤더 정보 출력 </h2>
<%
Collection<String> headerNames = response.getHeaderNames();
for(String hName : headerNames) {
	String hValue = response.getHeader(hName);
	//myNumber에 값 2개 들어있으면 제일 첫번째 value 값만 나옴
%>
	<li> <%= hName %> : <%= hValue %></li>
	
<%
}
%>	

<h2> myNumber 출력하기 </h2>
<%
Collection<String> myNumber = response.getHeaders("MyNumber");
for(String myNum : myNumber) {
	//헤더 누적 가능(같은 key로 value 여러개 받을 수 있음)
%>
	<li> myNumber : <%= myNum %></li>
<%	
}
%>


</body>
</html>