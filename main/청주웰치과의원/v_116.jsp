<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@font-face {
  font-family: 'Paperlogy';
  font-weight: 100;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-1Thin.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-1Thin.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-1Thin.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-1Thin.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 400;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-4Regular.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 500;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-5Medium.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 600;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-6SemiBold.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 700;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-7Bold.ttf') format('truetype');
}
@font-face {
  font-family: 'Paperlogy';
  font-weight: 800;
  font-style: normal;
  font-display: swap;
  src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.otf') format('opentype'),
        url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy-8ExtraBold.ttf') format('truetype');
}
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
    font-weight: 700;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.otf') format('opentype');
}
html, body {font-size: 10px;}
#wrap {max-width: 600px; font-family: 'Pretendard'; height: 100dvh; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */ padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); background: #1c140d; display: flex; flex-direction: column;}
.form {background: transparent; flex-grow: 1;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { height: 100%; flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 공통 */
.form .name-result {display: block; letter-spacing: -2.48px; text-align: center; color: #fffe3d; font-size: 4.5rem; margin-bottom: 2rem; font-weight: 800;}

/* 비디오 */
.video-area video {display: block; width: 100%; height: 100%;}

/* 카운트 인원 */
.count-group {position: relative; padding: 2% 0; color: #fff; font-family: 'Paperlogy'; border-top: 1px solid #f7d9a5; border-bottom: 1px solid #f7d9a5;}
.count-group > span {display: block; font-size: 280%; column-gap: 0.4rem; text-align: center;}
.count-box {display: flex; align-items: center; justify-content: center; color: #fff; font-family: 'Paperlogy'; font-size: 280%; column-gap: 0.4rem;}
.count-box span img {display: block; width: 100%; height: 100%;}
#count {color: #fffd4b; font-size: 2.5rem; font-weight: 800; font-family: 'Paperlogy';}

/* 개별 */
#page-1 .page_inner .img-area:not(.next) {width: 72.134%; margin: 0 auto 8.608%;}
#page-2 {padding: 5.75% 9% 0; padding-bottom: 0;}
#page-3 {display: flex; flex-direction: column; height: 99.9%;}

/* 첫번째 페이지 */
#page-1 .page_inner {background: #1c140d; padding: 5.667% 9.335% 0;}
.page-inner-bg {position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); width: 100%; box-sizing: border-box;}
.page-inner-bg .top-img {margin-bottom: 2rem;}
.page_inner .bar {width: 12rem; height: 0.7rem ; border-radius: 5rem; background: #19c6f7; display: block; margin: 0 auto 3rem;}
.page_inner .question {line-height: 1.29; letter-spacing: -0.98px; text-align: center; color: #363942; font-size: 2.4rem; font-weight: 800; margin-bottom: 1rem;}
.page_inner input[name="name"] {background: #fff; border: solid 2px #f7d9a5; border-radius: 1.3rem; font-family: 'Paperlogy'; font-size: 375%; font-weight: 100; line-height: 1.4; text-align: center; color: #000; padding: 3.177% 3%;}
.page_inner input[name="name"]::placeholder {color: #929292;}

/* 설문영역 */
.q_select {display: grid; grid-template-columns: repeat(2, 1fr); column-gap: 1.7rem; row-gap: 1.37rem; padding: 0 0.6rem; margin-top: 4rem;}
.q_select label {width: 100%}
.q_select label img {width: 100%;}

/* 마지막 페이지 */
#page-3 {display: none;}
/* #page-3 .page_inner {flex-grow: 1;} */
#page-3 .page_inner {padding: 3.75% 9.4% 0; padding-bottom: 0;}
#page-3 .page_inner .img-area:not(.next) {width: 78.815%; margin: 0 auto 3%;}
.page_inner input[name="phone"] {height: inherit; background: #fff; border: solid 2px #f7d9a5; border-radius: 1.3rem; font-family: 'Paperlogy'; font-size: 375%; font-weight: 100; line-height: 1.4; text-align: center; color: #000; padding: 3.177% 3%;}
.page_inner input[name="phone"]::placeholder {color: #929292;}

.form {position: relative;}
.form .next {width: 74.591%; margin: 0 auto;}
.form .next img {width: 100%;}
.form .submit {width: 74.71%; margin: 2.134% auto 1.26%; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #8a6f58; letter-spacing: -0.65px;}

.form .agBox {font-size: 155%; padding: 5.535% 0 3.179%; width: 100%; margin: 0 auto; color: #fefefe; line-height: 1.48; font-family: 'Pretendard';}

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
        <!-- <audio id="location" playsinline="" src="//static.harang-event.com/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></audio> -->
		<form id="form-1" method="POST" accept-charset="utf-8">
        <div class="formContents">
            <div class="img-area video-area">
                <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                <div class="count-group">
                    <span>최대 할인 마지막 기회</span>
                    <div class="count-box">
                        <span class="icon-box">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png" alt="">
                        </span>
                        오늘 마감까지
                        <span id="count"></span> 남았습니다
                        <span class="icon-box">
                            <img src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png" alt="">
                        </span>
                    </div>
                </div>
            </div>
            <section class="page section01" id="page-1">
                <div class="page_inner">
                    <div class="question">
                        <div class="img-area question-img"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                    </div>
                    <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                    <div class="agBox">
                        개인정보 처리방침
                        <a href="#" class="btn-agreement">[자세히 보기]</a>
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
                    <div class="next img-area"  onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
                </div>
            </section>

            <section class="page hide section02" id="page-2">
                <!-- <span class="name-result"></span> -->
                <div class="page_inner">
                    <div class="question_box">
                        <div class="img-area question-img"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="비용"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_01.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="병원위치"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_02.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="원장님 경력"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="기타"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_04.png"></label>
                        </div>
                    </div>
                </div>
				
            </section>

            <section class="page hide section03" id="page-3">
                <div class="page_inner">
                    <!-- <span class="name-result"></span> -->
                    <div class="img-area question-img"><img src="//static.harang-event.com/event/v_${eventSeq}/q_03.png"></div>
                    <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 입력해 주세요">
                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description bottom">
                        <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 :  ${resVo.target}</span>
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
    <div class="container-bottom">
        <div class="img-area notice-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        $('.notice-area').hide();
	});

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    
    // 카운트 인원
    let people = 8;
    function updateCount() {
        $('#count').text(people + '명');

        if (people <= 4) {
            clearInterval(countInterval); // 1명까지 도달하면 멈춤
        } else {
            people--;
        }
    }
    const countInterval = setInterval(updateCount, 3000); // 3초마다 감소
    // 즉시 첫 숫자 표시
    updateCount();

    // 비디오 소리 켜기
    // $('#wrap').on('click', function(e){

    //     // ✅ .next(또는 그 자식 img 등)를 눌렀으면 wrap 로직 실행 금지
    //     if ($(e.target).closest('.next').length) return;

    //     if ($('.section01').is(':visible')) {
    //         playAudio(1);
    //     }
    // });

    $(document).on('click', '.next', function(e){
        e.stopPropagation();   // ✅ wrap으로 이벤트 전달 차단
    });

    // const $audio = $('#location');
    // function playAudio(pageNum) {
    //     $audio.attr('src', '//static.harang-event.com/event/v_' + '${eventSeq}' + '/audio_0' + pageNum + '.mp3');
    //     $audio.trigger('play');
    // }
    

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        console.log(num)
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        
        if (num === 1) {
            let inputValue = $('input[name="name"]').val();
            const isChecked = inputValue.length > 1;

            if (!isChecked) {
                alert("정확한 이름을 입력해주세요.");
                return; // 선택되지 않았으면 페이지 이동 안함
            }
        }

        if(num === 2) {
            $('.notice-area').show();
        }

        var nextPage = num + 1;
        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);

            // playAudio(nextPage);
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