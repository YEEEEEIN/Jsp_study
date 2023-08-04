<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestHeader.jsp</title>
</head>
<body>
<h2>요청 헤더 정보 출력</h2>
<%
Enumeration headers = request.getHeaderNames(); // request => 클라이언트의 요청 정보가 담겨있다
while(headers.hasMoreElements()){
	String headerNames = (String)headers.nextElement();
	String headerValues = request.getHeader(headerNames);
	out.println("헤더명 : " + headerNames + "헤더값 : " + headerValues + "<br>");
}
%>

</body>
</html>