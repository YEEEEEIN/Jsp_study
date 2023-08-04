<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ParamForward.jsp</title>
</head>
<body>
<jsp:useBean id="person" class="common.Person" scope="request" />
<h2>포워드된 페이지에서 매개변수를 받아서 확인</h2>
<ul>
	<li><jsp:getProperty name="person" property="name" />
	<li><jsp:getProperty name="person" property="age" />
	<li>본명 : <%= request.getParameter("param1") %>
	<li>본명 : <%= request.getParameter("param2") %>
	<li>본명 : <%= request.getParameter("param3") %>
</ul>
<jsp:include page="Inc/ParamInclude.jsp">
   <jsp:param name="loc1" value="경기도 안양" />
   <jsp:param name="loc2" value="광덕안길" />
</jsp:include>

</body>
</html>