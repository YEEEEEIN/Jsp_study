<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	String loginError = request.getParameter("loginErr");
	if (loginError != null)
		out.print("로그인 실패");
	%>
	<form action="./ResponseLogin.jsp" method="post">
		아이디 : <input type="text" name="user_id" /><br /> 패스워드 : <input
			type="text" name="user_pw" /><br /> <input type="submit"
			values="로그인" />
	</form>

	<h2>HTTP 응답 헤더 설정</h2>

<%
Date today = new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String todayStr = dateFormat.format(today);
%>
	<form action="./ResponseHeader.jsp" method="get">
		날짜 형식 : <input type="text" name="add_date" value="<%=todayStr %>" />
		<br /> 
		숫자 형식 : <input type="text" name="add_int" value="8080" /> 
		<br />
		문자 형식 : <input type="text" name="add_str" value="김남길" /> 
		<br /> 
		<input type="submit" value="헤더 설정 & 출력" />
	</form>
</body>
</html>