<%@page import="java.time.LocalDateTime"%>
<%@page import="org.apache.tomcat.jni.Local"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
LocalDate today = LocalDate.now();
LocalDateTime tommorrow = LocalDateTime.now().plusDays(1);
%>