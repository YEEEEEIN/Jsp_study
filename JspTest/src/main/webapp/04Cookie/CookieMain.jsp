<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> CookieMain.jsp </title>
</head>
<body>
<h2> 쿠키 설정 </h2>

<%
Cookie cookie = new Cookie("myCookie", "엄마손쿠키");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600);
response.addCookie(cookie);
%>

<h2> 쿠키 보내고 바로 확인 </h2>
<% 
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName(); // 쿠키의 이름
		String cookieValue = c.getValue(); // 쿠키의 값
		
		out.println(String.format("%s : %s <br>", cookieName, cookieValue));
	}
}
%>
</body>
</html>