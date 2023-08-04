<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String outerPath1 = "./Inc/OuterPage1.jsp";
String outerPath2 = "./Inc/OuterPage2.jsp";

pageContext.setAttribute("pAttr", "동명왕");
request.setAttribute("rAttr", "온조왕");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IncludeMain.jsp</title>
</head>
<body>
<h2>지시어와 액션태그의 동작 방식 비교</h2>
	<h3> 지시어 페이지 포함</h3>
	<%@ include file='./Inc/OuterPage1.jsp' %>
	<%-- <%@ include file= <%= outerPath1 --%>  
	<p> 외부에서 선언된 변수 : <%= newVar1 %></p>
	
	<h3> 액션태그 페이지 포함</h3>
	<jsp:include page='./Inc/OuterPage2.jsp' />
	<jsp:include page= "<%= outerPath2 %>" />  
	
	<p> 외부에서 선언된 변수 : <%--= newVar2 --%></p>
</body>
</html>