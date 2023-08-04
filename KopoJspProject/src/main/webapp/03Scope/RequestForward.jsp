<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestForward.jsp</title>
</head>
<body>
	<h2>forward로 전달된 페이지</h2>
	<%
	request.setAttribute("requestPerson", new Person("안중근", 25415));
	Person pPerson = (Person) (request.getAttribute("requestPerson"));
	%>

	<ul>
		<li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
	</ul>
	<h2>매개변수로 전달 된 값 출력하기</h2>
	<ul>
		<li>val1 : <%=request.getParameter("eng")%></li>
		<li>val2 : <%=request.getParameter("han")%></li>
	</ul>

</body>
</html>