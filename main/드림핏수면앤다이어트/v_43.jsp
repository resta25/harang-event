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
background: linear-gradient(90deg, rgba(85, 23, 130, 1)  0%, rgba(50, 11, 139, 1)  100%); letter-spacing: -1px; font-family: 'Pretendard', sans-serif;}
.form{background-color: transparent; overflow: hidden;}
/* #page-1{background: #551782 ;
background: linear-gradient(90deg, rgba(85, 23, 130, 1)  0%, rgba(50, 11, 139, 1)  100%);} */
.page:not(#page-1){display:none;}
.pointColor{background-color: #d047ed; border-radius: 10px; color: #fff; font-weight: 800; padding: 0.5% 3%;}

/* 상단 슬라이드 */
.slide-box {position: relative;}
.slide-box .mySwiper {}
.slide-box img {width: 100%;}

/* 첫번째 페이지 */
.bg {background: url("//static.harang-event.com/event/v_${eventSeq}/bg_01.jpg"); position: relative;}
.inner {position: absolute; top: 5%; left: 50%; transform: translateX(-50%); width: 100%;}

/* video */
/* .video-bg {position: relative;}
.video-bg video{display:block;width:100%;object-fit: cover;} */

.sub-txt {margin-top: 1%; font-family: 'Pretendard'; font-size: 100%; font-weight: 300; letter-spacing: -0.83px; text-align: center; color: rgba(255, 255, 255, 0.2);}

/* 개인정보 처리방침 */
.form .agBox{width:100%;margin:2vmin 0 0; padding: 0 0 3%;  font-size:clamp(11px, 3vmin, 16px); font-weight:400; color: #fff;}
.form .btn-agreement {font-weight: 700;}
.form .agBox a {opacity: 1 !important;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #0b3040ca;}
/* paging */
.page .paging {width: 87.78%; margin: 5.7% auto 0;}
.page .paging button{width: 100%; transition: transform 0.1s ease-in-out;}
.page .paging button img{width:100%;}
.page .paging button a{display:block;}
.page .paging button:active {transform: scale(0.95);}

/* add 설문 */
.form .question_box {padding: 0 10% 0;}
#page-2 .question_box {margin-bottom: 15%;}
#page-3 .question_box {margin-bottom: 15%;}
.form .question_box .question {padding: 0 4.54% 10.85%;}
.form .question_box .question img{width: 100%;}
.form .question_box .q_select{}
.form .question_box .q_select label{}
.form .question_box .q_select label + label {margin-top: 5.81%;}
/* .form .question_box .q_select label:active {transform: scale(0.95);} */
.form .question_box .q_select label img{width: 100%;}

/* 이전,다음 버튼 */
.paging_btn{position: relative; display: none; justify-content: center; align-items: center; width: 100%; height: 159px; padding: 0 15%; box-sizing: border-box;}
.paging_btn button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;}
.paging_btn img{ width: 100%;}
/* .paging_btn button:active {transform: scale(0.95);} */

.txt_01 { font-family: 'Pretendard';
  font-size: 44.5px;
  font-weight: 600;
  line-height: 1.33;
  letter-spacing: -2.23px;
  text-align: center;
  color: #fff;}

/* 진행 상태 */
.progress{margin: 0; display: flex; align-items: center; column-gap: 5%; width: 50%; text-align: center; font-weight: 700;   font-family: 'Pretendard';
  font-size: 51px;
  font-weight: 300;
  letter-spacing: -2.55px;
  color: #fff;}

/* db단 */
.form-group {display: grid; gap: 10px; width: 100%; margin: 0 auto; padding-bottom: 3%;}
.form-group > .item {display: block; border-radius: 29px; padding: 2.45%;
  border: solid 4px #d047ed;
  background-color: #fff; text-align: center;}
.form-group > .item:last-of-type{margin: 0;}
.form-group .inp {font-size: clamp(12px, 7vmin, 7vmin); font-weight: 700; text-align: center;}
.form-group .inp::placeholder {color: #dbdbdb;}
.form-group.highlight .item{transition: border-color .2s;}

/* description */
.form .description{color: #fff;}

.description + .img-area {margin-top: 3%;}

.result-box {position: relative; margin: 3% 5.26% 0; padding: 0;}
#result {position: absolute;
    top: 50%;
    transform: translateY(-50%);
    left: 2.55%;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    width: 23.91%;
    height: 60%;
    font-size: 150%;
    border-radius: 13px;
    border: solid 2px #3c1188;
    background-color: #fff;
}

/* cta 버튼 */
.form .submit{width: 80%; margin: 0 auto; transition: transform 0.1s ease-in-out;}
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
    .form .submit{width: 80%;}
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */

    .sub-txt {font-size: 80%;}

    .progress {font-size: 24px;}
    .paging_btn button {max-width: 43px;}
    .paging_btn {height: 109px;}

    .txt_01 {font-size: 24px;}

    .form-group > .item {border-radius: 19px;}
    #result {border-radius: 9px;}
}

@media screen and (max-width: 415px){
}

@media screen and (max-width: 375px){
}
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
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
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                        <div class="slide-box">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_01.png"></div>
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_02.png"></div>
                                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_03.png"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn_box paging poster_02">
                        <div class="paging">
                            <!-- <button type="button" onclick="alert('미동의 시 이벤트에 참여할 수 없습니다.');"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	 -->
                            <button type="button" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></button>	
                        </div>
                        <div class="agBox">
                            <input name="agBox" type="checkbox" checked value="Y">개인정보 수집 및 처리방침에 동의합니다 
                            <a href="#" class="btn-agreement">[보기]</a>
                        </div>
                        <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
                    </div>
                    <div class="poster_03">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>

                <section class="page" id="page-2">
                    <div class="poster_04">
                        <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                            <p class="progress">진행사항 <span class="pointColor"><i></i>/3</span></p>
                        </div>
                    </div>
                    <div class="poster_05">
                        <div class="question_box">
                            <div class="question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="뱃살, 옆구리살"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" value="처진 팔뚝살"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" value="허벅지 전체"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_03.png"></label>
                                <label><input type="radio" name="tadd1" value="전신 감량 필요"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_04.png"></label>
                            </div>
                        </div>
                    </div>
                    <div class="poster_06">
                        <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>

                <section class="page" id="page-3">
                    <div class="poster_07">
                        <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                            <p class="progress">진행사항 <span class="pointColor"><i></i>/3</span></p>
                            <!-- <button type="button" class="next"><img src="//static.harang-event.com/event/v_${eventSeq}/next.png"></button> -->
                        </div>
                    </div>
                    <div class="poster_08">
                        <div class="question_box">
                            <div class="question"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd2" value="50대"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_05.png"></label>
                                <label><input type="radio" name="tadd2" value="60대"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_06.png"></label>
                                <label><input type="radio" name="tadd2" value="70세 이상"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_07.png"></label>
                                <!-- <label><input type="radio" name="tadd2" value="기타"><img src="//static.harang-event.com/event/v_${eventSeq}/select_off_08.png"></label> -->
                            </div>
                        </div>
                    </div>
                    <div class="poster_09">
                        <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
                    </div>
                </section>  
                
                <section class="page" id="page-4">
                    <div class="poster_10">
                        <div class="paging_btn">
                            <button type="button" class="pre"><img src="//static.harang-event.com/event/v_${eventSeq}/back_01.png"></button>
                            <p class="progress">진행사항 <span class="pointColor"><i></i>/3</span></p>
                            <!-- <button type="button" class="last"><img src="//static.harang-event.com/event/v_${eventSeq}/next.png"></button> -->
                        </div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.png"></div>
                        <p class="txt_01">▼ 아래 정보를 입력해주세요. ▼</p>
                        <div class="question_box">
                            <div class="form-group highlight">
                                <div class="item"><input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름"></div>
                                <div class="item"><input type="tel" name="phone" id="phone" value="" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처"></div>
                            </div>		
                        </div>
                        <div class="submit"><input type="image" class="btn_submit" onclick="fnForm('form-1')" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
                        <div class="description">
                            <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 :  ${resVo.target}</span>
                        </div>
    
                        <div class="result-box">
                            <div class="img-area "><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.png"></div>
                            <span id="result"></span>
                            <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
                        </div>
    
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_06.jpg"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.png"></div>
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_08.png"></div>
                    </div>
                    <div class="poster_11">
                        <p class="sub-txt">본 페이지의 일부 배너 및 디자인물에는 AI로 생성 또는 수정된 인물이 포함될 수 있습니다.</p>
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
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .btn-agreement', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_03', { y: +50, delay: 0.8, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
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
        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        // animation02.to('#page-1 .btn-agreement', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_03', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0 });
        $('.progress i').text('1');
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_05', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_06', {x: +200, opacity: 0, duration: 0.2});
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
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_05', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_06', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        $('.progress i').text('2');
        animation03.from('#page-3 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_09', {x: +200, opacity: 0, duration: 0.2});
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
        animation04.to('#page-3 .poster_07', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .poster_08', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .poster_09', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3', { display: 'none' });
        animation04.to('#page-4', { display: 'block', duration: 0.1 });
        $('.progress i').text('3');
        animation04.from('#page-4 .poster_10', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .poster_11', {x: +200, opacity: 0, duration: 0.2});
    }

    // 설문 Click bind
	$('input[name*=tadd], button.first').off('click').bind('click', function(){
        var page_num = $('.page:visible').index() + 1;
        var numImg = page_num;
        var $section = $('#page-'+page_num).closest('section');

        // 1. 현재 페이지를 먼저 숨김
        $section.fadeOut(200, function(){
            
            // 2. 페이드 아웃이 "완전히 끝난 후" 다음 페이지 보여주기
            var $nextSection = $section.next('.page');
            $nextSection.fadeIn(50);

            // 3. 페이지 번호에 맞춰서 텍스트 변경
            if(page_num == 1) {
                $('.progress i').text('1');
                show2pg();
                
            } else if (page_num == 2){
                $('.progress i').text('2');
                show3pg();
            } else if (page_num == 3){
                $('.progress i').text('3');
                show4pg();
            }

            $(document).scrollTop(0);
        });

        // 상단바 표시는 즉시 실행 (레이아웃 깨짐 방지)
        $(".paging_btn, .progress").css({display: "flex"});

        // add 설문을 클릭했다면
        if(!$(this).hasClass('first')){
            $('label', $(this).parents('.q_select')).each(function(i,t) {
                $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
            });
            $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
        }
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

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        loop:true,
        autoplay: {
            delay: 2000,
            disableOnInteraction: false,
        },
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
			,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};

		validateForm(procForm, required);
	}
</script>