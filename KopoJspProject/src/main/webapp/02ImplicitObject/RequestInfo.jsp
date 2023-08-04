<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>데이터 전송 방식 : <%= request.getMethod() %></li>
		<li>URL : <%= request.getRequestURL() %></li>
		<li>URI : <%= request.getRequestURI() %></li>
		<li>protocol : <%= request.getProtocol() %></li>
		<li>server name : <%= request.getServerName() %></li>
		<li>server port : <%= request.getServerPort() %></li>
		<li>cli IP addr : <%= request.getRemoteAddr() %></li>
		<li>query string : <%= request.getQueryString() %></li>
		<li>val1 : <%= request.getParameter("eng") %></li>
		<li>val2 : <%= request.getParameter("han") %></li>
	</ul>
</body>
</html>