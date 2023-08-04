<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String pValue = "천하무적";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ParamMain.jsp</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	<jsp:setProperty name="person" property="name" value="홍길동" />
	<jsp:setProperty name="person" property="age" value="18" />
	<jsp:forward page="ParamForward.jsp?param1=임꺽정">
		<jsp:param name="param2" value="경기도 분당시" />
		<jsp:param name="param3" value="서현역" />
		<jsp:param name="param4" value="<%=pValue %>" />
	</jsp:forward>
</body>
</html>