<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 ArrayList<String> lists = new ArrayList<String>();
 lists.add("리스트");
 lists.add("컬렉션");
 
 session.setAttribute("lists", lists);
 %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionMain.jsp</title>
</head>
<body>
<h2> 페이지 이동 후 세션 영역 확인 </h2>
<a href = "SessionLocation.jsp"> Location.jsp 바로가기 </a>
</body>
</html>