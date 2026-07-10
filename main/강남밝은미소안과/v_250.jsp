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
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'SUIT', sans-serif;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: #e8e8e8; overflow: hidden;}
.c_red {color:#fff500;}
.mb_3{margin-bottom: 3%;}
.bottom{display:none;}

.gif-area {display: flex; align-items: center; position: relative; overflow: hidden;}
.gif-area img {width: 100%;}
.gif-area img:nth-child(1) {position: absolute; left: 0; top: 0; width: 50%;}

#wrap {height: 100vh; background-color:#e8e8e8;}
.form {margin-top: 5%; padding: 0 3% 5%; overflow-y: scroll; background-color: transparent;}
.form::-webkit-scrollbar {display: none;}
#location {position: absolute; top: 12%; right: 5%; width: 46.5%;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp{font-size: 28px; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 border */
.chat_set.left .chat_profile_01 img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left .chat_profile_01 img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color:#0069fd; color:#fff;}
.chat_set.left .chat_box {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards;}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: 0.3s fadeIn 0.6s forwards; line-height: 1.3; color: #282828; font-weight: 500;}
.chat_set.left .chat_box .chat_txt em {font-weight: 700; text-decoration: none; font-style: normal;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {width: 10rem; text-align: center; padding: 0.969rem 0.5rem; text-align: center; font-weight: 600; background-color: #404040; color: #fff;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer;}
.chat_set.right .chat_box.disagree_btn { background-color: #404040; }
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {background-color: #00bbb5; color: #fff;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash 0.3s ease-out infinite alternate;}

/* 이벤트기간 */
.form .form_box .description.top{width: 85%; margin: 4% auto 2%; padding: 2%; box-sizing: border-box; background-color: #f4f4f4; border-radius: 0.5em; word-break: keep-all;}
.form .form_box .description.top > p{color: #00594d; font-size: 110%; font-weight: bold; text-align: left;}
.form .form_box .description.top .ad_txt{font-size: 100%; word-break: keep-all; text-align: left; color: #000;}
.form .form_box .description.bottom{color: #fffffc;}

.form .formContents .table_box{padding: 0; width: 85%;}
.form .formContents .table_box table tr td{background-color: #e8e8e8; height: auto;}
.form .formContents .table_box.top table{border-collapse: separate; margin: 0;}
.form .formContents .table_box.top table tr:first-child td{height: auto; padding: 2% 2% 0; border-radius: 0.5em 0.5em 0 0; font-size: 90%; color: #000;}
.form .formContents .table_box.top table tr:last-child td{padding: 1% 2%; border-radius: 0 0 0.5em 0.5em;}
.form .formContents .table_box.top table tr td:nth-of-type(2){background-color: transparent; width: 7px;}


.form .formContents .table_box.tel table tr:first-child td{height: auto; padding: 2% 2% 0; border-radius: 0.5em 0.5em 0 0; font-size: 90%; color: #000;}
.form .formContents .table_box.tel table tr:last-child td{padding: 1% 2%; border-radius: 0 0 0.5em 0.5em;}
.form .formContents .table_box.tel table tr:last-child td .inp{width: 85%; padding-left: 1%;}
.form .table_box table th, .form .table_box table td {background: #eee !important; border-radius: 1rem; padding: 7px 16px !important; font-size:1.75rem;}

.form .table_box {width:100% !important;}

/* 설문 */
.question_box .q_select {display: flex; flex-flow: row wrap; gap: 1%; justify-content: flex-end; width: 100%;}
.question_box .q_select label {position: relative; cursor: pointer; width: max-content;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box {background-color: #00bbb5; color: #fff;}

/* 설문 개별 */
.chat_set[data-value="2"] .q_select label:nth-child(odd) {margin-bottom: 1%;}

.input_box {width: 60%; display: flex; align-items: center; padding-left: 1em; border-radius: 0.5em; border: 1px solid #999; background-color: #fff; padding: 0.5rem 0.5rem 0.5rem 1rem; box-shadow: 0px 5px 10px 0 rgba(221, 221, 221, 0.3);}
.input_box .next_btn {padding: 0.5em 0.7em; text-align: center; font-weight: 600; border-radius: 0.5em ; cursor: pointer; background-color: #404040; color:#fff; width: 25%;}

.form .submit {padding:0; width: 35%; margin: 0;}
input[type="image"] {width:100%; height: 100%;}

.form .agree_txt {text-decoration: none; cursor: pointer;}
.em {color: #00bbb5; font-weight: 800;}

/* 개별 */
#page-4 {flex-direction: column; align-items: end;}
#page-4 .chat_box {width: 15rem;}
#page-4 .input_box {width: 60%;}


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

.form .formGroup .table_box table tr:last-child td input::placeholder {color:#afafaf;}

/* 개인정보처리방침 */
.form .agBox {width: 100%; text-align: left; font-size: 75%; font-family: 'SUIT';}
/* .form .agBox a {font-weight: normal;} */

.form .description {text-align: left; border-radius: 1rem; width: auto; margin: 0; font-family: 'SUIT'}

.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 75%; font-weight: 500; text-align: left; font-family: 'SUIT'}

.container_bottom img {display: block; width: 100%; height: 100%;}

.form input[type="checkbox"]:hover + span:before, .form input[type="checkbox"]:focus + span:before, .form input[type="radio"]:hover + span:before, .form input[type="radio"]:focus + span:before {border-color: #00bbb5;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {top: 25%; border-color: #00bbb5; animation: checkboxAni 0.5s ease-in-out infinite alternate; transform-origin: center center;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {top: 25%}

@keyframes checkboxAni {
    0% {transform: scale(1) translateY(-50%);}
    100% {transform: scale(1.2) translateY(-50%);}
}

@media screen and (max-width: 500px){
    #wrap {height: 100%;}

    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp {font-size: 16px;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}
    .input_box .next_btn {width: 30%;}

	 .desc {font-size: 150%;}
	 .timer-box {font-size: 150%;}

    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .form .table_box table th, .form .table_box table td {font-size: 100%;}
    .form .table_box {padding: 0;}
	.chat_set.right .chat_box {width: 6rem; padding: 0.5rem 0.2rem;}
	#page-4 .chat_box {width: 9rem;}
    .form .submit {width: 45%;}
    .form .submit input[type="image"] {width: 100%;}

    .form .description p, .form .description .ad_txt, .form .description span {padding: 0;}
}

@media screen and (max-width: 430px){
    .input_box {padding: 0.3rem;}

}
/* loader animation */
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
</style>

<!-- //INCLUDES -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<!-- INCLUDES// -->

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
    <div class="container bg_main">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_01.jpg"></div>
        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_03.gif">
            <img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_02.gif">
        </div>
    
        <div class="form">
			<form id="form-1" method="POST" accept-charset="utf-8">

			<!-- chat01 -->
			<div class="chat_set left" data-value="1">
				<div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_04.png"></div>
				<div class="chat_container">
					<div class="chat_box">
						<div class="chat_txt">
							<div class="chat_txt">안녕하세요. <br /><b class="em">노안 백내장 증세</b>가 있으신가요?</div>
						</div>
						<div class="loader_box">
							<span class="loader"></span>
						</div>                         
					</div>

					<!-- <div class="chat_box">
						<div class="chat_txt">
                            <div class="chat_txt"><b class="em agree_txt">혜택 안내</b>에 동의하시나요?</div>
                        </div>
						<div class="loader_box"> <span class="loader"></span> </div>                         
					</div> -->
				</div>
			</div>

			<div class="chat_set right hide question_box" data-value="1">
				<div class="q_select">
					<label><input type="radio" name="tadd1" value="예"><div class="chat_box">예</div></label>
                    <!-- <input type="checkbox" name="agBox" value="Y" checked> -->
					<label><input type="radio" name="tadd1" value="아니오"><div class="chat_box">아니오</div></label>
					<label><input type="radio" name="tadd1" value="잘 모름"><div class="chat_box">잘 모름</div></label>
				</div>
			</div>

            <!-- chat02 -->
			<div class="chat_set left hide" data-value="2">
				<div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_04.png"></div>
				<div class="chat_container">
					<div class="chat_box">
						<div class="chat_txt">
							<div class="chat_txt">현재 <b class="em">거주하시는 지역</b>을 선택해주세요</div>
						</div>
						<div class="loader_box">
							<span class="loader"></span>
						</div>                         
					</div>
				</div>
			</div>

			<div class="chat_set right hide question_box" data-value="2">
				<div class="q_select">
					<label><input type="radio" name="tadd2" value="서울"><div class="chat_box">서울</div></label>
					<label><input type="radio" name="tadd2" value="경기"><div class="chat_box">경기</div></label>
					<label><input type="radio" name="tadd2" value="인천"><div class="chat_box">인천</div></label>
				</div>
			</div>

			<!-- chat03 -->
			<div class="chat_set left hide" data-value="3">
				<div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_04.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">노안 백내장 혜택을 받을 <br />귀하의 <b class="em">성함</b>을 적어주세요</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-3" data-value="3">
				<div class="input_box">
					<input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="성함"/>
					<span class="next_btn">다음</span>
				</div>
				<div class="chat_box input_box_changed hide"></div>
			</div>

			<!-- chat04 -->
			<div class="chat_set left hide" data-value="4">
				<div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_04.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">노안 백내장 혜택을 받을 <br />귀하의 <b class="em">연락처</b>를 적어주세요</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-4" data-value="4">
				<div class="input_box">
					<input type="tel" name="phone" id="phone" class="inp" autocomplete="off" aria-autocomplete="none" maxlength="11" placeholder="연락처">
					<span class="next_btn">다음</span>
				</div>
				<div class="chat_box input_box_changed hide"></div>
			</div>

			<!-- chat05 -->
			<div class="chat_set left hide" data-value="5">
				<div class="chat_profile_01"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_04.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">
								<div class="agBox">
                                    <label>
                                        <input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을<br> 확인하고 동의함</span><a href="#" class="agree_txt">[자세히 보기]</a>
                                    </label>
								</div>
								<div class="description">
									<p id="event-period"></p>
									<div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
									<span class="target">대상 : ${resVo.target}</span>
								</div>
							</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-5" data-value="5">
				<div class="submit submit_agree">
					<input type="image" value="" class="btn_submit" onclick="fnForm('form-1');" src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_05.png"/>
				</div>
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
		<div class="container_bottom">
			<!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div> -->
			<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/hr_260709_GBMS_06.jpg"></div>
		</div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>   
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
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

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');
        let inputValue = $('input[name="tadd1"]:checked').val();

        // if (inputValue === '아니오'){
        //     $(this).prop('disabled', true); 
        //     return;
        // }

        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').closest('label').css('display', 'none');
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

    // add 설문 셀렉 시
    $('input[name*="tadd"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        // let inputValue = $('input[name="tadd1"]:checked').val();
        // if (inputValue === '아니오'){
        //     return; 
        // }

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="3"] .input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="name"]').val();

        if(nameValue.length > 1) {
            $('.chat_set[data-value="3"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="3"] .input_box').addClass('hide');

            showNextComment(3,4, true); // Show next chat_set.left
            showNextComment(3,4, false); // Show next chat_set.right
            $('.bottom').show();
            scrollToBottom();
        } else {
            alert('정확한 이름을 입력해 주세요.');
        }
    });

    // 연락처 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="4"] .input_box .next_btn').on('click', function () {
        var phoneValue = $('input[name="phone"]').val();

        if(phoneValue.length >= 11) {
            const match = phoneValue.match(/^01[0-9]?(\d{4})\d{4}$/);
            const middle = parseInt(match[1], 10);
            if(middle >= 0 && middle <= 1999){
                alert('잘못된 전화번호 형식입니다. (0000~1999번은 입력할 수 없습니다.)')
            } else {
                $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(phoneValue).removeClass('hide').hide().fadeIn();
                $('.chat_set[data-value="4"] .input_box').addClass('hide');

                showNextComment(4,5, true); // Show next chat_set.left
                showNextComment(4,5, false); // Show next chat_set.right
                $('.container_bottom').removeClass('hide')
                $('.bottom').show();
                scrollToBottom();
            }
        } else {
            alert('정확한 연락처를 입력해 주세요.');
        }
    });

    // 원하는 위치로 이동
    function scrollToBottom() {
        $("html, body").delay(1200).animate({ scrollTop: $(document).height() }, 1000, 'linear');
    }

    // 버튼 클릭 시 현재 열린 창 닫기
    function windowClose() {
        window.close();
        self.close();
        window.opener = window.location.href;
        window.open('about:blank', '_self').close();
    }

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
	
		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>