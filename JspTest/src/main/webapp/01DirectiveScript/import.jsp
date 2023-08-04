<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ErrorPage.jsp" 
    trimDirectiveWhitespaces = "true"%> <!-- errorPage="ErrorPage.jsp" 추가 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성 확인</title>
</head>
<body>
<%
Date today = new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
String todaystr = dateFormat.format(today);
out.println("오늘 날짜 : " + todaystr);


// 에러 처리 1번 - try/catch
/* try{
	int Age = Integer .parseInt(request.getParameter("age")) + 10;
	out.println("나의 10년 후 나이는 : " + Age + "살!");
} catch (Exception e) {
	e.printStackTrace();
} */


// 2번 - 지시어 속성을 활용하여 페이지를 변환
int Age = Integer .parseInt(request.getParameter("age")) + 10;
	out.println("나의 10년 후 나이는 : " + Age + "살!");
%>
</body>
</html>