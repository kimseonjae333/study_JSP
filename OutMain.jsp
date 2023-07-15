<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="20kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OutMain.jsp</title>
</head>
<body>
<%
//버퍼 삭제
out.print("출력이 될까 안될까");
out.clearBuffer(); //버퍼 초기화(비우기) -> 출력 결과 사라지게 됨
out.print("<h2>out 내장객체</h2>");
out.print("<h3>out 내장객체</h3>");

//버퍼 크기
out.print("버퍼의 크기 : " + out.getBufferSize() + "<br/>"); //기본 크기
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br/>"); 

out.flush();
out.print("flush 이후 버퍼의 남은 크기: " + out.getRemaining() + "<br/>"); 

//타입별로 출력
out.print(1);
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br/>"); 
out.print('일');
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br/>"); 
out.print('A');
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br/>"); 
out.println (false);
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br/>"); 
%>
<br/>
<%
out.println ('아');
%>
</body>
</html>