<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBCconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
    <h2>회원 추가 테스트(executeUpdate() 사용)</h2>
    <%
    // *쿼리문: 정적 쿼리문(stmt), 동적 쿼리문(pstm), 프로시저 함수 호출(callback-stmt)
    // 테이블 변화(DB에 영향) o -> executeUpdate , x -> executeQuery
    
    // DB에 연결(1번 방법)
    JDBCconnect jdbc = new JDBCconnect();
    
    // 테스트용 입력값 준비(더미 데이터) 
    String id = "test1";
    String pass = "1111";
    String name = "테스트1회원";

    // 쿼리문 생성
    String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)";  
    PreparedStatement psmt = jdbc.con.prepareStatement(sql);  
    psmt.setString(1, id);
    psmt.setString(2, pass);
    psmt.setString(3, name);

    // 쿼리 수행
    int inResult = psmt.executeUpdate(); //executeUpdate() 메서드 - > 증감된 레코드 수 반환(int)
    out.println(inResult + "행이 입력되었습니다.");

    // 연결 닫기
    jdbc.close(); 
    %>
</body>
</html>