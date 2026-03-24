<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css"
  type="text/css"
/>
<style>
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
#wrap {max-width: 600px; display: flex; flex-direction: column; font-family: 'Pretendard'; height: 100dvh; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); background: url('//static.harang-event.com/event/v_${eventSeq}/bg_01.png') no-repeat center center / 100% 100%;}
.form {flex-grow: 1; background: transparent;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 공통 */
.container { text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
.form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'SUIT'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
.form strong {color: #f20000; font-weight: 800; font-family: 'SUIT';}
.form .name-result {}
.next {cursor: pointer;}
.page:not(#page-1):not(#page-10) {padding: 7.167% 8.335%; padding: 4% 8.335%; font-size: 16px;}
.page:not(#page-1):not(#page-10) .question .img-area {width: 87.8%; margin: 0 auto;}

/* 이전,다음 버튼 */
.paging {margin-top: 7.4%; display: flex; align-items: center; column-gap: 7px;}
.paging button {background-color: transparent;}
.paging .prev {flex-shrink: 0; width: 32.6%; padding: 3.2% 0; background-color: #dedede; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #222;}
.paging .next {flex-shrink: 0; width: 65.93%; padding: 3.2% 0; background-color: #013797; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #fff;}
/* .paging button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;} */
.paging img{ width: 100%;}

/* 첫번째 페이지 */
#page-1 {height: 100%;}
#page-1 .video-area {padding: 2.5% 4.585% 0;}
#page-1 .video-area video {display: block; width: 100%; height: 100%; border-radius: 30px;}
#page-1 .agBox {font-size: 150%; font-family: 'Pretendard'; font-weight: 500; margin: 3.835% auto 3.667%;}
#page-1 .agBox a {text-decoration: underline;}
#page-1 .next {display: flex; align-items: center; justify-content: center; width: 63.167%; margin: 0 auto; padding: 2.835% 0; font-size: 300%; font-family: 'Pretendard'; color: #fff; background-color: #013797; border-radius: 20px; font-weight: 700; text-align: center;}

/* 설문영역 */
.q_select {display: flex; flex-flow: row wrap; justify-content: center; gap: 1rem; margin-top: 5.2%;}
.q_select label {width: 100%; border: 2px solid #dedede; font-family: 'Pretendard'; font-size: 170%; color: #222; display: flex; align-items: center; justify-content: center; padding: 2.6% 0; border-radius: 10px; font-weight: 500; background-color: #f7f5f2;}
.q_select label.active {border-color: #013797; background-color: #e1eafa; color: #013797; font-weight: 700;}
.q_select .sub_txt {margin: 0; text-align: center; color: #666; font-size: 130%; font-family: 'Pretendard'; font-weight: 500;}

#page-4 .popup {display: none; position: fixed; top: 0; left: 50%; transform: translateX(-50%); width: 100%; max-width: 600px; height: 100%; z-index: 998; background-color: rgba(0, 0, 0, 0.7);}
#page-4 .popup .popup-content {background: #fff; border-radius: 30px; width: 70%; box-sizing: border-box; padding: 7% 6%; margin: 0 auto; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
#page-4 .popup .img-area {width: 70%; margin: 0 auto;}
#page-4 .popup .btn-close-popup {display: flex; align-items: center; justify-content: center; width: 100%; margin: 7% auto 0; padding: 2.835% 0; font-size: 210%; font-family: 'Pretendard'; color: #fff; background-color: #013797; border-radius: 20px; font-weight: 700; text-align: center;}

#page-8 .q_select label {width: 48.2%;}

#page-10 {position: relative;}
#page-10 .paging {padding: 0 8.335%; font-size: 125%;}

.q_select .inp {background-color: #fff; padding: 2.99%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; text-align: center;}
.q_select .inp::placeholder {color: #dedede;}
.q_select textarea {width: 100%; padding: 8.96%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; resize: none; height: 25vh;}
.q_select textarea::placeholder {color: #dedede;}
.form .submit {flex-shrink: 0; width: 65.93%; padding: 0;}
.form .submit input[type="submit"] {width: 100%; padding: 4.305% 0; border: none; background-color: #013797; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #fff;}

.form .checkbox {text-align: center; display: flex; align-items: center; justify-content: center; font-family: 'Pretendard'; font-size: 220%; font-weight: 700; margin-top: 2.335%}
.form .checkbox input[type="checkbox"] {width: 28px; height: 28px; margin-right: 7px; appearance: none; background: url("//static.harang-event.com/event/v_${eventSeq}/check_off.png") no-repeat center center / 100% 100%; clip: unset; position: static; transition: 0s;}
.form .checkbox input[type="checkbox"]:checked {background-image: url("//static.harang-event.com/event/v_${eventSeq}/check_on.png");}

.toast {display: none; position: absolute; left: 50%; bottom: 15%; transform: translateX(-50%); text-align: center; width: 92.5%; background-color: rgba(0, 0, 0, 0.8); color: #fff; font-size: 200%; font-family: 'Pretendard'; font-weight: 600; border-radius: 8px; padding: 2.75% 2%; box-sizing: border-box;}
.toast strong {color: #fff949;}

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

    #page-1 .next {border-radius: 15px;}
    .q_select label {font-size: 125%;}
    .paging .prev, .paging .next {font-size: 125%;}
    #page-10 .paging {font-size: 175%; margin-top: 4.4%;}
    #page-10 .prev, .form .submit input[type="submit"]  {font-size: 170%;}
    .q_select .sub_txt {font-size: 95%;}
    .q_select .inp {font-size: 105%;}
    .q_select textarea {font-size: 105%;}

    #page-4 .popup .popup-content {width: 80%;}
    #page-4 .popup .btn-close-popup {font-size: 145%;}
    #page-8 .q_select label {width: 47.7%;}
    .form .checkbox {font-size: 220%; margin-top: 4.335%;}
    .form .checkbox input[type="checkbox"] {width: 22px; height: 22px; margin-right: 4px;}
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
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
                <div class="img-area video-area">
                    <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                </div>
                <div class="agBox">
                    <a href="#" class="btn-agreement">개인정보 처리방침</a> 동의 후 확인하세요.
                    <input type="hidden" name="agBox" value="Y" checked>
                </div>
                <div class="page_inner">
                    <button type="button" class="next" onclick="pageFuc(1,$(this))">동의 후 내 탕감률 % 확인</button>
                </div>
            </section>
            
            <section class="page hide section02" id="page-2">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_01.png"></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="네. 사용하고 있습니다">네, 사용하고 있습니다</label>
                            <label><input type="radio" name="tadd1" value="아니요. 사용하고 있지 않습니다">아니요, 사용하고 있지 않습니다</label>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(2,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section03" id="page-3">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_02.png"></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" value="아니요. 없습니다">아니요, 없습니다</label>
                            <label><input type="radio" name="tadd2" value="네. 있습니다">네, 있습니다</label>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(3,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section04" id="page-4">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_03.png"></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd3" value="2,000만원~3,000만원">2,000만원~3,000만원</label>
                            <label><input type="radio" name="tadd3" value="2,000만원~3,000만원">2,000만원~3,000만원</label>
                            <label><input type="radio" name="tadd3" value="5,000만원~1억원">5,000만원~1억원</label>
                            <label><input type="radio" name="tadd3" value="1억원 이상">1억원 이상</label>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(4,$(this))">다음</button>
                </div>
                
                <div class="popup">
                    <div class="popup-content">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/popup_txt.png"></div>
                        <button class="btn-close-popup">확인</button>
                    </div>
                </div>
            </section>

            <section class="page hide section05" id="page-5">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_04.png"></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd4" value="200만원 미만">200만원 미만</label>
                            <label><input type="radio" name="tadd4" value="300만원 미만">300만원 미만</label>
                            <label><input type="radio" name="tadd4" value="400만원 미만">400만원 미만</label>
                            <label><input type="radio" name="tadd4" value="400만원 이상">400만원 이상</label>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(5,$(this))">다음</button>
                </div>
            </section>
            
            <section class="page hide section06" id="page-6">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_05.png"></div>
                        </div>
                        <div class="q_select">
                            <p class="sub_txt">한글 성함을 입력해주세요</p>
                            <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(6,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section07" id="page-7">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_06.png"></div>
                        </div>
                        <div class="q_select">
                            <p class="sub_txt">010 포함 11자리를 숫자만 입력해주세요</p>
                            <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요">
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(7,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section08" id="page-8">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_07.png"></div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd5" value="최대한 빠르게">최대한 빠르게</label>
                            <label><input type="radio" name="tadd5" value="오전 9~10시">오전 9~10시</label>
                            <label><input type="radio" name="tadd5" value="오전 10~11시">오전 10~11시</label>
                            <label><input type="radio" name="tadd5" value="오전 11~12시">오전 11~12시</label>
                            <label><input type="radio" name="tadd5" value="오후 12~1시">오후 12~1시</label>
                            <label><input type="radio" name="tadd5" value="오후 1~2시">오후 1~2시</label>
                            <label><input type="radio" name="tadd5" value="오후 2~3시">오후 2~3시</label>
                            <label><input type="radio" name="tadd5" value="오후 3~4시">오후 3~4시</label>
                            <label><input type="radio" name="tadd5" value="오후 4~5시">오후 4~5시</label>
                            <label><input type="radio" name="tadd5" value="오후 5~6시">오후 5~6시</label>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(8,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section09" id="page-9">
                <div class="page_inner">
                    <div class="question_box">
                        <div class="question">
                            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/q_08.png"></div>
                        </div>
                        <div class="q_select">
                            <textarea name="tadd6" id="tadd6"  autocomplete="off" placeholder="문의내용 입력"></textarea>
                        </div>
                    </div>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <button type="button" class="next" onclick="pageFuc(9,$(this))">다음</button>
                </div>
            </section>

            <section class="page hide section10" id="page-10">
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png"></div>
                <div class="checkbox confirm">
                    <label>
                        <input type="checkbox">
                        <strong>위 필수 사항</strong>을 모두 확인하였습니다.
                    </label>
                </div>
                <div class="paging">
                    <button type="button" class="prev">이전</button>	
                    <div class="submit"><input type="submit" value="신청 완료하기" onclick="fnForm('form-1');"></div>
                </div>

                <div class="toast">
                    위 필수 사항을 모두 확인 후 <strong>체크를 누르셔야 신청이 완료</strong> 됩니다.
                </div>
            </section>


            <!-- <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>

            <div class="img-area arrow-img"><img src="//static.harang-event.com/event/v_${eventSeq}/arrow.png"></div>
            <div class="img-area result-area">
                <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.png" alt="">
                <span class="name-result"></span>
            </div>

            <div class="description bottom">
                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 :  ${resVo.target}</span>
            </div> -->
            
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

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
        event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    $(document).on('click', '.next', function(e){
        e.stopPropagation();   // ✅ wrap으로 이벤트 전달 차단
    });

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        var sectionNum = String(num).padStart(2, '0'); // ✅ 핵심
        var $currentPage = $('.section' + sectionNum);

        var $checked = $currentPage.find('input[name^="tadd"]:checked');
        var $inputName = $currentPage.find('input[name="name"]');
        var $inputPhone = $currentPage.find('input[name="phone"]');

        if ($currentPage.find('input[name^="tadd"]').length > 0 && $checked.length === 0) {
            alert("설문을 선택해주세요.");
            return;
        }

        if ($inputName.val() == '') {
            alert("성함을 입력해주세요.");
            return;
        }

        if ($inputPhone.val() == '') {
            alert("전화번호를 입력해주세요.");
            return;
        } 

        if(sectionNum == '04'){
            if($currentPage.find('input[name^="tadd"]:checked').val() == '2,000만원 이하'){
                var $popup = $('#page-4 .popup');
                $popup.fadeIn();
                return;
            }
        }

        if(sectionNum == 7){
            var phoneValue = $('input[name="phone"]').val();
    
           if(phoneValue.length >= 11) {
               const match = phoneValue.match(/^01[0-9]?(\d{4})\d{4}$/);
               const middle = parseInt(match[1], 10);
               if(middle >= 0 && middle <= 1999){
                   alert('잘못된 전화번호 형식입니다. (0000~1999번은 입력할 수 없습니다.)')
                   return;
               }
           } else {
               alert('정확한 연락처를 입력해 주세요.');
               return;
           }
        }

        var nextPage = num + 1;
        var nextSectionNum = String(nextPage).padStart(2, '0'); // ✅ 여기
        var $nextPage = $('.section' + nextSectionNum);

        $currentPage.fadeOut(function() {
            $nextPage.css({ 
                'display': 'flex', 
                'flex-direction': 'column' 
            });

            $(document).scrollTop(0);

            restoreCheckedState($nextPage); // ✅ 정상 동작
        });
    }

    // 이전 버튼
    $('.paging button.prev').on('click', function() {
        var $currentPage = $(this).closest('.page');
        var $prevPage = $currentPage.prev('.page');

        if ($prevPage.length > 0) {
            $currentPage.hide();
            $prevPage.show();

            // ✅ 여기 추가 (핵심)
            restoreCheckedState($prevPage);
        }

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
            
            case 'prev' :    
            // 1. 현재 페이지와 이전 페이지 정의
            var $currentPage = $(this).closest('.page');
            var $prevPage = $currentPage.prev('.page');

            if ($prevPage.length > 0) {
                // 2. 현재 페이지를 즉시 숨김 (fadeOut 대신 hide 사용으로 딜레이 제거)
                $currentPage.hide();
                
                // 3. 이전 페이지를 즉시 보여줌
                $prevPage.show();
            }
            break;
        } 
    });

    function restoreCheckedState($page) {
        $page.find('.q_select').each(function () {
            const $group = $(this);

            // 기존 active 제거
            $group.find('label').removeClass('active');

            // checked 된 input 찾기
            const $checked = $group.find('input:checked');

            if ($checked.length > 0) {
                $checked.parent('label').addClass('active');
            }
        });
    }

    $('input[name="tadd3"]').on('change', function () {
        var val = $(this).val();
        var $popup = $('#page-4 .popup');

        if (val === '2,000만원 이하') {
            $popup.fadeIn();
        } else {
            $popup.fadeOut();
        }
    });

    $('#page-4 .popup .btn-close-popup').on('click', function(){
        var $popup = $('#page-4 .popup');
        $popup.fadeOut();
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
    // $('input[name="name"]').on('keyup', function(){
    //     var nameValue = $(this).val();
    //     $('.name-result').text(nameValue + '님');
    //     $('.result-area .name-result').text(nameValue);
    // });

    // 설문 텍스트 출력
    // $('input[name="tadd1"]').on('click', function(){
    //     var nameValue = $(this).val();
    //     $('.add-result').text(nameValue);
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

        const isChecked = $('#page-10 .checkbox input[type="checkbox"]').is(':checked');
        const $toast = $('#page-10 .toast');

          if (!isChecked) {
            $toast.fadeIn();

            setTimeout(function(){
                $toast.fadeOut();
            }, 2000);

            return; // ❗ 제출 막기
        } else {
            $toast.hide();
        }

        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

        let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}

		let selectedRadio4 = procForm.querySelector('input[name="tadd4"]:checked');
		if (!selectedRadio4) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
		}

        let selectedRadio5 = procForm.querySelector('input[name="tadd5"]:checked');
		if (!selectedRadio5) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add5']").value = selectedRadio5.value;
		}

        let selectedRadio6 = procForm.querySelector('textarea[name="tadd6"]').value;
        procForm.querySelector("input[name='add6']").value = selectedRadio6;

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
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'add4': '설문4'
			,'add5': '설문5'
			// ,'add6': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>