<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지영역");
pageContext.setAttribute("pagePerson", new Person("한석봉", 1051));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextMain.jsp</title>
</head>
<body>
<h2>page 영역의 속성값 읽기</h2>
<% 
int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
String pString = pageContext.getAttribute("pageString").toString();
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
<li>Integer 객체 : <%= pInteger %></li>
<li>String 객체 : <%= pString %></li>
<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge()%></li>
</ul>

<h2>include 된 페이지 이동 후 pageContext 속성 읽기</h2>
<%@ include file = "PageInclude.jsp" %>

<h2>페이지 이동 후 pageContext 속성 읽기 </h2>
<a href = "PageLocation.jsp">Location 파일로 가기</a>
</body>
</html>