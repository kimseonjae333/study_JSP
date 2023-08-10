<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBCconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8"%>  
<html>
<head><title>JDBC</title></head>
<body>
    <h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
    <%
    // DB에 연결
    JDBCconnect jdbc = new JDBCconnect();

    // 쿼리문 생성
    String sql = "SELECT id, pass, name, regidate FROM member";  
    Statement stmt = jdbc.con.createStatement();  

    // 쿼리 수행
    ResultSet rs = stmt.executeQuery(sql);  

    // 결과 확인(웹 페이지에 출력)
    while (rs.next()) { 
        String id = rs.getString(1); //컬럼 인덱스로 접근
        String pw = rs.getString(2);
        String name = rs.getString("name"); //컬럼 이름으로 접근
        java.sql.Date regidate = rs.getDate("regidate");
        
        out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br/>"); 
    }

    // 연결 닫기(자원 해제 안하면 메모리 누수)
    jdbc.close();
    %>
</body>
</html>