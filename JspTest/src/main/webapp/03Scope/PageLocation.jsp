<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageLocation.jsp</title>
</head>
<body>
<h3> 링크로 이동된 페이지에서 page 영역의 속성값 읽기 </h3>
<%
Object pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
Object pString = pageContext.getAttribute("pageString").toString();
Object pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul>
<li>Integer 객체 : <%= (pInteger == null)? "값 없음" : pInteger %></li>
<li>String 객체 : <%= (pString == null)? "값 없음" : pString %></li>
<li>Person 객체 : <%= (pPerson == null)? "값 없음" : ((Person)pPerson).getName() %>, <%= ((Person)pPerson).getAge() %></li>
</ul>

</body>
</html>