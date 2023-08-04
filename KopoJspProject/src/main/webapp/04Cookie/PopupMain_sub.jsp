<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// flag => 자료형이 boolean인 체크하는 역할
String popupMode = "on"; // 팝업을 띄울지 말지 결정하는 역할
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키로 팝업창 제어하기</title>
<style>
	div#popup{
	position: absoulte; top: 100px; left: 50px; color: yellow;
	width: 300px; height: 100px; background-color: gray;
	}
	div#popup>div{
	position: relative; top: 0px; background-color: #ffffff;
	border: 1px solid gray; padding: 10px; color: black;
	}
</style>

<script src="https://ajax.googLeapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script>
$(function() {
	$('#closeBtn').click(function() {
		$('#popup').hide();
	});
});
</script>
</head>
<body>
<h2> 팝업 페이지 - sub</h2>
<%
out.print("현재 팝업창은 " + popupMode + " 상태입니다.");

if(popupMode.equals("on")) {
%>
	<div id="popup">
		<h2 align="center">공지사항 팝업</h2>
		<div align="right">
			<form name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1" />
				하루동안 열지 않기
				<input type="button" value="닫기" id="closeBtn" />
			</form>
		</div>
	</div>
<%
}
%>
</body>
</html>