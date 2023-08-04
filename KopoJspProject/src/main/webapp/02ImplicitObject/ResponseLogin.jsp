<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		if (user_id.equalsIgnoreCase("kopo") && user_pw.equalsIgnoreCase("1234")) {
			response.sendRedirect("ResponseHome.jsp");
		} else {
			//response.sendRedirect("ResponseMain.jsp?loginErr=error");
			request.getRequestDispatcher("ResponseMain.jsp?loginErr=error")
			.forward(request, response);
		}
	%>
</body>
</html>