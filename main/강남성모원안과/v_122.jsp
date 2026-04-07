<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
html, body {font-size: 10px;}
#wrap {font-family: 'Pretendard'; max-width: 600px; display: flex; flex-direction: column; background-color: #fff; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left);}
.form {background: transparent; height: 97.3%;}
#wrap .formContents {height: 100%;}
.page {position: relative; box-sizing: border-box; background-color: #fff;}
.page:not(#page-1) .page_inner {padding: 7.825% 6.48% 5%;}
.page#page-3 {padding-bottom: 0;}
.hide {display: none;}

.count-box {padding: 2% 0 1.835%; background-color: #477fff; font-family: 'Pretendard'; font-size: 260%; font-weight: 500; letter-spacing: -1.3px; text-align: center; color: #fff; line-height: 1;}
.count-box #eventCnt {font-weight: 800; color: #fdff62;}

/* 이전 버튼 */
.paging_btn {display: flex; align-items: center; justify-content: flex-start; column-gap: 9%;}
.paging_btn .gage {width: 80.615%;; height: 5px; border-radius: 2px; background-color: #d4d4d4; overflow: hidden;}
.paging_btn .gage .gage-bar {width: 0; height: 100%; background-color: #000;}
.paging_btn button {padding: 0; background: transparent;}
.paging_btn button img {display: block; width: 100%; height: 100%;}

/* 첫번째 페이지 */
#page-1 .next {width: 82.5%; margin: 0 auto;}
#page-1 .img-area:nth-child(2) {width: 76.5%; margin: 5.167% auto 4%;}
#page-1 .img-area:nth-child(3) {width: 78.168%; margin: 0 auto 3.5%;}
.page .top-img {width: 50%; margin: 0 auto 3rem;}
.page .sub-img {margin: 0 auto 3rem; width: 80%;}
.page #location {display: block; width: 100%; height: 100%; margin: 0 auto;}
.page .touch-img {width: 70%; margin: 0 auto 3rem;}

/* 두번째 페이지 */
.page .bottom-img {padding-bottom: 17rem; width: 89.888%; margin: 0 auto;}

/* 설문영역 */
.question_box {margin-top: 3.447%;}
.question {width: 71.805%; margin: 0 auto;}
.question_box .q_select {width: 89.888%; margin: 2.4rem auto 0; padding-top: 4.8rem; border-top: 3px solid #e3e3e3;}
.question_box .q_select label {width: 100%;}
.question_box .q_select label:not(:last-child) {margin-bottom: 2rem;}
.question_box .q_select label img {width: 100%;}

#page-4 .question {width: 35.235%;}

#page-5 .question_box .q_select {padding-top: 0; width: 100%;}
#page-5 .question {width: 89.998%;}
#page-5 .question + .img-area {display: block; margin: 3.83% auto 3.64%;;}

.icon-area {width: 28.168%; margin: 0 auto;}

.result-box {position: relative; margin: 3% 5.26% 5.5%; padding: 0;}
#result {position: absolute; top: 50%; transform: translateY(-50%); left: 5%; display: flex; align-items: center; justify-content: center; overflow: hidden; width: 26.91%; height: 60%; font-size: 240%; border-radius: 13px; background-color: #fff;}

/* db 영역 */
.form .db-box {padding: 5.745% 0 5.17%;}
.form .db-box .legend {display: block; font-family: 'Pretendard'; font-size: 300%; font-weight: 700; line-height: 1; letter-spacing: -1.99px; color: #171717; margin-bottom: 2%}
.form .db-box .legend .required {color: #ff1442;}
.form .db-box input {padding: 2.25% 4.05%; font-family: 'Pretendard'; font-size: 300%; font-weight: 600; line-height: 1; letter-spacing: -1.99px; text-align: center; color: #171717; border-radius: 14px; border: solid 2px #adadad; background-color: #fff;}
/* .form .db-box input:nth-of-type(1) {margin-top: 3rem;} */
.form .db-box input::placeholder {color: rgba(47, 47, 47, 0.2);}
.form .db-box .legend ~ .legend {margin-top: 3%;}

/* 개인정보 처리방침 */
.form .agBox {color: #000; margin: 3% auto 0; font-size: 1.5rem;}

/* 대상, 안심문구, 이벤트기간 */
.form .description {margin: 2rem auto; width: 100%;}
.form .description p,
.form .description span,
.form .description .ad_txt {color: #000; font-size: 1.5rem; padding: 0; font-family: 'Pretendard';}

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

    .form {height: 100%;}

    .paging_btn button {width: 12px;}
}
@media screen and (max-width: 395px) {
}

@media screen and (max-width: 375px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            <div class="count-box">
                현재까지
                <span id="eventCnt"></span>명이 혜택 받으셨습니다.
            </div>
            <section class="page section01" id="page-1">
                <div class="page_inner">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.gif"></div>
                    <!-- <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script> -->
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.png"></div>
                    
                    <div class="next img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
                    <div class="agBox">
                        혜택 제공을 위한 개인정보 처리방침에 동의해주세요  
                        <a href="#" class="btn-agreement">[ 자세히 보기 ]</a>
                        <input type="hidden" name="agBox" value="Y" checked>
                    </div>
                </div>
            </section>

            <section class="page hide section02" id="page-2">
                <div class="page_inner">
                    <div class="paging_btn">
                        <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                        <div class="gage">
                            <div class="gage-bar"></div>
                        </div>
                    </div>
                    <div class="question_box">
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="가까이 있는 물체가 잘 안보인다"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_01.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="시야가 뿌옇게 보인다"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_02.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="눈에 무언가 낀 것 같은 느낌이 든다"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="어두운 곳에서는 잘 보이지 않는다"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_04.png"></label>
                            <label><input type="radio" name="tadd1" onclick="pageFuc(2,$(this))" value="사물이 겹쳐보이고, 초점이 안 잡힌다"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_05.png"></label>
                        </div>
                    </div>
                    <!-- <div class="img-area bottom-img"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.png"></div> -->
                </div>
            </section>

            <search class="page hide section03" id="page-3">
                <div class="page_inner">
                    <div class="paging_btn">
                        <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                        <div class="gage">
                            <div class="gage-bar"></div>
                        </div>
                    </div>
                    <div class="question_box">
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" onclick="pageFuc(3,$(this))" value="비용이 걱정돼서"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_06.png"></label>
                            <label><input type="radio" name="tadd2" onclick="pageFuc(3,$(this))" value="수술이 무서워서"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_07.png"></label>
                            <label><input type="radio" name="tadd2" onclick="pageFuc(3,$(this))" value="아직 참을 만 해서"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_08.png"></label>
                            <label><input type="radio" name="tadd2" onclick="pageFuc(3,$(this))" value="시간이 없어서"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_09.png"></label>
                        </div>
                    </div>
                <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.gif"></div> -->
            </search>

            <search class="page hide section04" id="page-4">
                <div class="page_inner">
                    <div class="paging_btn">
                        <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                        <div class="gage">
                            <div class="gage-bar"></div>
                        </div>
                    </div>
                    <div class="question_box">
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_03.png"></div>
                        <div class="q_select">
                            <label><input type="radio" name="tage" onclick="pageFuc(4,$(this))" value="40"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_10.png"></label>
                            <label><input type="radio" name="tage" onclick="pageFuc(4,$(this))" value="50"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_11.png"></label>
                            <label><input type="radio" name="tage" onclick="pageFuc(4,$(this))" value="60"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_12.png"></label>
                            <label><input type="radio" name="tage" onclick="pageFuc(4,$(this))" value="70"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_13.png"></label>
                        </div>
                    </div>
                </div>
                <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.gif"></div> -->
            </search>

            <search class="page hide section05" id="page-5">
                <div class="page_inner">
                    <div class="paging_btn">
                        <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                        <div class="gage">
                            <div class="gage-bar"></div>
                        </div>
                    </div>
                    <div class="question_box">
                        <div class="img-area question"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01.png"></div>
                        <div class="q_select">
                            <div class="db-box">
                                <span class="legend">이름<span class="required">*</span></span>
                                <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름 ">
                                <span class="legend">연락처<span class="required">*</span></span>
                                <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                            </div>
                            <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                            <div class="description bottom">
                                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                <span>대상 :  ${resVo.target}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="img-area icon-area"><img src="//static.harang-event.com/event/v_${eventSeq}/arrow_01.png"></div>
                <div class="result-box">
                    <div class="img-area "><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.png"></div>
                    <span id="result"></span>
                    <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
                </div>
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
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
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        eventCount(`${eventSeq}`);
	})

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    // 비디오 소리 켜기
    $('#wrap').on('click', function(){

        var video = $('#location').get(0);

        if(video){
            video.muted = false;
            // video.volume = 1;
            // video.play();
        }

    });
    // 비디오 소리 멈춤
    var video = $('#location').get(0);
    $('.next').on('click', function(){
        // 🔹 1. 영상 정지 + 음소거
        if(video){
            video.pause();
            video.muted = true;
            video.currentTime = 0; // 원하면 유지
        }
        // 🔹 2. 기존 함수 실행
        pageFuc(1, $(this));

    });

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
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);
        });
        if(num == 1){
            $('.gage-bar').css({width: '25%'});
        }
        if(num == 2){
            $('.gage-bar').css({width: '50%'});
        }
        if(num == 3){
            $('.gage-bar').css({width: '75%'});
        }
        if(num == 4){
            $('.form').css({'height': 'auto'});
            $('.gage-bar').css({width: '100%'});
        }
    }

    //설문 on/off
    $('input[name*="tadd"], input[name*="tage"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    $('button').on('click', function() {
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

            $('.form').css({height: '97.3%'});

            if ($prevPage.length > 0) {
                // 2. 현재 페이지를 즉시 숨김 (fadeOut 대신 hide 사용으로 딜레이 제거)
                $currentPage.hide();
                
                // 3. 이전 페이지를 즉시 보여줌
                $prevPage.show();

                // 4. 페이지 번호에 따른 상태 리셋 및 애니메이션 실행
                if(page_num == 6){
                    // GSAP set으로 위치와 투명도를 즉시 초기화하여 잔상 제거
                    // gsap.set('#page-3 .poster_07, #page-3 .poster_08, #page-3 .poster_09', { x: 0, opacity: 1 });
                    // $('.progress i').text('2');
                    $('.gage-bar').css({width: '75%'});
                }
                else if(page_num == 5){
                    // gsap.set('#page-2 .poster_04, #page-2 .poster_05, #page-2 .poster_06', { x: 0, opacity: 1 });
                    // $('.progress i').text('1');
                    $('.gage-bar').css({width: '50%'});
                }
                else if(page_num == 4){
                    $('.gage-bar').css({width: '25%'});
                    // $('.progress').hide();
                    // $(".paging_btn").hide();
                    // gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .poster_03', { x: 0, opacity: 1 });
                }
                else if(page_num == 3){
                    $('.gage-bar').css({width: '0%'});
                }
                
                // 애니메이션 플래그 초기화
                isAnimating = false;
            }
            break;
        }  
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

		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}
        
		let tage = procForm.querySelector('input[name="tage"]:checked');
		if (!tage) {
			alert("나이대를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
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
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>