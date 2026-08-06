<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css"
  type="text/css"
/>
<style>
    html { font-size: 62.5%; }
    #wrap {font-family: 'Pretendard'; background-color: #00264d;}
    #form-1 {height: 100%;}
    #wrap .formContents {height: 100%;}
    .page { flex-grow: 1; position: relative; box-sizing: border-box;}
    .hide {display: none;}

    /* 공통 */
    .container { text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
    .form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'Paperlogy'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
    .form strong {color: #f20000; font-weight: 800; font-family: 'Paperlogy';}
    .form .name-result {}
    .next {cursor: pointer;}
    .page:not(#page-1) .page_inner {padding: 0 5.1rem;}
    .top-img {width: 87.8333333%; margin: 3% auto 0;}
    /* .page:not(#page-1):not(#page-2) .question .img-area {width: 98.6%; margin: 0 auto;} */

    .page-box {text-align: center; margin-bottom: 4.8%;}
    .page-box .page-num {font-family: 'Pretendard'; font-size: 188%; font-weight: 500; letter-spacing: -0.6px; color: #676767;}
    .page-box .page-num .current {color: #013797;}

    /* 비디오 영역 */
    .video-box video {display: block; width: 100%; height: 100%;}

    /* 설문영역 */
    .question_box {padding: 4.9rem 8.4rem 7.3rem;}
    .question_box .question {margin-bottom: 7.676%; text-align: center; color: #000; font-size: 250%; font-weight: 500; font-family: 'Pretendard'; letter-spacing: -0.04em; line-height: 1.18;}
    .question_box .question .img-area {width: 94%; margin: 0 auto;}
    .question_box .q_select {display: flex; align-items: center; justify-content: center; column-gap: 1.7rem;}
    .question_box .q_select label {width: 100%;}
    .question_box .q_select label .sel-item {  font-family: 'Pretendard'; padding: 4.2rem 4.5rem; line-height: 1; border-radius: 1.9rem; background-color: #1d1d1d; font-size: 6.95rem; font-weight: 800; letter-spacing: -2.78px; text-align: center; color: rgba(255, 255, 255, 0.5);}
    .question_box .q_select label .sel-item.active {background: #207eff; color: #fff;}

    /* 이름, 연락처 입력칸 */
    .formGroup {padding: 6.7rem 6.4rem 6.5rem; background-color: #001a4e;}
    .formGroup .form_inner {margin-top: 6.4rem;}
    .formGroup .form_inner .user_info {width: 100%; display: flex; align-items: center; padding: 2.6rem 4.1rem; background-color: #fff; border-radius: 1.2rem; box-sizing: border-box; border: 1px solid #c6c6c6;}
    .formGroup .form_inner .user_info + .user_info {margin-top: 1.6rem;}
    .formGroup .form_inner .user_info.active {border-color: #1a5ee9;}
    .formGroup .form_inner .legend {flex-shrink: 0; line-height: 1; width: 11.5rem; border-right: 1px solid #c7c7c7; font-family: 'SUIT'; font-size: 3.1rem; font-weight: 700; letter-spacing: -0.62px; text-align: left; color: #0d0d0d;}
    .formGroup .form_inner .user_info.active .legend {color: #1a5ee9;}
    .formGroup .form_inner .inp {line-height: 1; padding-left: 3.8rem; font-family: 'SUIT'; font-size: 3.1rem; font-weight: 600; letter-spacing: -0.62px; text-align: left; color: #0d0d0d;}
    .formGroup .form_inner .inp::placeholder {color: #c7c7c7;}

    .form .checkbox {text-align: center; display: flex; align-items: center; justify-content: center; font-family: 'Pretendard'; font-size: 220%; font-weight: 700; margin-top: 4.2%; color: #fff;}
    .form .checkbox label {line-height: 1;}
    .form .checkbox input[type="checkbox"] {width: 28px; height: 28px; margin-right: 7px; appearance: none; background: url("//static.harang-event.com/event/v_${eventSeq}/check_off.png") no-repeat center center / 100% 100%; clip: unset; position: static; transition: 0s;}
    .form .checkbox input[type="checkbox"]:checked {background-image: url("//static.harang-event.com/event/v_${eventSeq}/check_on.png");}

    /* submit */
    .form .submit {width: 100%; margin: 0 auto 3.3rem;}
    .form .submit input[type="image"] {width: 100%;}

    /* 안심문구, 대상, 이벤트기간 */
    .form .description {margin-top: 2.7rem;}
    .form .description .ad_txt,
    .form .description p,
    .form .description span {font-family: 'SUIT'; font-size: 1.35rem; font-weight: 400; line-height: 1.48; letter-spacing: normal; text-align: center; color: #fff;}

    .form .agBox {width: 100%; margin: 3.1rem auto 2.4rem; font-family: 'Pretendard'; font-size: 2rem; text-align: center; color: #fff;}
    .form input[type="checkbox"]:checked + span:after, .form input[type="radio"]:checked + span:after {border-color: #fff;}


    .form .agreement .button,
    .form .agreement h3 {font-size: 1.6rem;}
    .form .agreement ol li {font-size: 1.4rem;}

    @media screen and (max-width: 500px) { 
        html, body {font-size: 1.5vw;}

        .question_box .q_select label .sel-item {padding: 3.2rem 4.5rem; font-size: 4.95rem;}

    }
    @media screen and (max-width: 395px) {
        /* .form .db-box {top: 13%;} */
        /* .form .page-inner {top: 26%;} */
    }

    @media screen and (max-width: 375px) {
        /* .form .page-inner { top: 23%; } */
        /* .form .db-box {top: 13%;} */
    }
</style>

<!-- //INCLUDES -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<!-- INCLUDES// -->
<div id="wrap">
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">
            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_01.jpg"></div>
            <div class="video-box">
                <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
            </div>
            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.gif"></div>
            <div class="form_inner">
                <div class="question_box">
                    <div class="question">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_02.png"></div>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="예"><div class="sel-item">예</div></label>
                        <label><input type="radio" name="tadd1" value="아니오"><div class="sel-item">아니오</div></label>
                    </div>
                </div>
                
                <div class="formGroup">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_03.png"></div>
                    <div class="form_inner">
                        <div class="user_info name">
                            <span class="legend">이름</span>
                            <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                        </div>
                        <div class="user_info age">
                            <span class="legend">나이</span>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="user_info phone">
                            <span class="legend">연락처</span>
                            <input type="tel"  name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                        </div>
                    </div>
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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

                    <div class="submit">
                        <input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_04.png">
                    </div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_06.png"></div>
                    <div class="description bottom">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260806_CNON_(hr)_05.png"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>   
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
    });

    $(document).on("change", "input[name^='tadd']", function() {
        const $form = $(this).closest("form");
        const name = $(this).attr("name");

        // 같은 form + 같은 name 그룹에서 active 제거
        $form.find("input[name='" + name + "']").each(function() {
            $(this).closest("label").find(".sel-item").removeClass("active");
        });

        // 현재 선택된 항목만 active 추가
        $(this).closest("label").find(".sel-item").addClass("active");
    });

    $(document).on("focus", ".formGroup .inp", function () {
        $(this).closest(".user_info").addClass("active");
    });
    $(document).on("blur", ".formGroup .inp", function () {
        $(this).closest(".user_info").removeClass("active");
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