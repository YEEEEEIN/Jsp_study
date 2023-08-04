<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseMain.jsp</title>
</head>
<body>
<h2>로그인 폼</h2>
<%
String loginErr = request.getParameter("loginErr");
if(loginErr != null) out.print("로그인 실패");
// loginErr == null => 로그인 성공
%>
<form action="./ResponseLogin.jsp" method = "post">
	아이디 : <input type="text" name="user_id"><br>
	패스워드 : <input type="text" name="user_pw"><br>
	<input type="submit" value="로그인">
</form>

<h2> HTTP 응답 헤더 설정 </h2>
<form action="./ResponseHeader.jsp method="get">
	날짜 형식 : <input type="text" names="add_date" value="2023-06-23 10:27">
	<br>
	숫자 형식 : <input type="text" names="add_int" value="8080">
	<br>
	문자 형식 : <input type="text" names="add_str" value="김남길">
	<br>
	<input type="submit" value="헤더 설정 & 출력">
</form>



















</body>
</html>