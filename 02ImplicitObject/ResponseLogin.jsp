<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseLogin.jsp</title>
</head>
<body>
<%	
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("userid");
	String user_pw = request.getParameter("userpw");
	
	if(user_id.equals("kopo") && user_pw.equalsIgnoreCase("1234")){
		response.sendRedirect("ResponseHome.jsp");
	} else {		
		//response.sendRedirect("ResponseMain.jsp?loginErr=ddang");
		//뒤에 키로 전달한 파라미터까지 main 페이지 url에 뜸
		//받았던 request 데이터는 사라짐
		
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request,response);
		//페이지 그냥 이동이랑은 좀 다름(제어 흐름만 넘겨주고자 할때 사용), main url에 login.jsp로 남아있음(파라미터값 숨겨서)
		//forward 방식을 통해 받았던 request 데이터가 사라지지 않고 그대로 전달
	}
%>
</body>
</html>