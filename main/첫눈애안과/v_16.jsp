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
.page_inner {padding: 0 3.6rem;}
#wrap {max-width: 600px; font-family: 'Pretendard'; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); background: url("//static.resta.co.kr/event_wynd/v_${eventSeq}/bg_01.jpg") no-repeat center top; background-size: 100% 100%;}
.form {background: transparent; height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: calc(100% - 10rem); display: flex; flex-direction: column;}
.page { height: 100%; flex-grow: 1;}
.hide {display: none;}

/* 상단 타이머 */
.time-content {padding: 3.2rem 3.6rem 0;}
.timer-box {color: #fff; display: flex; align-items: center; gap: 2rem; font-size: 2.4rem; border: 1px solid #797979; border-radius: 0.9rem; padding: 1.4rem 2.3rem; width: 100%; margin: 0 auto; letter-spacing: -1.23px; background: #000; box-sizing: border-box;}
.timer-box .text-box {width: 18rem;}
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

/* 설문영역 */
.question-box {margin-top: 5.984%; padding: 5.625% 6.608% 4.645%; background-color: #f4f4f4; border-radius: 12px; font-size: 150%;}
.question-box .question {padding-bottom: 5.865%; border-bottom: 2px solid #ff6d15;}
.question-box .q-text {z-index: 0; position: relative; display: block; font-size: 247%; font-weight: 600; letter-spacing: -0.93px; text-align: center; color: #000;}
.question-box .q-text .underline {position: relative; font-weight: 800; color: #ff6d15;}
.question-box .q-text .underline::before {content: ''; z-index: -1; position: absolute; top: 50%; transform: translateY(-50%); width: 100%; height: 100%; opacity: 0.2; border-radius: 8px; background-color: #f3ea82;}
.question-box .q_select {display: flex; align-items: center; flex-wrap: wrap; column-gap: 3%; row-gap: 12px; padding-top: 5.145%;}
.question-box .q_select label {width: calc((100% - 3%) / 2);}
.question-box .q_select label img {display: block; width: 100%; height: 100%;}

.form .next {width: 80%; margin: 0 auto;}
.form .next img {width: 100%;}
.form .submit {width: 100%; margin: 1rem auto 0;}
.form .submit input[type="image"] {width: 100%;}

#page-1 .icon {display: block; max-width: 6.6rem; margin: 3.75% auto 1.79%;}
#page-1 .icon + img {display: block; width: 71.43%; margin: 0 auto;}

/* 설문영역 */
#page-2 .top-area {width: 76.136%; margin: 0 auto;}
.form .page-inner {width: 100%; padding: 2.8rem 3.6rem 1rem;}
.form .db-box {margin-top: 5.984%; width: 100%; padding: 5.625% 6.608% 4.645%; background-color: #f4f4f4; border-radius: 12px; font-size: 150%; box-sizing: border-box;}
.form .db-box .question .q-text {z-index: 0; position: relative; display: block; font-size: 247%; font-weight: 600; letter-spacing: -0.93px; text-align: center; color: #000; line-height: 1.25;}
.form .db-box .question .q-text .underline {position: relative; font-weight: 800; color: #ff6d15;}
.form .db-box .question .q-text .underline::before {content: ''; z-index: -1; position: absolute; bottom: -7%; width: 100%; height: 50%; opacity: 0.2; background-color: #f3ea82;}
.form .user-box {margin-top: 2rem;}
.form .user-box .user-info {display: flex; align-items: center; justify-content: space-between;}
.form .user-box .user-info:not(:last-child) {margin-bottom: 2rem;}
.form .user-box .user-info .legend {margin-right: 1.9rem; flex-shrink: 0; width: 18.12%; text-align: justify; font-size: 160%; font-weight: 700; letter-spacing: -0.6px; text-align: justify; color: #2f2f2f; height: 4.7rem; font-family: 'Pretendard';}
.form .user-box .user-info .legend::after {content: ''; display: inline-block; width: 100%;}


.form .user-box .user-info input {border: 2px solid #ff6d15; font-size: 2rem; letter-spacing: -0.5px; font-weight: 700; padding: 1.5rem 2rem; padding-right: 0; }
.form .user-box .user-info input::placeholder {color: #c9c9c9;}



/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #6e6e6e; letter-spacing: -0.65px;}

.form .agBox {color: #fff; font-size: 1.6rem; padding: 3.95rem 0 1.23rem; width: 100%;}

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

@media screen and (max-width: 500px) {
    html, body {font-size: 1.7vw;}
}
@media screen and (max-width: 430px) {
}

@media screen and (max-width: 395px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
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
                    <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/loading_01.png">
                    <span class="text">현재 접수 가능</span>
                </div>
            </div>
        </div>
        <div class="formContents">
            <section class="page section01" id="page-1">
                <div class="page_inner">
                    <div class="img-area">
                        <img class="icon" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/icon_01.png">
                        <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_01.png">
                    </div>
                    <div class="question-box">
                        <div class="question">
                            <span class="q-text"><span class="underline">증상</span>을 알려주세요</span>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="시야 흐림"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_01.png"></label>
                            <label><input type="radio" name="tadd1" value="눈이 피로함"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_02.png"></label>
                            <label><input type="radio" name="tadd1" value="시력저하"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="radio" name="tadd1" value="기타 증상"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_04.png"></label>
                        </div>
                    </div>
                    <div class="agBox">
                        개인정보 처리방침
                        <a href="#" class="btn-agreement">[자세히 보기]</a>
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
					<div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb_01.png"></div>
                </div>
            </section>

            <section class="page hide section02" id="page-2">
				<div class="page-inner">
					<div class="img-area top-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_02.png"></div>
					<div class="db-box">
                        <div class="question">
                            <span class="q-text"><span class="underline">성함과 연락처</span>를 남겨주시면<br/>연락 드리겠습니다.</span>
                        </div>
						<div class="user-box">
							<div class="user-info">
								<span class="legend">이 름</span>
								<input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름">
							</div>
							<div class="user-info">
								<span class="legend">나 이</span>
								<input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
							</div>
							<div class="user-info">
								<span class="legend">전화번호</span>
								<input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처 ('-'없이 입력)">
							</div>
						</div>
						<div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb.png"></div>
						<div class="description bottom">
							<p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
							<span>대상 :  ${resVo.target}</span>
						</div>
					</div>
				</div>
            </section>
            <div class="container-bottom">
                <!-- <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/notice.png"></div> -->
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/footer.jpg"></div>	
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
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
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

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        if (num === 1) {
            const isChecked = $('input[name="tadd1"]:checked').length > 0;

            if (!isChecked) {
                alert("설문을 선택해주세요");
                return; // 선택되지 않았으면 페이지 이동 안함
            }
        }

        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            if(num + 1 == 1){
                $('.section0' + (num + 1)).css('display','block');
                return;
            }
            $('.section0' + (num + 1)).css('display','flex');
            $(document).scrollTop(0);
        });
    }

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    //설문 클릭시 이미지 on/off
    $('input[name="tadd1"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
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
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>