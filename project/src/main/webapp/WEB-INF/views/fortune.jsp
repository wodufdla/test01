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
    	<div class="container-fluid"><a class="navbar-brand" href="#"><img src="/resources/img/logo.png" style="height: 60px;"></a>
            <a class="nav-link-command" href="javascript:onQna();" style="border: solid 1px #192a5e;color: #192a5e;">문의</a>
            <a class="nav-link-command" href="javascript:onResign();" style="border: solid 1px #bc401e;color: #bc401e;">해지</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol"><span class="visually-hidden"></span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol">
                <ul class="navbar-nav" style="width: 100%;">
                    <li class="nav-item"><a class="nav-link" href="#service">서비스 소개</a></li>
                    <li class="nav-item"><a class="nav-link" href="#join">서비스 가입</a></li>
                    <li class="nav-item"><a class="nav-link" href="#faq">FAQ</a></li>
                    <li class="nav-item"><a class="nav-link" href="javascript:onQna();">1:1 문의</a></li>
                    <li class="nav-item"><a class="nav-link" href="javascript:onResign();">서비스 해지</a></li>
                    <li class="nav-item"><a id="a-login" class="nav-link" href="javascript:onLogin();">로그인</a></li>
                </ul>
            </div>
        </div>
    </nav>

	<section id="intro"><img src="/resources/img/intro.png"></section>
    <section id="service" style="position: relative;"><img src="/resources/img/service.png" >
        <a href="//fw.sep11.kr" style="width: 40vw;height: 10vw;line-height: 10vw;display: block;background-color: #e94d4f;color: #fff;border-radius: 10px;position: absolute;bottom: 10vw;left: calc(50% - 20vw);text-align: center;font-size: 3vw;">카툰운세 바로가기&nbsp;▶</a>
    </section>
    <section id="join" class="section-default" style="background-image: url('assets/img/fortune/sign.png');">
        <p>카툰운세 가입하기</p>
        <hr>
        <p>가입하고 싶으신 서비스를 선택 후 결제하여 프리미엄 카툰 운세를 이용해 보세요</p>
        <div class="table-responsive table-default" style="max-width: 1200px;">
            <table class="table">
                <tbody>
                <tr>
                    <td>7일 100원 결제 체험 후 월정액<td>7일 100원 결제 체험 서비스를 통해 프리미엄 카운세 이용<td>
                        <div class="form-check checkbox-plan"><input class="form-check-input checkbox-plan" type="checkbox" name="check-link" value="0" onclick="checkLink(this);" id="check-0"><label class="form-check-label" for="check-0">29,900/월</label></div>
                    </td>
                </tr>
                <tr>
                    <td>월정액 서비스<td>매월 프리미엄 카툰운세 컨텐츠 이용<td>
                        <div class="form-check checkbox-plan"><input class="form-check-input checkbox-plan" type="checkbox" name="check-link" value="1" onclick="checkLink(this);" id="check-1"><label class="form-check-label" for="check-1">29,900/월</label></div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-responsive table-default" style="max-width: 1200px;background-color: rgba(0,0,0,0);padding: 0;">
            <table class="table">
                <tbody>
                <tr style="border-bottom: solid 0px rgba(0,0,0,0);">
                    <td style="color: #fff;padding: 0;">
                            <span>
                                [홈페이지에서 가입하는 경우]<br>
                                1. 100원 결제 7일 무료체험(168시간) 이용요금은 무료체험 종료 후 29,900원이 자동 결제됩니다.<br>
                                2. 홈페이지에서 가입하시는 경우 별도 보상은 없으며 해지는 언제든 가능합니다. (일할금 제외)<br><br>
                                [홈페이지가 아닌 타 채널을 통해 보상을 받으시고 7일 무료체험을 가입하신 경우]<br>
                                1. 가입 이후 72시간 이용하는 조건으로 보상을 지급하고 있습니다. (72시간 이후 서비스 해지 가능)<br>
                                2. 서비스 해지 없이 무료체험 기간(168시간) 경과 후 결제가 이뤄지면 최초 한달간 이용 조건으로 보상을 지급합니다. (한달 의무 사용 약정)<br><br>
                                * 보상을 받으시고 가입하신 경우 최초 한달은 약정기간으로 의무사용이 적용되니 신중히 가입하시기를 부탁드립니다.</span></td>
                    <td style="padding: 0;">
                        <div class="form-check checkbox-plan" style="padding: 5px 20px; margin: 10px;"><input class="form-check-input" type="checkbox" id="check-card" onclick="checkCard(this);"><label class="form-check-label" for="check-card" style="font-weight: 600;color: #fff;">카드결제</label></div>
                        <a id="a-pay" class="a-pay" href="javascript:alert('상품 선택 후 결제를 시도해주세요.');" style="margin-top: 80px;">상품 선택 후<br>결제해주세요.</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </section>
    <section id="faq" class="section-default" style="background-image: url('assets/img/fortune/faq.png');">
        <p>FAQ</p>
        <hr>
        <p>Frequently Asked Questions (자주 묻는 질문)</p>
        <div class="table-responsive table-default" style="max-width: 1200px;">
            <table class="table">
                <tbody>
                    <tr>
                        <td>이용안내</td>
                        <td>프리미엄 카툰운세 사이트(fw.sep11.kr) 접속 후 전화번호로 로그인하여 프리미엄 카툰운세를 이용하시면 됩니다.</td>
                    </tr>
                    <tr>
                        <td>서비스 해지 안내</td>
                        <td>서비스 해지 방법은 가입 시 전화번호로 보내드렸으며 홈페이지 우측 상단에 서비스해지를 누르면 가능합니다.<br>해지가 정상 진행되시면 해지 문자를 받으실 수 있습니다. 이후 별도의 추가 결제는 발생하지 않습니다.<br>무료기간(168시간)이 지나 정상 구독되어 서비스 비용이 결제되면 이후 취소나 환불이 어려운 점 참고 부탁드립니다.</td>
                    </tr>
                    <tr>
                        <td>이용안내</td>
                        <td>회원탈퇴는 로그인 후 내정보에서 하실 수 있으며, 카톡운세에서는 휴대폰번호 외 개인정보를 수집하지 않아 이메일 로그인 하신 회원들만 탈퇴하실 수 있습니다.</td>
                    </tr>
                </tbody>
            </table>
        </div><span>이 외에 궁금한 사항은 1:1 문의로 남겨주시면 친절하게 답변해 드리겠습니다.</span>
    </section>
    <section id="mypage" class="section-default" style="color: #666;background-image: url('assets/img/fortune/mypage.jpg'); display:none;">
    </section>
    <footer class="footer" style="background: #994647;">
        <div class="container" style="border-bottom: solid 1px #fff;">
            <a href="javascript:popup('/terms/service.html', 414, 700);" onclick="open">서비스 이용약관</a>
            <a href="javascript:popup('/terms/privacy.html', 414, 700);">개인정보 취급방침</a></div>
        <div class="container" style="display: flex;padding: 20px;"><img src="/assets/img/fortune/footer_logo.png">
            <p style="color: #fff;">상호명 : (주)벨류모어 | 대표 : 반승재 | 통신판매업신고번호 : 제2022-경기부천-0990호<br>주소 : 경기도 부천시 부광로 220 301호 | 사업자등록번호 : 483-88-00071<br>E-mail : vmore.cs+fortune@gmail.com | 대표번호 : 070-4506-3339</p>
        </div>
    </footer>
</body>
</html>