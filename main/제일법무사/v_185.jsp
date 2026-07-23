<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css"
  type="text/css"
/>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
html, body {font-size: 10px;}
#wrap {max-width: 600px; display: flex; flex-direction: column; font-family: 'Pretendard';}
.form {flex-grow: 1; background: transparent;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 상단 타이머 */
.time-content {padding: 0 0 4.2rem;}
.timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; font-size: 2.4rem; padding: 1.6rem 4.1rem 1.5rem; width: 100%; margin: 0 auto; line-height: 1; letter-spacing: -1.23px; background: #000; box-sizing: border-box;}
.timer-box .date {display: flex; align-items: center;}
.timer-box .icon {margin-right: 1rem;}
.timer-box .text-box {width: 18rem; display: flex; align-items: center; column-gap: 0.9rem;}
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}


/* 공통 */
.container { text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
.form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'SUIT'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
.form strong {color: #f20000; font-weight: 800; font-family: 'SUIT';}
.form .name-result {}
.next {cursor: pointer;}
.page:not(#page-1):not(#page-8) {padding: 7.335% 8.335%; font-size: 16px;}
.page#page-1 .question .img-area, .page#page-2 .question .img-area {width: 87.8%; margin: 0 auto;}
.page:not(#page-1):not(#page-2) .question .img-area {width: 98.6%; margin: 0 auto;}

.page-box {text-align: center; margin-bottom: 4.8%;}
.page-box .page-num {font-family: 'Pretendard'; font-size: 188%; font-weight: 500; letter-spacing: -0.6px; color: #676767;}
.page-box .page-num .current {color: #013797;}

/* 이전,다음 버튼 */
.paging {display: flex; align-items: center; justify-content: center; column-gap: 7px; width: 88.666667%; margin: 0 auto;}
.paging button {background-color: transparent; padding: 0;}
.paging .prev {flex-shrink: 0; width: 32.6%; padding: 3.2% 0; background-color: #dedede; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #222;}
/* .paging .next {flex-shrink: 0; width: 65.93%; padding: 3.2% 0; background-color: #013797; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #fff;} */
/* .paging button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;} */
.paging img{ width: 100%;}
.intro .paging .next {height: 14rem;}
.intro .paging .next img {animation: motion 0.3s linear 0s infinite alternate;}

/* 첫번째 페이지 */
#page-1 {height: 100%; background-color: #fff;}
#page-1 .intro {padding: 0 0 3.2rem;}
#page-1 .img-area {width: 86.333333%; margin: 0 auto 3rem;}
#page-1 .gif-area + .img-area {margin-top: 5.2rem; margin-bottom: 2.2rem;}
/* #page-1 .video-area {padding: 2.5% 4.585% 0;}
#page-1 .video-area video {display: block; width: 100%; height: 100%; border-radius: 30px;} */
#page-1 .agBox {width: 100%; font-size: 1.8rem; font-family: 'Pretendard'; font-weight: 500; margin: 3.5rem auto 3.6rem; line-height: 1; letter-spacing: -0.9px;}
#page-1 .agBox a {text-decoration: underline;}
/* #page-1 .next {display: flex; align-items: center; justify-content: center; width: 63.167%; margin: 0 auto; padding: 3.417% 0; font-size: 300%; font-family: 'Pretendard'; color: #fff; background-color: #013797; border-radius: 20px; font-weight: 700; text-align: center;} */

.q-group {padding: 7rem 5rem 4.3rem; background-color: #f2f2f2;}
.q-group .q-txt {font-family: 'Pretendard'; font-size: 2.5rem; font-weight: 700; letter-spacing: -1.25px; color: #242424;}
.q-group .sub-txt {font-family: 'Pretendard'; font-size: 1.8rem; font-weight: 500; letter-spacing: -0.9px; color: #f00;}
.q-group .page_inner + .page_inner {margin-top: 7rem;}
.q-group .input_inner + .input_inner {margin-top: 4.8rem;}
.q-group .input_inner + .page_inner {margin-top: 5rem;}
.q-group .input_inner .question_box {line-height: 1;}
.q-group .input_inner .q_select {margin-top: 1.3rem;}

/* 설문영역 */
.q_select {display: flex; flex-flow: row wrap; justify-content: center; gap: 1.1rem; margin-top: 5.6%;}
.q_select label {width: 100%; padding: 2.3rem 2.6rem 2.1rem; font-family: 'Pretendard'; font-size: 2.7rem; font-weight: 500; line-height: 1; letter-spacing: -0.54px; color: #222; box-sizing: border-box; border-radius: 1rem; border: solid 2px #dedede; background-color: #fff;}
.q_select label.active {border-color: #013797; background-color: #e1eafa; color: #013797; font-weight: 700;}
.q_select .sub_txt {margin: 0; text-align: center; color: #666; font-size: 130%; font-family: 'Pretendard'; font-weight: 500;}

.q_select .inp {width: 100%; padding: 1.65rem 2.4rem 1.45rem; color: #222; font-family: 'Pretendard'; font-size: 2.7rem; font-weight: 500; line-height: 1; letter-spacing: -0.54px; color: #222; border-radius: 1rem; border: solid 2px #dedede; background-color: #fff;}
.q_select .inp::placeholder {color: #dedede;}
/* .q_select textarea {width: 100%; padding: 8.96%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; resize: none; height: 25vh;}
.q_select textarea::placeholder {color: #dedede;} */
.form .submit {flex-shrink: 0; width: 100%; padding: 0;}
.form .submit input[type="image"] {display: block; width: 100%; height: 100%;}

.form .checkbox {text-align: center; display: flex; align-items: center; justify-content: center; font-family: 'Pretendard'; font-size: 220%; font-weight: 700; margin-top: 4.2%;}
.form .checkbox label {line-height: 1;}
.form .checkbox input[type="checkbox"] {display: inline-block; width: 2.8rem; height: 2.8rem; margin-right: 0.7rem; appearance: none; background: url("//static.harang-event.com/event/v_${eventSeq}/check_off.png") no-repeat center center / 100% 100%; clip: unset; position: relative; transition: 0s;}
.form .checkbox input[type="checkbox"]:checked {background-image: url("//static.harang-event.com/event/v_${eventSeq}/check_on.png");}

.notice_inner .checkbox {position: relative; margin-top: 0;}
#page-1 .notice_inner .img-area {width: 100%; margin-bottom: 0;}
.notice_inner .checkbox label {position: absolute; bottom: 2.7rem;}

.toast {display: none; position: absolute; left: 50%; bottom: 4%; transform: translateX(-50%); text-align: center; width: 92.5%; background-color: rgba(0, 0, 0, 0.8); color: #fff; font-size: 200%; font-family: 'Pretendard'; font-weight: 600; border-radius: 8px; padding: 2.75% 2%; box-sizing: border-box;}
.toast strong {color: #fff949;}

/* 안심문구, 대상, 이벤트기간 */
/* .form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #006885; letter-spacing: -0.65px;} */

.form .description {width: 100%; text-align: center; margin: 4.462% auto 8.735%; padding: 0;}
.form .description p {font-weight: 400; font-size: 83%; color: #1d1d1d; font-family: 'Pretendard';}

/* .form .agBox {font-size: 1.2rem; width: 100%; margin: 0 auto;} */

.grid_inner .q_select {display: grid; grid-template-columns: repeat(2, 1fr);}

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

@keyframes motion {
	0% {margin-top: 0px;}
	100% {margin-top: 10px;}
}


@media screen and (max-width: 500px) { 
    html, body {font-size: 1.7vw;}

 
    /* .toast {font-size: 80%;} */
}
@media screen and (max-width: 395px) {
    /* .form .db-box {top: 13%;} */
}

@media screen and (max-width: 375px) {
    /* .form .page-inner { top: 23%; } */
    /* .form .db-box {top: 13%;} */
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
        <!-- <audio id="location" playsinline="" src="//static.harang-event.com/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></audio> -->
		<form id="form-1" method="POST" accept-charset="utf-8">
            <div class="formContents">
                <section class="page section01" id="page-1">
                <div class="intro">
                    <div class="time-content">
                        <div class="timer-box">
                            <div class="date">
                                <img class="icon" src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png" alt="">
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
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                    <div class="img-area gif-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.gif"></div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.png"></div>
                    <div class="paging">
                        <button type="button" class="next"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	
                        <!-- <button type="button" class="next" onclick="pageFuc(1,$(this))"></button> -->
                    </div>
                </div>
                <div class="q-group">
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="q-txt">1. 현재 카드 사용 중이신가요?</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="네, 사용하고 있습니다">네, 사용하고 있습니다</label>
                            <label><input type="radio" name="tadd1" value="아니요, 사용하고 있지 않습니다">아니요, 사용하고 있지 않습니다</label>
                        </div>
                    </div>
                    <div class="page_inner grid_inner">
                        <div class="question_box">
                            <div class="q-txt">2. 현재  채무 총액 수준을 체크해주세요</div>
                            <div class="sub-txt">※ 채무보다 재산이 많으면 회생을 신청할 수 없습니다.</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" value="2천만~3천만원">2천만~3천만원</label>
                            <label><input type="radio" name="tadd2" value="3천만~5천만원">3천만~5천만원</label>
                            <label><input type="radio" name="tadd2" value="5천만~1억원">5천만~1억원</label>
                            <label><input type="radio" name="tadd2" value="1억원 이상">1억원 이상</label>
                        </div>
                    </div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="q-txt">3. 현재 150만원 이상 소득이 있으신가요?</div>
                            <div class="sub-txt">※ 소득이 없는 무직자 및 기초생활수급자는 신청이 불가능합니다.</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd3" value="네, 소득이 있습니다.">네, 소득이 있습니다.</label>
                            <label><input type="radio" name="tadd3" value="아니요, 소득이 없습니다.">아니요, 소득이 없습니다.</label>
                        </div>
                    </div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="q-txt">4. 담보나 세금 체납만 해결이 필요하신 상황인가요?</div>
                            <div class="sub-txt">※ 신용대출&카드대출 없이 담보&세금만으로는 불가능합니다.</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd4" value="아니요, 다른 빚도 함께 있습니다.">아니요, 다른 빚도 함께 있습니다.</label>
                            <label><input type="radio" name="tadd4" value="네, 담보 및 세금만 있습니다.">네, 담보 및 세금만 있습니다.</label>
                        </div>
                    </div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="q-txt">5. 개인 회생 위임시 수임료가 발생한다는 <br />사실을  알고 계신가요?</div>
                            <div class="sub-txt">※ 별도 수임료가 발생됩니다.</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd5" value="네, 알고 있습니다.">네, 알고 있습니다.</label>
                            <label><input type="radio" name="tadd5" value="아니요, 모릅니다.">아니요, 모릅니다.</label>
                        </div>
                    </div>
                    <div class="page_inner input_inner">
                        <div class="question_box">
                            <div class="q-txt">6. 성함을 입력해주세요</div>
                        </div>
                        <div class="q_select">
                            <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                        </div>
                    </div>
                    <div class="page_inner input_inner">
                        <div class="question_box">
                            <div class="q-txt">7. 연락처</div>
                        </div>
                        <div class="q_select">
                            <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요">
                        </div>
                    </div>
                    <div class="page_inner notice_inner">
                        <!-- <div class="checkbox confirm">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.png"></div>
                            <label>
                                <input type="checkbox">
                                <strong>위 필수 사항</strong>을 모두 확인하였습니다.
                            </label>
                        </div> -->
                        <div class="agBox">
                            <label><input type="checkbox" name="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함 </span><a href="#" class="btn-agreement">[자세히 보기]</a></label>
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>

                        <!-- <div class="toast">
                            위 필수 사항을 모두 확인 후 <strong>체크를 누르셔야 신청이 완료</strong> 됩니다.
                        </div> -->
                    </div>
                </div>
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
    <div class="container">
		<!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div> -->
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
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
            $('#day').text(d + '(' + week + ')');
            $('#week-day').text(''); // day에 요일까지 붙였으니 비워둠(원하면 아래 주석 참고)

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

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    $(document).on('click', '.next', function(e){
        e.stopPropagation();   // ✅ wrap으로 이벤트 전달 차단
    });

    // 버튼 페이지 이동 함수 (다음)
    // function pageFuc(num, obj) {
    //     $('#wrap').css({height: '100%'});
    //     // $('.intro').css({height: '100%'});

    //     const formOffset = $('.q-group').offset().top;

    //     $('html, body').animate({
    //         scrollTop: formOffset
    //     }, 700); // 500ms 동안 스크롤 이동
    // }

    function restoreCheckedState($page) {
        $page.find('.q_select').each(function () {
            const $group = $(this);

            // 기존 active 제거
            $group.find('label').removeClass('active');

            // checked 된 input 찾기
            const $checked = $group.find('input:checked');

            if ($checked.length > 0) {
                $checked.parent('label').addClass('active');
            }
        });
    }

    $('input[name="tadd3"]').on('change', function () {
        var val = $(this).val();
        var $popup = $('#page-4 .popup');

        if (val === '2,000만원 이하') {
            $popup.fadeIn();
        } else {
            $popup.fadeOut();
        }
    });

    $('input[name="tadd4"]').on('change', function () {
        if ($(this).val() === '네, 담보 및 세금만 있습니다.') {
            alert('담보 및 세금만으로는 신청이 불가능 합니다');
            $(this).prop('checked', false);
            $(this).closest('.q_select').find('label').removeClass('active');
        }
    });

    $('input[name="tadd5"]').on('change', function () {
        if ($(this).val() === '아니요, 모릅니다.') {
            alert('개인회생 위임시 수임료가 발생되며 해당 사항을 모르고 계시다면 내 빚 탕감률 알아보기 상담신청이 불가능 합니다');
            $(this).prop('checked', false);
            $(this).closest('.q_select').find('label').removeClass('active');
        }
    });

    // $('#page-4 .popup .btn-close-popup').on('click', function(){
    //     var $popup = $('#page-4 .popup');
    //     $popup.fadeOut();
    // });

    //설문 on/off
    $('input[name*="tadd"]').on('click', function(){
        const $group = $(this).closest('.q_select');
        $group.find('label').removeClass('active');
        $(this).parent('label').addClass('active');
        // $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    //이름 텍스트 출력
    // $('input[name="name"]').on('keyup', function(){
    //     var nameValue = $(this).val();
    //     $('.name-result').text(nameValue + '님');
    //     $('.result-area .name-result').text(nameValue);
    // });

    // 설문 텍스트 출력
    // $('input[name="tadd1"]').on('click', function(){
    //     var nameValue = $(this).val();
    //     $('.add-result').text(nameValue);
    // });

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

        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문 1번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문 2번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

        let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("설문 3번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}

		let selectedRadio4 = procForm.querySelector('input[name="tadd4"]:checked');
		if (!selectedRadio4) {
			alert("설문 4번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
		}

        let selectedRadio5 = procForm.querySelector('input[name="tadd5"]:checked');
		if (!selectedRadio5) {
			alert("설문 5번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add5']").value = selectedRadio5.value;
		}

        
        const isChecked = $('#page-1 .notice_inner .checkbox input[type="checkbox"]').is(':checked');
        // const $toast = $('#page-1 .toast');

        //   if (!isChecked) {
        //     $toast.fadeIn();

        //     setTimeout(function(){
        //         $toast.fadeOut();
        //     }, 2000);

        //     return; // ❗ 제출 막기
        // } else {
        //     $toast.hide();
        // }

        // let selectedRadio6 = procForm.querySelector('textarea[name="tadd6"]').value;
        // procForm.querySelector("input[name='add6']").value = selectedRadio6;

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
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
			// ,'age': '나이'
			,'phone': '연락처'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'add4': '설문4'
			,'add5': '설문5'
			// ,'add6': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>