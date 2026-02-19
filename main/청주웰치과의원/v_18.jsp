<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
html, body {font-size: 10px;}
#wrap {max-width: 600px; font-family: 'Pretendard'; height: 99.99dvh; background: url("//static.resta.co.kr/event_wynd/v_${eventSeq}/bg_01.jpg") no-repeat center top;
background-size: 100% 100%;}
.form {background: transparent; height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { height: 100%; flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 공통 */
.form .name-result {display: block; letter-spacing: -2.48px; text-align: center; color: #fffe3d; font-size: 4.5rem; margin-bottom: 2rem; font-weight: 800;}

/* 개별 */
#page-2 {padding: 4rem; padding-bottom: 0;}
#page-1 .page_inner .img-area:not(.next) {width: 100%; margin: 0 auto;}
#page-3 {display: flex; flex-direction: column; height: 99.9%;}
#page-3 .page_inner {flex-grow: 1;}


/* 첫번째 페이지 */
#page-1 .page_inner {background: #8ee6ff; border-radius: 3.5rem 3.5rem 0 0; padding: 2.8rem 4.5rem 4.2rem; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); width: 100%; box-sizing: border-box;}
.page_inner .bar {width: 12rem; height: 0.7rem ; border-radius: 5rem; background: #19c6f7; display: block; margin: 0 auto 3rem;}
.page_inner .question {line-height: 1.29; letter-spacing: -0.98px; text-align: center; color: #363942; font-size: 2.4rem; font-weight: 800; margin-bottom: 1rem;}
.page_inner input[name="name"] {background: #fff;  border: solid 2px #36c5ed; border-radius: 1.5rem; font-size: 3rem;  line-height: 1.29; letter-spacing: -1.4px; padding: 1.4rem 0; width: 100%; text-align: center; margin-bottom: 2rem;}

/* 설문영역 */
.q_select {display: flex; flex-flow: row wrap; gap: 1.5rem; margin-top: 4rem;}
.q_select label {width: calc(100% / 2 - 1rem);}
.q_select label img {width: 100%;}

/* 마지막 페이지 */
#page-3 {display: none;}
#page-3 .page_inner {padding: 4rem; padding-bottom: 0;}
.page input[name="phone"] {    background: #fff; text-align: center; font-size: 3rem; border-radius: 1.5rem; border: solid 2px #36c5ed; padding: 1.3rem 0; height: auto; margin-top: 4rem;}

.form {position: relative;}
.form .next {width: 100%; margin: 0 auto;}
.form .next img {width: 100%;}
.form .submit {width: 100%; margin: 1rem auto 0;}
.form .submit input[type="image"] {width: 100%;}

/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #006885; letter-spacing: -0.65px;}

.form .agBox { font-size: 1.2rem; padding: 2rem 0 0; width: 100%; margin: 0 auto;}

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
    .form .page-inner {top: 20%; width: 90%;}
    .form .db-box {width: 88%;}
}
@media screen and (max-width: 395px) {
    /* .form .db-box {top: 13%;} */
    .form .page-inner {top: 26%;}
}

@media screen and (max-width: 375px) {
    /* .form .page-inner { top: 23%; } */
    /* .form .db-box {top: 13%;} */
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
        <div class="formContents">
            <section class="page section01" id="page-1">
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_01.png"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_02.png"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/txt_01.png"></div>
                <div class="page_inner">
                    <span class="bar"></span>
                    <div class="question">▼ 혜택 받으실 분 ▼</div>
                    <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                    <div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb_01.png"></div>
                    <div class="agBox">
                        개인정보 처리방침
                        <a href="#" class="btn-agreement">[자세히 보기]</a>
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
                </div>
            </section>

            <section class="page hide section02" id="page-2">
                <span class="name-result"></span>
                <div class="question_box">
                    <div class="img-area question-img"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_03.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="1-3개"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="4-5개"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="6개 이상"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="상담 필요"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/select_off_04.png"></label>
                    </div>
                </div>
				
            </section>

            <search class="page hide section03" id="page-3">
                <div class="page_inner">
                    <span class="name-result"></span>
                    <div class="img-area question-img"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_04.png"></div>
                    <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 입력해 주세요">
                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description bottom">
                        <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 :  ${resVo.target}</span>
                    </div>
                </div>
                <div class="container-bottom">
                    <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/notice.png"></div>
                    <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/footer.jpg"></div>	
                </div>
            </search>
            
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
	})

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        if (num === 1) {
            let inputValue = $('input[name="name"]').val();
            const isChecked = inputValue.length > 1;

            if (!isChecked) {
                alert("정확한 이름을 입력해주세요.");
                return; // 선택되지 않았으면 페이지 이동 안함
            }
        }

        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);
        });
    }

    //설문 on/off
    $('input[name*="tadd"]').on('click', function(){
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
			// ,'age': '나이'
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