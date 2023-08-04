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
String[] favo = request.getParameterValues("favo");
if (favo != null) {
    for (int i = 0; i < favo.length; i++) {
        if (favo[i].equals("pol")) {
            favo[i] = "정치";
        } else if (favo[i].equals("ent")) {
            favo[i] = "연애";
        } else if (favo[i].equals("eco")) {
            favo[i] = "경제";
        }
    }
}
%>
<% 
String intro = request.getParameter("intro");
if (intro != null) {
    intro = intro.replace("\r\n", "<br />");
}
%>
	<ul>
		<li>아이디 : <%= request.getParameter("id") %></li>
		<li>성 별 : <%= request.getParameter("sex") %></li>
		<li>관심사항 : <%
        if (favo != null && favo.length > 0) {
            for (String interest : favo) {
                out.println(interest + " ");
            }
        } else {
            out.println("선택된 관심사항이 없습니다.");
        }
        %></li>
		<li>소개 : <%= intro %></li>
	</ul>
</body>
</html>