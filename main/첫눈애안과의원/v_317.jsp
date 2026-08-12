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
    padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); background: url('//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_01.jpg') no-repeat center top / 100% 100%;}
    #form-1, .formContents {height: 100%; background-color: transparent;}
    .form {flex-grow: 1; background: transparent;}
    .page {height: 100%; position: relative; box-sizing: border-box; background-color: transparent;}
    .hide {display: none;}
    .page_inner {padding: 5.1rem 3.7rem 0;}

    /* 공통 */
    .container { text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
    .form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'SUIT'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
    .form strong {color: #f20000; font-weight: 800; font-family: 'SUIT';}
    .form .name-result {}
    .next {cursor: pointer; width: 79.087452%; margin: 10rem auto 0;}
    .page:not(#page-1) {flex-direction: column;}


    /* 설문 영역 */
    .question {width: 57.4144487%; margin: 7.8rem auto 0;}
    .question_box {position: relative;}
    .q_select {display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.3rem 1.6rem; margin-top: 3.6rem;}
    .q_select label .sel-item {padding: 2.2rem 1rem; font-family: 'Pretendard'; font-size: 2.9rem; font-weight: 700; letter-spacing: -0.73px; text-align: center; color: rgba(255, 255, 255, 0.3); border-radius: 1.3rem; border: solid 2px #808080; cursor: pointer;}
    .q_select label.active .sel-item {color: #70fffe; border-color: #70fffe;}

    /* 이름, 연락처 입력칸 */
    #page-2 .page_inner > .img-area {width: 76.806084%; margin: 0 auto;}
    #page-2 .page_inner .question {margin-top: 7.4rem; width: 73.764259%;}
    .form .user-box {margin-top: 3.3rem;}
    .form .user-box .user-info {display: flex; align-items: center; justify-content: center; column-gap: 2.2rem;}
    .form .user-box .user-info + .user-info {margin-top: 1.4rem;}
    .form .user-box .user-info .legend {flex-shrink: 0; width: 9.4rem; height: 3rem; line-height: 3rem; text-align: justify; text-align-last: justify; font-family: 'Pretendard'; font-size: 2.75rem; font-weight: 700; letter-spacing: -0.69px; text-align: justify; color: #cecece;}
    .form .user-box .user-info .legend img {width: 100%;}
    .form .user-box .user-info input {padding: 1.1rem 2.4rem; font-family: 'Pretendard'; font-size: 2.3rem; font-weight: 700; letter-spacing: -0.58px; color: #fff; border: solid 1px #7f7f7f;}
    .form .user-box .user-info input.focus {border-color: #4cedec; color: #4cedec;}
    .form .user-box .user-info input::placeholder {color: #c9c9c9;}

    .form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}

    .q_select .inp {background-color: #fff; padding: 2.99%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; text-align: center;}
    .q_select .inp::placeholder {color: #dedede;}
    .q_select textarea {width: 100%; padding: 8.96%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; resize: none; height: 25vh;}
    .q_select textarea::placeholder {color: #dedede;}
    .form .submit {flex-shrink: 0; width: 79.087452%; margin: 0 auto; padding: 0;}
    .form .submit img {width: 100%;}
    
    .form .agBox {margin: 1.9rem auto 1.3rem; font-family: 'Pretendard'; font-size: 1.3rem; font-weight: 300; letter-spacing: -0.65px; text-align: center; color: #fff;}

    /* 안심문구, 대상, 이벤트기간 */
    .form .description .ad_txt,
    .form .description p,
    .form .description span {font-family: 'Pretendard'; font-size: 1.3rem; font-weight: 300; letter-spacing: -0.65px; text-align: center; color: #6e6e6e;}

    .form .description {width: 100%; text-align: center; margin: 2.7rem auto 0; padding: 0;}

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
        <div class="formContents">
            <section class="page section01" id="page-1">
                <div class="page_inner">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_02.png" alt="" /></div>
                    <div class="question_box">
                        <div class="question">
                            <!-- <div class="page-box">
                                <span class="page-num"><span class="current">1</span>/6</span>
                            </div> -->
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_03.jpg" alt="" /></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="시야 흐림"><div class="sel-item">시야 흐림</div></label>
                            <label><input type="radio" name="tadd1" value="눈이 피로함"><div class="sel-item">눈이 피로함</div></label>
                            <label><input type="radio" name="tadd1" value="시력저하"><div class="sel-item">시력저하</div></label>
                            <label><input type="radio" name="tadd1" value="기타 증상"><div class="sel-item">기타 증상</div></label>
                        </div>
                    </div>
                    <div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_04.png" alt="" /></div>
                </div>
            </section>
            
            <section class="page hide section02" id="page-2">
                <div class="page_inner">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_05.png" alt="" /></div>
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_06.png" alt="" /></div>
                        </div>
                        <div class="user-box">
							<div class="user-info">
								<span class="legend">이 름</span>
								<input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
							</div>
							<div class="user-info">
								<span class="legend">나 이</span>
								<input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요">
							</div>
							<div class="user-info">
								<span class="legend">전화번호</span>
								<input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 입력해 주세요">
							</div>
						</div>
                        <div class="agBox">
                            <label><input type="checkbox" name="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span><a href="#" class="btn-agreement">[자세히 보기]</a></label>
                        </div>
                        <div class="paging">
                            <div class="submit">
                                <input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_07.png">
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
		<div class="img-area footer-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260807_CNON_(hr)_08.jpg" alt="" /></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>   
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
	});

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        if (num === 1) {
            const isChecked = $('input[name="tadd1"]:checked').length > 0;

            if (!isChecked) {
                alert("설문을 선택해주세요");
                return; // 선택되지 않았으면 페이지 이동 안함
            }
        }
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

    $(document).on("focus", "#form-1 input.inp", function () {
        $(this).addClass("focus");
    });
    $(document).on("blur", "#form-1 input.inp", function () {
        $(this).removeClass("focus");
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