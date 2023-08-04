<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> Main 에서 저장된 속성 값 얻어오기 </h2>
<%
ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
for (String str : lists){
	out.println(str + "<br>");
}
%>
</body>
</html>