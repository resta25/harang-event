<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

#wrap {font-family: "Pretendard", sans-serif; background: #fff; padding-bottom:  clamp(7rem, 11vw, 11.5rem);} 

/* pc 버전 */
/* .form .form_inner.is-pc {padding: 3rem 2rem 2rem; background: #fff; }
.form .form_inner.is-pc .formGroup {background: #fff; border: 2px solid #006e57; border-radius: 3rem; padding: 2rem; color: #000;}
.form .form_inner.is-pc .formGroup .notice-area {margin-bottom: 2rem; font-size: 1.5rem; text-align: center; color: #006e57; letter-spacing: -1.23px; font-weight: 800;}
.form .form_inner.is-pc .formGroup .db-top {display: unset;}
.form .form_inner.is-pc .formGroup .db-top .user_info.name {width: auto;}
.form .form_inner.is-pc .formGroup .db-top .user_info.age {width: auto;}
.form .form_inner.is-pc .formGroup .user_info {justify-content: space-between;} */

/* 초기화 */
/* .form .form_inner.is-pc .formGroup .db-top .user_info.name .legend,
.form .form_inner.is-pc .formGroup .db-bottom .user_info.phone .legend {width: 10rem;}
.form .form_inner.is-pc .formGroup .user_info.name,
.form .form_inner.is-pc .formGroup .user_info.age {width: auto;}

.form .form_inner.is-pc .formGroup .user_info .legend { width: 10rem; font-size: 2.5rem; text-align: justify; text-align-last: justify; display: inline-block; color: #000;}
.form .form_inner.is-pc .formGroup .user_info input {width: 68%; border-radius: 5rem; font-size: 2rem; padding-left: 2rem; background: #f4f4f4; border: solid 2px #006e57;}

.form .form_inner.is-pc input[type="checkbox"] + span:after, .form .form_inner.is-pc input[type="radio"] + span:after,
.form .form_inner.is-pc input[type="checkbox"] + span:before, .form .form_inner.is-pc input[type="radio"] + span:before {border-color: #000;} */

/* 상단 비디오영역 */
/* .img-area video {width: 58%; position: absolute; left: 50%; transform: translateX(-50%);}
#location_01 {top: 10.5%;}
#location_02 {top: 42%;}
#location_03 {bottom: 14.8%;} */

/* 하단 form-inner */
/* .form_inner {padding: 0 0 7rem;} */
.form_inner .question_box {padding: 5.19rem 2.44rem 2.13rem;}
.question_box .question {text-align: center;}
.question_box .question .img-area {width: 89.88%; margin: 0 auto;}
.question_box .q_select {display: flex; justify-content: center; flex-wrap: wrap; gap: 1.5%; margin-top: 5%;}
.question_box .q_select label {width: 23.7%; padding: 1.1% 0; text-align: center; color: #1d1d1d; font-weight: 600; background-color: #e5e5e5; font-family: 'Pretendard'; border-radius: 8px; font-size: 225%;}
.question_box .q_select label.active {background-color: #5d75ff; color: #fff;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {background-color: #fff; color: #1d1d1d; padding: 5% 4rem;}
.formGroup .db-top {display: flex; gap: 4%; width: 100%;}
.formGroup .db-top .user_info.name {width: 54%;}
.formGroup .db-top .user_info.name .legend {width: 36%; font-family: 'Pretendard';}
.formGroup .db-bottom .user_info.phone .legend {width: 15%;}
.formGroup .db-top .user_info.age {width: 48%;}
.formGroup .user_info {display: flex; align-items: center; margin-bottom: 1.2rem;}
.legend {font-weight: 700;font-size: 1.5rem; width: 21%;}
/* .legend::after {display: inline-block; content: '*'; color: #22ab41; position: relative; top: -2px; left: 2px;} */
.formGroup .user_info input {padding: 1.325rem 0 1.325rem 1rem;  border-radius: 8px;
  border: solid 1px #a9a9a9;
  background-color: #f7f7f7; font-size: 1.25rem; width: 100%;}
.formGroup .user_info input::placeholder{color: #bababa;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 3% auto; font-size: 0.95rem;}
.form .agreement {color: #000;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #000;}


/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {padding-top: 3%; width: 100%;}
.form .description p {font-size: 1.3rem; padding: 0; font-weight: normal;}
.form .description span {font-size: 0.95rem; padding: 0;}
.form .description .ad_txt {font-size: 0.95rem; padding: 0;}

/* submit */
.form .submit {width: 80%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

/* 결과 영역 */
.arrow-img {width: 15%; margin: 5% auto 3%;}
.arrow-img img {width: 100%;}
.result-box {position: relative; width: 100%; margin: 2rem auto 0; box-sizing: border-box;}
.result-box img {width: 100%;}
#result {position: absolute; top: 50%; transform: translateY(-50%); left: 4.5%; font-size: 200%; width: 23%; height: 50px; display: flex; align-items: center; justify-content: center; overflow: hidden;}

/* 실시간 신청 현황 */
.subscribe-wrap {background: #f1f1f1; width: 85%; margin: 5% auto; padding: 3%; border-radius: 1.9rem;}
.subscribe-title {text-align: center; font-size: 2.6rem; font-weight: 700; padding-bottom: 1rem; color: #282828;}
.subscribe {height: 250px; overflow: hidden; padding: 2% 5%; background: #fff; border-radius: 1.4rem; }
.subscribe .content {padding: 0; display: flex; align-items: center; font-size: 100%; margin: 1% 0; justify-content: space-between; border-bottom: 1px solid #f3f3f3;}
.subscribe .content > div {width: calc(100% / 3); text-align: center;}
.subscribe .content .date {}

.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content .text { text-align: center; width: 17%; background: #979797; color: #fff; border-radius: 1.2rem; font-weight: 700;}
.color-bg {
        background-color: #ffef82 !important;
        font-weight: 700;
        border-radius: 1.2rem;
        color: #282828 !important;
    }

/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 0%; cursor: pointer; width: 100vw;
    max-width: 818px;}

@media screen and (max-width: 500px){
    /* .form_inner {padding: 0 0 4rem;} */
    .form_inner .question_box {padding: 3rem 1rem 0.5rem;}
    .question_box .question .img-area {width: 80%;}
    .question_box .q_select label {width: 23.5%;}
    .formGroup {padding: 5% 1.7rem;}
    .legend {font-size: 1.1rem;}
    .formGroup .user_info input {font-size: 1rem;}
    /* .formGroup .db-top .user_info.name .legend {width: 40%;}
    .formGroup .db-top .user_info.age .legend {width: 45%;} */
    .formGroup .db-bottom .user_info.phone .legend {width: 20%;}
    .formGroup .user_info input {padding: 0.8rem 0 0.8rem 0.8rem;}

    .form .agBox {font-size: 0.7rem;}
    .form .description p {font-size: 0.9rem;}
    .form .description .ad_txt,
    .form .description span {font-size: 0.6rem;}

    #result {font-size: 120%;}

    .question_box .q_select label {font-size: 115%;}

    .formGroup .db-top .user_info.name .legend {width: 49%;}
    .formGroup .db-top .user_info.name {width: 52%;}
    .legend {width: 38%;}
    .formGroup .db-top .user_info.age {width: 48%;}
}

@media screen and (max-width: 395px){
    .form .description p {font-size: 0.7rem;}
    .form .description .ad_txt, .form .description span {font-size: 0.5rem;}

    .form .agBox {font-size: 0.6rem;}

    .formGroup .user_info input {font-size: 1rem;}
}

@media screen and (max-width: 375px){
}
</style>
<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area">
            <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_06.jpg"></div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
        <div class="form_inner">
            <div class="question_box is-mo">
                <div class="question">
                    <div class="img-area">
                        <img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png" alt="">
                    </div>
                </div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="5kg">5kg</label>
                    <label><input type="radio" name="tadd1" value="10kg">10kg</label>
                    <label><input type="radio" name="tadd1" value="15kg">15kg</label>
                    <label><input type="radio" name="tadd1" value="20kg 이상">20kg 이상</label>
                </div>
            </div>

			<div class="formGroup">
                <!-- <div class="notice-area is-pc">*저렴한 제품으로 일시적인 효과가 목적이신 분은 해당 페이지를 나가주세요.</div> -->
                <div class="db-top">
                    <div class="user_info name">
                        <span class="legend">이름</span>
                        <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                    </div>
                    <div class="user_info age">
                        <span class="legend">나이</span>
                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                    </div>
                </div>
                <div class="db-bottom">
                    <div class="user_info phone">
                        <span class="legend">연락처</span>
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                    </div>
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
                <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span class="target">대상 : ${resVo.target}</span>
                </div>
                <div class="result-box img-area">
                    <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.png">
                    <span id="result"></span>
                    <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
                </div>
			</div>
            <!-- <div class="img-area mo-img"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.jpg"></div> -->

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
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.png"></div>
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
    <div class="img-area fixed db_btn"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3
        getComment(`${eventSeq}`);
    });

    //설문 클릭시 이미지 on/off
    $('input[name="tadd1"]').on('click', function(){
        const $labels = $('input[name="tadd1"]').parent('label');

        $labels.removeClass('active'); // 전체 제거
        $(this).parent('label').addClass('active'); // 현재만 추가
    });

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.form_inner').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동

        fnForm('form-1');
    })

	function fnForm(formId){
        /* form 자동 처리 방지 */
        event.preventDefault();
        
        /* form id로 proc */
        let procForm = document.getElementById(formId);

		// let isMobile = /Mobi|Android|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
        // if (isMobile) {
        //     let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
        //     if (!selectedRadio1) {
        //         alert("설문1을 선택해주세요.");
        //         return;
        //     } else {
        //         procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
        //     }
        // } else {
        //     // PC일 때는 임의 값 넣어서 통과
        //     procForm.querySelector("input[name='add1']").value = "-";
        // }

        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
			
        // 필수값 체크 항목
        var required = {
            'name': '이름'
            ,'age': '나이'
            ,'phone': '전화번호'
            ,'add1': '설문1'
            // ,'add2': '설문2'
            // ,'add3': '설문3'
            ,'agBox': '개인정보'
        };
        
        validateForm(procForm, required);
    }
</script>