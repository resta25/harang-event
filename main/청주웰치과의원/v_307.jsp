<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css"
  type="text/css"
/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css');
    html, body {font-size: clamp(6px, calc(100vw / 60), 10px);}
    #wrap {max-width: 600px; display: flex; flex-direction: column; font-family: 'Pretendard'; overflow: hidden; height: 100vh; height: 100dvh;
    padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); background: #fff;}
    #form-1, .formContents {height: 100%; background-color: #15255c;}
    .form {flex-grow: 1; background: transparent;}
    .page {height: 100%; position: relative; box-sizing: border-box; background-color: #15255c;}
    .hide {display: none;}

    /* 상단 타이머 */
    #form-1 {position: relative;}
    .timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; width: 100%; box-sizing: border-box; padding: 1.3rem 4.2rem; margin: 0 auto; letter-spacing: -0.6px; background-color: #001031; font-family: 'Paperlogy'; font-size: 2.4rem; font-weight: 500;}
    .timer-box > * {font-family: inherit;}
    .timer-box .text-box {display: flex; align-items: center; column-gap: 1rem; width: 18rem; font-family: 'Paperlogy';}
    .timer-box .text-box .text {font-family: 'Pretendard'; font-weight: 800; letter-spacing: -0.6px; color: #fff; }
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
    .page:not(#page-1) {flex-direction: column;}

    .video-area {width: 100%; margin:  0rem auto; overflow: hidden;}
    .video-area video {display: block; width: 100%; margin: 0 auto;}

    .page-box {text-align: center; margin-bottom: 4.8%;}
    .page-box .page-num {font-family: 'Pretendard'; font-size: 188%; font-weight: 500; letter-spacing: -0.6px; color: #676767;}
    .page-box .page-num .current {color: #013797;}

    /* 게이지 */
    .progress {
    padding: 0 3.6rem;
    margin-bottom: 0;
    background-color: #15255c; /* 게이지 배경 */
    }
    .progress-track {
    width: 100%;
    height: 1.6rem;
    border-radius: 8px;
    background-color: #3158a8; /* 요청값 */
    overflow: hidden;
    }
    .progress-bar {
        width: 0%;
        height: 1.6rem;
        border-radius: 8px;
        background-color: #d3f54b; /* 요청값 */
    }
    @keyframes page-2 {
        0% {width: 0%;}
        100% {width: 50%;}
    }
    @keyframes page-3 {
        0% {width: 50%;}
        100% {width: 100%;}
    }
    #page-2 .progress-bar {
        animation: page-2 0.6s ease forwards;
    }
    #page-3 .progress-bar {
        animation: page-3 0.6s ease forwards;
    }

    /* 이전,다음 버튼 */
    .paging {margin-top: 5.6%; display: flex; align-items: center; justify-content: center; column-gap: 7px;}
    .paging button {background-color: transparent;}
    .paging .prev {flex-shrink: 0; width: 32.6%; padding: 3.2% 0; background-color: #dedede; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #222;}
    .paging .next {flex-shrink: 0; width: 65.93%; padding: 0; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #fff;}
    .paging img{ width: 100%;}

    /* 첫번째 페이지 */
    #page-1 {height: 100%; box-sizing: border-box;}
    #page-1 .img-area {width: 100%; margin: 0 auto;}
    /* #page-1 .video-area + .img-area {padding: 2.7rem 3rem; border-radius: 1.6rem; background-color: rgba(255, 255, 255, 0.12);} */
    #page-1 .detail-group {width: 83.3333%; margin: 6.835% auto 0; padding: 2.1rem; border: 2px solid rgb(203, 155, 88); border-radius: 2.6rem; background-color: rgba(89, 59, 16, 0.459); box-sizing: border-box;}
    #page-1 .detail-group > .img-area:not(.btn-detail) {width: 73.205%; margin: 0 auto; padding-bottom: 2.401%;}
    #page-1 .detail-group > .btn-detail {background-color: transparent; padding: 0; margin: 0 auto;}
    #page-1 .detail-group .detail-box {margin-top: 2.401%;}
    #page-1 .detail-group .detail-box .img-area + .img-area {margin-top: 4.301%;}
    #page-1 .page_inner {margin-top: 1.3rem;}
    #page-1 .next {width: 77.666667%; margin: 0 auto;}

    .page:not(#page-1) {padding-top: 3.2rem;}
    #page-2 .question .img-area {width: 51.166667%; margin: 5.4rem auto 11.5rem;}

    #page-3 {padding-top: 2.7rem;}
    #page-3 .question .img-area {width: 87.833333%; margin: 2.5rem auto 4.4rem;}
    /* #page-3 .question .img-area {width: 78.263158%; margin: 0 auto;}
    #page-3 .question_box .question {margin-bottom: 2.4rem;} */
    #page-3 .paging {margin-top: 1.9rem;}
    #page-3 .result-area {width: calc(100% + 3.6rem); left: 50%; transform: translateX(-50%); bottom: -6%;} 

    /* 설문영역 */
    .q_select {display: flex; flex-direction: column; align-items: center; justify-content: center; row-gap: 1.3rem; margin-top: 4.7rem;}
    .question_box .q_select label img {width: 100%;}

    /* 설문 영역 */
    .question_box {position: relative;}
    .question_box .question {}
    .question_box .question strong {color: #ff4355; font-weight: 700;}
    .question_box .q_select label {width: 72.333333%;}
    /* .question_box .q_select label:last-child {width: 100%;} */
    .question_box .q_select label .sel-item {padding: 1.1rem 0; font-family: 'Pretendard'; font-size: 5.2rem; font-weight: 800; line-height: 1.46; letter-spacing: -1.04px; text-align: center; color: #fff;   border-radius: 999px; background-color: #3158a8;}
    .question_box .q_select label.active .sel-item {background-color: #d3f54b; font-weight: 800; color: #001031;}
    .result-area {position: absolute; bottom: 0;}

    /* 이름, 연락처 입력칸 */
    .formGroup .user_info {display: flex; align-items: center;}
    .formGroup .user_info + .user_info {margin-top: 1rem;}
    .legend {flex-shrink: 0; display: block; width: 9rem; height: 2.6rem; line-height: 2.6rem; margin-right: 2.5rem; font-family: 'Pretendard'; font-size: 2.6rem; font-weight: 700; letter-spacing: -0.52px; line-height: 1; text-align: justify; color: #3f3f3f;}
    .legend::after {content: ""; display: inline-block; width: 100%;}
    .form .inp {width: 76.833333%; margin: 0 auto; padding: 0.5rem 0; font-family: 'Pretendard'; font-size: 4.3rem; font-weight: 800; line-height: 1.52; letter-spacing: -0.86px; text-align: center; border-radius: 999px; color: #fff; background-color: #3158a8;}
    .form .inp::placeholder {color: rgba(233, 231, 231, 0.5);}

    .form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}

    .q_select .inp {background-color: #fff; padding: 2.99%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; text-align: center;}
    .q_select .inp::placeholder {color: #dedede;}
    .q_select textarea {width: 100%; padding: 8.96%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; resize: none; height: 25vh;}
    .q_select textarea::placeholder {color: #dedede;}
    .form .submit {flex-shrink: 0; width: 80.333333%; margin: 0 auto; padding: 0;}
    .form .submit img {width: 100%;}
    
    .form .agBox {margin: 3.7rem auto 2.7rem; font-family: 'SUIT'; font-size: 1.6rem; letter-spacing: -0.64px; text-align: center; color: rgba(255, 255, 255, 0.5);}

    /* 안심문구, 대상, 이벤트기간 */
    .form .description .ad_txt,
    .form .description p,
    .form .description span {  font-family: 'SUIT'; font-size: 1.2rem; letter-spacing: -0.64px; text-align: center; color: rgba(255, 255, 255, 0.5);}

    .form .description {width: 100%; text-align: center; margin: 1.4rem auto 0; padding: 0;}

    .footer-area.active {animation: footerAni 0.4s ease-in-out;}

    @keyframes footerAni {
        0% {transform: translateX(100%);}
        100% {transform: translateX(0);}
    }

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
        /* html, body {font-size: 1.7vw !important;}

        #page-1 .agBox {font-size: 1.5rem;}
        .form .description .ad_txt, .form .description p, .form .description span {font-size: 1.5rem; line-height: 1.27;}
        .sg-privacy-notice {font-size: 1.4rem;}

        .form .inp {padding-bottom: 0.8rem;} */
    }
    @media screen and (max-width: 395px) {
    }

    @media screen and (max-width: 375px) {
    }

    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>

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
         <div class="time-content">
             <div class="timer-box">
                 <div class="date">
                     <span id="year" class="year"></span>
                     <span id="month" class="month"></span>
                     <span id="day" class="day"></span>
                     <span id="week-day" class="week-day"></span>
                 </div>
                 <div class="time">
                     <span id="hour" class="hour"></span>
                     <span id="minute" class="minute"></span>
                 </div>
                 <div class="text-box">
                     <img src="//static.harang-event.com/event/v_${eventSeq}/loading.png">
                    <span class="text">현재 접수 가능</span>
                 </div>
             </div>
         </div>
        <div class="formContents">
            <section class="page section01" id="page-1">
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_01.jpg" alt="" /></div>
                <div class="video-area">
                    <video src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_02.mp4" playsinline loop autoplay muted></video>
                </div>
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_03.gif" alt="" /></div>
                <div class="page_inner">
                    <div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_04.png" alt="" /></div>
                </div>
            </section>
            
            <section class="page hide section02" id="page-2">
                <div class="progress">
                    <div class="progress-track">
                        <div class="progress-bar"></div>
                    </div>
                </div>
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <!-- <div class="page-box">
                                <span class="page-num"><span class="current">1</span>/6</span>
                            </div> -->
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_05.png" alt="" /></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" onclick="pageFuc(2,$(this))" name="tadd1" value="예"><div class="sel-item">예</div></label>
                            <label><input type="radio" onclick="pageFuc(2,$(this))" name="tadd1" value="아니오"><div class="sel-item">아니오</div></label>
                        </div>
                    </div>
                </div>
                <!-- <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next">다음</button>
                </div> -->
            </section>

            <section class="page hide section03" id="page-3">
                <div class="progress">
                    <div class="progress-track">
                        <div class="progress-bar"></div>
                    </div>
                </div>
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <!-- <div class="page-box">
                                <span class="page-num"><span class="current">6</span>/6</span>
                            </div> -->
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_06.png" alt="" /></div>
                        </div>
                        <div class="formGroup">
                            <div class="user_info user_name">
                                <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                            </div>
                            <!-- <div class="user_info user_name">
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            </div> -->
                            <div class="user_info user_phone">
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                            </div>
                        </div>
                        <div class="agBox">
                            <label><input type="checkbox" name="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span><a href="#" class="btn-agreement">[자세히 보기]</a></label>
                        </div>
        
                        <div class="paging">
                            <!-- <button type="button" class="prev">이전</button>	 -->
                            <div class="submit">
                                <input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_07.png">
                            </div>
                        </div>
                    </div>
                    <div class="description bottom">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
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
		<div class="img-area notice-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_08.jpg" alt="" /></div>
		<div class="img-area footer-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260804_CJWL_(hr)_09.jpg" alt="" /></div>
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
        $('.section0' + num).fadeOut(function () {
            $('.section0' + (num + 1)).css('display', 'flex');
            $(document).scrollTop(0);
        });
    }

    $(document).on("change", "input[name^='tadd']", function() {
        const name = $(this).attr("name");

        // 같은 그룹의 모든 sel-item에서 active 제거
        $("input[name='" + name + "']").each(function() {
            $(this).closest("label").removeClass("active");
        });

        // 현재 선택된 라벨의 sel-item에 active 추가
        $(this).closest("label").addClass("active");
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
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>