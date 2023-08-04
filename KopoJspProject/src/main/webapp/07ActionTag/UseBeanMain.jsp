<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// <jsp:setProperty name="빈즈 이름" property="속성명" value="설정값" />
// <jsp:getProperty name="빈즈 이름" property="속성명" />
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseBeanMain</title>
</head>
<body>
<h2> 자바 빈즈 액션 태그</h2>
	<h3> 자바 빈즈 생성하기</h3>
	<%
	/*
	Person person = (Person)request.getAttribute("person");
	if (person == null) {
		person = new Person();
		request.setAttribute("person", person);
	}
	*/
	%>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	
	<h3> setProperty 액션태그로 자바빈즈 속성 지정</h3>
	<jsp:setProperty name="person" property="name" value="홍길동" />
	<jsp:setProperty name="person" property="age" value="5142" />
	
	<h3> getProperty 액션태그로 자바빈즈 속성 읽기</h3>
	<jsp:getProperty name="person" property="name" />
	<jsp:getProperty name="person" property="age" />
</body>
</html>