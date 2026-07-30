<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/subsets/Pretendard-dynamic-subset.css');
@import url("https://cdn.jsdelivr.net/gh/fonts-archive/SUIT/SUIT.css");
html, body {font-size: 10px;}
#wrap {font-family: 'Pretendard'; background-color: #00264d;}
#form-1 {height: 100%;}
#wrap .formContents {height: 100%;}
.page { flex-grow: 1; position: relative; box-sizing: border-box;}
.hide {display: none;}

/* 공통 */
.container { text-align: center; font-size: 120%; letter-spacing: -0.36px; color: #b77587; font-family: 'Pretendard';}
.form .result-box {margin-top: 12.32%; margin-bottom: 8.155%; font-family: 'Paperlogy'; font-size: 255%; font-weight: 800; line-height: 1.48; letter-spacing: -1.23px; text-align: center; color: #2d2d2d;}
.form strong {color: #f20000; font-weight: 800; font-family: 'Paperlogy';}
.form .name-result {}
.next {cursor: pointer;}
.page:not(#page-1) .page_inner {padding: 0 5.1rem;}
.top-img {width: 87.8333333%; margin: 3% auto 0;}
/* .page:not(#page-1):not(#page-2) .question .img-area {width: 98.6%; margin: 0 auto;} */

.page-box {text-align: center; margin-bottom: 4.8%;}
.page-box .page-num {font-family: 'Pretendard'; font-size: 188%; font-weight: 500; letter-spacing: -0.6px; color: #676767;}
.page-box .page-num .current {color: #013797;}

/* 비디오 영역 */
.video-box video {display: block; width: 100%; height: 100%;}

/* 이전,다음 버튼 */
.paging {margin-top: 5.6%; display: flex; align-items: center; justify-content: center; column-gap: 7px;}
.paging button {background-color: transparent;}
.paging .prev {flex-shrink: 0; width: 32.6%; padding: 3.2% 0; background-color: #dedede; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #222;}
.paging .next {flex-shrink: 0; width: 65.93%; padding: 0; font-family: 'Pretendard'; font-weight: 700; font-size: 170%; border-radius: 10px; color: #fff;}
/* .paging button{position: absolute; top: 50%; left: 7.34%; transform: translateY(-50%); max-width: 63px; background-color: transparent; cursor: pointer;} */
.paging img{ width: 100%;}

/* 첫번째 페이지 */
#page-1 {height: 100%; box-sizing: border-box;}
#page-1 > .img-area:nth-child(1) {width: 52.333333%; margin: 0 auto; padding-top: 2.8rem;}
#page-1 > .img-area:nth-child(2) {width: 97.33333%; margin: 0 auto; padding-top: 1.8rem;}
#page-1 .detail-group {width: 83.3333%; margin: 6.835% auto 0; padding: 2.1rem; border: 2px solid rgb(203, 155, 88); border-radius: 2.6rem; background-color: rgba(89, 59, 16, 0.459); box-sizing: border-box;}
#page-1 .detail-group > .img-area:not(.btn-detail) {width: 73.205%; margin: 0 auto; padding-bottom: 2.401%;}
#page-1 .detail-group > .btn-detail {background-color: transparent; padding: 0; margin: 0 auto;}
#page-1 .detail-group .detail-box {margin-top: 2.401%;}
#page-1 .detail-group .detail-box .img-area + .img-area {margin-top: 4.301%;}
#page-1 .agBox {font-size: 1.4rem; font-family: 'Pretendard'; font-weight: 500; margin: 3.8rem auto 1.5rem; color: #383838; letter-spacing: -0.5px;}
#page-1 .agBox a {font-weight: 800;}
#page-1 .next {width: 80.8333%; margin: 3rem auto 0;}

#page-2 .img-area:nth-child(1) {width: 59.437751%; margin: 0 auto; padding-top: 7.4rem;}
#page-3 .img-area:nth-child(1) {width: 59.437751%;  margin: 0 auto; padding-top: 7.4rem;}
/* .page > .img-area:nth-child(1) {width: 86.5%; margin: 0 auto; padding-top: 2rem;} */
#page-4 {padding: 3.3rem 2.7rem 1rem;}
#page-4 .img-area:nth-child(1) {margin-bottom: 1.4rem;}
.page#page-4 .page_inner {border: 2px solid #e3e3e3; border-radius: 2.2rem; padding: 2.2rem 2rem;}
#page-4 .paging {margin: 1.3rem 0 1.5rem;}

/* 설문영역 */
.question_box {padding: 6.5rem 5.3rem 9.85rem; background-color: #fff;}
.question_box .q_select {display: flex; flex-flow: row wrap; justify-content: center; width: 95.08427%; margin: 0 auto; gap: 2.2rem; margin-top: 5.6rem;}
.question_box .q_select label img {width: 100%;}
.question .q-txt {font-family: 'Paperlogy'; color: #18245c; text-align: center; font-size: 4rem; font-weight: 700;}

/* 이름, 연락처 입력칸 */
.formGroup {padding: 1.6rem 3.6rem 3.3rem; background-color: #00264d;}
.formGroup .q-txt {width: 87.80161%; margin: 0 auto 3.7rem;}
.formGroup [class^="db-"] {color: #fff; }
.formGroup [class^="db-"] .legend {flex-shrink: 0; width: 7.6rem; height: 2.8rem; line-height: 2.8rem; font-family: 'SUIT'; font-size: 3rem; font-weight: 800; text-align: justify; color: #fff; letter-spacing: -1.4px;}
.formGroup [class^="db-"] .legend::after {content: ""; display: inline-block; width: 100%;}

.formGroup [class^="db-"] .user_info {column-gap: 2.1rem;}
.formGroup .db-top {display: flex; column-gap: 2.3rem; width: 100%; margin-bottom: 1.8rem;}
.formGroup .db-top .user_info {width: calc((100% - 2.3rem) / 2);}
.formGroup .user_info {display: flex; align-items: center;}
.formGroup .user_info input {font-family: 'SUIT'; padding: 1.7rem 2.2rem; font-size: 2.4rem; font-weight: 800; border-radius: 0.6rem; background-color: #fff; text-align: left; width: 100%; color: #333;}
.formGroup .user_info input::placeholder{color: #a5a5a5;}
.q_select .inp {background-color: #fff; padding: 2.99%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; text-align: center;}
.q_select .inp::placeholder {color: #dedede;}
.q_select textarea {width: 100%; padding: 8.96%; border: 2px solid #dedede; border-radius: 10px; color: #222; font-size: 150%; font-weight: 700; font-family: 'Pretendard'; resize: none; height: 25vh;}
.q_select textarea::placeholder {color: #dedede;}
.form .submit {flex-shrink: 0; width: 72.252011%; margin: 2.4rem auto 4rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

.form .checkbox {text-align: center; display: flex; align-items: center; justify-content: center; font-family: 'Pretendard'; font-size: 220%; font-weight: 700; margin-top: 4.2%; color: #fff;}
.form .checkbox label {line-height: 1;}
.form .checkbox input[type="checkbox"] {width: 28px; height: 28px; margin-right: 7px; appearance: none; background: url("//static.harang-event.com/event/v_${eventSeq}/check_off.png") no-repeat center center / 100% 100%; clip: unset; position: static; transition: 0s;}
.form .checkbox input[type="checkbox"]:checked {background-image: url("//static.harang-event.com/event/v_${eventSeq}/check_on.png");}

.toast {display: none; position: absolute; left: 50%; bottom: 15%; transform: translateX(-50%); text-align: center; width: 92.5%; background-color: rgba(0, 0, 0, 0.8); color: #fff; font-size: 200%; font-family: 'Pretendard'; font-weight: 600; border-radius: 8px; padding: 2.75% 2%; box-sizing: border-box;}
.toast strong {color: #fff949;}

/* 안심문구, 대상, 이벤트기간 */
.form .description {margin-top: 2.7rem;}
.form .description .ad_txt,
.form .description p,
.form .description span {font-family: 'SUIT'; font-size: 1.35rem; font-weight: 400; line-height: 1.48; letter-spacing: normal; text-align: center; color: #fff;}
/* .form .agBox {font-size: 1.2rem; width: 100%; margin: 0 auto;} */

.form .agBox {width: 100%; margin: 3.1rem auto 2.4rem; font-family: 'SUIT'; font-size: 2.4rem; text-align: center; color: #fff;}
.form input[type="checkbox"]:checked + span:after, .form input[type="radio"]:checked + span:after {border-color: #fff;}

/* 개인정보처리방침 */
.agreement {font-size: 2rem;}

@media screen and (max-width: 500px) { 
    html, body {font-size: 1.5vw;}

    .form .agBox {font-size: 2.2rem;}

}
@media screen and (max-width: 395px) {
    /* .form .db-box {top: 13%;} */
    /* .form .page-inner {top: 26%;} */
}

@media screen and (max-width: 375px) {
    /* .form .page-inner { top: 23%; } */
    /* .form .db-box {top: 13%;} */
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>
<div id="wrap">
	<div class="form">
        <!-- <audio id="location" playsinline="" src="//static.harang-event.com/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></audio> -->
		<form id="form-1" method="POST" accept-charset="utf-8">
            <div class="container">
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_01.jpg"></div>
                <div class="video-box">
                    <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_02.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                </div>
            </div>
            <div class="formContents">
                <div class="question_box">
                    <div class="question">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_03.png"></div>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1"  onclick="pageFuc(2,$(this))" value="가까이 있는 물체가 잘 안보인다"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_off_04.png"></label>
                        <label><input type="radio" name="tadd1"  onclick="pageFuc(2,$(this))" value="시야가 뿌옇게 보인다"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_off_05.png"></label>
                        <label><input type="radio" name="tadd1"  onclick="pageFuc(2,$(this))" value="눈에 무언가 낀 것 같은 느낌이 든다"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_off_06.png"></label>
                        <label><input type="radio" name="tadd1"  onclick="pageFuc(2,$(this))" value="기타"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_off_07.png"></label>
                    </div>
                </div>
                
                <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_12.jpg"></div>
                
                <div class="formGroup">
                    <div class="q-txt">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_13.png"></div>
                    </div>
                    <div class="db-top">
                        <div class="user_info name">
                            <span class="legend">이 름</span>
                            <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                        </div>
                        <div class="user_info age">
                            <span class="legend">나 이</span>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                    </div>
                    <div class="db-bottom">
                        <div class="user_info phone">
                            <span class="legend">연락처</span>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                        </div>
                    </div>
                    <div class="agBox">
                        <label><input type="checkbox" name="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함 </span><a href="#" class="btn-agreement">[자세히 보기]</a></label>
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
                            <li>개인정보 취급 위탁을 받는자 : (주)하랑고치</li>
                            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>
                    <div class="submit">
                        <input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png">
                    </div>
                    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_15.png"></div>
                    <div class="description bottom">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
                    </div>
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
		<div class="img-area notice-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_16.png"></div>
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_GBMS_hr_17.jpg"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        $('.detail-box').hide();
	});


    //설문 on/off
    $('input[name*="tadd"], input[name*="tage"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
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

        // let selectedRadio6 = procForm.querySelector('textarea[name="tadd6"]').value;
        // procForm.querySelector("input[name='add6']").value = selectedRadio6;

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
			,'age': '나이'
			,'phone': '연락처'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'add4': '설문4'
			// ,'add5': '설문5'
			// ,'add6': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>