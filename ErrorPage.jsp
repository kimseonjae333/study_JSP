<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"
    trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Process</title>
</head>
<body>
	<h2> 서비스 중 일시적인 오류가 발생하였습니다T^T </h2>
	<p>
	오류명 : <%= exception.getClass().getName() %> <br>
	오류 메세지 : <%= exception.getMessage() %>
	</p>
</body>
</html>