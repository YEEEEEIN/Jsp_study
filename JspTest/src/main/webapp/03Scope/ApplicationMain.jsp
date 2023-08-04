<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ApplicationMain.jsp </title>
</head>
<body>
<h2> application 영역 공유 </h2>
<%
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("심형래", 55));
maps.put("actor2", new Person("심순애", 53));

application.setAttribute("maps", maps);
%>
application 영역 저장
</body>
</html>