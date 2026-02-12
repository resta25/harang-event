<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
html, body {font-size: 10px;}
.page:not(#page-1){display:none;}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;}

/* 상단 타이머 */
.time-content {padding-top: 5.2rem; position: absolute; top: 0%; left: 50%; transform: translateX(-50%); width: 90%; z-index: 9;}
.timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; font-size: 3.5rem; border: 1px solid #797979; border-radius: 0.9rem; padding: 1.4rem 2.3rem; margin: 0 auto; letter-spacing: -1.98px; background: #000;}
.timer-box .text-box { width: 40%; display: flex; align-items: center; gap: 1rem;}
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}
@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

/* 슬라이드 영역 */
.swiper {position: absolute !important; top: 43%; left: 51.5%; transform: translateX(-50%); width: 85%;}
.swiper .swiper-slide img { width: 100%; text-align: center;}

/* 이름, 나이, 연락처 입력칸 */
.form .page-inner {padding: 3rem;}
.form .page-inner .description.top {font-size: 2rem; text-align: center; background: #f1f1f1; color: #999; padding: 2rem 0; width: 100%; border-radius: 0.7rem; margin-bottom: 2rem;}
.form .page-inner .db-box {}
.form .page-inner .db-box .user-info {display: flex; align-items: center; justify-content: space-between; background: #fff; border: 1px solid #ddd; padding: 1rem 2rem; border-radius: 0.5rem;}
.form .page-inner .db-box .user-info:not(:last-child) {margin-bottom: 1.5rem;}
.form .page-inner .db-box .user-info .legend {font-size: 2.5rem; font-weight: 700; letter-spacing: -1px;}
.form .page-inner .db-box .user-info input {width: 80%; font-size: 1.8rem;}

/* 개인정보처리방침 영역 */
.form .agGroup {position: absolute; bottom: 5%; left: 50%; transform: translateX(-50%); width: 100%;}
.form .agBox {margin: 3% auto; font-size: 2rem;}
.form .agree-btn {font-size: 3rem; text-align: center; width: 55%; margin: 0 auto; background: linear-gradient(260deg,rgba(218, 46, 140, 1) 0%, rgba(111, 56, 145, 1) 100%); color: #fff; padding: 1.5rem 0; border-radius: 1rem; font-weight: 700; letter-spacing: -1px; cursor: pointer;}
.form .agBox .btn-agreement {font-size: 1.95rem; cursor: pointer;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {margin: 2rem 0; width: 100%; font-size: 1.5rem;}
.form .description p {padding: 0; font-weight: normal;}
.form .description span {padding: 0;}
.form .description .ad_txt { padding: 0;}

/* submit */
.form .submit {width: 60%; margin: 2rem auto 0;}
.form .submit .btn-submit {background: linear-gradient(260deg,rgb(202, 99, 156) 0%, rgba(111, 56, 145, 1) 100%); color: #fff; font-size: 3rem; text-align: center; width: 100; padding: 2rem 0; width: 100%; border-radius: 1rem; font-weight: 700; letter-spacing: -1px;}

/* 실시간 신청 현황 */
.subscribe {height: 185px; overflow: hidden; padding: 2% 5%; background: #f1f1f1; border-radius: 0.8em; font-family: 'noto sans kr';}
.subscribe .content {padding: 0; display: flex; align-items: center; font-size: 100%; margin: 1% 0; justify-content: space-between; border-bottom: 1px solid #f3f3f3; font-size: 3rem;}
.subscribe .content + .content {border-top: 1px solid rgba(40, 40, 40, 0.1); padding-top: 1rem;}
.subscribe .content:nth-of-type(3) {margin-bottom: 2rem;}
.subscribe .content > div {width: calc(100% / 3); text-align: center; padding: 1rem 0; font-size: 1.7rem; font-weight: 500; border-radius: 0.5rem;}
.subscribe .content .date {background: #fff;}
.subscribe .content .check-icon {background: #a440ee; width: 3rem; height: 3rem; border-radius: 99%; padding: 0; position: relative;}
.subscribe .content .check-icon::after {
    z-index: 99;
    content: '';
    display: inline-block;
    background-color: transparent;
    top: 20%;
    left: 50%;
    width: 15px;
    height: 8px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 3px 3px;
    -moz-transform: rotate(-45deg) scale(0);
    -ms-transform: rotate(-45deg) scale(0);
    -webkit-transform: rotate(-45deg) scale(0);
    -moz-transition: none;
    -o-transition: none;
    position: absolute;
    background: transparent;
    transform: translateX(-50%) rotate(-45deg);
}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 0.3em; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}


@media screen and (max-width: 500px){
    html,body {font-size: 1.5vw;}
    .time-content {padding-top: 4rem;}
    .timer-box {font-size: 3rem;}

    .formGroup .user_info .legend {width: 13rem;}
    .formGroup .user_info input {font-size: 3rem}
    .form .agBox {margin: 1rem auto; font-size: 1.5rem;}

    .subscribe {height: 115px;}
    .subscribe .content .check-icon::after {width: 10px; height: 5px;}
}

@media screen and (max-width: 395px){
}

@media screen and (max-width: 375px){
}
</style>
<!-- Include -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js"></script>
<!-- Include end-->
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
    <!-- 타이머 박스 -->
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
                <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/loading.png">
                <span class="text">현재 신청 가능</span>
            </div>
        </div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">
		<div class="formContents "> 
            <section class="page section01" id="page-1">
                <div class="img-area">
                    <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_01.jpg">
                    <!-- 슬라이드 -->
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/slide_01.png"></div>
                            <div class="swiper-slide"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/slide_02.png"></div>
                            <div class="swiper-slide"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/slide_03.png"></div>
                        </div>
                    </div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_02.jpg"></div>
                <div class="img-area">
                    <img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_03.jpg">
                    <div class="agGroup">
                        <div class="agBox"><div class="btn-agreement">[개인정보처리방침]</div></div>
                        <div class="agree-btn" onclick="pageFuc(1,$(this))">
                            <input type="checkbox" name="agBox" value="Y" checked>
                            구매 혜택 받기 (동의)
                        </div>
                    </div>
                </div>
			</section>

			<section class="page section02" id="page-2">
                <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/event_main_04.jpg"></div>
                <div class="page-inner">
                    <div class="description top">
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    </div>
                    <div class="db-box">
                        <div class="user-info">
                            <span class="legend">이름</span>
                            <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요 ">
                        </div>
                        <div class="user-info">
                            <span class="legend">나이</span>
                            <input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요">
                        </div>
                        <div class="user-info">
                            <span class="legend">연락처</span>
                            <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 입력해 주세요">
                        </div>
                    </div>
                    <div class="submit"><button type="submit" onclick="fnForm('form-1');" class="btn-submit">혜택 신청 완료</button></div>
                    <div class="description bottom">
                        <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <span>대상 :  ${resVo.target}</span>
                    </div>
                    <!-- 신청현황 -->
                    <div class="subscribe" data-limit="10"></div>
                </div>
                <div class="container">
                    <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/notice.jpg"></div>
                    <!-- <div class="img-area"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/footer.jpg"></div> -->
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

    <!-- <div class="img-area fixed db_btn"><img src="//static.resta.co.kr/event_wynd/v_${eventSeq}/btn_newSb_01.gif"></div> -->
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3
        getComment(`${eventSeq}`);
    });

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    // Comment Start    
    let today = new Date()
    let Year = today.getFullYear()

	function returnComment(resultData, meoreData){
		var today = new Date();
			var month = today.getMonth() + 1;
			var dateNum;
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in data) {
	            var statusText = Math.random() < 0.5 ? '신청 중' : '신청 완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
	            var backgroundClass = statusText === '신청 완료' ? 'color-bg' : '';
	            var html  = '<div class="content" data-id="' + data[v].eid +'">';
	                html += '	<div class="date">'+ Year + '-' + data[v].regDate +'</div>';
	                html += '	<div class="name">'+ data[v].name +'님, 신청 완료' + '</div>';
	                html += '   <div class="check-icon">' + '</div>'; 
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
            $('#day').text(d + '(' + week + ')');
            $('#week-day').text(''); // day에 요일까지 붙였으니 비워둠(원하면 아래 주석 참고)

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

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        loop:true,
    });

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        // 페이지 이동 처리
        setTimeout(function(){
            $('.section0' + num).fadeOut(function() {
                $('.section0' + (num + 1)).fadeIn();
                $(document).scrollTop(0);
            });
        },500)
    }

	function fnForm(formId){
        /* form 자동 처리 방지 */
        event.preventDefault();
        
        /* form id로 proc */
        let procForm = document.getElementById(formId);

		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }
			
        // 필수값 체크 항목
        var required = {
            'name': '이름'
            ,'age': '나이'
            ,'phone': '전화번호'
            // ,'add1': '설문1'
            // ,'add2': '설문2'
            // ,'add3': '설문3'
            ,'agBox': '개인정보'
        };
        
        validateForm(procForm, required);
    }
</script>