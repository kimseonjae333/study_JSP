<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieMain.jsp</title>
</head>
<body>
<h2> 쿠키 설정 </h2>

<%
Cookie cookie = new Cookie("myCookie", "엄마손쿠키"); //쿠키 생성자, 여기서 쿠키 이름 설정
cookie.setPath(request.getContextPath()); //컨텍스트 루트(프로젝트 명)로 경로 설정
cookie.setMaxAge(3600); // 3600 = 1시간 유지기간
response.addCookie(cookie); //응답 헤더 담당 내장 객체 response
%>

<h2> 쿠키 보내고 바로 확인 </h2>
<%
Cookie[] cookies = request.getCookies(); // 쿠키는 몇개가 올 지 몰라서 배열로 받기
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue  = c.getValue();
		
		out.print(String.format("%s : %s <br/>", cookieName, cookieValue));
		//사용자가 처음 페이지에 들어왔을때는 출력x, 쿠키값 막 받은 상태
		//새로고침하면 뜸
	}
}

%>


</body>
</html>
