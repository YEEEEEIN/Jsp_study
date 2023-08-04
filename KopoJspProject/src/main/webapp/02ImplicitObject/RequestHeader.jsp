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
Enumeration headers = request.getHeaderNames();
while (headers.hasMoreElements()) {
	String headerName = (String)headers.nextElement();
	String headerValue = request.getHeader(headerName);
	out.println("헤더명 : " + headerName + ", 헤더값 : " 
	+ headerValue +"<br />");
}
%>

</body>
</html>