<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
#wrap {font-family: "Pretendard-Regular", sans-serif; background: #fff;} 
/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 0%; cursor: pointer;}

/* 하단 form-inner */
.form_inner {padding: 3.75rem 4rem 3.9375rem;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {padding-top: 5%;}
.formGroup .user_info {display: flex; align-items: center; margin-bottom: 1.2rem;}
.legend {padding-bottom: 0.8125rem; font-weight: 700;font-size: 1.5rem; width: 20%;}
/* .legend::after {display: inline-block; content: '*'; color: #22ab41; position: relative; top: -2px; left: 2px;} */
.formGroup .user_info input {padding: 1.625rem 0 1.6875rem 1.5rem; background-color: #f2f2f2; font-size: 1.25rem; width: 100%;}
.formGroup .user_info input::placeholder{color: #7c7c7c;}

.question_box {}
.question_box .question {font-size: 2rem; letter-spacing: -1px; font-weight: 500;}
.question_box .q_select {display: flex; justify-content: space-between; padding-left: 5%; margin: 3% 0;}
.question_box .q_select label {width: 23.7%; font-size: 190%;}
.question_box .q_select label img {width: 100%;}
.question_box .q_select label span {font-weight: 500;}

.question_box:nth-child(2) .q_select {justify-content: flex-start; gap: 11%;}
.question_box:nth-child(2) .q_select label {width: auto;}

.form input[type="radio"] + span:before {border-radius: 0;}


/* 개인정보처리방침 영역 */
.form .agBox {margin: 3% auto;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #000;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {}

/* 타이머 */
.img-container {position: relative;}
.timer-box {position: absolute; width: calc(100% - 22.8%); top: 0%; left: 6.4%; right: 6.4%; color: #fff; font-size: 200%; font-weight: 400; padding: 3% 5%; background-color:rgba(229, 255, 223, 0.25);  letter-spacing: -1.34px; border-radius: 0 0 20px 20px;}
.font-yellow {color: #fff773; font-weight: 500;}

/* 슬라이드 */
.swiper-wrapper {padding-bottom: 5.4375rem;}
.swiper-slide img {width: 100%;}

/* 질문 박스 영역 */
.qna_box {padding: 1.8125rem 1.9375rem; background: #f1f1f1;}
.qna_box .qna_inner {background: #fff; padding: 1.375rem; border-radius: 1rem; border: solid 1px #e5e5e5;}
.qna_box .qna_content {}
.qna_box .qna_content .question {}
.qna_box .qna_content .question img {width: 100%;}
.qna_box .qna_content .answer {display: none;}
.qna_box .qna_content .answer img {width: 100%;}

/* submit */
.form .submit {width: 95%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

/* 실시간 신청 현황 */
.subscribe_container {background: #fff; padding: 3.5625rem 1.5625rem 1.625rem;}
/* .subscribe_bg {background-color:#e8e8e8; padding: 2.125rem 1.375rem 4.5rem; border-radius: 1.875rem;} */
.subscribe_container .title {font-size: 3.4rem; text-align: center; font-weight: 800; line-height: 1.22; letter-spacing: -1.65px;}
.font-green {color: #2f796b;}
.subscribe_container .img-area {width: 40%; margin: 3% auto;}
.subscribe {height: 250px; overflow: hidden; padding: 1.875rem 2.5rem; background: #fff; border-radius: 1.25rem; }
.subscribe .content {display: flex; justify-content: space-between;  align-items: center; padding: 2%; padding-bottom: 0.75rem; border-bottom: 0; background-color: #f3f3f3;}
.subscribe .content:not(:last-child) {margin-bottom: 2%;}
.subscribe .content > div {margin-right: 2%; font-size: 1rem; padding: 0;}
.subscribe .content > div.add2 {width: 20%;}
.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content .statusText1 {text-align: center; width: 6.75rem; padding: 0.375rem 0;}
.subscribe .content .statusText2 {text-align: center; width: 6.75rem; padding: 0.375rem 0;}
.subscribe .content .statusText1:not(.yellow-bg) {background: #d4d4d4;}
.subscribe .content .statusText2:not(.yellow-bg) {color: #fff;background: #457eff;}
.sky-bg { background: #b4fcff;}
.yellow-bg { background: #fdff52;}


@media screen and (max-width: 810px){
    .timer-box {font-size: 3.9vw; text-align: center;}
}
@media screen and (max-width: 780px){
    .question_box:nth-child(2) .q_select {gap: 5%;}
    .question_box .q_select label {font-size: 170%;}

}

@media screen and (max-width: 680px){
    .question_box .q_select label {font-size: 150%;}

}

@media screen and (max-width: 480px){
    .question_box .q_select label {font-size: 130%;}

}

@media screen and (max-width: 430px){
    .subscribe {height: 100px; }
    .subscribe .content > div {font-size: 1.4rem;}
    .formGroup .user_info input,
    .question_box .select_box .q_select {font-size: 2rem;}
    .timer_box span {top: 22%;}
    .subscribe .content .statusText1,
    .subscribe .content .statusText2 {padding: 0.375rem 0.5rem;}
    .question_box .q_select label {font-size: 95%;}

    .subscribe .content > div.add2 {width: 30%;}

}
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- include -->
<div id="wrap"> 
    <div class="img-container">
        <div class="img-area">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg">
            <div class="timer-box">
                <span class="today"></span> <span class="font-yellow">선착순 비밀지원금 <span id="timer"></span></span> 남았습니다
            </div>
            
        </div>
    </div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif"></div>
    
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="form_inner">
            <div class="question_box">
                <div class="question">Q. 희망하는 통신사를 선택해주세요</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="SKT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                    <label><input type="radio" name="tadd1" value="LG"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    <label><input type="radio" name="tadd1" value="KT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                    <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                </div>
            </div>
            <div class="question_box">
                <div class="question">Q. 원하는 상품을 선택해주세요</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="인터넷"><span>인터넷</span></label>
                    <label><input type="radio" name="tadd2" value="인터넷+TV"><span>인터넷+TV</span></label>
                    <label><input type="radio" name="tadd2" value="인터넷+TV+유심"><span>인터넷+TV+유심</span></label>
                </div>
            </div>
			<div class="formGroup">
                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름을 입력해주세요">
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
                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <div class="ad_txt">안심하세요! 본 페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 :  ${resVo.target}</span>
            </div>
        </div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
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

    <div class="subscribe_container">
        <div class="subscribe_bg">
            <div class="title">인터넷 지원금 <span class="font-green">실시간 지급 현황</span></div>
            <div class="subscribe" data-limit="10"></div>
        </div>
    </div>

    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>

        <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8">

        <div class="form_inner">
            <div class="question_box">
                <div class="question">Q. 희망하는 통신사를 선택해주세요</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="SKT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                    <label><input type="radio" name="tadd1" value="LG"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    <label><input type="radio" name="tadd1" value="KT"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                    <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                </div>
            </div>
            <div class="question_box">
                <div class="question">Q. 원하는 상품을 선택해주세요</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="인터넷"><span>인터넷</span></label>
                    <label><input type="radio" name="tadd2" value="인터넷+TV"><span>인터넷+TV</span></label>
                    <label><input type="radio" name="tadd2" value="인터넷+TV+유심"><span>인터넷+TV+유심</span></label>
                </div>
            </div>
			<div class="formGroup">
                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름을 입력해주세요">
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
                <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <div class="ad_txt">안심하세요! 본 페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 :  ${resVo.target}</span>
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
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        getComment(`${eventSeq}`);
	})

    //rem단위 퍼센트 변환
    function setFontSize(){
		const wrap = document.getElementById('wrap');
		const wrapWidth = wrap.offsetWidth;
	
		// #wrap의 width를 기준으로 font-size 설정
		document.documentElement.style.fontSize = (wrapWidth / 818) * 16 + 'px';
	}
	window.addEventListener('resize', setFontSize);
	setFontSize();

    //설문 클릭시 이미지 on/off
    $('input[name="tadd1"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 10,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        loop :true,
        });

    //질문 클릭 이벤트
    $(document).ready(function() {
        $('.question').on('click', function() {
            // 현재 클릭한 question의 부모(qna_content) 안에서 answer 찾아서 토글
            $(this).siblings('.answer').stop(true, true).slideToggle(300);
        });
    });

    let today = new Date()
    let Year = today.getFullYear()

    function returnComment(resultData, meoreData){
        $('.subscribe').each(function(idx,obj) {
            var data = resultData;
            
            for(v in data) {
                // var statusText1 = Math.random() < 0.5 ? '설치 완료' : '접수 진행';
                var statusText1 = Math.random() < 0.5 ? '입금 대기' : '입금 완료';
                // var backgroundClass1 = statusText1 === '설치 완료' ? 'sky-bg' : '';
                var backgroundClass1= statusText1 === '입금 대기' ? '' : 'yellow-bg';
                var html  = '<div class="content" data-id="'+ data[v].seq +'">';
                html += '	<div class="date">' + data[v].regDate +'</div>';
                html += '	<div class="add1">'+ data[v].add1 +'</div>';
                html += '	<div class="name">'+ data[v].name +'</div>';
                html += '	<div class="add2">'+ data[v].add2 +'</div>';
                html += '	<div class="statusText1 ' + backgroundClass1 + '">' + statusText1 + '</div>'; // 랜덤 텍스트 및 클래스 적용
                // html += '   <div class="statusText2 ' + backgroundClass2 + '">' + statusText2 + '</div>'; // 랜덤 텍스트 및 클래스 적용
                // html += '	<div class="phone">' + data[v].phone +'</div>'
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

    $(document).ready(function () {
        // 타이머
        var display = document.querySelector('#timer');
        var timer = 7 * 60 * 60 * 1000 + 2 * 60 * 1000 + 36 * 1000; // 07:02:36을 밀리초로 변환

        startTimer(timer, display);

        var today = new Date();
        var month = today.getMonth() + 1;
        var day = today.getDate();
        $('.today').text(month + '월 ' + day + '일');
    });

    // 타이머 함수
    function startTimer(duration, display) {
        var start = Date.now();
        var end = start + duration;

        var timerInterval = setInterval(function () {
            var remaining = end - Date.now();
            if (remaining <= 0) {
                clearInterval(timerInterval);
                display.textContent = "00:00:00"; // 초가 끝난 후 텍스트
                return;
            }

            var hours = Math.floor((remaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((remaining % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((remaining % (1000 * 60)) / 1000);
            var milliseconds = Math.floor(remaining % 1000 / 10);

            hours = hours < 10 ? "0" + hours : hours;
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            milliseconds = milliseconds < 10 ? "0" + milliseconds : milliseconds;

            display.textContent = hours + " : " + minutes + " : " + seconds;
        }, 1);
    }


    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.form_inner').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		
		/* form id로 proc */
		let procForm = document.getElementById(formId);

		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문2 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		// 필수값 체크 항목
		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForms(procForm, required);
	}
</script>