<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str1 = new String();
String str2 = new String();
if(str1 == str2) {
	out.print("두 값이 같습니다");
} else {
	out.print("두 값이 다릅니다");
}

String s1 = "home";
String s2 = "home";
if(s1 == s2) {
	out.print("두 값이 같습니다");
} else {
	out.print("두 값이 다릅니다");
}
%>

</body>
</html>