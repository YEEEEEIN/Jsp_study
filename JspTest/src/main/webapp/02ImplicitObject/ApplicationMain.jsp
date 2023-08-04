<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationMain.jsp</title>
</head>
<body>
<h2> web.xml에 접근하기</h2>
초기화 매개변수1 : <%= application.getInitParameter("INIT_PARM1") %> <br>
초기화 매개변수2 : <%= application.getInitParameter("INIT_PARM2") %> <br>
초기화 매개변수3 : <%= application.getInitParameter("INIT_PARM3") %> <br>

<h2> 물리적 경로로 얻어오기 </h2>
application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %> <br>

<h2> 선언부에서 application 내장객체 사용하기 </h2>
<%!
public String useImplicitObject(){
	return this.getServletContext().getRealPath("/02ImplicitObject");
}
public String useImplicitObject(ServletContext app){
	return app.getRealPath("/02ImplicitObject");
}
%>

<ul>
	<li>this 사용 : <&= useImplicitObject() %></li>
	<li>내장객체를 인수로 전달 : <&= useImplicitObject(application) %></li>
</ul>
</body>
</html>