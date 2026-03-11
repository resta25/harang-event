<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
  font-family: 'Paperlogy';
  font-weight: 300;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-3Light.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-3Light.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-3Light.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-3Light.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 400;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 500;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 600;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 700;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 800;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.ttf') format('truetype');
}
#wrap{ width: 100%; max-width: 600px; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); font-family: 'noto sans kr';}
.form{height: 100%; background: url('//static.harang-event.com/event/v_${eventSeq}/bg_01.jpg') no-repeat center top / 100% 100%;}
#wrap .formContents {position: static; height: 100%;}
#form-1 {height: 100%; padding-top: 22.834%; box-sizing: border-box;}

.page {height: 100%; display: flex; flex-direction: column;}
.gage {width: 90%; margin: 0 auto; padding-top: 1rem;}
.question {width: 76.165%; margin: 0 auto;}
.page:not(#page-1){display:none;}

/* 상단 타이머 */
.time-content {position: absolute; top: 3%; left: 50%; transform: translateX(-50%); z-index: 99; width: 100%; box-sizing: border-box; padding: 0 3.334%;}
.timer-box {display: flex; align-items: center; padding: 2.77% 4.465%; border-radius: 13px; border: solid 2px #fff; background-color: #cdd6eb; font-family: 'Paperlogy'; font-weight: 500; color: #617094; font-size: 150%; letter-spacing: -0.6px;}
.timer-box .date {display: flex; align-self: center;}
.timer-box .time {display: flex; margin-left: 8.5%;}
.timer-box .text-box {display: flex; align-items: center; justify-content: flex-end; gap: 7px; margin-left: auto;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17.6%;}
.timer-box .text-box .text {flex-shrink: 0; font-weight: 800; letter-spacing: -0.6px; color: #617094;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

.page-inner {position: relative; background: #fff; border-radius: 2rem 2rem 0 0; margin-top: 2rem; flex-grow: 1;}
.page-inner::before {content: ''; position: absolute; top: 5%; left: 50%; transform: translateX(-50%); width: 31.25%; height: 7px; background-color: #d4d8e1; border-radius: 999px;}
.page-inner > img {position: absolute; top: -3%; left: 50%; transform: translateX(-50%); width: 90%; }
.page-inner .text-img {width: 60%; margin: 3rem auto 1rem;}
.poster_01 .img-area:nth-child(1) {width: 82.667%; margin: 0 auto;}
.poster_01 .img-area:nth-child(2) {width: 100%;}
.page-inner {display: flex; justify-content: space-between; column-gap: 5%; background: #fff; border-radius: 2rem 2rem 0 0; margin-top: 1.125rem; flex-grow: 1; padding: 10.835% 7%;}
.page-inner .text-img {flex-shrink: 0; margin: 0; margin-top: 3.49%;}

/* page-1 */
#page-1 .paging {}
#page-1 .paging.btn_box {}
#page-1 .paging button {background-color: transparent; cursor: pointer;}
button img {display: block; width: 100%;}
/* .page .poster_01 > .img-area:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* page-2 */
#page-2 .page-inner {flex-direction: column; justify-content: flex-start;}
/* #page-2 > .poster_01:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* page-3 */
#page-3 .form-box {flex-grow: 1; margin-top: 0;}
/* #page-3 > .img-area:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* page-4 */
/* #page-4 > .page-inner {padding: 0 1rem; margin-top: 0;} */


/* db 영역 */
.form-box {margin-top: 4%;}
.form .formContents .description{width:90%;margin:0 auto;text-align:center;box-sizing:border-box; color: #fff;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .form_box {padding: 0 2rem;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; align-items: center; column-gap: 13px; justify-content: space-between;}
.form #page-3 .question_box .q_select {justify-content: center; column-gap: 2.2%; }
.form .question_box .q_select label{width:100%;}
.form .question_box .q_select label img{width:100%;}
.form .form_box > div + div {margin-top: 1.83%;}
.form .form_box .user-info input {border-radius: 19px; border: solid 2px #5077ff; background-color: #fff; font-size: 200%; padding: 3.2% 3%; text-align: center; font-family: 'Paperlogy';}
.form .form_box .user-info input::placeholder {color: #999;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 4% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

.btn-agreement {display: flex; align-items: center; justify-content: center;  margin-top: 1.5%; font-family: 'Paperlogy'; font-size: 113%; font-weight: 600; letter-spacing: -0.9px; text-align: center; color: #a9b2c7;}

/* submit btn */
.form .submit {width: 88%; margin: 0 auto; padding: 4% 0 3%;}
.form .submit input[type="image"] {width: 100%;}

.form .description p, .form .description .ad_txt, .form .description span {font-size: 81%; font-weight: 400; color: #999; font-family: 'Paperlogy'; display: block;}
.form .description span {padding: 0;}

@media screen and (max-width: 500px){
    .timer-box {font-size: 125%;}
    .timer-box .time {margin-left: 5.5%;}
    .page-inner::before {top: 4%; width: 29.25%; height: 5px;}
    .page-inner > img {top: -2%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}

    .form .form_box .user-info input {border-radius: 12px; font-size: 150%;}
    .form .form_box > div + div {margin-top: 2%;}

    .question,
    .form .form_box {padding: 0 1rem;}

}

</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
                    <img src="//static.harang-event.com/event/v_${eventSeq}/loading_01.png">
                    <span class="text">현재 접수 가능</span>
                </div>
            </div>
        </div>
            <div class="formContents">
                <section class="page" id="page-1">
                    <div class="poster_01">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                    </div>
                    <span class="btn-agreement poster_02">개인정보처리방침<a href="javascript:void(0);"><b>[자세히보기]</b></a></span>
                    <div class="page-inner img-area">
                        <div class="img-area text-img"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                        <div class="btn_box paging">
                            <!-- <a href="javascript:void(0)" class="btn_disagree img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></a> -->
                            <a href="javascript:void(0)" class="btn_agree first img-area" onclick="show2pg()"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></a>
                        </div>
                    </div>

                </section>

                <section class="page" id="page-2">
                    <div class="poster_01">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                    </div>
                    <div class="page-inner">
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label onclick="show3pg()"><input type="radio" name="tadd1" value="서울"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_01.png"></label>
                                <label onclick="show3pg()"><input type="radio" name="tadd1" value="경기도"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_02.png"></label>
                                <label onclick="show3pg()"><input type="radio" name="tadd1" value="인천"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_03.png"></label>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="next_btn_inQuestion"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_02.png"></div> -->
                </section>

                <!-- <section class="page" id="page-3">
                    <div class="poster_01">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.png"></div>
                    </div>
                    <div class="page-inner">
                        <div class="img-area gage"><img src="//static.harang-event.com/event/v_${eventSeq}/gage_02.png"></div>
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label onclick="show4pg()"><input type="radio" name="tadd2" value="50대"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_01.png"></label>
                                <label onclick="show4pg()"><input type="radio" name="tadd2" value="60대"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_02.png"></label>
                                <label onclick="show4pg()"><input type="radio" name="tadd2" value="65세 이상"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_03.png"></label>
                            </div>
                        </div>
                    </div>
                    <div class="next_btn_inQuestion"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_03.png" onclick="pageSelFuc(3,$(this))"></div>
                    <div class="popup">
                        <div class="img-area">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/popup_01.png">
                        </div>
                    </div>
                </section> -->

                <section class="page" id="page-3">
                    <div class="poster_01">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                    </div>

                    <div class="form-box">
                        <div class="formGroup">
                            <div class="form_box">
                                <div class="user-info">
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름 입력" />
                                </div>
                                <div class="user-info">
                                    <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처 입력" />
                                </div>
                            </div>

                            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png" /></div>
                        </div>
                        <div class="description">
                            <div class="description-info">
                                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            </div>
                            <span id="target">대상 : ${resVo.target}</span>
                        </div>
                    </div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>	
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
                </section>
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
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
	});

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

            $('#year').text(y + '.');
            $('#month').text(m + '.');
            $('#day').text(d );
            $('#week-day').text('(' + week + ')');

            $('#hour').text(hh + ':');
            $('#minute').text(mm);
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

    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.4, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .page-inner', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .page-inner', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'flex', duration: 0 });
        animation02.from('#page-2 .poster_01', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .page-inner', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        // animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }
    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_01', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .page-inner', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'flex', duration: 0.1 });
        animation03.from('#page-3 .poster_01', {x: +200, opacity: 0, duration: 0.2, ease: "power1.out"}, 0);
        animation03.from('#page-3 .page-inner', {x: +200, opacity: 0, duration: 0.4, stagger: 0.1});
        // animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        // animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }
    // 마지막 페이지
    function show4pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation04 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation04.to('#page-3 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .page-inner', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation04.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation04.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation04.to('#page-3', { display: 'none' });
        animation04.to('#page-4', { display: 'flex', duration: 0.1 });
        animation04.from('#page-4 .poster_01', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .page-inner', {x: +200, opacity: 0, duration: 0.2});
        // animation04.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        // animation04.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        // animation04.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        // animation04.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        // animation04.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
    }

    //설문 클릭시 이미지 on/off
    $('input[name*="add"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 개인정보처리방침 팝업 관련
    $('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    $('.btn_disagree').on('click', () => {
        alert('미동의 시 설문에 참여 하실 수 없습니다.');
    });

    

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }

		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '지역'
			// ,'add4': '지역'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>