<%@ page import = "common.Person" %>
<%@ page import = "java.util.HashMap" %>
<%@ page import = "java.util.Map" %>
<%@ page import = "java.util.Set" %>
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
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("심형래", 55));
maps.put("actor2", new Person("심순애", 53));

application.setAttribute("maps", maps);
%>

</body>
</html>