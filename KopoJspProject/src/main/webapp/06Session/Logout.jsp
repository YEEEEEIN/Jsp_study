<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 방법 1 -  개별로 지움
session.removeAttribute("UserId");
session.removeAttribute("UserName");


// 방법 2 - 전체 속성 제거
// session.invalidate();

response.sendRedirect("LoginForm.jsp"); // 로그인 페이지로 이동
%>
</body>
</html>