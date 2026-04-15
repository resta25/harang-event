<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
    font-weight: 300;
    font-style: normal;
}
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: 500;
    font-style: normal;
}
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
    font-weight: 700;
    font-style: normal;
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
html, body {font-size: 10px;}
#wrap {font-family: 'Pretendard'; width: 100%; max-width: 1080px; background-color: #fff;}
.form {background: transparent; height: 100%;}
#form-1 {height: 100%;}
#wrap .formContents {height: calc(100% - 9rem); display: flex; flex-direction: column;}
.page {height: 100%; flex-grow: 1; display: flex; flex-direction: column;}
.hide {display: none;}

/* count */
.roulette {padding: 4.92% 5% 5.6rem;}
.count_box {width: 70%; text-align: center; font-size: 3rem; color: #fff; position: absolute; top: 41%; left: 56.5%; transform: translateX(-50%); line-height: 1;}
.count {color: #f0ff00; font-size: 5.6rem; font-family: 'GmarketSans'; font-weight: 500;}

.page .paging {width: 100%; padding: 5% 10% 3%; margin: 0 auto; display: flex; justify-content: space-between; box-sizing: border-box;}
.page .paging button {position: relative; width: 100%; height: 18.6rem; background: url('//static.harang-event.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 61.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.page:not(#page-1) {width: 85%; margin: 0 auto;}
.page:not(#page-1) .img-area {margin-bottom: 3%;}

.poster_01 > .img-area {width: 90%; margin: 0 auto 7.97%;}

/* 비디오 영역 */
.form .video-area {position: relative; padding-top: 75.27%; border: 8px solid #6ebfff; border-right: 0; border-left: 0;}
.form .video-area::after {position: absolute; bottom: 12px; right: 12px; content: '실제 시술 영상을 생성형 AI로 변환한 콘텐츠입니다.'; color: #858585; font-size: 1rem;}
.form #location {position: absolute; top: 0; left: 0; width: 100%; height: 100%; max-height: 813px; object-fit: cover;} 

/* 설문영역 */
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
.form .question_box .q_select label{width:100%; padding: 4% 0 2.5%; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 4.2rem; font-weight: 500; font-family: 'GmarketSans';}
.form .question_box .q_select label.on{background: #aaa;}
.form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
.form .question_box .q_select label img{width:95%;}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

.form .next {width: 80%; margin: 0 auto;}
.form .next img {width: 100%;}
/* .form .submit {width: 100%; margin: 1rem auto 0;}
.form .submit input[type="image"] {width: 100%;} */
.form .submit {display: flex; align-items: center; justify-content: center; margin: 1em auto 0; padding: 0;}
.form .submit {position: relative; width: 90.155%; height: 18.6rem; background: url('//static.harang-event.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 3% auto; padding: 0% 0;}
.form .submit input[type="image"] {
    width: 71.46% !important; margin: 0 auto; margin-left: auto; margin-right: 9%; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}

/* 설문영역 */
.form-box {margin-top: 7%; padding-bottom: 3%;}
.form .table_box {padding:0; background:#f4f4f4; border-radius:2.7rem; margin-bottom: 2rem;}
.form .table_box input {background: #ededed; border-radius: 0.8rem; font-size: 4rem; border: none; background: transparent; width: 100%; padding: 2.1rem 2.8rem; font-family: 'GmarketSans'; font-weight: 500;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); text-align: left; font-family: 'GmarketSans'; font-weight: 500;}

.form .table_box.top {width: 100%;}
.form .table_box.middle {width:  100%;}
.form .table_box.bottom {width: 100%;}
.form .table_box.txt_box {width: 100%; height: 13rem;}

.form .sub-txt {text-align: center; color: #ff0000; font-size: 1.6rem;}
.form .sub-txt strong {font-weight: 700;}

/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #6e6e6e; letter-spacing: -0.65px;}

/* .form .agBox {color: #fff; font-size: 1.6rem; padding: 3rem 0 2rem; width: 100%;} */
.agBox {display: flex; align-items: center; justify-content: center; padding-top: 5%; font-family: 'GmarketSans'; font-weight: 500; font-size: 1.9rem !important; line-height: 1;}

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

.containers {display: flex; flex-direction: column; color: white;}
.container {display: flex; flex-direction: column; align-items: center; row-gap: 1.6rem; cursor: pointer; position: relative;}
.container input[type="radio"] {display: none;}
.radio-circle {width: 38px; height: 38px; border-radius: 50%; border: 2px solid #aaa; position: relative;}
.radio-circle::before {content: ""; display: block; width: 25px; height: 25px; border-radius: 50%; background-color: #ddd; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%) scale(0); transition: all 0.2s ease-in-out;}
.container input[type="radio"]:checked + .radio-circle {border-color: #1074fe;}
.container input[type="radio"]:checked + .radio-circle::before {transform: translate(-50%, -50%) scale(1);}
.container input[type="radio"]:checked + .radio-circle::before {background-color: #1074fe;}
.bage {font-size: 1.5rem; background: #1074fe; color: #fff609; text-align: center; padding: 0.2rem 0.8rem; border-radius: 0.4rem; font-weight: 700; position: absolute; top: -40%; left: 50%; transform: translateX(-50%); width: max-content;}
.radio-label {font-size: 79%; font-weight: 700; font-family: 'Pretendard'; line-height: 1;}
.container:hover .radio-circle {border-color: #555;}
.container:hover input[type="radio"]:checked + .radio-circle::before {background-color: #555;}

.overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
    }
    [class^="popup-"] {
        z-index: 999;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 37vw;
        height: max-content;
        margin: 0;
        padding: 3rem 2rem;
        font-size: 150%;
        background-color: #fff;
        border-radius: 10px;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        opacity: 1;
        visibility: visible;
    }
    [class^="popup-"] p,
    [class^="popup-"] span {
        text-align: center;
        font-size: 250%;
        font-weight: 400;
        font-family: 'GmarketSans';
        margin: 0;
        margin-top: 1%;
        line-height: 1.27;
    }
    [class^="popup-"] strong {
        color: #ff0000;
        font-weight: 400;
        font-family: 'GmarketSans';
    }
    [class^="popup-"] .btn-box {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 1rem;
        margin-top: 5%;
        font-size: 150%;
    }
    [class^="popup-"] .btn-box button {
        background-color: #0202c5;
        color: #fff;
        width: 19.5rem;
        height: 8rem;
        padding-top: 1%;
        font-size: 125%;
        line-height: 1;
        font-weight: 400;
        border-radius: 0.5rem;
        font-family: 'GmarketSans';
    }


@media screen and (max-width: 500px) { 
    html, body {font-size: 1.7vw;}

    .radio-circle {width: 30px; height: 30px;}
    .radio-circle::before {width: 17px; height: 17px;}

    #page-1 .paging {padding-top: 2.5%;}
    .count {font-size: 3rem;}
    .page .paging button {height: 10rem;}
    .form .user-box .user-info input {font-size: 240%; padding: 1.25rem 2rem;}
    .form .question_box .q_select label {font-size: 3rem;}
    .form .table_box input {font-size: 3rem;}
    .form .submit {height: 10rem;}

    [class^="popup-"] p, [class^="popup-"] span {font-size: 210%;}

    .count_box {top: 31.5%;}
    
[class^="popup-"] .btn-box button {
    width: 17.5rem;
    height: 6rem;
    font-size: 105%;
}

    /* [class^="popup-"] .btn-box button {
        width: 115px;
        height: 50px;
    } */

    [class^="popup-"] {width: 87vw;}
}
@media screen and (max-width: 430px) {
}

@media screen and (max-width: 395px) {
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
            <div class="container">
                <div class="img-area roulette">
                    <img src="//static.harang-event.com/event/v_${eventSeq}/count_box.png">
                    <div class="count_box"><span class="count"></span></div>
                </div>
            </div>

            <section class="page section01" id="page-1">
                <div class="poster_01">
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                    <div class="video-area">
                        <video id="location" playsinline="" muted="" loop="" src="//static.harang-event.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                    </div>
                </div>

                <div class="agBox">
                    혜택 제공을 위한&nbsp;
                    <a href="javascript:void(0);" class="btn-agreement"><b>개인정보처리방침</b></a>에 동의해 주세요
                </div>
                <p class="paging poster_02">
                    <button type="button" onclick="show2pg()" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                </p>
            </section>

            <section class="page hide section02" id="page-2">
                <div class="img-area poster_01"><img src="//static.harang-event.com/event/v_${eventSeq}/gage_01.png"></div>
                <div class="img-area poster_02"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                <div class="question_box">
                    <div class="q_select">
                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="예">예</label>
                        <label><input type="radio" name="tadd1" value="아니오">아니오</label>
                    </div>
                </div>
                <div class="paging img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newsb_02.png" onclick="pageFuc(2,$(this))"></div>
            </section>

            <section class="page hide section03" id="page-3">
				<div class="img-area poster_01"><img src="//static.harang-event.com/event/v_${eventSeq}/gage_02.png"></div>
                <div class="img-area poster_02" style="margin-top: 5%;"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                <div class="form-box poster_03">
                    <div class="formGroup">
                        <div class="table_box top">
                            <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                        </div>
                        <div class="table_box middle">
                            <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                        </div>
                        <div class="table_box bottom">
                            <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                        </div>
                        <p class="sub-txt">※ 동일 정보로 <strong>중복 신청 시, 전체 신청이 무효 처리</strong> 될 수 있습니다.</p>
                        <div class="submit" onclick="fnForm('form-1')"><input type="image" value="" class="btn_submit" src="//static.harang-event.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                    </div>
                    <div class="description">
                        <div class="description-info">
                            <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        </div>
                        <span id="target">대상 : ${resVo.target}</span>
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
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>	
    </div>
</div>

<div class="popup-confirm">
    <p>
        본 이벤트는 <br />
        <strong>수도권 거주자</strong>만 <br />신청 가능합니다.
    </p>
    <div class="btn-box">
        <button type="button" class="btn-confirm">확인</button>
        <button type="button" class="btn-out">해당없음<br />(나가기)</button>
    </div>
</div>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        $('.popup-confirm').hide()
	});

    // count
    let currentPage = 1;
    let count = 49; // 초기 인원 수

    $(document).ready(function() {
        const intervalTime = 1000; // 3초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            $('.count').text(count + '명');

            // 페이지별 분기
            if (currentPage === 1) {
                if (count <= 41) return;
            } else {
                if (count <= 9) return;
            }

            count--;
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
    });

    let isAnimating = false; // 애니메이션 상태 플래그

    // 첫번째 페이지
    function show1pg(){    
        currentPage = 1;  // ⭐ 추가
        count = 49;       // ⭐ 추가

        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .agBox', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();

    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return;
        isAnimating = true;

        currentPage = 2;   // ⭐ 추가
        count = 13;        // ⭐ 추가

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
            }
        });

        const isMobile = window.matchMedia("(max-width: 500px)").matches;

        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .agBox', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.set('.count_box', {top: isMobile ? '38%' : '41%'}, "<");
        animation02.to('.roulette', { paddingBottom: '5.19%', duration: 0 }, "<");
        animation02.from('#page-2 .poster_01', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_02', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .paging', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
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
        animation03.to('#page-2 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_02', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-2 .paging', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_01', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_02', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .sub-txt', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .description', {x: +200, opacity: 0, duration: 0.2});
    }


    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        if (num === 1) {
            currentPage = 2;   // ⭐ 추가
            count = 13;        // ⭐ 추가
        }

        if (num === 2) {
            const isChecked = $('input[name="tadd1"]:checked').length > 0;

            if (!isChecked) {
                alert("설문을 선택해주세요");
                return; // 선택되지 않았으면 페이지 이동 안함
            }
        }

        // 페이지 이동 처리
        $('.section0' + num).fadeOut(function() {
            $('.section0' + (num + 1)).css({ 'display': 'flex', 'flex-direction': 'column' });
            $(document).scrollTop(0);
        });
    }

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"]').bind('click', function() {
        $(this).closest('.q_select').find('label').removeClass('on');			
        $(this.parentNode).addClass('on');	
    });

     $('input[name="tadd1"]').on('change', function () {
        if ($(this).val() === "아니오") {
            $('.overlay, .popup-confirm').show();
        }
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm').hide();

        // ✅ 선택 초기화
        $('input[name="tadd1"]').prop('checked', false);
        $('.q_select label').removeClass('on');
    });

    // popup-confirm > 나가기 버튼
    $('.btn-out').on('click', function(){
        $('.overlay, .popup-confirm').hide();

        $('.page').hide();   // 다른 페이지 숨기기
        resetPage1();        // ⭐ GSAP 상태 초기화
        show1pg();      

        $('input[name="tadd1"]').prop('checked', false);
        $('.q_select label').removeClass('on');
        $(document).scrollTop(0);
    });

    function resetPage1() {
        // page-1 자체
        gsap.set('#page-1', { display: 'block', opacity: 1 });

        // 내부 요소들 원위치
        gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .agBox', {
            x: 0,
            y: 0,
            opacity: 1,
            clearProps: 'transform'
        });
    }


    // $('input[name="tadd1"]').on('change', function() {
    //     const val = $(this).val();

    //     if (val === '아니오') {
    //         $('.popup p').html('본 이벤트는 <br /><strong>수도권 거주자</strong>만 <br />신청 가능합니다.');
            
    //         $('.overlay').show();
    //         $('.popup').show();

    //         setTimeout(() => {
    //             $('.overlay').fadeOut();
    //             $('.popup').fadeOut();
    //         }, 1500);

    //         // 선택 해제
    //         $(this).prop('checked', false);
    //         return;
    //     }
    // });

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
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>