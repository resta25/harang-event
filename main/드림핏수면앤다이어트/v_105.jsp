<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard';
    font-weight: 300;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.otf') format('opentype');
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
    font-weight: 500;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 600;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.otf') format('opentype');
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
/* 리셋 */
input{font-family: 'Pretendard', sans-serif;}
button{margin: 0; padding: 0; background-color: transparent; border: none; cursor: pointer;}
i{font-style: normal;}

/* 공통 */
#wrap{background: #551782 ;
background: linear-gradient(180deg, #f5eded  0%, #feb0ab 100%); letter-spacing: -1px; font-family: 'Pretendard', sans-serif; max-width: 600px; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left);}
.form{background-color: transparent; overflow: hidden; height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page {height: 100%; display: flex; flex-direction: column;}
.page:not(#page-1){display:none;}
.pointColor{background-color: #d047ed; border-radius: 10px; color: #fff; font-weight: 800; padding: 0.5% 3%;}
.footer {margin-top: auto;}

/* video */
.video-area {width: 83.667%; margin: 0 auto; border: 3px solid #fff; border-radius: 20px; overflow: hidden;}
.video-area video {display: block; width: 100%; height: 100%;}

.sub-txt {margin-top: 1%; font-family: 'Pretendard'; font-size: 100%; font-weight: 300; letter-spacing: -0.83px; text-align: center; color: rgba(255, 255, 255, 0.2);}

/* 개인정보 처리방침 */
.form .agBox{width:100%;margin:2vmin 0 0; padding: 0 0 3%;  font-size:clamp(11px, 3vmin, 16px); font-weight:400; color: #000;}
.form .btn-agreement {font-weight: 700;}
.form .agBox a {opacity: 1 !important;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #0b3040ca;}

/* paging */
.page .paging {width: 75.167%; margin: 0 auto;}
.page .paging button {width: 100%;}
.page .paging img {display: block; width: 100%; height: 100%;}

/* 설문 영역 */
.question_box {padding: 0 12% 7%;}
.question_box .question {margin-bottom: 7.676%; text-align: center; color: #000; font-size: 250%; font-weight: 500; font-family: 'Pretendard'; letter-spacing: -0.04em; line-height: 1.18;}
.question_box .question strong {color: #ff4355; font-weight: 700;}
.question_box .q_select label {width: 100%;}
.question_box .q_select label + label {margin-top: 18px;}
.question_box .q_select label .sel-item {padding: 3.73% 5%; border: 1px solid #ff7b74; font-weight: 500; font-size: 190%; background-color: #fff; text-align: center; border-radius: 10px; font-family: 'Pretendard';}
.question_box .q_select label .sel-item.active {background: #ffffd8; color: #ff4155; font-weight: 700;}

#page-4 .question_box {display: flex; align-items: center; column-gap: 12px; padding: 0 4% 2%;}
#page-4 .poster_10 .img-area {width: 91.167%; margin: 3% auto;}

/* 이전,다음 버튼 */
.paging_btn{position: relative; display: none; justify-content: center; align-items: center; width: 100%; height: 127px; padding: 0 15%; box-sizing: border-box;}
.paging_btn button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;}
.paging_btn img{ width: 100%;}
/* .paging_btn button:active {transform: scale(0.95);} */

.txt_01 {font-family: 'Pretendard'; font-size: 113%; font-weight: 500; line-height: 1.33; color: #3a3a3a; padding-left: 4%;}
.txt_01 strong {font-weight: 700; color: #000;}

/* 진행 상태 */
/* .progress{margin: 0; display: flex; align-items: center; column-gap: 5%; width: 50%; text-align: center; font-weight: 700;   font-family: 'Pretendard'; font-size: 51px; font-weight: 300; letter-spacing: -2.55px; color: #fff;} */

/* db단 */
/* .form-group {display: grid; gap: 11px; width: 100%; margin: 0 auto;} */
.form-group .inp {height: auto; border-radius: 10px; padding: 3.37% 2.45%; background-color: #f6f6f6; text-align: center; font-size: 155%; font-weight: 700; text-align: center;}
.form-group .inp + .inp {margin-top: 3.295%;}
.form-group .inp::placeholder {color: #818181;}

/* description */
.form .description{color: #000;}
.form .description p {font-size: 100%;}

.description + .img-area {margin-top: 3%;}

.result-box {position: relative; margin: 3% 5.26% 0; padding: 0;}
#result {position: absolute; top: 50%; transform: translateY(-50%); left: 10.55%; display: flex; align-items: center; justify-content: center; overflow: hidden; width: 20.9%; height: 60%; font-size: 150%; border-radius: 8px; background-color: #fff;}

/* cta 버튼 */
.form .submit{flex-shrink: 0; width: 37%; margin: 0 auto; transition: transform 0.1s ease-in-out;}
.form .submit:active{transform: scale(0.95);}
.form .submit input[type="image"]{width: 100%;}

/* 안심문구, 이벤트기간, 대상 */
.form .description {text-align: center; width: 75%; }
.form .description p {}

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
    /* .form .submit{width: 80%;} */
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */

    .sub-txt {font-size: 77%;}

    .progress {font-size: 24px;}
    .paging_btn button {max-width: 43px;}
    .paging_btn {height: 87px;}

    .paging_btn button {max-width: 20px;}

    .question_box .question {font-size: 190%;}
    .question_box .q_select label .sel-item {font-size: 150%;}
    .question_box .q_select label + label {margin-top: 10px;}
    .form-group .inp {font-size: 125%;}
    
    .txt_01 {font-size: 100%; margin-bottom: 0;}

    .form-group > .item {border-radius: 19px;}
    #result {border-radius: 7px;}

    .form .description p {font-size: 80%;}
}

@media screen and (max-width: 415px){
}

@media screen and (max-width: 375px){
}
</style>
<!-- include -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- include -->
<!-- 개인정보처리방침 모달창 -->
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
                <section class="page" id="page-1">
                    <div class="poster_01">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                        <div class="img-area video-area">
                            <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                        </div>
                    </div>

                    <div class="btn_box paging poster_02">
                        <div class="agBox">
                            <input name="agBox" type="checkbox" checked value="Y">개인정보 수집 및 처리방침에 동의합니다 
                            <a href="#" class="btn-agreement">[보기]</a>
                        </div>
                        <div class="paging">
                            <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                            <button type="button" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/next_btn_01.png"></button>	
                        </div>
                    </div>
                    <div class="poster_03 footer">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>

                <section class="page" id="page-2">
                    <div class="poster_04">
                        <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png"></button>
                        </div>
                    </div>
                    <div class="poster_05">
                        <div class="question_box">
                            <div class="question"><strong>감량하고 싶은 체중 구간</strong>을 <br />선택해 주세요</div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="~7kg"><div class="sel-item">~7kg</div></label>
                                <label><input type="radio" name="tadd1" value="8~12kg"><div class="sel-item">8~12kg</div></label>
                                <label><input type="radio" name="tadd1" value="13~15kg"><div class="sel-item">13~15kg</div></label>
                                <label><input type="radio" name="tadd1" value="15kg 이상"><div class="sel-item">15kg 이상</div></label>
                            </div>
                        </div>
                    </div>
                    <div class="poster_06 footer">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>

                <section class="page" id="page-3">
                    <div class="poster_07">
                        <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png"></button>
                            <!-- <button type="button" class="next"><img src="//static.harang-event.com/event/v_${eventSeq}/next.png"></button> -->
                        </div>
                    </div>
                    <div class="poster_08">
                        <div class="question_box">
                            <div class="question"><strong>귀하의 현재나이</strong>를 <br />를 선택해 주세요</div>
                            <div class="q_select">
                                <label><input type="radio" name="tage" value="50"><div class="sel-item">50대</div></label>
                                <label><input type="radio" name="tage" value="60"><div class="sel-item">60대</div></label>
                                <label><input type="radio" name="tage" value="70"><div class="sel-item">70세 이상</div></label>
                            </div>
                        </div>
                    </div>
                    <div class="poster_09 footer">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>  
                
                <section class="page" id="page-4">
                    <div class="poster_10">
                        <!-- <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/icon_01.png"></button>
                            <button type="button" class="last"><img src="//static.harang-event.com/event/v_${eventSeq}/next.png"></button>
                        </div> -->
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.gif"></div>
                        <p class="txt_01">▼ <strong>아래 정보</strong>를 입력해주세요</p>
                        <div class="question_box">
                            <div class="form-group">
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                                <input type="tel" name="phone" id="phone" value="" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                            </div>		
                            <div class="submit"><input type="image" class="btn_submit" onclick="fnForm('form-1')" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                        </div>
                        <div class="description">
                            <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 :  ${resVo.target}</span>
                        </div>
    
                        <div class="result-box">
                            <div class="img-area "><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.png"></div>
                            <span id="result"></span>
                            <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
                        </div>
    
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.gif"></div>
                    </div>
                    <div class="poster_11">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
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

    <div class="container bottom">  
        <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>	 -->
        <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	 -->
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
    });

    if ('scrollRestoration' in history) {
        history.scrollRestoration = 'manual';
    }

    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .btn-agreement', { y: +50, delay: 0.2, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_03', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0, duration: 0.2, ease: "power1.out"}, 0);
        // animation02.to('#page-1 .btn-agreement', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_03', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'flex', duration: 0 }, 0.2);
        // $('.progress i').text('1');
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        animation02.from('#page-2 .poster_05', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        animation02.from('#page-2 .poster_06', {x: +200, opacity: 0, duration: 0.2}, 0.2);
    }
    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_05', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'flex', duration: 0.1 }, 0.2);
        // $('.progress i').text('2');
        animation03.from('#page-3 .poster_07', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        animation03.from('#page-3 .poster_08', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        animation03.from('#page-3 .poster_09', {x: +200, opacity: 0, duration: 0.2}, 0.2);
    }
    // 마지막 페이지
    function show4pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경
        
        const animation04 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation04.to('#page-3 .poster_07', { x: -100, opacity: 0, delay: 0, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .poster_08', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .poster_09', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3', { display: 'none' });
        animation04.to('#page-4', { display: 'flex', duration: 0.1 }, 0.2);
        // $('.progress i').text('3');
        animation04.from('#page-4 .poster_10', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        animation04.from('#page-4 .poster_11', {x: +200, opacity: 0, duration: 0.2}, 0.2);
        $('#wrap').css({'height': 'auto','overflowY': 'auto'});
    }

    $(document).on("change", "input[name^='tadd'], input[name^='tage']", function() {
        const $form = $(this).closest("form");
        const name = $(this).attr("name");

        // 같은 form + 같은 name 그룹에서 active 제거
        $form.find("input[name='" + name + "']").each(function() {
            $(this).closest("label").find(".sel-item").removeClass("active");
        });

        // 현재 선택된 항목만 active 추가
        $(this).closest("label").find(".sel-item").addClass("active");
    });


    // 설문 Click bind
	$('input[name*=tadd], input[name*=tage], button.first').off('click').on('click', function(){
        var $btn = $(this);

        // // add 설문을 클릭했다면
        // if(!$btn.hasClass('first')){
        //     const $labels = $btn.closest('.q_select').find('label');

        //     $labels.each(function(){
        //         const $img = $('img', this);
        //         $img.attr('src', $img.attr('src').replace('_on', '_off'));
        //     });

        //     const $img = $btn.parent().find('img');
        //     $img.attr('src', $img.attr('src').replace('_off', '_on'));
        // }

        // 잠깐 보여주기
        setTimeout(function(){

            var page_num = $('.page:visible').index() + 1;
            var $section = $('#page-'+page_num);

            $section.fadeOut(0,function(){
                var $nextSection = $section.next('.page');

                $section.hide();
                $nextSection.css('display','flex');
                // $nextSection.fadeIn(0);

                if(page_num == 1){
                    // $('.progress i').text('1');
                    show2pg();
                }else if(page_num == 2){
                    // $('.progress i').text('2');
                    show3pg();
                }else if(page_num == 3){
                    // $('.progress i').text('3');
                    show4pg();
                }

                $(document).scrollTop(0);
            });

            $(".paging_btn, .progress").css({display:"flex"});

        },200); // ← 이 시간만큼 on 이미지가 보임
    });

    // 버튼 페이지 이동 함수
    // function validator(idx) {
	// 	var $section = $('#page-'+idx);
    //     var msg;
	// 	switch(idx) {
	// 		case '2' :  msg = '나이대를';  
    //             if(!$('input:radio', $section).is(':checked')) {
    //                 alert(`고객님의 ${msg} 선택해 주세요`);
    //                 $('input:radio', $section).eq(0).focus();
    //                 return false;
    //             }
    //             break;
	// 		case '3' :            
    //             msg = '원하는 모발이식 부위를';  
    //             if(!$('input:radio', $section).is(':checked')) {
    //                 alert(`고객님의 ${msg} 선택해 주세요`);
    //                 $('input:radio', $section).eq(0).focus();
    //                 return false;
    //             }
	// 			break;
	// 	}
	// 	return true;
	// }   
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

            if ($prevPage.length > 0) {
                // 2. 현재 페이지를 즉시 숨김 (fadeOut 대신 hide 사용으로 딜레이 제거)
                $currentPage.hide();
                
                // 3. 이전 페이지를 즉시 보여줌
                $prevPage.show();

                // 4. 페이지 번호에 따른 상태 리셋 및 애니메이션 실행
                if(page_num == 4){
                    // GSAP set으로 위치와 투명도를 즉시 초기화하여 잔상 제거
                    gsap.set('#page-3 .poster_07, #page-3 .poster_08, #page-3 .poster_09', { x: 0, opacity: 1 });
                    $('.progress i').text('2');
                }
                else if(page_num == 3){
                    gsap.set('#page-2 .poster_04, #page-2 .poster_05, #page-2 .poster_06', { x: 0, opacity: 1 });
                    $('.progress i').text('1');
                }
                else if(page_num == 2){
                    $('.progress').hide();
                    $(".paging_btn").hide();
                    gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .poster_03', { x: 0, opacity: 1 });
                }
                
                // 애니메이션 플래그 초기화
                isAnimating = false;
            }
            break;
        }  
    });

    // 개인정보처리방침 팝업 관련
    $('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
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

		let tage = procForm.querySelector('input[name="tage"]:checked');
		if (!tage) {
			alert("연령대를 입력해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
		}

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
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};

		validateForm(procForm, required);
	}
</script>