<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<style>
html, body {font-size: clamp(6px, calc(100vw / 81.8), 10px);}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;} 

.video-box {width: 100%; height: 100%;}
.video-box video {display: block; width: 100%; height: 100%;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {background-color: #fff; color: #1d1d1d; padding: 4.6rem 4rem;}
.formGroup .db-top {display: flex; column-gap: 2.4rem; width: 100%; margin-bottom: 1.6rem;}
.formGroup .db-top .user_info {column-gap: 1.9rem;}
.formGroup .db-top .user_info.name {width: calc(50% + 1.8rem); column-gap: 3.7rem;}
.formGroup .db-top .user_info.age {width: 50%;}
.formGroup .db-top .user_info .legend {width: 5rem;}
.formGroup .user_info {display: flex; align-items: center; column-gap: 1.5rem;}
.legend {flex-shrink: 0; width: 7.4rem; font-size: 3rem; font-weight: 700; line-height: 1.03; letter-spacing: -1.5px; text-align: left; color: #1d1d1d;}
.formGroup .user_info input {flex-grow: 1; padding: 1.325rem 0 1.325rem 1rem; border-radius: 0.8rem; border: solid 2px #a9a9a9; background-color: #f7f7f7; font-size: 2rem; width: 100%;}
.formGroup .db-top .user_info.name input {width: calc(100% - 5rem - 3.7rem);}
.formGroup .user_info input::placeholder{color: #a5a5a5;}

/* 개인정보처리방침 영역 */
.form .db-agBox {display: flex; align-items: center; margin-top: 1.7rem; column-gap: 1.2rem; font-family: 'Pretendard'; font-size: 3rem; font-weight: 700; line-height: 1.03; letter-spacing: -1.5px; text-align: left; color: #1d1d1d;}
.form .db-agBox span {flex-shrink: 0;}
.form .db-agBox .ag_btn {display: flex; align-items: center; justify-content: center; column-gap: 1.2rem; width: 44.175%;}
.form .db-agBox .ag_btn label, .ag_btn a {width: calc((100% - 1.2rem) / 2); padding: 1.7rem; border-radius: 0.8rem; border: solid 1px #e1e1e1; background-color: #e1e1e1; box-sizing: border-box; text-align: center; transition: 0s; cursor: pointer;}
.form .db-agBox .ag_btn label.active, .ag_btn a.active {background-color: #5d75ff; color: #fff;}
.btn-agreement {display: block; font-size: 2rem;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {width: 100%;}
.form .description p {font-family: 'Pretendard'; font-size: 2rem; line-height: 1.25; letter-spacing: -1px; text-align: center; color: #000; font-weight: 400;}
.form .description span {font-size: 1.5rem; line-height: 1.33; letter-spacing: -0.75px; padding: 0;}
.form .description .ad_txt {font-size: 1.5rem; line-height: 1.47; letter-spacing: -0.75px; padding: 0;}

/* submit */
.form .submit {width: 65.647922%; margin: 3.1rem auto 3.5rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

#form-2 {margin-top: 1.8rem;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 500px){

}

@media screen and (max-width: 395px){
}

@media screen and (max-width: 375px){
    .form .db-agBox .ag_btn {width: 55%;}
}
</style>
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
    <div class="container">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_01.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_02.gif"></div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
        <div class="form_inner">
            <!-- <div class="question_box">
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
            </div> -->

			<div class="formGroup">
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
                <div class="db-agBox">
                    <span>
                        개인정보처리방침
                        <a href="#" class="btn-agreement">
                            [자세히 보기]
                        </a>
                    </span>
                    <div class="q_select ag_btn">
                        <label class="agree-label">
                            <input name="agBox" type="checkbox">동의
                        </label>
                        <a href="javascript:void(0);" class="disagree">미동의</a>
                    </div>
                </div>
                <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_03.png"></div>
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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

    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_04.jpg"></div>
    <div class="video-box">
        <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_05.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
    </div>

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 
        <div class="form_inner">
            <!-- <div class="question_box">
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
            </div> -->

			<div class="formGroup">
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
                <div class="db-agBox">
                    <span>
                        개인정보처리방침
                        <a href="#" class="btn-agreement">
                            [자세히 보기]
                        </a>
                    </span>
                    <div class="q_select ag_btn">
                        <label class="agree-label">
                            <input name="agBox" type="checkbox">동의
                        </label>
                        <a href="javascript:void(0);" class="disagree">미동의</a>
                    </div>
                </div>
                <div class="submit"><input type="image" onclick="fnForm('form-2');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_03.png"></div>
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260803_DRFT_(hr)_06.jpg"></div>
    </div>
    <!-- <div class="img-area fixed db_btn"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.gif"></div> -->
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
    });

    $('.ag_btn .agree-label').on('click', function (e) {
        e.preventDefault(); // 라벨 기본 동작(체크박스 자동 토글)과의 충돌 방지
        var $agBtn = $(this).closest('.ag_btn');
        var $checkbox = $agBtn.find('input[name="agBox"]');
        var $disagreeBtn = $agBtn.find('.disagree');
        $checkbox.prop('checked', true);
        $(this).addClass('active');
        $disagreeBtn.removeClass('active');
    });
    $('.ag_btn input[name="agBox"]').on('click', function () {
        var $agBtn = $(this).closest('.ag_btn');
        var $agreeLabel = $agBtn.find('.agree-label');
        var $disagreeBtn = $agBtn.find('.disagree');
        if ($(this).is(':checked')) {
            $agreeLabel.addClass('active');
            $disagreeBtn.removeClass('active');
        } else {
            $agreeLabel.removeClass('active');
        }
    });
    $('.ag_btn .disagree').on('click', function (e) {
        e.preventDefault();
        alert('개인정보처리방침에 동의해주세요');
        var $agBtn = $(this).closest('.ag_btn');
        var $checkbox = $agBtn.find('input[name="agBox"]');
        var $agreeLabel = $agBtn.find('.agree-label');
        $checkbox.prop('checked', false);
        $agreeLabel.removeClass('active');
        $(this).addClass('active');
    });

    // 개인정보 처리방침 모달창
    $('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });


    //설문 클릭시 이미지 on/off
    // $('input[name="tadd1"]').on('click', function(){
    //     const $labels = $('input[name="tadd1"]').parent('label');

    //     $labels.removeClass('active'); // 전체 제거
    //     $(this).parent('label').addClass('active'); // 현재만 추가
    // });

    // db-btn 클릭시 db단 이동
    // $('.db_btn').on('click',function(){
    //     const formOffset = $('.form_inner').offset().top;

    //     $('html, body').animate({
    //         scrollTop: formOffset
    //     }, 500); // 500ms 동안 스크롤 이동
    // });

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