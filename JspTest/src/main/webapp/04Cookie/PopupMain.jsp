<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //flag = 자료형이 boolean인 체크하는 값
    String popupMode = "on"; //팝업이 뜨는 것을 기본으로 설정
    
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
       for(Cookie c : cookies){
          String cookieName = c.getName();//쿠키의 이름
          String cookieValue = c.getValue();//쿠키의 값
          
          if(cookieName.equals("PopupClose")){//"PopupClose" 이름의 쿠키가 있다면
             popupMode = cookieValue;// 해당 값으로 업데이트
          }
       }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키로 팝업창 제어하기</title>
<style>
   div#popup{
      positon : absolute;
      top : 100px;
      left : 50px;
      color:yellow;
      width:300px;
      height:100px;
      background-color : gray;
   }
   
   div#popup>div{
      positon : relative;
      background-color : #ffffff;
      top : 0px;
      border:1px solid gray;
      padding :10px;
      color : black;
   }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$(function(){
   $('#closeBtn').click(function(){
      $('#popup').hide();
      
      var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
      $.ajax({
         url : './PopupCookie.jsp',
         type : 'get',
         data : {inactiveToday : chkVal},
         dateType : "text",
         success : function(resData){<!--요청이 성공할경우 나오는 콜백 함수-->
            if(resData != '') location.reload();<!--화면 새로고침-->
         }
      });
   });
});
</script>
</head>
<body>
<h2> 팝업 페이지 - sub</h2>
<%
out.print("현재 팝업창은 " + popupMode + "상태입니다.");

if(popupMode.equals("on")){
%>   

   <div id="popup">
      <h2 align="center">공지사항 팝업</h2>
      <div align="right">
         <form name="popFrm">
            <input type="checkbox" id="inactiveToday" value="1"/>
            하루동안 열지 않기
            <input type="button" value="닫기" id="closeBtn"/>
         </form>
      </div>
   </div>
   
<%}%>



</body>
</html>