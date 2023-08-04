<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setMaxInactiveInterval(1800); // 초 단위
SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss"); // 시 분 초만 출력

long creationTime = session.getCreationTime(); // 세션(생성된)의 최초 요청 시각
String creationTimeStr = dateFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime();
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionMain.jsp</title>
</head>
<body>
<h2>Session 설정 확인</h2>
<ul>
<li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
<li>세션 아이디 : <%= session.getId() %></li>
<li>최초 요청 시각 : <%= creationTimeStr %></li>
<li>마지막 요청 시각 : <%= lastTimeStr %></li>
</ul>
</body>
</html>