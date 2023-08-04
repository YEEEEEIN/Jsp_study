<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>web.xml에 접근하기</h2>
초기화 매개변수1 : <%=application.getInitParameter("INIT_PARAM1") %> <br />
초기화 매개변수2 : <%=application.getInitParameter("INIT_PARAM2") %> <br />
초기화 매개변수3 : <%=application.getInitParameter("INIT_PARAM3") %> <br />

<h2> 물리적 경로로 얻어오기</h2>
application 내장 객체 : <%= application.getRealPath("/ImplicitObject") %> <br />

<h2>선언부에서 application 내장객체 사용하기</h2>
<%!
public String useImplcitObject() {
	return this.getServletContext().getRealPath("/ImplicitObject");
}

public String useImplicitObject(ServletContext app) {
	return app.getRealPath("/ImplicitObject");
}
%>

<ul>
	<li>this 사용 : <%= useImplcitObject() %></li>
	<li>내장객체를 인수로 전달 : <%= useImplicitObject(application)%></li>
</ul>
</body>
</html>