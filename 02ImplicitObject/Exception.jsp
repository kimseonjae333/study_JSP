<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception.jsp</title>
</head>
<body>
<%
int status = response.getStatus();

if(status == 404){
	out.print("404 에러가 발생하였습니다.");
	out.print("<br/> 파일의 경로를 확인하여 주세요");
} else if(status == 405){
	out.print("405 에러가 발생하였습니다.");
	out.print("<br/> 요청 방식(method)을 확인하여 주세요");
} else if(status == 500){
	out.print("500 에러가 발생하였습니다.");
	out.print("<br/> 소스 코드 상 오류가 있는지 확인하여 주세요");
}
%>
</body>
</html>
