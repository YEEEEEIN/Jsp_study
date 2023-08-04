<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String chkVal = request.getParameter("inactiveToday");

if (chkVal != null && chkVal.equals("1")) {
	
	Cookie cookie = new Cookie("PopupClose", "off"); // 쿠키 생성자
	cookie.setPath(request.getContextPath()); // 컨텍스트 루트로 경로 설정
	cookie.setMaxAge(60*60*24); // 1시간 유지기간
	response.addCookie(cookie); // 응답 헤더에 쿠키 추가
	out.println("쿠키 : 하루 동안 열지 않음");
}


%>