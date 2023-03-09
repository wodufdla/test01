<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- core 최신 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title></title>
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans+KR:100,200,300,400,500,600,700&amp;subset=korean&amp;display=swap">
    <link rel="stylesheet" href="/assets/css/styles.css">
    <!-- jquery 최신 -->
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
	$(function() {
		
		//로그인 시작
		$("#ulogin").click(function() {
			
			var ph1 = $("#input-phone").val();
			var pw1 = $("#input-certificate").val();
			
			//alert("ph1:"+ph1);
			//alert("pw1:"+pw1);
			
			//ajax start
/*  			 $.ajax({
	     		 url:"./loginCheck",
	     		 type:"post",
	     		 data:{
	     			 "phone":ph1,
	     			 "password":pw1
	     		 },
	     		 success:function(data){
	     			 if(data==0){
	     				 alert("아이디와 비밀번호를 모두 입력해주세요.");
	     				 }
	     			 }else if(data==1){
	     				alert("아이디가 존재하지 않습니다.");
	     			 }else if(data==2){
	     				 alert("비밀번호가 틀렸습니다. 다시 입력해주세요");
	     			 }else if(data==3){
	     				 alert("로그인 되었습니다.");
	     			 }else if(data==4){
	     				 alert("이미 삭제 및 탈퇴된 회원입니다.")
	     			 }
	     		 },
	     		 error:function(request, status, error){
		     			alert("code:"+request.status+"\n"+"message:"+request.statusText+"\n"+"error:"+error);
		     			 location.href="./exception?code="+request.status+"&message="+request.statusText+"&error="+error;
		     		 }
	     	  });
 			 //ajax end */
 			 
			//ajax start
 			 $.ajax({
	     		 url:"./loginCheck2",
	     		 type:"post",
	     		 data:{
	     			 "phone":ph1,
	     			 "password":pw1
	     		 },
	     		 success:function(data){
					alert("number:"+data);
	     		 },
	     		 error:function(request, status, error){
		     			alert("code:"+request.status+"\n"+"message:"+request.statusText+"\n"+"error:"+error);
		     			 location.href="./exception?code="+request.status+"&message="+request.statusText+"&error="+error;
		     		 }
	     	  });
 			 //ajax end
 			 
 			 
		});
		//로그인 끝
		
	});
    
    </script>
    
</head>
<body>
	<a href="javascript:close();" style="position: absolute;right: 0;">
		<img src="/resources/img/popup_close.png" style="padding: 14px;width: 50px;">
	</a>
	<span style="background-color: #1a374f;font-weight: bold;font-size: 20px;line-height: 50px;text-align: center;width: 100%;display: block;height: 50px;color: #fff;box-shadow: 0px 5px 10px 0px #aaaa;">전화번호 간편 로그인</span>
	<div style="width: 90%;margin: auto;padding: 20px 0;font-size: 13px;">
      <ul style="padding: 0;display: flex;">
          <li style="width: 40%;max-width: 100px;" ><span class="normal-font" style="display: block;padding: 8px;">전화번호</span></li>
          
           <li style="display: flex;width: 100%;"><input type="tel" id="input-phone" placeholder="'-' 제외하고 번호만 입력" onkeypress="return paternNumber(event)" maxlength="11" oninput="onInput(this)" onkeyup="if(window.event.keyCode==13){request();}" style="width: 100%;padding: 5px;"></li> 
           <!-- <li style="display: flex;width: 100%;"><input type="tel" id="input-phone" placeholder="'-' 제외하고 번호만 입력" onkeypress="return paternNumber(event)" maxlength="11" oninput="onInput(this)" onkeyup="if(window.event.keyCode==13){request();}" style="width: 100%;padding: 5px;"><a id="a-request" href="javascript:request();" style="display: block;background-color: #b5b9bc;color: #fff;width: 100px;font-size: 12px;line-height: 40px;text-align: center;">인증요청</a></li>  -->
          
      </ul>
      <ul style="padding: 0;display: flex;">
          <li style="width: 40%;max-width: 100px;" ><span class="normal-font" style="display: block;padding: 8px;">비밀번호</span></li>
          
          <li style="width: 100%;display: flex;"><input type="password" id="input-certificate" placeholder="비밀번호 입력" onkeypress="return paternNumber(event)" maxlength="4" oninput="onInput(this)" onkeyup="if(window.event.keyCode==13){confirm();}"style="width: 100%;padding: 5px;"></li>
          <!-- <li style="width: 100%;display: flex;"><input type="tel" id="input-certificate" placeholder="인증번호 4자리 입력" onkeypress="return paternNumber(event)" maxlength="4" oninput="onInput(this)" onkeyup="if(window.event.keyCode==13){confirm();}"style="width: 100%;padding: 5px;"><a id="a-confirm" href="javascript:confirm();" style="display: block;background-color: #b5b9bc;color: #fff;width: 100px;font-size: 12px;line-height: 40px;text-align: center;">인증확인</a></li> -->
          
      </ul>
	</div>
	<!-- <a href="/login_email" style="color: #bc401e;margin: auto;display: table;"><strong><span style="text-decoration: underline;">통합 이메일 가입회원 로그인</span></strong></a> -->
	
	<a href="#" style="color: #bc401e;margin: auto;display: table;" id="ulogin"><strong><span style="text-decoration: underline;">로그인</span></strong></a>
	
	
	<span style="margin-top: 30px;border-top: solid 1px #1a374f;width: 100%;display: block;text-align: center;padding: 30px 10px;font-size: 10px;">이메일로 가입하신 회원님은&nbsp;<strong>'통합 이메일 가입회원 로그인'</strong>을 통해 인증번호 없이 로그인 가능합니다.<br><br>서비스해지와 문의는 홈페이지 상단 메뉴를 통해 바로 가능합니다.</span>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/script.js"></script>
</body>
</html>