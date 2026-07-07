<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
html, body {font-size: 10px;}
#wrap {font-family: 'Pretendard'; background: #fff; overflow: hidden;} 

/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 2%; cursor: pointer; right: 24%; transform: translateX(-50%); width: 11.5%;}
.fixed a {display: block; width: 100%; height: 100%;}

/* 비디오 */
.video-area {width: 100%;}
.video-area video {display: block; width: 100%; height: 100%;}

/* 이름, 나이, 연락처 입력칸 */
.form .form_inner {background: #473839; padding: 6rem 4rem;}
.form .form_inner .input_box {display: flex; align-items: center; justify-content: space-between; flex-flow: row wrap;}
.form .form_inner .input_box input {width: 100%; background: #fff; border-radius: 1.5rem; font-size: 3.8rem; font-weight: 500; text-align: center; padding: 3.2rem 0; letter-spacing: -1.54px;}
.form .form_inner .input_box input + input {margin-top: 1rem;}
.form .form_inner .input_box input::placeholder {color: #999;}
/* .form .form_inner .input_box input:nth-child(1) {width: 49.5%;}
.form .form_inner .input_box input:nth-child(2) {width: 49.5%;}
.form .form_inner .input_box input:nth-child(3) {width: 100%; margin-top: 1rem;} */

/* 개인정보처리방침 영역 */
.form .agBox {font-size: 1.2rem; color: #fff; margin: 2rem auto; padding: 0; width: 100%;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}
.form .agreement .button,
.form .agreement h3 {font-size: 1.3rem;}
.form .agreement ol li {font-size: 1.1rem;}

/* submit */
.form .submit {width: 80%; margin: 0 auto 3rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* 안심문구, 대상, 이벤트기간 */
.form .description p,
.form .description span,
.form .description .ad_txt {color: #fff; font-size: 1.2rem;}

/* 하단푸터 */
.container {position: relative;}
.container .btn-call {position: absolute; bottom: 15%; left: 50%; transform: translateX(-50%); width: 45%;}

@media screen and (max-width: 500px){
    html, body {font-size: 1.5vw;}
    .form .agBox,
    .form .description p, .form .description span, .form .description .ad_txt {font-size: 1.7rem;}
    .fixed {width: 25%; right: -10%;}

    .form .agreement .button,
    .form .agreement h3 {font-size: 1.5rem;}
    .form .agreement ol li {font-size: 1.3rem;}
}
@media screen and (max-width: 430px) {

}
@media screen and (max-width: 395px) {
    /* .fixed {width: 20%;} */
} 

</style>
<!-- include -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<!-- include end-->
<div id="wrap"> 
    <div class="img-container">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_01.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_02.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_03.jpg"></div>
        <div class="video-area">
            <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_04.mp4" type="video/mp4"></video>
            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_05.gif"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="form_inner">
			<div class="input_box">
                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름" />
                <!-- <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이"> -->
                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처" />
            </div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox" checked><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
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
            
            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_06.png"></div>
            
            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 : ${resVo.target}</span>
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

    <div class="container bottom">
		<!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.png"></div> -->
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260706_MST(hr)_07.jpg"></div>
		<!-- <div class="img-area btn-call"><img src="//static.harang-event.com/event/v_${eventSeq}/call_btn_01.png"></div> -->
    </div>
    <!-- <div class="img-area fixed call_btn">
        <a href="tel:16000028">
            <img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.gif">
        </a>
    </div> -->
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
        /* 기간항목 start */
        initDate();
    });

    // 상단슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        loop:true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
    });

    // db-btn 클릭시 db단 이동
    // $('.db_btn').on('click',function(){
    //     const formOffset = $('.form_inner').offset().top;

    //     $('html, body').animate({
    //         scrollTop: formOffset
    //     }, 500); // 500ms 동안 스크롤 이동
    // })

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		// if (!selectedRadio1) {
		// 	alert("설문1을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		// if (!selectedRadio2) {
		// 	alert("설문2를 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }

		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]`);
        // if (!selectedRadio3 || selectedRadio3.value.trim() === '') {
        //     alert("거주지역을 입력해주세요.");
        //     return;
        // } else {
        //     procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
        // }
        // let selectedRadio1 = procForm.querySelector('textarea[name="tadd1"]').value;
        // procForm.querySelector("input[name='add1']").value = selectedRadio1;
	
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
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>