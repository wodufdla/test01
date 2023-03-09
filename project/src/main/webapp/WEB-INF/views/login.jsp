<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
	<a href="javascript:close();" style="position: absolute;right: 0;">
		<img src="/resources/img/popup_close.png" style="padding: 14px;width: 50px;">
	</a>
	<span style="background-color: #1a374f;font-weight: bold;font-size: 20px;line-height: 50px;text-align: center;width: 100%;display: block;height: 50px;color: #fff;box-shadow: 0px 5px 10px 0px #aaaa;">로그인</span>
	<form action="login" method="post">
		<div style="width: 90%;margin: auto;padding: 20px 0;font-size: 13px;">
	      <ul style="padding: 0;display: flex;">
	          <li style="width: 40%;max-width: 100px;">
	          	<span class="normal-font" style="display: block;padding: 8px;">Phone</span>
	          </li>
	          <li style="display: flex;width: 100%;">
	          	<input type="text" id="phone" name="phone" onkeyup="if(window.event.keyCode==13){request();}" placeholder="'-' 제외하고 번호만 입력" maxlength="11" style="width: 100%; padding: 5px;">
	          </li>
	      </ul>
	      <ul style="padding: 0;display: flex;">
	          <li style="width: 40%;max-width: 100px;">
	          	<span class="normal-font" style="display: block;padding: 8px;">Password</span>
	          </li>
	          <li style="width: 100%;display: flex;">
	          	<input type="password" id="password" name="password" onkeyup="if(window.event.keyCode==13){confirm();}" placeholder="비밀번호 입력"  maxlength="24" style="width: 100%; padding: 5px;">
	          </li>
	      </ul>
		<input type="submit" value="login">
		</div>
	</form>
	<script type="text/javascript">
	var phone = "";
	var regPhone= /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	$("#phone").focus();
	
	function request() {
		if (regPhone.test($("#phone").val()) !== true) {
	      alert("핸드폰번호를 확인해주세요.");
	      return;
	    } else {
	    	phone = $("#phone").val();
	        $("#password").focus();
	    }
	}

	function confirm() {
	    if ($("#password").val() < 12 && $("#password").val() < 20) {
	        alert("비밀번호는 12 ~ 20 까지 입니다.");
	        return;
	    } else if ($("#password").val()) {
	        alert("로그인이 완료되었습니다.");
	        window.close();
	    }
	}

	</script>
</body>
</html>