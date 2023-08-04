<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeUpdate.jsp</title>
</head>
<body>
<h2>동적 쿼리문으로 회원 추가 테스트</h2>
<%
// DB 연결 - 첫번째 기본생성자 사용 방법 활용
JDBConnect jdbc = new JDBConnect();

// 테스트용 입력값 준비
String id = "test1";
String pass = "1111";
String name = "테스트회원1";

String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)"; // 쿼리문 작성
PreparedStatement psmt = jdbc.con.prepareStatement(sql); // 동적쿼리문 활용 준비
psmt.setString(1, id); // int => setInt(), date => setDate()
psmt.setString(2, pass);
psmt.setString(3, name);

int inResult = psmt.executeUpdate(); // DB에 변화가 발생하므로 Update() 함수 활용
out.println(inResult + "행이 입력되었습니다.");

// DB 연결 닫기
jdbc.close();
%>
</body>
</html>