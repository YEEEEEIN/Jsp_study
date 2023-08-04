<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

String Driver = application.getInitParameter("OracleDriver");
String URL = application.getInitParameter("OracleURL");
String Id = application.getInitParameter("OracleId");
String Pwd = application.getInitParameter("OraclePwd");

MemberDAO dao = new MemberDAO(Driver, URL, Id, Pwd); // db 연결
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close(); // DB 자원 반납

if (memberDTO.getId() != null) {
	// 로그인 성공
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("LoginForm.jsp");
} else {
	// 로그인 실패 - DB 조회가 불가
	request.setAttribute("LoginErrMsg", "조회가 불가합니다");
	request.getRequestDispatcher("LoginForm.jsp")
	.forward(request, response);
}
%>