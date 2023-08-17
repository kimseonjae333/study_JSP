<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");  // 날짜 표시 형식
long creationTime = session.getCreationTime();  // 최초 요청(세션 생성) 시각
//타임스탬프(일이 발생해서 컴퓨터에 기록된 시간) 형식 -> Date 형식으로 포맷
String creationTimeStr = dateFormat.format(new Date(creationTime));
long lastTime = session.getLastAccessedTime();  // 마지막 요청 시각
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<html>
<head><title>Session</title></head>
<body>
    <h2>Session 설정 확인</h2>
    <ul>
    	<!-- 원래 세션은 웹페이지 닫히기 전까지 유지됨 -->
        <li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
        <li>세션 아이디 : <%= session.getId() %></li>
        <li>최초 요청 시각 : <%= creationTimeStr %></li>
        <li>마지막 요청 시각 : <%= lastTimeStr %></li>
        <!-- 최초 요청 시각은 고정, 마지막 요청 시간은 새로 고침하면 바뀜(웹 페이지 닫히기 전까지 유지) -->
    </ul>
</body>
</html>