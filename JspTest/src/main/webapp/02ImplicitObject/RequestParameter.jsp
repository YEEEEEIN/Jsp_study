<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<%  request.setCharacterEncoding("UTF-8");
	String[] favoValues = request.getParameterValues("favo"); // 받아오는 값이 2개 이상이면 => Values // 출력도 배열로 처리
	String intro = request.getParameter("intro");
	intro = intro.replace("\r\n", "<br />");
	%>
		
	<li>아이디 : <%= request.getParameter("id") %></li>
	<li>성별 : <%= request.getParameter("sex") %></li>

	<li>관심사항 : <%
	if (favoValues != null) {
		for (String favo : favoValues) {
			if (favo.equals("eco")) {
				out.println("경제 ");
			} else if (favo.equals("pol")) {
				out.println("정치 ");
			} else if (favo.equals("ent")) {
				out.println("연예 ");
			}
		}
	}
	%></li>
	
	<li>소개 : <%= intro %></li>

</ul>

</body>
</html>