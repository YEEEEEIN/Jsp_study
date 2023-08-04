<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>쿠키 설정</h2>

<%
Cookie cookie = new Cookie("myCookie", "엄마손쿠키"); // 쿠키 생성자
cookie.setPath(request.getContextPath()); // 컨텍스트 루트로 경로 설정
cookie.setMaxAge(3600); // 1시간 유지기간
response.addCookie(cookie); // 응답 헤더에 쿠키 추가
%>

<h2> 쿠키 보내고 바로 확인</h2>
<% 
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for (Cookie c : cookies) {
		String cookieName = c.getName(); // 쿠키의 이름
		String cookieValue = c.getValue(); // 쿠키의 값
		
		out.print(String.format("%s : %s <br />", cookieName, cookieValue));
	}
}
%>
</body>
</html>