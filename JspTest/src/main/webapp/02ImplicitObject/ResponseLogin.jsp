<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseLogin</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pw = request.getParameter("user_pw");
if(id.equalsIgnoreCase("kopo") && pw.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseHome.jsp");
} else {
	// response.sendRedirect("ResponseMain.jsp?loginError=0");
	request.getRequestDispatcher("ResponseMain.jsp?loginError=1")
	.forward(request, response);
	
}

%>
</body>
</html>