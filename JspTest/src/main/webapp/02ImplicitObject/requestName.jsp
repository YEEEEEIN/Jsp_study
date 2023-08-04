<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
<h2> 클라이언트와 서버의 환경정보 읽기</h2>
<a href = "RequestInfo.jsp?eng=hello&han=안녕">GET 방식 전송</a>
<br>
<form action = "RequestInfo.jsp" method = "post">
영어 : <input type = "text" name = "eng" value = "bye"><br>
한글 : <input type = "text" name = "han" value = "잘가"><br>
<input type = "submit" value = "POST 방식 전송">
</form>

<h2>클라이언트 요청 매개변수</h2>
<form action = "RequestParameter.jsp" method = "post">
아이디 : <input type = "text" name = "id" value = ""> <br>

성별 : <input type = "radio" name = "sex" value = "man">남자
<input type = "radio" name = "sex" value = "woman">여자 <br>

관심사항 : <input type = "checkbox" name = "favo" value = "eco">경제
<input type = "checkbox" name = "favo" value = "pol">정치
<input type = "checkbox" name = "favo" value = "ent">연예 <br>

소개 : <textarea rows = "4" cols = "30" name = "intro"></textarea>  <br>

<input type = "submit" value = "전송">

<h2>HTTP 헤더 정보 읽기</h2>
<a href = "RequestHeader.jsp">요청 헤더 정보 읽기</a>
</form>
</body>
</html>