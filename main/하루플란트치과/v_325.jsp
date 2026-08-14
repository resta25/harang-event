<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css" type="text/css"/>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
@import url("https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/subsets/SUIT-dynamic-subset.css");

:root {--main-color:#fe782e;--sub-color:rgba(229, 245, 255, 0.9);--gap20:2rem;--gap12:1.2rem;--r20:2rem;--r24:2.4rem;}
* {box-sizing:border-box;}
html, body {font-size: clamp(6px, calc(100vw / 81.8), 10px);}
body {margin:0;background:#111;}
#wrap {margin:0 auto;background:#030608;font-family:"Pretendard",sans-serif;}
.img-area {line-height:0;}
.img-area > img {display:block;width:100%;height:auto;}

.gif-area {position: relative;}
.gif-area .img {position: absolute; top: 0; left: 0; right: 0; bottom: 0; width: 100%; height: 100%;}

/* sticky 신청폼 */
.form {position:sticky;bottom:0;z-index:3;width:100%;background:transparent;}
.form.two {height:100svh;background:rgba(0,0,0,.6);}
body.form-db-open {overflow:hidden;}
.form .form_inner {display:flex;flex-direction:column;align-items:center;gap:1.2rem;width:100%;padding:1.2rem;}
.form.two .form_inner {justify-content:flex-end;min-height:100dvh;}
.form .form_db {display:flex;flex-direction:column;gap:1.2rem;width:auto;}
.form.two .form_db {width:100%; padding: 4rem 2.7rem 2.7rem; border-radius: 2.4rem; border: solid 5px #fe782e; background-color: #05070a;}
.form.two .form_db .txt {font-family: 'Paperlogy'; font-size: 5.55rem; font-weight: 300; text-align: center; color: #fff; line-height: 1.18;}
.form.two .form_db .txt em {font-style: normal; font-weight: 800; color: #e56c29;}
.form.two .form_db .txt strong {font-weight: 800;}

.form.two .form_db .banner {margin-top: 1.2rem; padding: 2.2rem; border-radius: 2.4rem; background-color: #202020; font-family: 'SUIT'; font-size: 3.8rem; font-weight: 300; line-height: 1.21; letter-spacing: -0.76px; text-align: center; color: #fff;}
.form.two .form_db .banner strong {font-weight: 800;}

/* 이름, 연락처 입력칸 */
.formGroup .user_info {width: 100%; display: flex; align-items: center; padding: 2.6rem 4.1rem; background-color: #fff; border-radius: 1.2rem; box-sizing: border-box; border: 1px solid #c6c6c6;}
.formGroup .user_info + .user_info {margin-top: 1rem;}
.formGroup .user_info.active {border-color: #ff3710;}
.formGroup .legend {flex-shrink: 0; line-height: 1; width: 11.5rem; border-right: 1px solid #c7c7c7; font-family: 'SUIT';   font-family: SUIT; font-size: 3rem; font-weight: 700; letter-spacing: -0.6px; text-align: left; color: #0d0d0d;}
.formGroup .user_info.active .legend {color: #ff3710;}
.formGroup .inp {line-height: 1; padding-left: 3.8rem; font-family: 'SUIT'; font-size: 3rem; font-weight: 600; letter-spacing: -0.62px; text-align: left; color: #0d0d0d;}
.formGroup .inp::placeholder {color: #c7c7c7;}
.formGroup .user_info.user-agree {padding: 1.4rem 4.1rem;}
.formGroup .user_info.user-agree .legend {width: 28.7rem;}
.formGroup .user_info.user-agree .legend span {font-family: 'SUIT'; font-size: 3rem; font-weight: 700; line-height: 1.07; letter-spacing: -0.6px; text-align: center; color: #0d0d0d;}
.formGroup .user_info.user-agree .legend a {display: block; padding-left: 5rem; font-size: 2rem; letter-spacing: -0.4px;}
.formGroup .user_info.user-agree .ag_btn {display: flex; align-items: center; column-gap: 1.1rem; padding-left: 3.8rem;}
.formGroup .user-agree .ag_btn .agree-label, .formGroup .user-agree .ag_btn a {display: block; width: 12.9rem; padding: 1.2rem 0; text-align: center; font-family: 'SUIT'; font-size: 3rem; font-weight: 700; letter-spacing: -0.6px; color: #969696;   border: solid 2px #dadada; background-color: #fff; line-height: 1; border-radius: 999px; transition: 0s;}
.formGroup .user-agree .ag_btn .agree-label.active, .formGroup .user-agree .ag_btn a.active {color: #ff3710; border-color: #ff3710;}


.form_db > .box {padding:2.6rem 1.9rem 2.1rem;border:solid .5rem #fe782e;border-radius:var(--r24);background:rgba(5,7,10,.9);transition:all .25s cubic-bezier(0,.78,.26,1.11);}
.form.two .form_db > .box {width:100%; padding: 0;border:0;border-radius:0;}
.form.two .step1 {display:none;}

#typing-text {margin:0;font-family:"SUIT",sans-serif;font-size:3rem;font-weight:500;letter-spacing:-.12rem;text-align:center;color:#fff;}

.form_db > .box > .form_box {display:none;flex-direction:column;gap:var(--gap20);opacity:0;}
.form.two .form_db > .box > .form_box {display:flex;opacity:1;}

.input_box {display:flex;flex-direction:column;gap:1.2rem;}
.form_row {display:flex;align-items:center;gap:1.2rem;}
.form_row label {display:flex;align-items:center;justify-content:center;flex-shrink:0;width:9rem;height:6rem;padding:var(--gap12);border-radius:var(--r20);background:rgba(255,255,255,.6);color:#000;font-size:1.6rem;}
.form_row input {width:100%;height:6rem;padding:0 var(--gap20);border:solid 1px #fff;border-radius:var(--r20);background:transparent;color:#fff;font-family:inherit;font-size:1.8rem;}
.form_row input::placeholder {color:#fff;}

.form .description p,
.form .description .ad_txt,
.form .description span  {  font-family: SUIT;
  font-size: 1.4rem;
  letter-spacing: -0.56px;
  text-align: center;
  color: #fff;}

/* btn submit_btn static */
.btn.submit_btn.static,.form_db .submit_btn {min-width: 58.3rem; display:flex;align-items:center;justify-content:center;gap:1.7rem;width:100%;margin:0;padding:2.7rem;border:0;border-radius:var(--r24);background:var(--main-color);color:#fff;font-family:inherit;font-size:4.45rem;font-weight:800;line-height:1;cursor:pointer;animation:submit_btn .5s ease-in-out infinite alternate;}
.submit_btn > div {position:relative;width:2.8rem;height:.4rem;flex-shrink:0;border-radius:.2rem;background:#fff;animation:arrow .5s ease-in-out infinite alternate;}
.submit_btn > div::before,.submit_btn > div::after {content:"";position:absolute;right:0;width:1.8rem;height:.4rem;border-radius:inherit;background:inherit;transform-origin:right center;}
.submit_btn > div::before {top:calc(50% + .1rem);transform:translateY(-50%) rotate(45deg);}
.submit_btn > div::after {top:calc(50% - .1rem);transform:translateY(-50%) rotate(-45deg);}

@keyframes arrow {from {transform:translateX(-.2rem);background:#fff;} to {transform:translateX(.4rem);background:#ff3710;}}
@keyframes submit_btn {from {background:var(--main-color);color:#fff;} to {background:var(--sub-color);color:#ff3710;}}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 85%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 480px){
    .formGroup .legend {width: 9.5rem; font-size: 2.6rem;}
    .formGroup .inp {padding-left: 3.2rem; font-size: 2.6rem;}
    .formGroup .user_info {padding: 2.6rem 3.1rem;}
    .formGroup .user_info.user-agree {padding: 1.4rem 3.1rem;}
    .formGroup .user_info.user-agree .legend {width: 24.7rem;}
    .formGroup .user_info.user-agree .ag_btn {padding-left: 3.2rem;}
    .formGroup .user_info.user-agree .legend span {font-size: 2.6rem;}
    .formGroup .user-agree .ag_btn .agree-label, .formGroup .user-agree .ag_btn a {width: 9.9rem; font-size: 2.6rem;}
}
@media screen and (max-width: 415px){
    .btn.submit_btn.static, .form_db .submit_btn {min-width: max-content;}
    .form.two .form_db .txt {font-size: 4.8rem;}
    .form.two .form_db .banner {font-size: 3.3rem;}
    .formGroup .legend {font-size: 2.4rem;}
    .formGroup .inp {padding-left: 3rem; font-size: 2.4rem;}
    .formGroup .user_info {padding: 2.6rem 2.8rem;}
    .formGroup .user_info.user-agree {padding: 1.4rem 2.8rem;}
    .formGroup .user_info.user-agree .legend {width: 21.7rem;}
    .formGroup .user_info.user-agree .ag_btn {padding-left: 2.8rem;}
    .formGroup .user_info.user-agree .legend span {font-size: 2.4rem;}
    .formGroup .user-agree .ag_btn .agree-label, .formGroup .user-agree .ag_btn a {width: 9.9rem; font-size: 2.4rem;}
}
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
    <form id="form-1" method="POST" accept-charset="utf-8">
        <div class="container">
            <div class="img-area gif-area">
                <img class="gif" src="//static.harang-event.com/event/v_${eventSeq}/260812_HRPT_(hr)_01.gif" alt="">
                <img class="img" src="//static.harang-event.com/event/v_${eventSeq}/260812_HRPT_(hr)_02.png" alt="">
            </div>
            <div class="img-area">
                <img src="//static.harang-event.com/event/v_${eventSeq}/260812_HRPT_(hr)_03.jpg" alt="">
            </div>
        </div>

        <div class="container">
            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260812_HRPT_(hr)_05.jpg" alt=""></div>
            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260812_HRPT_(hr)_06.jpg" alt=""></div>
        </div>

        <div class="form one">
            <div class="form_inner">
                <div class="form_db">
                    
                    <div class="box">
                        <div class="step1">
                            <p id="typing-text"></p>

                            <button type="button" class="btn submit_btn static" onclick="openDB()">
                                <div aria-hidden="true"></div>
                                임플란트 혜택신청
                            </button>
                        </div>

                        <div class="form_box" id="form_check">
                            <div class="topB">
                                <div class="txt"><em>강남</em>에 위치한 <strong>치과에서</strong><br /><strong>진행하는 이벤트</strong></div>
                                <div class="banner"><strong>모든 상담은 무료입니다.</strong><br />편하게 무료 상담 받아보세요!</div>
                            </div>

                           <div class="description">
                                <p id="event-period"></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                <span>대상 : ${resVo.target} </span>
                            </div>

                            <div class="formGroup">
                                <div class="user_info name">
                                    <span class="legend">이름</span>
                                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                                </div>
                                <div class="user_info phone">
                                    <span class="legend">연락처</span>
                                    <input type="tel"  name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                                </div>
                                <div class="user_info user-agree">
                                    <div class="legend">
                                        <span>개인정보 수집 · 이용</span>
                                        <a href="#" class="btn-agreement">
                                            [자세히 보기]
                                        </a>
                                    </div>
                                    <div class="q_select ag_btn">
                                        <label class="agree-label">
                                            <input id="agBox" name="agBox" type="checkbox">동의
                                        </label>
                                        <a href="javascript:void(0);" class="disagree">미동의</a>
                                    </div>
                                </div>
                            </div>

                            <button type="button" class="btn submit_btn static" onclick="fnForm('form-1')">
                                <div aria-hidden="true"></div>
                                임플란트 혜택신청
                            </button>
                        </div>
                    </div>
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

<script src="/js/form-event.js"></script>

<script>
$(document).ready(function () {
    initDate();
    blockSourceView();
});

    // 동의/미동의 토글
    const $agreeLabel = $('.ag_btn .agree-label');
    const $agreeCheckbox = $('#agBox');
    const $disagreeBtn = $('.ag_btn .disagree');
    // 동의 클릭(라벨 또는 체크박스 변경)
        $agreeLabel.on('click', function () {
        $agreeCheckbox.prop('checked', true);
        $agreeLabel.addClass('active');
        $disagreeBtn.removeClass('active');
    });
    $agreeCheckbox.on('change', function () {
        if ($(this).is(':checked')) {
            $agreeLabel.addClass('active');
            $disagreeBtn.removeClass('active');
        } else {
            $agreeLabel.removeClass('active');
        }
    });
    // 미동의 클릭
    $disagreeBtn.on('click', function (e) {
        e.preventDefault();
        alert('개인정보처리방침에 동의해주세요');
        $agreeCheckbox.prop('checked', false); // 동의 체크 해제
        $agreeLabel.removeClass('active');
        $disagreeBtn.addClass('active');
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

        $(document).on("focus", ".formGroup .inp", function () {
            $(this).closest(".user_info").addClass("active");
        });
        $(document).on("blur", ".formGroup .inp", function () {
            $(this).closest(".user_info").removeClass("active");
        });

function openDB() {
    var form = document.querySelector(".form");

    form.classList.remove("one");
    form.classList.add("two");
    document.body.classList.add("form-db-open");
}

function closeDB() {
    var form = document.querySelector(".form");

    form.classList.remove("two");
    form.classList.add("one");
    document.body.classList.remove("form-db-open");
}

document.addEventListener("DOMContentLoaded", function () {
    var form = document.querySelector(".form");
    var formInner = form.querySelector(".form_inner");
    var formDb = form.querySelector(".form_db");
    var formBox = form.querySelector(".form_db > .box");
    var target = document.getElementById("typing-text");

    form.addEventListener("click", function (e) {
        if (!form.classList.contains("two")) return;
        if (formBox.contains(e.target)) return;

        if (
            e.target === form ||
            e.target === formInner ||
            e.target === formDb
        ) {
            closeDB();
        }
    });

    var message = "지금 신청하고 무료상담 받으세요!";
    var index = 0;
    var deleting = false;

    function typeEffect() {
        /* 입력이 재시작되기 전 여백 복구 */
        if (!deleting && index === 0) {
            target.style.marginBottom = "2.6rem";
        }

        target.textContent = deleting
            ? message.substring(0, index--)
            : message.substring(0, index++);

        var speed = 50;

        if (!deleting && index > message.length) {
            deleting = true;
            speed = 1000;
        } else if (deleting && index < 0) {
            /* 빈 문자열이 된 직후 여백 제거 */
            deleting = false;
            index = 0;
            target.style.marginBottom = "0";
            speed = 2000;
        }

        setTimeout(typeEffect, speed);
    }

    typeEffect();
});

/* 기존 fnForm 유지 */
function fnForm(formId){
    /* form 자동 처리 방지 */
    event.preventDefault();

    /* form id로 proc */
    let procForm = document.getElementById(formId);

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