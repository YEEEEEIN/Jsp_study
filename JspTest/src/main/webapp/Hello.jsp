<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 지시어(Direction) -->

<%! // !가 있는 부분 => 선언부
String str1 = "jsp";
String str2 = "안녕하세요";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 테스트 <%=str1 %> </h2> <!-- 표현식 -->
	<p> <% out.println(str2 + str1 + "입니다."); %> </p> <!-- 로직이 있는 부분 => 스크립틀릿(선언부, 표현식x) -->
</body>
</html>