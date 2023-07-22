<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//requestString = "request 영역 문자열";
//requestPerson = Person("안중근", "23415");
//저장

request.setAttribute("requestString", "request 영역 문자열");
request.setAttribute("requestPerson", new Person("안중근", 23415));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestMain.jsp</title>
</head>
<body>
	<h2>request 영역 값 제거</h2>
<%
//제거 목록
//-requestString
//-requestInteger

request.removeAttribute("requestString");
request.removeAttribute("requestInteger");
%>

<h2>request 영역 속성 출력</h2>

<%
//requestString, requestPerson 출력
//메모리 주소가 변경되어 데이터가 소실되는 것을 막기 위해 auto-boxing 통해서 객체 타입으로 변환, 다시 풀어서 저장 
Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>

	<ul>
		<li>String : <%= request.getAttribute("requestSring") %></li>
		<li>Person : <%= rPerson.getName() %>, <%=rPerson.getAge() %></li>
	</ul>
	
<%--
request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request,response);
//페이지 그냥 이동이랑은 좀 다름(제어 흐름만 넘겨주고자 할때 사용), main url에 login.jsp로 남아있음(파라미터값 숨겨서)
//forward 방식을 통해 받았던 request 데이터가 사라지지 않고 그대로 전달

RequestForward.jsp로 eng=English, han=한글 속성을 get 방식으로 전달
--%>

<%
//stream 형식으로 전달
//request.getRequestDispatcher("RequestForward.jsp?eng=English&han=한글").forward(request,response);

//리턴값 받아서 처리
RequestDispatcher rd = request.getRequestDispatcher("RequestForward.jsp?eng=English&han=한글");
rd.forward(request,response);
%>	

</body>
</html>