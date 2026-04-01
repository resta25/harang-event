<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard';
    font-weight: 400;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 500;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 600;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 700;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.otf') format('opentype');
}
html, body {font-size: 10px;}
.page_inner {position: relative;}
#wrap {font-family: 'Pretendard';}
.form {height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: calc(100% - 0.1rem); display: flex; flex-direction: column;}
.bg-box {background: url("//static.harang-event.com/event/v_${eventSeq}/bg_01.jpg") no-repeat center top / 100% 100%; height: 100%; flex-grow: 1; display: flex; flex-direction: column;}
.hide {display: none;}

/* 상단 타이머 */
.time-content {padding-top: 4.2rem;}
.timer-box {color: #000; display: flex; justify-content: space-between; align-items: center; gap: 2rem; font-size: 2.4rem; border: 1px solid #fff; border-radius: 0.9rem; padding: 1rem 4rem; width: 80%; margin: 0 auto; letter-spacing: -1.23px; background: rgba(255, 255, 255, 0.75);}
.timer-box .text-box {width: 18rem;display: flex; align-items: center; gap: 1rem;}
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

/* 슬라이드 영역 */
.slide-area {padding: 0 7.335% 7.335%;}
.swiper .swiper-slide img { width: 100%; text-align: center;}

#page-1 .time-content + .img-area {width: 81.541%; margin: 0 auto;}
#page-2 .page-inner {padding: 3% 5.991% 0;}
#page-2 .img-area:nth-child(3) {padding: 0 7.335% 7.335%;}
#page-2 .time-content + .img-area {width: 81.541%; margin: 0 auto;}

/* 설문영역 */
.question-box {background: #f4f4f4; font-size: 3.7rem; padding: 4.1rem 0 6.3rem; margin-top: 5.18%; border-radius: 2rem;}
.question {display: flex; flex-direction: column; align-items: center; justify-content: center; gap: 2.4rem;}
.question img {width: 7%;}
.question .q-text {letter-spacing: -0.93px; font-weight: 600; padding: 0 1rem 2.4rem; border-bottom: 0.2rem solid #159bf8; font-family: 'Pretendard';}
.question .q-text .underline {position: relative; z-index: 1; color: #0056ba; font-weight: 700;}
.question .q-text .underline::after {content: ''; display: inline-block; width: 100%; height: 1.7rem; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); z-index: -1; background: #fffca1;}
.q-select {display: flex; align-items: center; justify-content: space-between; padding: 6rem 6.65% 0;}


@keyframes pop {
 0% {
  transform: scale(1);
 }

 50% {
  transform: scale(0.9);
 }

 100% {
  transform: scale(1);
 }
}

.form .next {position: absolute; bottom: 5.605%; left: 50%; transform: translateX(-50%); width: 67.115%; margin: 0 auto; }
.form .next img {width: 100%;}
.form .submit {width: 81.325%; margin: 1rem auto 0;}
.form .submit input[type="image"] {width: 100%;}

/* 설문영역 */
.form .page-inner {padding: 2.8rem 3.6rem 1rem;}
.form .db-box {}
.form .db-box .question {font-size: 3.7rem; text-align: center; }
.form .db-box  .question .q-text {padding: 0; border-bottom: 0; line-height: 1.07;}
.form .user-box {margin-top: 1.5rem;}
.form .user-box .user-info {display: flex; align-items: center; justify-content: space-between; border: 2px solid #ddd; border-radius: 10px; padding: 2.848% 4.28%; column-gap: 3rem;}
.form .user-box .user-info:not(:last-child) {margin-bottom: 1.3rem;}
.form .user-box .user-info .legend {width: 8.3rem; color: #000; display: inline-block; font-weight: 700; font-size: 300%; flex-shrink: 0; font-family: 'Pretendard'; }
.form .user-box .user-info input {font-size: 300%; letter-spacing: -0.5px; font-weight: 700; font-family: 'Pretendard';}
.form .user-box .user-info input::placeholder {font-weight: 400; letter-spacing: -0.5px; color: #868b95;}

/* 안심문구, 대상, 이벤트기간 */
.form .description {width: 100%;}
.form .description .ad_txt {width: 100%; padding: 2.34%; border-radius: 10px; background-color: #f1f1f1; color: #999; font-size: 180%; font-family: 'Pretendard'; box-sizing: border-box;}
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #6e6e6e; letter-spacing: -0.65px;}

.form .agBox {position: relative; top: -3%; color: #fff; font-size: 120%; padding: 0; width: 100%; font-family: 'Pretendard'; margin-bottom: 0;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

.containers {display: flex; flex-direction: column; color: white;}
.container {display: flex; flex-direction: column; align-items: center; row-gap: 1.6rem; cursor: pointer; position: relative;}
.container input[type="radio"] {display: none;}
.radio-circle {width: 38px; height: 38px; border-radius: 50%; border: 2px solid #aaa; position: relative;}
.radio-circle::before {content: ""; display: block; width: 25px; height: 25px; border-radius: 50%; background-color: #ddd; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%) scale(0); transition: all 0.2s ease-in-out;}
.container input[type="radio"]:checked + .radio-circle {border-color: #1074fe;}
.container input[type="radio"]:checked + .radio-circle::before {transform: translate(-50%, -50%) scale(1);}
.container input[type="radio"]:checked + .radio-circle::before {background-color: #1074fe;}
.bage {font-size: 1.5rem; background: #1074fe; color: #fff609; text-align: center; padding: 0.2rem 0.8rem; border-radius: 0.4rem; font-weight: 700; position: absolute; top: -40%; left: 50%; transform: translateX(-50%); width: max-content;}
.radio-label {font-size: 79%; font-weight: 700; font-family: 'Pretendard'; line-height: 1;}
.container:hover .radio-circle {border-color: #555;}
.container:hover input[type="radio"]:checked + .radio-circle::before {background-color: #555;}

.subscribe_container {background: #f1f1f1; width: 85%; margin: 5% auto; padding: 3%; border-radius: 0.8em;}
.subscribe {height: 250px; overflow: hidden; background-color: transparent;}
.subscribe_bg {background-color:#1c1c34 ;}
.subscribe .content {padding: 0; display: flex; align-items: center; font-size: 100%; margin: 1% 0; justify-content: space-between; border-bottom: 1px solid #f3f3f3; column-gap: 14%;}
.subscribe .content + .content {padding-top: 2.877%; margin-top: 2.877%; border-top: 1px solid rgba(40, 40, 40, 0.1);}
/* .subscribe .content > div {width: calc(100% / 3); text-align: center;} */
.subscribe .content .date {flex-shrink: 0; text-align: center; background: #fff; font-size: 250%; font-weight: 500; font-family: 'Pretendard'; letter-spacing: -0.03em; border-radius: 10px; width: 37.097%;}
.subscribe .content > div:last-child {margin-right: 0; width: 64%; display: flex; justify-content: space-between; align-items: center; font-size: 250%; font-weight: 500; font-family: 'Pretendard';}
.subscribe .content > div:last-child img {flex-shrink: 0; display: block; width: 10.5%; height: 100%;}
.subscribe .content .text { text-align: center; width: 17%; font-weight: 700; border-radius: 999px; background-color: #faead2;}
.subscribe .content .text.color-bg {background-color: #ffef82;}

.sub-txt {font-size: 140%; font-family: 'Pretendard'; color: rgba(22, 22, 22, 0.5); text-align: center;}

.section02 {padding-bottom: 5%;}

@media screen and (max-width: 500px) { 
    html, body {font-size: 1.7vw;}

    .radio-circle {width: 30px; height: 30px;}
    .radio-circle::before {width: 17px; height: 17px;}

    .form .user-box .user-info {column-gap: 1.5rem;}
    .form .user-box .user-info .legend {font-size: 240%; width: 7.3rem;}
    .form .user-box .user-info input {font-size: 240%;}

    .subscribe .content {column-gap: 14%;}
    .subscribe .content .date {font-size: 210%; border-radius: 5px;}
    .subscribe .content > div:last-child {font-size: 210%;}
}
@media screen and (max-width: 430px) {
}

@media screen and (max-width: 395px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
		<h3>개인정보처리방침</h3>
        <ol>
            <li>개인정보 수집주체 : ${resVo.agent}</li>
            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
        </ol><br/>
        <h3>개인정보 취급 위탁</h3>
        <ol>
            <li>개인정보 취급 위탁을 받는자 : (주)하랑고치</li>
            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<div id="wrap">
	<div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">
            <div class="formContents">
                <section class="page section01" id="page-1">
                    <div class="bg-box">
                        <div class="time-content">
                            <div class="timer-box">
                                <div class="date">
                                    <span id="year"></span>
                                    <span id="month"></span>
                                    <span id="day"></span>
                                    <span id="week-day"></span>
                                </div>
                                <div class="time">
                                    <span id="hour"></span>
                                    <span id="minute"></span>
                                </div>
                                <div class="text-box">
                                    <img src="//static.harang-event.com/event/v_${eventSeq}/loading.png">
                                    <span class="text">현재 접수 가능</span>
                                </div>
                            </div>
                        </div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                        <div class="slide-area">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_01.png"></div>
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_02.png"></div>
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_03.png"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="page_inner">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.jpg"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.jpg"></div>
                        <div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
                    </div>
                </section>

                <section class="page hide section02" id="page-2">
                    <div class="bg-box">
                        <div class="time-content">
                            <div class="timer-box">
                                <div class="date">
                                    <span id="year2"></span>
                                    <span id="month2"></span>
                                    <span id="day2"></span>
                                    <span id="week-day2"></span>
                                </div>
                                <div class="time">
                                    <span id="hour2"></span>
                                    <span id="minute2"></span>
                                </div>
                                <div class="text-box">
                                    <img src="//static.harang-event.com/event/v_${eventSeq}/loading.png">
                                    <span class="text">현재 접수 가능</span>
                                </div>
                            </div>
                        </div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                    </div>

                    <div class="page-inner">
                        <div class="description">
                            <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        </div>
                        <div class="db-box">
                            <div class="user-box">
                                <div class="user-info">
                                    <span class="legend">이름</span>
                                    <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                                </div>
                                <div class="user-info">
                                    <span class="legend">나이</span>
                                    <input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요">
                                </div>
                                <div class="user-info">
                                    <span class="legend">연락처</span>
                                    <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 입력해 주세요">
                                </div>
                            </div>
                            <div class="agBox">
                                개인정보 처리방침
                                <a href="#" class="btn-agreement">[자세히 보기]</a>
                                <input type="hidden" name="agBox" value="Y" checked>
                            </div>
                            <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                            <div class="description bottom">
                                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <span>대상 :  ${resVo.target}</span>
                            </div>
                        </div>
                    </div>
                    <div class="subscribe_container">
                        <div class="subscribe" data-limit="10"></div>
                    </div>
                    <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
                </section>
                <!-- <div class="container-bottom">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
                </div> -->
                
            </div>
            <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
            <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
            <input type="hidden" id="site" 			name="site" value="${site}"/>
            <input type="hidden" id="media" 		name="media" value="${media}"/>
            <input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
            <input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
            <input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
            <input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
            <input type="hidden" id="add1" 			name="add1" value=""/>
            <input type="hidden" id="add2" 			name="add2" value=""/>
            <input type="hidden" id="add3" 			name="add3" value=""/>
            <input type="hidden" id="add4" 			name="add4" value=""/>
            <input type="hidden" id="add5" 			name="add5" value=""/>
            <input type="hidden" id="add6" 			name="add6" value=""/>
            
            <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
            <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
            <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
		</form>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        getComment(`${eventSeq}`);
	})

    // 상단 타이머
    $(function () {
        function pad2(n) {
            return (n < 10 ? '0' : '') + n;
        }

        function renderNow() {
            var now = new Date();

            var y = now.getFullYear();
            var m = pad2(now.getMonth() + 1);
            var d = pad2(now.getDate());

            // 0=일,1=월,...6=토
            var week = ['일', '월', '화', '수', '목', '금', '토'][now.getDay()];

            var hh = pad2(now.getHours());
            var mm = pad2(now.getMinutes());

            $('#year, #year2').text(y + '.');
            $('#month, #month2').text(m + '.');
            $('#day, #day2').text(d + '(' + week + ')');
            $('#week-day, #week-day2').text(''); // day에 요일까지 붙였으니 비워둠(원하면 아래 주석 참고)

            $('#hour, #hour2').text(hh + ':');
            $('#minute, #minute2').text(mm);
        }

        renderNow();

        // 매 분 정각에 맞춰 갱신되게(드리프트 최소화)
        var now = new Date();
        var msToNextMinute = (60 - now.getSeconds()) * 1000 - now.getMilliseconds();

        setTimeout(function () {
            renderNow();
            setInterval(renderNow, 60 * 1000);
        }, msToNextMinute);

        // 만약 week-day를 따로 쓰고 싶으면 renderNow에서 아래처럼 바꾸면 됨:
        // $('#day').text(d);
        // $('#week-day').text('(' + week + ')');
    });

    let today = new Date()
    let Year = today.getFullYear().toString().slice(-2)

    function returnComment(resultData, meoreData){
		var today = new Date();
			var month = today.getMonth() + 1;
			var dateNum;
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in data) {
	            var statusText = Math.random() < 0.5 ? '신청 중' : '신청 완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
	            var backgroundClass = statusText === '신청 완료' ? 'color-bg' : '';
	            var html  = '<div class="content" data-id="'+ data[v].seq +'">';
	                html += '	<div class="date">'+ Year + '-' + data[v].regDate +'</div>';
	                html += '	<div class="name">'+ data[v].name + ' 님, ' + statusText + '<img src="//static.harang-event.com/event/v_${eventSeq}/icon.png" alt="" />' + '</div>';
	                // html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; 
	                html += '</div>';
	            $(obj).append(html);
	        }
		});
	}

    setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        // if (num === 1) {
        //     const isChecked = $('input[name="tadd1"]:checked').length > 0;

        //     if (!isChecked) {
        //         alert("설문을 선택해주세요");
        //         return; // 선택되지 않았으면 페이지 이동 안함
        //     }
        // }

        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);
        });
    }

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        // centeredSlides: true,
        // autoplay: {
        //     delay: 2500,
        //     disableOnInteraction: false,
        // },
        loop:true,
    });

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }
		
		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		// if (!selectedRadio3) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		// }


		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>