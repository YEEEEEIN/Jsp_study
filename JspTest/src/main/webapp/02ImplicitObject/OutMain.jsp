<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OutMain.jsp</title>
</head>
<body>
<%
// 버퍼 삭제
out.print("출력이 될까 안될까");
out.clearBuffer(); // 버퍼 비우기 - 출력 결과 사라지게 된다
out.print("<h2>out 내장 객체</h2>");

// 버퍼 크기
out.print("버퍼의 크기 : " + out.getBufferSize() + "<br>"); // 8kb
out.print("버퍼의 남은 크기 : " + out.getRemaining() + "<br>");

out.flush(); // 버퍼의 내용을 출력
out.print("flush 이후 버퍼의 남은 크기 : " + out.getRemaining() + "<br>");

// 타입별로 출력
out.println(1); // ln 줄바꿈? -> 한 칸 띄어쓰기 => 인식이 안됨
%> <br> <%
out.println(false);
%> <br> <%
out.println("문자형");

//지시어에서 버퍼 사이즈를 20kb 수정 후 버퍼의 크기 출력
//1, 일 , A


%>
</body>
</html>