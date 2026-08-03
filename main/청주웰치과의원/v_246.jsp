<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css" type="text/css"/>
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
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css');

html, body {font-size: 10px;}
.page_inner {padding: 0rem 4.3rem 1.9rem; flex-grow: 1;}
#wrap {max-width: 600px; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); overflow: hidden; background: url("//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_01.jpg") no-repeat center center; background-size: 100% 100%;}
.form {background: transparent; height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%; display: flex; flex-direction: column;}
.page { height: 100%; flex-grow: 1; padding-top: 23.9rem; flex-direction: column;}
.hide {display: none;}

/* 상단 타이머 */
.page {position: relative;}
.time-content {z-index: 1; position: absolute; top: 2rem; left: 50%; width: 93.333333%; transform: translateX(-50%);}
/* #page-2 .time-content {top: 1.5%;} */
.timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; font-size: 2.4rem; border-radius: 2.4rem; width: 100%; box-sizing: border-box; padding: 0.9rem 2.3rem; margin: 0 auto; letter-spacing: -1.23px; background: #000; border-radius: 1.3rem; border: solid 2px #e6bd54; background-color: #030303; font-family: 'Paperlogy';}
.timer-box > * {font-family: inherit;}
.timer-box .text-box {display: flex; align-items: center; column-gap: 1rem; width: 18rem; font-family: 'Paperlogy';}
.timer-box .text-box .text {font-family: 'Pretendard'; font-weight: 800; letter-spacing: -1.23px; color: #fff;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

.time-content + .img-area {width: 79%; margin: 0 auto;}
#page-2 .time-content + .img-area {width: 84.333333%; margin: 0 auto;}

/* 설문영역 */
.question-box {position: relative; padding: 1.8rem 3.3rem 2.7rem; background-color: #fff4e7; border-radius: 2rem; border: 2px solid #ab8850;}
.question-box .question {display: flex; align-items: center; justify-content: center; flex-direction: column; row-gap: 1.7rem;}
.question-box .question .q-text {font-family: 'Pretendard'; font-size: 4.1rem; font-weight: 400; letter-spacing: -1.01px; text-align: center; color: #000; line-height: 1;}
/* .question-box .question img {width: 3.4rem; height: 3.3rem;} */
.question-box .question strong {position: relative; z-index: 1;}
/* .question-box .question strong::before {content: ''; z-index: -1; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); background: #78cf1c; opacity: 0.2; display: inline-block; width: 100%; height: 1.7rem;} */
.question-box .q-select {margin-top: 1.7rem;}

.question-box .q_select {display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.25rem; width: 100%; margin-top: 1.7rem;}
.question-box .q_select label {width: 100%; border-radius: 1.2rem; border: solid 3px #050713; background-color: #fff; overflow: hidden;}
.question-box .q_select label .sel-item {display: flex; align-items: center; justify-content: center; height: 11.6rem; box-sizing: border-box; font-family: 'Pretendard'; font-size: 2.8rem; line-height: 1; padding: 1.6rem; font-weight: 700; letter-spacing: -0.85px; text-align: center; color: #2f2f2f;}
.question-box .q_select label .sel-item.active {background: #ffda1e; color: #000;}

.form .next {width: 92.046%; margin: 2.1rem auto 0;}
.form .next img {width: 100%;}
.form .submit {width: 94.187%; margin: 2.1rem auto 2.4rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* #page-2 {padding-top: 17%; background-color: #f2f2f2;}
.form #page-2 .page-inner {padding-top: 0; width: 100%;} */
/* #page-2 {flex-direction: column;}
#page-2 .page_inner {padding: 0; border-radius: 2rem 2rem 0 0;}
#page-2 .page_inner .question-box {height: 100%; margin-top: 0; padding: 0; border-radius: 2rem 2rem 0 0;}
#page-2 .question-box .q_select {display: flex; padding: 0 2.9rem; width: 100%; box-sizing: border-box;}
#page-2 .question-box .question {width: 61.5%; margin: 2rem auto 0;}
#page-2 .question-box .q_select label .sel-item {height: 21.6rem; font-size: 4.5rem;} */

#page-2 {padding-top: 16.4rem;}
/* #page-2 .time-content + .img-area {width: 100%;} */

/* 설문영역 */
.form .page-inner {padding: 0 4.3rem 1rem;}
.form .db-box {position: relative; background: #fff; border-radius: 2rem; border: solid 2px #95772e; padding: 2rem 2.2rem; background-color: #fefce7; line-height: 1.25;}
.form .db-box .img-area {width: 85.019455%; margin: 0 auto;}
.form .db-box .question {font-family: 'Pretendard'; font-size: 4.1rem; font-weight: 700; letter-spacing: -1.78px; text-align: center; color: #000;}
.form .db-box .question strong {color: #ff2900; font-weight: 700;}
/* .form .db-box .question .q-text {padding: 0; border-bottom: 0; font-family: 'Pretendard';} */
.form .user-box {margin-top: 2rem;}
.form .user-box .user-info {display: flex; align-items: center; justify-content: space-between;}
.form .user-box .user-info:not(:last-child) {margin-bottom: 2rem;}

.form .user-box .user-info .legend {height: 2.7rem; width: 8rem; letter-spacing: -0.73px; margin-right: 1.4rem; flex-shrink: 0; box-sizing: border-box; display: inline-block; text-align: center; position: relative; font-size: 2.2rem; color: #95772e; font-weight: 700;}
/* .form .user-box .user-info .legend::before {content: ''; display: inline-block; position: absolute; width: 100%; height: 2.6rem; } */

.form .user-box .user-info input {  border-radius: 1.5rem; padding: 1.9rem 1.4rem; font-size: 2.6rem; font-weight: 700; letter-spacing: -1.3px; text-align: left; color: #000; border: solid 1px #05040c; background-color: #fff;}

/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: 400; font-size: 1.2rem; padding: 0; margin: 0; color: #000; letter-spacing: -0.49px;}

.form .agBox {color: #000; font-family: 'Pretendard'; font-size: 1.6rem; font-weight: 400; line-height: 1; width: 100%; margin-bottom: 0;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #000;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Paperlogy', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

/* .pushAlarm {height: 6rem !important; line-height: 6rem !important; font-size: 2.3rem !important; left: 50%; transform: translateX(-50%) translateY(0%); bottom: 3% !important; font-weight: 400 !important; border-radius: 999px !important; max-width: 55.4rem; background-color: rgba(0, 0, 0, 0.7) !important; width: 94.4987% !important; opacity: 1 !important;}
.pushAlarm.animate__animated {animation: customZoom 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94);}
.pushAlarm .highlight {font-weight: 700;}

@keyframes customZoom {
    0% {
        transform: translateX(-50%) translateY(50%);
        opacity: 0;
    }
    100% {
        transform: translateX(-50%) translateY(0%);
        opacity: 1;
    }
} */


@media screen and (max-width: 500px) {
    html, body {font-size: 1.7vw;}

    /* .pushAlarm {bottom: 6% !important;} */
}
@media screen and (max-width: 430px) {
}

@media screen and (max-width: 395px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<!-- <script src="//static.resta.co.kr/libs/pushAlarm/pushAlarm.js"></script>
<link rel="stylesheet" href="//static.resta.co.kr/libs/pushAlarm/pushAlarm.css"> -->
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
        <h3>개인정보 수집 및 이용 동의</h3>
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
                <div class="time-content">
                    <div class="timer-box">
                        <div class="date">
                            <span class="year"></span>
                            <span class="month"></span>
                            <span class="day"></span>
                            <span class="week-day"></span>
                        </div>
                        <div class="time">
                            <span class="hour"></span>
                            <span class="minute"></span>
                        </div>
                        <div class="text-box">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_02.png">
                            <span class="text">현재 접수 가능</span>
                        </div>
                    </div>
                </div>
                <div class="img-area">
                    <img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_03.png">
                </div>
                <div class="page_inner">
                     <div class="img-area question">
						<img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_04.gif">
						<!-- <span class="q-text"><strong>임플란트 얼마나 </strong> 필요하신가요?</span> -->
					</div>
					<div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_05.png"></div>
                </div>
            </section>

            <!-- <section class="page hide section02" id="page-2">
                <div class="time-content">
                    <div class="timer-box">
                        <div class="date">
                            <span class="year"></span>
                            <span class="month"></span>
                            <span class="day"></span>
                            <span class="week-day"></span>
                        </div>
                        <div class="time">
                            <span class="hour"></span>
                            <span class="minute"></span>
                        </div>
                        <div class="text-box">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_02.png">
                            <span class="text">현재 접수 가능</span>
                        </div>
                    </div>
                </div>
                <div class="img-area">
                    <img src="//static.harang-event.com/event/v_${eventSeq}/txt_01.png">
                </div>
                <div class="page_inner">
                    <div class="question-box">
                        <div class="img-area question">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/event_mian_02.png">
                            <span class="q-text"><strong>임플란트 얼마나 </strong> 필요하신가요?</span>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" onclick="pageFuc(2,$(this))" name="tadd1" value="전남"><div class="sel-item">전남</div></label>
                            <label><input type="radio" onclick="pageFuc(2,$(this))" name="tadd1" value="광주"><div class="sel-item">광주</div></label>
                            <label><input type="radio" onclick="pageFuc(2,$(this))" name="tadd1" value="그 외"><div class="sel-item">그 외</div></label>
                        </div>
                    </div>
                </div>
            </section> -->

            <section class="page hide section02" id="page-2">
                <div class="time-content">
                    <div class="timer-box">
                        <div class="date">
                            <span class="year"></span>
                            <span class="month"></span>
                            <span class="day"></span>
                            <span class="week-day"></span>
                        </div>
                        <div class="time">
                            <span class="hour"></span>
                            <span class="minute"></span>
                        </div>
                        <div class="text-box">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_02.png">
                            <span class="text">현재 접수 가능</span>
                        </div>
                    </div>
                </div>
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_07.png"></div>
				<div class="page-inner">
					<div class="db-box">
                        <div class="img-area">
							<img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_08.png">
						</div>
						<div class="user-box">
							<div class="user-info">
								<span class="legend">이름</span>
								<input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름">
							</div>
							<!-- <div class="user-info">
								<span class="legend">나 이</span>
								<input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
							</div> -->
							<div class="user-info">
								<span class="legend">전화번호</span>
								<input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처 ('-'없이 입력)">
							</div>
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                            </div>
                            <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_09.png"></div>
                            <div class="description bottom">
                                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                <span>대상 :  ${resVo.target}</span>
                            </div>
						</div>
					</div>
				</div>
            </section>
            <div class="container-bottom">
                <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.png"></div> -->
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260707_CJWL(hr)_06.jpg"></div>	
            </div>
            
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

    <!-- 실시간 신청자 팝업 -->
    <!-- <div class="push"></div>
    <div class="subscribe" data-limit="10" style="display: none;"></div> -->
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

            var week = ['일', '월', '화', '수', '목', '금', '토'][now.getDay()];

            var hh = pad2(now.getHours());
            var mm = pad2(now.getMinutes());

            // 모든 time-content 업데이트
            $('.time-content').each(function () {
                $(this).find('.year').text(y + '.');
                $(this).find('.month').text(m + '.');
                $(this).find('.day').text(d + '(' + week + ')');
                $(this).find('.week-day').text('');

                $(this).find('.hour').text(hh + ':');
                $(this).find('.minute').text(mm);
            });
        }

        renderNow();

        var now = new Date();
        var msToNextMinute = (60 - now.getSeconds()) * 1000 - now.getMilliseconds();

        setTimeout(function () {
            renderNow();
            setInterval(renderNow, 60 * 1000);
        }, msToNextMinute);
    });

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        if (num === 2) {
			const value = obj.val();
			if (value === "전남") {
				alert("해당 치과는 광주에 위치해 있습니다.");
			}
            // const isChecked = $('input[name="tadd1"]:checked').length > 0;

            // if (!isChecked) {
            //     alert("설문을 선택해주세요");
            //     return; // 선택되지 않았으면 페이지 이동 안함
            // }
        }

        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css('display','flex');
            // $('#wrap').css({'height': '100%'});
            $(document).scrollTop(0);
        });
    }

    $(document).on("change", "input[name^='tadd']", function() {
        const name = $(this).attr("name");

        // 같은 그룹의 모든 sel-item에서 active 제거
        $("input[name='" + name + "']").each(function() {
            $(this).closest("label").find(".sel-item").removeClass("active");
        });

        // 현재 선택된 라벨의 sel-item에 active 추가
        $(this).closest("label").find(".sel-item").addClass("active");
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
		
		// let selectedRadio1 = procForm.querySelector(`textarea[name="tadd1"]`).value;
        // procForm.querySelector("input[name='add1']").value = selectedRadio1;
		
        // let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

        // let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		// if (!selectedRadio2) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
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
			// ,'age': '나이'
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