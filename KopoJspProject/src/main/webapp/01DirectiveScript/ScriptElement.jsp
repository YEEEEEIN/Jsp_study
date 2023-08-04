<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
public int add (int num1, int num2) {
	return num1 + num2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScriptElement.jsp</title>
</head>
<body>
<%
int result = add (10, 20);
%>

덧셈 결과 : <%= result%> <br />
덧셈 결과 : <%= add(11, 21) %>

</body>
</html>