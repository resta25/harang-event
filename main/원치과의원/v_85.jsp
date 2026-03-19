<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
#wrap{ width: 100%; max-width: 600px; overflow: hidden; height: 100vh; /* fallback */ height: 100dvh; /* 최신 브라우저용 */
padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left); font-family: 'noto sans kr';}
.form{height: 91%; background: #fff;}
#wrap .formContents {display: flex; flex-direction: column; height: 100%;}
#form-1 {height: 100%; padding-top: 22.834%; box-sizing: border-box;}

.page {flex-grow: 1; display: flex; flex-direction: column;}
.gage {width: 90%; margin: 0 auto; padding-top: 1rem;}
.question {width: 76.165%; margin: 0 auto;}
.page:not(#page-1){display:none;}

/* 상단 타이머 */
.time-content {position: absolute; top: 3%; left: 50%; transform: translateX(-50%); z-index: 99; width: 100%; box-sizing: border-box; padding: 0 3.334%;}
.timer-box {display: flex; align-items: center; padding: 2.77% 4.465%; border-radius: 13px; border: solid 2px #ccc; background-color: #ebebed; font-family: 'Pretendard'; font-weight: 500; color: #0f1417; font-size: 150%; letter-spacing: -0.6px;}
.timer-box .date {display: flex; align-self: center;}
.timer-box .time {display: flex; margin-left: 8.5%;}
.timer-box .text-box {display: flex; align-items: center; justify-content: flex-end; gap: 7px; margin-left: auto;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17.6%;}
.timer-box .text-box .text {flex-shrink: 0; font-weight: 800; letter-spacing: -0.6px; color: #0f1417;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

.page-inner {position: relative; background: #ebebed; border-radius: 2rem 2rem 0 0; margin-top: 2rem; flex-grow: 1; background: #ebebed; border-radius: 2rem 2rem 0 0; margin-top: 3.1875rem; flex-grow: 1; padding: 9% 7% 0;}
.page-inner::before {content: ''; position: absolute; top: -3.64%; left: 50%; transform: translateX(-50%); width: 40.834%; height: 100%; max-height: 52px; background: url("//static.harang-event.com/event/v_${eventSeq}/event_main_02.png") no-repeat center top / 100%;}
.page-inner > img {position: absolute; top: -3%; left: 50%; transform: translateX(-50%); width: 90%; }
.page-inner .text-img {width: 60%; margin: 3rem auto 1rem;}
.poster_01 .img-area:nth-child(1) {width: 82.667%; margin: 0 auto;}
.poster_01 .img-area:nth-child(2) {width: 100%;}
.page-inner .text-img {flex-shrink: 0; margin: 0; margin-top: 3.49%;}

/* page-1 */
#page-1 .paging {}
#page-1 .paging.btn_box {}
#page-1 .paging button {background-color: transparent; cursor: pointer;}
button img {display: block; width: 100%;}
/* .page .poster_01 > .img-area:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* page-2 */
#page-2 .page-inner {flex-direction: column; justify-content: flex-start;}
/* #page-2 > .poster_01:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* page-3 */
/* #page-3 .form-box {flex-grow: 1; margin-top: 0;} */
/* #page-3 > .img-area:nth-child(2) {width: 70%; margin: 2rem auto;} */

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn {font-family: 'Pretendard';
  font-size: 125%;
  line-height: 1.3;
  letter-spacing: -1px;
  text-align: left;
  color: #0f1417;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 채팅 */
.hide {display: none !important;}
.chat_set.left .chat_profile_01 img, .chat_set.left .chat_box {border: 1px solid #ddd;}
.chat_set:not(:last-child) {margin-bottom: 3%;}
.em {color: #29235f; font-weight: 700;}
.chat_counsel {margin: 0 0 7px; padding: 0; font-family: 'Pretendard'; font-size: 137%; font-weight: 700; letter-spacing: -0.55px; color: #545454;}

.input_box {
    width: 80%;
    display: flex;
    align-items: center;
    column-gap: 14px;
}
.input_box + .input_box {margin-top: 1.745%;}
.input_box .label {width: 19%; text-align: justify; font-family: 'Pretendard'; font-size: 155%; font-weight: 800; letter-spacing: -1.28px; color: #323232; height: 30px; line-height: 30px}
.input_box .label::after {content: ""; display: inline-block; width: 100%;}
.form .inp {border: 1px solid #d9d9d9; background-color: #fff; border-radius: 0.5em; padding-left: 1em; padding: 0.5rem 1.25rem;   font-family: 'Pretendard'; font-size: 145%; font-weight: 500; letter-spacing: -1.15px; color: #323232;}
.form .inp::placeholder {color: #aaa;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left .chat_profile_01 img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color:#0069fd; color:#fff;}
.chat_set.left .chat_box {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards;}
/* loader 사라진 뒤 애니메이션 실행 */
.chat_set.left .chat_box.loaded {
    animation: .3s chatBoxSizeUp 0.5s forwards;
}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: 0.3s fadeIn 0.6s forwards; line-height: 1.3;}
.chat_set.left .chat_box .chat_txt em {font-weight: 700; text-decoration: none; font-style: normal;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {width: 8rem; padding: 1rem 0.5rem; text-align: center; font-weight: 700; background-color: #0f1417; color: #fff;}
.chat_set.right label.active .chat_box {background-color: #6045f4;}
.chat_set.right .chat_box span {font-size: 70%; font-weight: 400;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer;}
.chat_set.right .chat_box.disagree_btn { background-color: #404040; }
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {background-color: #151598; color: #fff;}
#page-2 .chat_set.right {flex-direction: column; align-items: flex-end;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash 0.3s ease-out infinite alternate;}

@keyframes flash {
    0% { background-color: #0002; box-shadow: 1em 0 #0002, -1em 0 #000; }
    50% { background-color: #000; box-shadow: 1em 0 #0002, -1em 0 #0002; }
    100% { background-color: #0002; box-shadow: 1em 0 #000, -1em 0 #0002;}
}

@keyframes chatBoxSizeUp {
    100% {width: auto; height: auto;}
}

@keyframes fadeIn {
    0% {opacity: 0;}
    100% {opacity: 1;}
}

.form .agBox {width: 100%; margin-top: 4.64%; font-family: 'Pretendard'; font-size: 65%; font-weight: 300; line-height: 1.42; color: #595959; text-align: left;}

/* db 영역 */
.form-box {margin-top: 4%;}
.form .formContents .description{width:90%;margin:0 auto;text-align:center;box-sizing:border-box; color: #fff;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .form_box {padding: 0 2rem;}
.form .question_box {text-align: center; padding: 0; margin-bottom: 1%;}
.form .question_box .q_select {display: flex; align-items: center; column-gap: 13px; justify-content: space-between;}
.form #page-2 .question_box .q_select {justify-content: center; column-gap: 2.2%; }
.form .question_box .q_select label{width:100%;}
.form .question_box .q_select label img{width:100%;}
.form .form_box > div + div {margin-top: 1.83%;}
.form .form_box .user-info input {border-radius: 19px; border: solid 2px #5077ff; background-color: #fff; font-size: 200%; padding: 3.2% 3%; text-align: center; font-family: 'Pretendard';}
.form .form_box .user-info input::placeholder {color: #999;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 4% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

.btn-agreement {display: flex; align-items: center; justify-content: center;  margin-top: 1.5%; font-family: 'Pretendard'; font-size: 113%; font-weight: 600; letter-spacing: -0.9px; text-align: center; color: #a9b2c7;}

/* submit btn */
.form .submit {width: 28.15%; margin: 0; margin-left: auto; margin-bottom: 1%; padding: 2% 0 0;}
.form .submit input[type="image"] {width: 100%;}

.form .description p, .form .description .ad_txt, .form .description span {font-size: 81%; font-weight: 400; color: #999; font-family: 'Pretendard'; display: block; text-align: right;}
.form .description span {padding: 0;}
.form .description .ad_txt {padding: 0;}

@media screen and (max-width: 500px){
    .timer-box {font-size: 110%;}
    .timer-box .time {margin-left: 5.5%;}
    
    .page-inner {margin-top: 2.1875rem;}
    
    .chat_counsel {font-size: 110%;}
    .chat_box {font-size: 110%;}
    .chat_set.right .chat_box {width: 4rem; padding: 0.75rem 0.5rem;}

    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}

    .form .form_box .user-info input {border-radius: 12px; font-size: 150%;}
    .form .form_box > div + div {margin-top: 2%;}

    .question,
    .form .form_box {padding: 0 1rem;}

    .form {height: 92%;}

    .input_box .label {font-size: 120%; width: 20.5%;}
    .form .inp {font-size: 125%;}
    .form .description .ad_txt {padding-top: 0;}
    .form .submit {margin-bottom: 2%;}

    .form .formContents .description {margin-right: 0;}

    .form .description p, .form .description .ad_txt, .form .description span {
        font-size: 70%;
    }

}

</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
        <div class="time-content">
            <div class="timer-box">
                <div class="date">
                    <span id="year"></span>
                    <span id="month"></span>
                    <span id="day"></span>
                    <span id="week-day"></span>
                </div>
                <div class="time">
                    <span id="hour"></span>
                    <span id="minute"></span>
                </div>
                <div class="text-box">
                    <img src="//static.harang-event.com/event/v_${eventSeq}/loading_01.png">
                    <span class="text">현재 접수 가능</span>
                </div>
            </div>
        </div>

        <div class="formContents">
            <div class="poster_01">
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.png"></div>
            </div>

            <section class="page" id="page-1">
                <div class="page-inner img-area">
                    <!-- chat01 -->
                    <div class="chat_set left" data-value="1">
                        <div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/profile_01.png"></div>
                        <div class="chat_container">
                            <p class="chat_counsel">상담사 김지연</p>
                            <div class="chat_box">
                                <div class="chat_txt">반갑습니다 고객님. <br />
                                    <b class="em">임플란트 20만원 혜택</b>을 지원해드립니다. <br />
                                    혜택을 접수해드릴까요?

                                    <div class="agBox">
                                        <input name="agBox" type="checkbox" checked value="Y">개인정보취급방침<a href="#" class="agree_txt">[자세히 보기]</a>
                                    </div>
                                </div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>                         
                            </div>
                        </div>
                    </div>

                    <div class="chat_set right hide question_box" data-value="1">
                        <div class="q_select btn_box paging">
                            <label onclick="show2pg()"><input type="hidden" name="agBox" value="Y"><div class="chat_box">네 <span>(동의)</span></div></label>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- chat02 -->
            <!-- <section class="page" id="page-2">
                <div class="page-inner">
                    <div class="chat_set left" data-value="2">
                        <div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/profile_01.png"></div>
                        <div class="chat_container">
                            <p class="chat_counsel">상담사 김지연</p>
                            <div class="chat_box">
                                <div class="chat_txt">가장 혜택이 좋은 치과를 연결할게요 <br />
                                    <b class="em">거주하시는 지역</b>을 선택해주세요
                                </div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>                         
                            </div>
                        </div>
                    </div>

                    <div class="chat_set right hide question_box" data-value="2">
                        <div class="q_select">
                            <label onclick="show3pg()"><input type="radio" name="tadd1" value="서울"><div class="chat_box">서울</div></label>
                            <label onclick="show3pg()"><input type="radio" name="tadd1" value="경기도"><div class="chat_box">경기도</div></label>
                            <label onclick="show3pg()"><input type="radio" name="tadd1" value="인천"><div class="chat_box">인천</div></label>
                        </div>
                    </div>
                </div>
            </section> -->

            <!-- chat03 -->
            <section class="page" id="page-2">
                <div class="page-inner">
                    <div class="chat_set left" data-value="2">
                        <div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/profile_01.png"></div>
                        <div class="chat_container">
                            <p class="chat_counsel">상담사 김지연</p>
                            <div class="chat_box">
                                <div class="chat_txt"><b class="em">치과가 연결되었습니다.</b> <br />
                                    혜택 받으실 분의 <b class="em">이름</b>과 <b class="em">연락처</b>를 <br />
                                    남겨주시면 전화 드리겠습니다.
                                </div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>                         
                            </div>
                        </div>
                    </div>
    
                    <div class="chat_set right hide question_box" data-value="2">
                        <div class="input_box">
                            <span class="label">이 름</span>
                            <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름 입력" />
                        </div>
                        <div class="input_box">
                            <span class="label">연락처</span>
                            <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처 입력" />
                        </div>
                        <div class="chat_box input_box_changed hide"></div>
    
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png" /></div>
                        
                        <div class="description">
                            <div class="description-info">
                                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            </div>
                            <span id="target">대상 : ${resVo.target}</span>
                        </div>
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
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->

<script>
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
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

            // 0=일,1=월,...6=토
            var week = ['일', '월', '화', '수', '목', '금', '토'][now.getDay()];

            var hh = pad2(now.getHours());
            var mm = pad2(now.getMinutes());

            $('#year').text(y + '.');
            $('#month').text(m + '.');
            $('#day').text(d );
            $('#week-day').text('(' + week + ')');

            $('#hour').text(hh + ':');
            $('#minute').text(mm);
        }

        renderNow();

        // 매 분 정각에 맞춰 갱신되게(드리프트 최소화)
        var now = new Date();
        var msToNextMinute = (60 - now.getSeconds()) * 1000 - now.getMilliseconds();

        setTimeout(function () {
            renderNow();
            setInterval(renderNow, 60 * 1000);
        }, msToNextMinute);

        // 만약 week-day를 따로 쓰고 싶으면 renderNow에서 아래처럼 바꾸면 됨:
        // $('#day').text(d);
        // $('#week-day').text('(' + week + ')');
    });

    let isAnimating = false; // 애니메이션 상태 플래그
   
    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return;
        isAnimating = true;

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
            }
        });

        animation02.to('#page-1 .page-inner', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'flex', duration: 0 });
        animation02.from('#page-2 .page-inner', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        setTimeout(() => {
            // page2 채팅 시작
            showNextComment(1, 2, true);
            showNextComment(1, 2, false);
        }, 1000);
        // animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }
    // // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .page-inner', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'flex', duration: 0.1 });
        animation03.from('#page-3 .poster_01', {x: +200, opacity: 0, duration: 0.2, ease: "power1.out"}, 0);
        animation03.from('#page-3 .page-inner', {x: +200, opacity: 0, duration: 0.4, stagger: 0.1});

        setTimeout(() => {
            // page3 채팅 시작
            showNextComment(2, 3, true);
            showNextComment(2, 3, false);
        }, 1000);
    }

    $('.q_select label').on('click', function() {
        $(this).closest('.q_select').find('label').removeClass('active');
        $(this).addClass('active');
    });

    // 개인정보처리방침 클릭 시 오픈
    $('.agree_txt').on('click', function() {
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    function showNextComment(currentValue, nextValue, isLeft) {
        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';
        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function() {
            $(this).find('.loader_box').delay(200).fadeOut(); // loader
        });

        if (selector) {
            setTimeout(function () {
                $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function () {
                });
            }, 1000);
        }
    }
    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="2"] .input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="name"]').val();

        if(nameValue.length > 1) {
            $('.chat_set[data-value="2"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="2"] .input_box').addClass('hide');

            showNextComment(2,3, true); // Show next chat_set.left
            showNextComment(2,3, false); // Show next chat_set.right
            $('.bottom').show();
            // scrollToBottom();
        } else {
            alert('정확한 이름을 입력해 주세요.');
        }
    });

    // 연락처 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="3"] .input_box .next_btn').on('click', function () {
        var phoneValue = $('input[name="phone"]').val();

        if(phoneValue.length >= 11) {
            const match = phoneValue.match(/^01[0-9]?(\d{4})\d{4}$/);
            const middle = parseInt(match[1], 10);
            if(middle >= 0 && middle <= 1999){
                alert('잘못된 전화번호 형식입니다. (0000~1999번은 입력할 수 없습니다.)')
            } else {
                $('.chat_set[data-value="3"] .chat_box.input_box_changed').text(phoneValue).removeClass('hide').hide().fadeIn();
                $('.chat_set[data-value="3"] .input_box').addClass('hide');

                showNextComment(3,4, true); // Show next chat_set.left
                showNextComment(3,4, false); // Show next chat_set.right
                $('.container_bottom').removeClass('hide')
                $('.bottom').show();
                scrollToBottom();
            }
        } else {
            alert('정확한 연락처를 입력해 주세요.');
        }
    });

    // 엔터키 막기
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // 기본 전송 동작 방지
        }
    });

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

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
			// ,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '지역'
			// ,'add4': '지역'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>