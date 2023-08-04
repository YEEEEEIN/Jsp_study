<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// requestString = "request 영역 문자열" ;
// requestPerson = Person("안중근", "25415");
// 저장

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
<h2> requset 영역 값 제거</h2>
<%
// 제거 목록
// -requsetString
// -requestInteger

//request.removeAttribute("requestString");
//request.removeAttribute("requestPerson");
%>
<h2>request 영역 속성 출력</h2>
<%
// requestString, requestPerson 출력
// 

String pString = (String)request.getAttribute("requestString");
Person pPerson = (Person)(request.getAttribute("requestPerson"));
%>

<ul>
<li>String 객체 : <%= pString %></li>
<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge()%></li>
</ul>
<a href = "RequestForward.jsp?eng=Enlgish&han=한글"> Get 방식 전송</a>
<%--request.getRequestDispatcher("ResponseMain.jsp?loginErr=error")
			.forward(request, response);
			
			RequestForward.jsp = ewng=English, han=한글 속성을 get방식으로 전달.
			
 --%>
 

</body>
</html>