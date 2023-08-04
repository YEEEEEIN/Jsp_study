<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%!
// 선언부에 간단한 함수 생성
public int add(int num1, int num2){
	return num1 + num2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScriptElement.jsp</title>
</head>
<body>
<% // 스트립틀릿 자바코드
int result = add(10,20);
%>
<!-- 표현식 -->
덧셈 결과 : <%= result %><br>
곱셈 결과 : <%= add(11,21) %><br>
</body>
</html>