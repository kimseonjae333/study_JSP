<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
<h2> 파라미터 값 받기 </h2>
	<ul>
	<% 
		String id = request.getParameter("id");
		String s = request.getParameter("sex");
		String sex = "";
		if(s.equals("man")){
			sex = "남자";
		} else if(s.equals("woman")){
			sex = "여자";
		}
		String intro = request.getParameter("intro").replace("\r\n","<br/>");
	%>
		<li>아이디 : <%= id %></li>
		<li>성별 : <%= sex %> </li>
		<li>관심사항 :
		<%
		String[] favo = request.getParameterValues("fav");
		String show = "";
		String fav = "";
		for(int i = 0; i < favo.length; i++){
			show = favo[i];
			if(show.equals("eco")){
				fav = "경제";
			} else if(show.equals("pol")){
				fav = "정치";
			} else if(show.equals("ent")){
				fav = "연예";
			}
			out.println(fav);
		}
		%>
		</li>
		<li>소개 : <%= intro %> </li>
	</ul>
</body>
</html>