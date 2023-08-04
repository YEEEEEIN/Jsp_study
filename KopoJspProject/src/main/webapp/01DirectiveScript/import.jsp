<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ErrorPage.jsp"
    trimDirectiveWhitespaces="true"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성 확인</title>
</head>
<body>
<%
Date today = new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
String todayStr = dateFormat.format(today);
out.println("오늘 날짜 : " + todayStr);

//에러처리 1번 - try / catch
/*
try {
int Age = Integer.parseInt(request.getParameter("age")) + 10;
out.print("나의 10년 후 나이는 " + Age + "살!");
} catch (Exception e) {
	e.printStackTrace();
}
*/


//에러처리 2번 - 지시어 속성을 활용하여 페이지 변환
int Age = Integer.parseInt(request.getParameter("age")) + 10;
out.print("나의 10년 후 나이는 " + Age + "살!");




%>
</body>
</html>