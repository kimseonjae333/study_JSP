<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> web.xml에 접근하기 </h2>
초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %> <br/>
초기화 매개변수2 : <%= application.getInitParameter("INIT_PARAM2") %> <br/>
초기화 매개변수3 : <%= application.getInitParameter("INIT_PARAM3") %> <br/>

<h2> 물리적 경로로 얻어오기 </h2>
application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %> <br/>

<h2> 선언부에서 application 내장객체 사용하기 </h2>
<%!
//선언부에서는 application에 바로 접근 안됨, 그래서 아래 2방법으로 진행
public String useImplicitObject(){
	return this.getServletContext().getRealPath("/02ImplicitObject");
}
//둘다 똑같이 application 활용하는데 survletcontext에 바로 접근하는 방법, application을 받아서 접근하는 방법
public String useImplicitOjbect(ServletContext app){
	return app.getRealPath("/02ImplicitObject");
}
%>

<ul>
	<li>this 사용 : <%= useImplicitObject() %> </li>
	<li>내장객체를 인수로 전달 : <%= useImplicitOjbect(application) %> </li>
</ul>
</body>
</html>