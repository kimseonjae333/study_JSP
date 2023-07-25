<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//flag => 자료형이 boolean인 체크하는 자
String popupMode = "on"; //팝업을 띄울지 말지 결정하는 역할

//쿠키 먼저 읽기
Cookie[] cookies = request.getCookies(); // 쿠키는 몇개가 올 지 몰라서 배열로 받기
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue  = c.getValue();
		
		if(cookieName.equals("PopupClose")){ //PopupClose라는 쿠키가 있다면
			popupMode = cookieValue; //해당 값으로 업데이트
		}
	}
}
%>    
    
<!DOCTYPE html>
<html>
<head>

<style>
	div#popup{
		position: absolute; top:100px; left:50px; color:yellow;
		width:300px; height:100px; background-color: gray;
	}
	div#popup>div {
		position: relative;  background-color: #ffffff; top:0px;
		border:1px solid gray; padding:10px; color:black;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(function() {
	$('#closeBtn').click(function(){
		$('#popup').hide();
		
		var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
		//아이디가 inactiveToday인 체크박스를 확인해서 체크가 되어있으면 그 값을 변수에 담기
		$.ajax({ //비동기처리
			url : './PopupCookie.jsp', //보낼 주소
			type : 'get', //method 타입
			data : {inactiveToday : chkVal},
			dataType : "text",
			success : function(resData) { //요청이 성공할 경우 나오는 콜백 함수
				if(resData != '') location.reload();
			}
		});
	});
});
</script>


<meta charset="UTF-8">
<title>쿠키로 팝업창 제어하기</title>
</head>
<body>
<h2> 팝업 페이지 - sub </h2>

<%
out.print("현재 팝업창은 " + popupMode + " 상태입니다.");

if(popupMode.equals("on")){
%>
	<div id="popup">
		<h2 align="center">공지사항 팝업</h2>
		<div align="right">
			<form name = "popFrm">
				<input type="checkbox" id="inactiveToday" value="1">
				 하루동안 열지 않기
				<input type="button" value="닫기" id="closeBtn">
			</form>
		</div>
	</div>

<%
}
%>


</body>
</html>