<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean&amp;display=swap">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans+KR:100,200,300,400,500,600,700&amp;subset=korean&amp;display=swap">
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<nav class="navbar navbar-light navbar-expand-md">
    	<div class="container-fluid"><a class="navbar-brand" href="#"><img src="/resources/img/logo.png" style="height: 30px;"></a>
            <a class="nav-link-command" href="javascript:onQna();" style="border: solid 1px #192a5e;color: #192a5e;">문의</a>
            <a class="nav-link-command" href="javascript:onResign();" style="border: solid 1px #bc401e;color: #bc401e;">해지</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol"><span class="visually-hidden"></span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol">
                <ul class="navbar-nav" style="width: 100%;">
                    <li class="nav-item"><a class="nav-link" href="#service">서비스 소개</a></li>
                    <li class="nav-item"><a class="nav-link" href="#join">서비스 가입</a></li>                    
                    <li class="nav-item"><a id="a-login" class="nav-link" href="javascript:onLogin();">로그인</a></li>
                </ul>
            </div>
        </div>
    </nav>

	<section id="intro"><img src="/resources/img/intro.png" style="height: 700px";></section>
    
    <footer class="footer" style="background: #994647;">
        <div class="container" style="border-bottom: solid 1px #fff;">
            <a href="javascript:popup('/terms/service.html', 414, 700);" onclick="open">서비스 이용약관</a>
            <a href="javascript:popup('/terms/privacy.html', 414, 700);">개인정보 취급방침</a></div>
        <div class="container" style="display: flex;padding: 20px;"><img src="/resources/img/footer_logo.png">
            <p style="color: #fff;">상호명 : (주)벨류모어 | 대표 : 반승재 | 통신판매업신고번호 : 제2022-경기부천-0990호<br>주소 : 경기도 부천시 부광로 220 301호 | 사업자등록번호 : 483-88-00071<br>E-mail : vmore.cs+fortune@gmail.com | 대표번호 : 070-4506-3339</p>
        </div>
    </footer>
</body>
</html>