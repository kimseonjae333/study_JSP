<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String chkVal = request.getParameter("inactiveToday");

if(chkVal != null && chkVal.equals("1")){
	
	Cookie cookie = new Cookie("PopupClose", "off"); //쿠키 생성자, 여기서 쿠키 이름 설정
	cookie.setPath(request.getContextPath()); //컨텍스트 루트(프로젝트 명)로 경로 설정
	cookie.setMaxAge(60*60*24); //초기준, 60초*60초*24 =하루
	response.addCookie(cookie); //응답 헤더 담당 내장 객체 response
	
	out.println("쿠키 : 하루 동안 열지 않음"); //resData
}
%>