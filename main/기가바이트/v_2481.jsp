<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard';
    font-weight: 100;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 200;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.otf') format('opentype');
}
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
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 900;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.otf') format('opentype');
}
#wrap {font-family: 'Pretendard'; background: #fff; line-height: 1.2;}
.pointColor {color: #00a2ff;}

/* 하단 form-inner */
/* .form_inner {padding: 8% 5%;} */
#form-2 .form_inner {padding: 8% 5%;}
#form-1 .form_inner {padding: 3% 5% 8%;}
.form_txt {font-size: 135%; margin-top: 4rem; margin-bottom: 0; font-weight: 500; word-break: keep-all; text-align: center;}

/* 타이머 */
.img-container {position: relative;}
.timer_box {position: absolute; top: 22%; left: 50%; transform: translateX(-50%); width: 100%; padding: 0 2.375rem; box-sizing: border-box;}
.timer_box span {position: absolute; top: 18%; color: #fff; font-size: 4.5rem; font-weight: 700;}
#day {left: 21.2%;}
#hour {left: 36.5%;}
#minute {left: 52.5%;}
#second {left: 68.2%;}

/* 카운트 인원 */
.count-box {position: absolute; bottom: 5.4%; left: 67%; transform: translateX(-50%); width: max-content;}
.count-box span img {width: 5%;}
#count {color: #1cdcff; font-size: 2.5rem; font-weight: 700;}

/* 설문영역 */
.question_box:not(:nth-of-type(2)) {margin-bottom: 4rem;}
.question_box .question { font-weight: 700; padding-bottom: 3%;}
.question_box .question p {font-size: 2.7rem; padding: 0; margin: 0 auto; width: max-content; letter-spacing: -1px;}
.question_box .question p:nth-of-type(2) {position: relative; z-index: 1;}
.question_box .question p:nth-of-type(2)::after {display: inline-block; content: ''; width: 100%; height: 20px; background: #baf3ff; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); z-index: -1;}
.umderline {position: relative; display: inline-block; z-index: 1;}
.umderline::after {display: inline-block; content: ''; width: 100%; height: 20px; background: #baf3ff; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%); z-index: -1;}
.q_select {display: flex; justify-content: space-between; gap: 1%;}
.q_select:nth-of-type(1) label {width: calc(100% / 4);}
.q_select:nth-of-type(2) label {width: calc(100% / 3);}
.q_select label img {width: 100%;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {padding: 8% 0 0;}
.formGroup .user_info {display: flex; align-items: center; background: #f7f7f7; border: 2px solid #000; border-radius: 0.5em; padding: 1.2em 2em; padding-right: 0; margin-bottom: 2%;}
.formGroup .user_info .legend {width: 25%; font-size: 180%; font-weight: 700;}
.formGroup .user_info .legend::after {content: '*'; display: inline-block; color: #007eff;}
.formGroup .user_info input {font-size: 150%;}

/* 개인정보처리방침 영역 */

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {padding-top: 5%;}

/* submit */
.form .submit {width: 60%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

.form .agBox {font-size: 0.9rem; margin: 1rem auto; width: 100%;}

/* 실시간 신청 현황 */
.subscribe_container {background: #fff; padding: 0 1.5625rem 1.625rem;}
.subscribe_bg {padding: 3% 5%; overflow: hidden;}
.subscribe_container .title {font-family: 'Paperlogy'; padding: 2rem 0 0; font-size: 2.2rem; text-align: center; color: #007eff; font-weight: 600; margin-bottom: 1.6875rem;}
.subscribe_container .img-area {width: 40%; margin: 3% auto;}
.subscribe {height: 235px; background: #fff; padding: 0;}
.subscribe .content {display: flex; background: #f5f5f5; justify-content: space-between; padding: 0.5rem 2rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
.subscribe .content:not(:last-child) {margin-bottom: 2%;}
.subscribe .content > div {font-size: 1rem; width: calc(100% / 5); text-align: center;}
.subscribe .content .date {display: flex; align-items: center; gap: 4rem; font-variant-numeric: tabular-nums;}
.subscribe .content .add2 {width: 30%;}
.subscribe .content .text {border: 1px solid #000; width: 15%; text-align: center; border-radius: 0.2rem;}
.yellow-bg { background: #fff71d; padding: 1em; border: 1px solid #000;}


@media screen and (max-width: 480px){
    .form_txt {font-size: 90%; margin-top: 2rem;}
}

@media screen and (max-width: 430px){
    .timer_box span {font-size: 2.2rem;}
    #second {left: 69.2%;}
    .count-box span {font-size: 120%;}
    .question_box .question p {font-size: 180%;}
    .formGroup .user_info .legend {font-size: 150%; width: 30%;}
    .subscribe_bg {padding: 0;}
    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 0.5625rem 1.625rem;}
    .subscribe .content .name {width: 8%;}
    .subscribe .content .add1 {width: 10%;}
    .subscribe .content .text {width: 15%;}

    .count-box {bottom: 5%;}
    #count {font-size: 1.3rem;}
    .subscribe_container .title {font-size: 1.8rem; margin-bottom: 0.6875rem;}
    .subscribe .content .date {gap: 2rem;}
    .question_box:not(:nth-of-type(2)) {margin-bottom: 2rem;}
}

@media screen and (max-width: 414px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    .subscribe .content .text {width: 18%;} 
        .subscribe .content > div {margin-right: 0; font-size: 0.7rem;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
    .count-box {bottom: 5.3%;}
    #count {font-size: 1.1rem; }
}


</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css" type="text/css"/>
<div id="wrap"> 
    <div class="img-container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area timer_box">
            <span id="day"></span>
            <span id="hour"></span>
            <span id="minute"></span>
            <span id="second"></span>
        </div>
    </div>
    <div class="img-area">
        <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg">
        <div class="count-box">
            <span id="count"></span>
        </div>
    </div>
    
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <p class="form_txt">※ 통신요금 연체 및 신용불량 고객님은 현금지원금 혜택을 받을 수 없습니다.</p>
        <div class="form_inner">
            <div class="question_box">
                <div class="question">
                    <p><span class="pointColor">희망</span>하시는 <span class="pointColor">통신사</span>를 <span class="umderline">선택해주세요.</span></p>
                </div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="SK"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                    <label><input type="radio" name="tadd1" value="KT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    <label><input type="radio" name="tadd1" value="LG"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                    <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                </div>
            </div>

            <div class="question_box">
                <div class="question">
                    <p><span class="pointColor">원하는 상품</span>을 <span class="umderline">선택해주세요.</span></p>
                </div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="인터넷"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                    <label><input type="radio" name="tadd2" value="인터넷 + TV"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                    <label><input type="radio" name="tadd2" value="인터넷 + TV + 유심"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                </div>
            </div>

			<div class="formGroup">
                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required  autocomplete="off" placeholder="이름을 입력해주세요">
                </div>
                <div class="user_info user_phone">
                    <span class="legend">연락처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요">
                </div>
			</div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
            </div>

            <div class="agreement">
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
                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                </ol>
            </div>

            <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span class="target">대상 : ${resVo.target}</span>
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

    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
    <div class="subscribe_container">
        <div class="title">
            실시간 <b>비밀 지원금</b> 지급 현황
        </div>
        <div class="subscribe_bg">
            <div class="subscribe" data-limit="10"></div>
        </div>
    </div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8">

        <div class="form_inner">
            <div class="question_box">
                <div class="question">
                    <p><span class="pointColor">희망</span>하시는 <span class="pointColor">통신사</span>를 <span class="umderline">선택해주세요.</span></p>
                </div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="SKT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                    <label><input type="radio" name="tadd1" value="KT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    <label><input type="radio" name="tadd1" value="LG"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                    <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                </div>
            </div>

            <div class="question_box">
                <div class="question">
                    <p><span class="pointColor">원하는 상품</span>을 <span class="umderline">선택해주세요.</span></p>
                </div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="인터넷"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                    <label><input type="radio" name="tadd2" value="인터넷 + TV"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                    <label><input type="radio" name="tadd2" value="인터넷 + TV + 유심"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                </div>
            </div>

			<div class="formGroup">
                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required  autocomplete="off" placeholder="이름을 입력해주세요">
                </div>
                <div class="user_info user_phone">
                    <span class="legend">연락처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요">
                </div>
			</div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
            </div>

            <div class="agreement">
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
                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                </ol>
            </div>

            <div class="submit"><input type="image" onclick="fnForm('form-2');" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span class="target">대상 : ${resVo.target}</span>
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

    <div class="container">
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div> -->
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        getComment(`${eventSeq}`);
	});

    // 카운트 인원
    let people = 70;
    function updateCount() {
        $('#count').text(people);

        if (people <= 1) {
            clearInterval(countInterval); // 1명까지 도달하면 멈춤
        } else {
            people--;
        }
    }
    const countInterval = setInterval(updateCount, 1000); // 1초마다 감소
    // 즉시 첫 숫자 표시
    updateCount();

    
    //설문 클릭시 이미지 on/off
    $('input[name*="add"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '입금완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '입금완료' ? 'yellow-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="add1">'+ data[v].add1 +'</div>';
					html += '	<div class="add2">'+ data[v].add2 +'</div>';
					html += '    <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '</div>';
				$(obj).append(html);
			}
		});
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    // 한달 타이머
    function remainedTime() {
        var now = new Date();
        var end = new Date(now.getFullYear(),now.getMonth(),now.getDate());
        var open = new Date(now.getFullYear(),now.getMonth()+1,1);
    
        var nt = now.getTime();
        var ot = open.getTime();
        var et = end.getTime();
    
        sec = parseInt(ot - nt) / 1000;
        day = parseInt(sec / 60 / 60 / 24);
        sec = (sec - (day * 60 * 60 * 24));
        hour = parseInt(sec / 60 / 60);
        sec = (sec - (hour * 60 * 60));
        min = parseInt(sec / 60);
        sec = parseInt(sec - (min * 60));

        if (day < 10) {day = "0" + day;}
        if (hour < 10) {hour = "0" + hour;}
        if (min < 10) {min = "0" + min;}
        if (sec < 10) {sec = "0" + sec;}

        $("#day").html(day);
        $("#hour").html(hour);
        $("#minute").html(min);
        $("#second").html(sec);
    }
    setInterval(remainedTime, 1000);
    
    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
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
		
		validateForms(procForm, required);
	}
</script>