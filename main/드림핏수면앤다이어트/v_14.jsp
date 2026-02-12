<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
html, body {font-size: 10px;}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;}

/* 상단 타이머 */
/* .time-content {padding-top: 5.2rem; width: 100%;} */
.timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; font-size: 2.7rem; padding: 2.4rem 10rem; margin: 0 auto; letter-spacing: -1.98px; background: #000;}
.timer-box .text-box { width: 30%; display: flex; align-items: center; justify-content: center; gap: 1rem; background: #222; border-radius: 5rem; padding: 0.5rem 1rem; }
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px; font-size: 2.5rem;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 10%;}
@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

/* 슬라이드 영역 */
.swiper {position: absolute !important; top: 27%; left: 50%; transform: translateX(-50%); width: 80%;}
.swiper .swiper-slide img { width: 100%; text-align: center;}

/* 이름, 나이, 연락처 입력칸 */
.form_inner {background: #241549;}
.formGroup {padding: 2rem 8.5rem;}
.formGroup .user_info {display: flex; align-items: center; gap: 2rem; justify-content: space-between; background: #fff; border-radius: 0.5rem; padding: 1rem 2rem;}
.formGroup .user_info:not(:last-child) {margin-bottom: 2rem;}
.formGroup .user_info .legend {font-size: 4rem; font-weight: 700; letter-spacing: -1px; text-align: justify; text-align-last: justify; display: inline-block; width: 15rem; position: relative; padding-right: 2rem;}
.formGroup .user_info .legend::after {display: inline-block; content: ''; background: #000; width: 0.2rem; height: 3rem; position: absolute; right: 0; top: 50%; transform: translateY(-50%);}
.formGroup .user_info input {font-size: 3.3rem; font-weight: 700; letter-spacing: -0.83px; padding: 1.5rem 0;  width: 70%;}
.formGroup .user_info input::placeholder {color: #c9c9c9;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 3% auto; font-size: 2rem; color: #fff;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #fff;}
.form .agreement {font-size: 2rem;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {padding-top: 3%; width: 100%; color: #fff; font-size: 2rem;}
.form .description p {padding: 0; font-weight: normal;}
.form .description span {padding: 0;}
.form .description .ad_txt { padding: 0;}

/* submit */
.form .submit {width: 100%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%; animation: pulsating 0.8s linear infinite;}
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}


/* 플로팅 이미지 영역 */
.floatingImg{z-index:999; position:absolute; top:650px; right: 3%; margin-left:2%; width:30%; max-width:215px; cursor: pointer; animation: upDown 1s infinite;}


@media screen and (max-width: 500px){
    html,body {font-size: 1.5vw;}
    .timer-box {font-size: 3rem; padding: 2.4rem 6rem;}
    .timer-box .text-box {width: 40%;}
    .formGroup {padding: 4.5rem 3.5rem;}
    .formGroup .user_info .legend {width: 13rem;}
    .formGroup .user_info input {font-size: 3rem}
    .form .agBox {margin: 1rem auto; font-size: 1.5rem;}
    .floatingImg {top: 350px;}
}

@media screen and (max-width: 395px){
}

@media screen and (max-width: 375px){
}
</style>
<!-- Include -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>
<!-- Include end-->
<div id="wrap">
    <!-- 타이머 박스 -->
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
                <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/loading.png">
                <span class="text">현재 접수 가능</span>
            </div>
        </div>
    </div>
    <div class="img-area">
        <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_01.jpg">
        <!-- 슬라이드 -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/slide_01.png"></div>
                <div class="swiper-slide"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/slide_02.png"></div>
            </div>
        </div>
    </div>
    <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_02.gif"></div>
    <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_03.jpg"></div>

    <!-- 플로팅 버튼 -->
    <a href="javascript:void(0);"><img class="floatingImg" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/Fab_01.png"></a>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
        <div class="form_inner">
			<div class="formGroup">
                <div class="user_info">
                    <span class="legend">이 름</span>
                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                </div>
                <div class="user_info">
                    <span class="legend">나 이</span>
                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                </div>
                <div class="user_info">
                    <span class="legend">연 락 처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox" checked><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                </div>
                <div class="agreement">
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
                <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb.png"></div>
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요 ${resVo.agent}에서는 고객님의 소중한 개인정보를<br/>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span class="target">대상 : ${resVo.target}</span>
                </div>
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

    <div class="img-conatainer">
        <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_05.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_06.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_03.jpg"></div>
    </div>

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 
        <div class="form_inner">
			<div class="formGroup">
                <div class="user_info">
                    <span class="legend">이 름</span>
                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                </div>
                <div class="user_info">
                    <span class="legend">나 이</span>
                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                </div>
                <div class="user_info">
                    <span class="legend">연 락 처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox" checked><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                </div>
                <div class="agreement">
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
                        <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
                        <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                        <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                    </ol>
                </div>
                <div class="submit"><input type="image" onclick="fnForm('form-2');" value="" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb.png"></div>
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요 ${resVo.agent}에서는 고객님의 소중한 개인정보를<br/>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span class="target">대상 : ${resVo.target}</span>
                </div>
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

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/notice.jpg"></div>
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/footer.jpg"></div> -->
    </div>
    <!-- <div class="img-area fixed db_btn"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb_01.gif"></div> -->
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3
        getComment(`${eventSeq}`);
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

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        loop:true,
    });

    // 스크롤 시 따라오는 이미지
    var currentPosition = parseInt($(".floatingImg").css("top"));
    $(window).scroll(function() {
        var position = $(window).scrollTop(); 
        $(".floatingImg").stop().animate({
            top : position + currentPosition + "px"
        },500);
    });

    // 플로팅버튼 클릭시 db단 이동
    $('.floatingImg').on('click',function(){
        const formOffset = $('#form-1:visible .form_inner, #form-2:visible .form_inner').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    });

	function fnForm(formId){
        /* form 자동 처리 방지 */
        event.preventDefault();
        
        /* form id로 proc */
        let procForm = document.getElementById(formId);

		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }
			
        // 필수값 체크 항목
        var required = {
            'name': '이름'
            ,'age': '나이'
            ,'phone': '전화번호'
            // ,'add1': '설문1'
            // ,'add2': '설문2'
            // ,'add3': '설문3'
            ,'agBox': '개인정보'
        };
        
        validateForm(procForm, required);
    }
</script>