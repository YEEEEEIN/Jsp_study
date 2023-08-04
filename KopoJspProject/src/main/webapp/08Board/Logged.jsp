<%@page import="utils.JspFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("UserId") == null){
	JspFunction.alertLocation("로그인 해주세요.", "../06Sesstion/LoginForm,.jsp", out);
	return;
}


%>