<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
html, body {font-size: 10px;}
#wrap {display: flex; flex-direction: column; font-family: 'Pretendard'; max-width: 600px; background: url("//static.harang-event.com/event/v_${eventSeq}/bg_01.jpg") no-repeat center top; background-size: 100% 100%; height: 100dvh; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left);}
.form {flex-grow: 1; background: transparent;}
#wrap .formContents {height: 100%;}
.page {position: relative; box-sizing: border-box;}
.hide {display: none;}

/* .page_inner {padding: 11rem 6rem 0; padding-bottom: 0;} */

/* 첫번째 페이지 */
.page .top-img {position: relative; z-index: 0;}
.section01 {text-align: center;}
.page .sub-img {margin: 0 auto 3rem; width: 80%;}
.page #location {width: 86.666667%; margin: 1.8rem auto 0; border-radius: 1.6rem; border: solid 3px #f7f7f7; background-image: linear-gradient(to top, #e7b94a, #fdf3b7, #e6bb52);}
.page .touch-img {width: 70%; margin: 0 auto 3rem;}
.page .text-img {width: 75.5%; margin: 2.4rem auto 2.1rem;}
.page .text-img + .text-img {width: 90.666667%;}
.page .next {width: 66.167%; margin: 2.1% auto 0;}

.timer-box {border-radius: 10px; border: solid 2px #9ac7ff; background-color: #02050a; font-family: 'Pretendard'; font-size: 280%; font-weight: 500; letter-spacing: -1.4px; text-align: center; color: #fff; width: 85.5%; margin: 2% auto;}
.timer-box .font-yellow {color: #f6ff64; font-weight: 800;}

/* 두번째 페이지 */
.page .bottom-img {padding-bottom: 5rem; width: 80%; margin: 0 auto;}

/* 설문영역 */
.question_box {}
.question {width: 70%; margin: 0 auto 4rem; }
.question_box .q_select {padding: 0 14.085%;}
.question_box .q_select label {width: 100%;}
.question_box .q_select label:not(:last-child) {margin-bottom: 2rem;}
.question_box .q_select label img {width: 100%;}

/* db 영역 */
.form .db-box {padding: 7.167% 8.917% 0;}
.form .db-box .legend {display: block; font-family: 'Pretendard'; font-size: 265%; font-weight: 700; line-height: 1; letter-spacing: -1.99px; color: #fff; margin-bottom: 2%; text-align: left;}
.form .db-box .legend .required {color: #ff1442;}
.form .db-box input {padding: 2.25% 4.05%; font-family: 'Pretendard'; font-size: 265%; font-weight: 600; line-height: 1; letter-spacing: -1.99px; color: #171717; border-radius: 14px; border: solid 2px #adadad; background-color: #fff;}
/* .form .db-box input:nth-of-type(1) {margin-top: 3rem;} */
.form .db-box input::placeholder {color: rgba(47, 47, 47, 0.2);}
.form .db-box .legend ~ .legend {margin-top: 3%;}

.icon-area {width: 25.5%; margin: 0 auto;}

/* 개인정보 처리방침 */
.form .agBox {color: #fff; margin: 0 auto 0; font-size: 120%;}
.form .agBox span {font-weight: 700;}

/* 대상, 안심문구, 이벤트기간 */
.form .description {margin: 1.6rem auto; width: 100%;}
.form .description p,
.form .description span,
.form .description .ad_txt {color: #fff; font-size: 1.2rem; padding: 0;}

.form .description + .img-area {width: 85.5%; margin: 0 auto;}
.form .description ~ .bottom-area {width: 71%; margin: 4% auto 2%;}

.form .submit {margin: 4.1rem 0 3.8rem; padding: 0;}

.result-box {position: relative; margin: 3% 5.26% 0; padding: 0;}
#result {position: absolute; top: 50%; transform: translateY(-50%); left: 3.55%; display: flex; align-items: center; justify-content: center; overflow: hidden; width: 27%; height: 56.5%; font-size: 225%; border-radius: 6px; background-color: #fff;}


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
    .form .db-box input {font-size: 3rem;}
}
@media screen and (max-width: 395px) {
}

@media screen and (max-width: 375px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css" type="text/css"/>
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
                <div class="page_inner">
                    <div class="img-area top-img"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                    <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                    <div class="img-area text-img"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01.png"></div>
                    <div class="img-area text-img"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.gif"></div>
                    <div class="agBox">
                        * <span>혜택 제공을 위한 개인정보 수집 및 이용</span>에 동의해 주세요.
                        <a href="#" class="btn-agreement">[자세히 보기]</a>
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
                    
                    <div class="content">
                        <div class="db-box">
                            <span class="legend">이름<span class="required">*</span></span>
                            <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름 ">
                            <span class="legend">나이<span class="required">*</span></span>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            <span class="legend">연락처<span class="required">*</span></span>
                            <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                        <div class="result-box">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.png"></div>
                            <span id="result"></span>
                            <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
                        </div>
                        <div class="description bottom">
                            <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 :  ${resVo.target}</span>
                        </div>
                    </div>
                    <div class="next img-area" onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
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
            <input type="hidden" id="age" 			name="age" value=""/>
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
    <div class="container-bottom">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>	
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        $('.content').hide();
	});

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    // 비디오 소리 켜기
    // $('#wrap').on('click', function(){

    //     var video = $('#location').get(0);

    //     if(video){
    //         video.muted = false;
    //         // video.volume = 1;
    //         // video.play();
    //     }

    // });
    // 비디오 소리 멈춤
    // var video = $('#location').get(0);
    // $('.next').on('click', function(){
    //     // 🔹 1. 영상 정지 + 음소거
    //     if(video){
    //         video.pause();
    //         video.muted = true;
    //         video.currentTime = 0; // 원하면 유지
    //     }
    //     // 🔹 2. 기존 함수 실행
    //     pageFuc(1, $(this));

    // });

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        // if (num === 1) {
        //     let inputValue = $('input[name="name"]').val();
        //     const isChecked = inputValue.length > 1;

        //     if (!isChecked) {
        //         alert("정확한 이름을 입력해주세요.");
        //         return; // 선택되지 않았으면 페이지 이동 안함
        //     }
        // }

        // 페이지 이동 처리
        // $('.section0' + num).fadeOut(function() {
        //     $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
        //     $(document).scrollTop(0);
        // });

        if(num == 1){
            // $('html').css({'overflow': 'auto'});
            $('.content').show();
            $('.agBox, .next.img-area').hide()
            $('#wrap').css({'height': 'auto'});
            $('#wrap').css({'overflow': 'unset'});
        }
    }

    //설문 on/off
    $('input[name*="tadd"], input[name*="tage"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    //이름 텍스트 출력
    $('input[name="name"]').on('keyup', function(){
        var nameValue = $(this).val();
        $('.name-result').text(nameValue + '님');
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

        // let tage = procForm.querySelector('input[name="tage"]:checked');
		// if (!tage) {
		// 	alert("나이대를 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='age']").value = tage.value;
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
			,'age': '나이대'
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