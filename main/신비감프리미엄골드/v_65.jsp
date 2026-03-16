<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css"
  type="text/css"
/>
<style>
html, body {font-size: 10px;}
#wrap {max-width: 600px; display: flex; flex-direction: column; font-family: 'Pretendard'; height: 100dvh; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left);}
.form {flex-grow: 1; background: #fff1f5;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 공통 */
.container {background-color: #ffd4df;  text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
.form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'SUIT'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
.form strong {color: #ff4a79; font-weight: 800; font-family: 'SUIT';}
.form .name-result {}

/* 이전,다음 버튼 */
.paging {}
.paging button {background-color: transparent;}
/* .paging button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;} */
.paging img{ width: 100%;}

/* 슬라이드 영역 */
.slide-area {padding: 4.335% 8% 0;}
/* .swiper {padding: 26px 48px 0;} */
.swiper .swiper-slide img { width: 100%; text-align: center;}

/* 개별 */
/* 첫번째 페이지 */
#page-1 {background-color: #ffd4df; height: 100%;}
#page-1 .page_inner .img-area:not(.next) {width: 100%; margin: 0 auto;}
/* .page-inner-bg {position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); width: 100%; box-sizing: border-box;}
.page-inner-bg .top-img {margin-bottom: 2rem;} */
#page-1 .page_inner {padding: 4.667% 0 0;}
/* .page_inner .bar {width: 12rem; height: 0.7rem ; border-radius: 5rem; background: #19c6f7; display: block; margin: 0 auto 3rem;} */
/* .page_inner .question {line-height: 1.29; letter-spacing: -0.98px; text-align: center; color: #363942; font-size: 2.4rem; font-weight: 800; margin-bottom: 1rem;} */
#page-1 .page_inner .img-area.top-img {width: 74.167%;}
#page-1 .next {width: 90.667%; margin: 0 auto;}
.page_inner input[name="name"] {display: block; width: 74.167%; background: #fff; font-family: 'SUIT'; border: solid 2px #ff4a79; border-radius: 1.2rem; font-size: 240%;  line-height: 1.29; letter-spacing: -1.4px; padding: 1.45rem 0; text-align: center; margin: 1.6rem auto 1.8rem; color: #3E3E3E;}
.page_inner input[name="name"]::placeholder {color: #e0a4b4; font-family: 'SUIT';}
/* #page-1 .sub-txt {margin-top: 3.834%;} */

/* 두번째 페이지 */
#page-2 {padding: 4%; font-size: 16px;}
#page-2 .ag-group {text-align: center; margin: 0 auto 11.415%; font-size: 225%; font-family: 'SUIT';}
#page-2 .agBox {width: 100%; margin: 0; text-align: center; font-size: 100%; font-family: 'SUIT';}
.form .agBox a {font-weight: 400; text-decoration: underline;}

/* 세번째 페이지 */
#page-3 {display: none; padding: 4%; font-size: 16px;}
#page-3 .page_inner {padding: 12.32% 9.421% 0;}
#page-3 .question {font-size: 225%; font-family: 'SUIT'; text-align: center;}
/* #page-3 .page_inner {flex-grow: 1;} */

/* 네번째 페이지 */
#page-4 {display: none; padding: 4%; font-size: 16px;}
#page-4 .name-box, #page-4 .add-box {display: block; text-align: center; font-family: 'SUIT'; font-size: 225%; font-weight: 800; line-height: 1.5; letter-spacing: -1.08px;}
#page-4 .page_inner {padding: 12.32% 9.421% 0;}
#page-4 .confirm-txt {font-size: 225%; line-height: 1.5; letter-spacing: -1.08px; text-align: center; color: #2d2d2d;}

/* 설문영역 */
.q_select {display: flex; flex-flow: row wrap; gap: 1rem; margin-top: 10.27%;}
.q_select label {width: 100%; padding: 1.82% 0; border-radius: 8px; border: solid 1px #e0a4b4; background-color: #fff;   font-size: 215%; font-weight: 700; line-height: 1.91; letter-spacing: -1.04px; text-align: center; color: #bc7f90;}
.q_select label.active {border: solid 1px #ff4a79; background-color: #ffdae4; color: #f03465;}
/* .q_select label img {width: 100%;} */

/* 마지막 페이지 */
#page-5 {display: none; font-size: 16px; font-family: 'SUIT';}
#page-5 .paging {padding: 4% 4% 0;}
#page-5 .page_inner {padding: 12.32% 4% 0; text-align: center;}
#page-5 .page_inner .name-result {font-weight: 800; font-size: 255%; line-height: 1.48; letter-spacing: -1.23px; color: #2d2d2d;}
#page-5 .page_inner .question {margin-top: 8.363%; font-size: 225%; line-height: 1.5; letter-spacing: -1.08px; color: #2d2d2d;}
.page_inner input[name="phone"] {display: block; width: 84.167%; background: #fff; font-family: 'SUIT'; border: solid 2px #ff4a79; border-radius: 1.2rem; font-size: 150%; line-height: 1.29; letter-spacing: -1.4px; padding: 1.45rem 0; text-align: center; margin: 2.6rem auto 1rem; color: #3E3E3E;}
.page_inner input[name="phone"]::placeholder {color: #e0a4b4; font-family: 'SUIT';}
#page-5 .arrow-img {width: 8%; margin: 2.9% auto 3%;}
#page-5 .result-area {position: relative;}
#page-5 .result-area .name-result {position: absolute; left: 3.9%; top: 19%; width: 24%; font-size: 150%; height: 65%; display: flex; align-items: center; justify-content: center; font-weight: 400; overflow: hidden;}
/* #page-5 > .img-area {margin-left: -4%; margin-right: -4%;} */
.form {position: relative;}
.form .next {width: 100%; margin: 0 auto;}
.form .next img {width: 100%;}
.form .submit {width: 83.24%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}


/* 안심문구, 대상, 이벤트기간 */
/* .form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #006885; letter-spacing: -0.65px;} */

.form .description {width: 100%; text-align: center; margin: 4.462% auto 8.735%; padding: 0;}
.form .description p {font-weight: 400; font-size: 83%; color: #1d1d1d; font-family: 'Pretendard';}

/* .form .agBox {font-size: 1.2rem; width: 100%; margin: 0 auto;} */

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

    .form .result-box {font-size: 175%; margin-top: 10.32%; margin-bottom: 6.155%;}
    #page-2 .ag-group {font-size: 145%;}

    #page-3 .question {font-size: 145%;}
    .q_select label {font-size: 145%;}
    #page-4 .name-box, #page-4 .add-box {font-size: 145%;}
    #page-4 .confirm-txt {font-size: 145%;}
    #page-5 .page_inner {padding-top: 7.32%;}
    #page-5 .page_inner .name-result {font-size: 175%;}
    #page-5 .result-area .name-result {font-size: 105%;}
    #page-5 .page_inner .question {margin-top: 4.363%; font-size: 155%;}
    .page_inner input[name="phone"] {font-size: 120%;}
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>
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
            <section class="page section01" id="page-1">
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                <div class="slide-area">
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_01.png"></div>
                            <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_02.png"></div>
                        </div>
                    </div>
                </div>

                <div class="page_inner">
                    <!-- <span class="bar"></span> -->
                    <!-- <div class="question">▼ 혜택 받으실 분 ▼</div> -->
                    <div class="img-area top-img"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01.png"></div>
                    <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                    <div class="next img-area" onclick="pageFuc(1,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
                </div>
            </section>
            
            <section class="page hide section02" id="page-2">
                <div class="paging">
                <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                    <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back.png"></button>	
                </div>
                <span class="result-box"><span class="name-result"></span> 안녕하세요!</span>
                <div class="ag-group">
                    <strong>다이어트 혜택안내</strong>를 위한
                    <div class="agBox">
                        <a href="#" class="btn-agreement">개인정보 처리방침</a>에 동의해주세요
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
                </div>
                <div class="next img-area" onclick="pageFuc(2,$(this))"><img src="//static.harang-event.com/event/v_${eventSeq}/next.png"></div>
            </section>

            <section class="page hide section03" id="page-3">
                <div class="paging">
                <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                    <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back.png"></button>	
                </div>
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <strong>감량하고 싶은 체중 구간</strong>을 <br />선택해 주세요
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" onclick="pageFuc(3,$(this))" value="~7kg">~7kg</label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(3,$(this))" value="8~12kg">8~12kg</label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(3,$(this))" value="13~15kg">13~15kg</label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(3,$(this))" value="15kg 이상">15kg 이상</label>
                        </div>
                    </div>
                </div>
            </section>

            <section class="page hide section04" id="page-4">
                <div class="paging">
                <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                    <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back.png"></button>	
                </div>
                <div class="page_inner">
                    <span class="name-box">
                        <span class="result-label">성함</span>
                        <strong class="name-result"></strong>
                    </span>
                    <span class="add-box">
                        <span class="result-label">체중 감량 목표</span>
                        <strong class="add-result"></strong>
                    </span>
                    <p class="confirm-txt">위 내용이 맞는지 확인해주세요.</p>
                    <div class="question_box">
                        <div class="q_select">
                            <label><input type="radio" name="" onclick="pageFuc(4,$(this))" value="본인">네, 본인 맞습니다</label>
                            <label class="pre"><input type="radio" name="" onclick="" value="아니오">아니오</label>
                        </div>
                    </div>
                </div>
            </section>

            <section class="page hide section05" id="page-5">
                <div class="paging">
                <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                    <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back.png"></button>	
                </div>
                <div class="page_inner">
                    <span class="name-result"></span>
                    <div class="question_box">
                        <div class="question">
                            <strong>연락처를 입력하시면</strong><br />
                            다이어트 최대할인 혜택과<br />
                            체질개선&해독제품 무료증정<br />
                            안내 드리겠습니다.
                        </div>
                        <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요">
                        <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                    </div>

                    <div class="img-area arrow-img"><img src="//static.harang-event.com/event/v_${eventSeq}/arrow.png"></div>
                    <div class="img-area result-area">
                        <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png" alt="">
                        <span class="name-result"></span>
                    </div>

                    <div class="description bottom">
                        <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 :  ${resVo.target}</span>
                    </div>
                </div>
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.jpg"></div>
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
        <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
		<!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div> -->
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
	});

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        // autoplay: {
        //     delay: 2500,
        //     disableOnInteraction: false,
        // },
        loop:true,
    });

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

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
                $('input[name="name"]').focus();
                return; // 선택되지 않았으면 페이지 이동 안함
            }

        }

        var nextPage = num + 1;
        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);

            // playAudio(nextPage);
        });

        if(num === 1 || num === 2 || num === 3){
            $('.container').css({'background-color': '#fff1f5'});
        }

        if(num === 4) {
            $('#wrap').css({'overflowY': 'auto'});
            $('.container').css({'background-color': '#ffc1d1'});
        }
    }

    // 이전 버튼
    $('.paging button, #page-4 .pre').on('click', function() {
        var type = this.className;
		var idx = $(this).closest('.page').attr('id').substr(-1);  
        var num = Number(idx);
        var page_num = $('.page:visible').index() + 1;
        
		switch(type) {
            // case 'next': case 'nextBtn' :
            //     if(!validator(idx)) return;
            
            //     $(this).closest('.page').fadeOut(function(){ $(this).closest('.page').next().fadeIn(); });
            
            //     $('.progress i').text(page_num);
            //     break;
            
            case 'pre' :    
            // 1. 현재 페이지와 이전 페이지 정의
            var $currentPage = $(this).closest('.page');
            var $prevPage = $currentPage.prev('.page');

            if ($prevPage.length > 0) {
                // 2. 현재 페이지를 즉시 숨김 (fadeOut 대신 hide 사용으로 딜레이 제거)
                $currentPage.hide();
                
                // 3. 이전 페이지를 즉시 보여줌
                $prevPage.show();

                // 4. 페이지 번호에 따른 상태 리셋 및 애니메이션 실행
                // if(page_num == 4){
                //     // GSAP set으로 위치와 투명도를 즉시 초기화하여 잔상 제거
                //     gsap.set('#page-3 .poster_07, #page-3 .poster_08, #page-3 .poster_09', { x: 0, opacity: 1 });
                //     $('.progress i').text('2');
                // }
                // else if(page_num == 3){
                //     gsap.set('#page-2 .poster_04, #page-2 .poster_05, #page-2 .poster_06', { x: 0, opacity: 1 });
                //     $('.progress i').text('1');
                // }
                // else if(page_num == 2){
                //     $('.progress').hide();
                //     $(".paging_btn").hide();
                //     gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .poster_03', { x: 0, opacity: 1 });
                // }
                
                // 애니메이션 플래그 초기화
                // isAnimating = false;
            }
            break;
        }  
    });

    //설문 on/off
    $('input[name*="tadd"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('label').removeClass('active');
            // $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $(this).parent().addClass('active');
        // $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    //이름 텍스트 출력
    $('input[name="name"]').on('keyup', function(){
        var nameValue = $(this).val();
        $('.name-result').text(nameValue + '님');
        $('.result-area .name-result').text(nameValue);
    });

    // 설문 텍스트 출력
    $('input[name="tadd1"]').on('click', function(){
        var nameValue = $(this).val();
        $('.add-result').text(nameValue);
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
		
		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
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
			,'phone': '연락처'
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>