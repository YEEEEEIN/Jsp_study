<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "request 영역 문자열");
request.setAttribute("requestPerson", new Person("안중근", 25415));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestMain.jsp</title>
</head>
<body>
<h2> request 영역 값 제거 </h2>
<%
request.removeAttribute("requestString");
request.removeAttribute("requestInteger");
%>

<h2> request 영역 속성 출력 </h2>
<%
Person rPerson = (Person)(request.getAttribute("requestPerson")); 
%>

<ul>
	<li>string : <%=request.getAttribute("requestString") %> </li>
	<li>person : <%=rPerson.getName() %>, <%=rPerson.getAge() %> </li>
</ul>


<% 
// stream 형식으로 전달
// request.getRequestDispatcher("ResquestForward.jsp?eng=English&han=한글").forward(request, response);

// 리턴값 받아서 처리
RequestDispatcher rd = request.getRequestDispatcher("RequestForward.jsp?eng=English&han=한글");
rd.forward(request, response);

%>	


</body>
</html>