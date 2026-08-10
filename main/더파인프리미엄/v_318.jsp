<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
* {box-sizing: border-box;}
html, body {font-size: 62.5%;}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;} 
.img-area {line-height: 0;}
.img-area > img {display: block; width: 100%; height: auto;}
.video-box video {display: block; width: 100%; height: auto;}

/* 타이머 */
.timer-box {color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 2rem; font-size: 2.4rem; padding: 1.6rem 4.1rem 1.5rem; width: 100%; margin: 0 auto; line-height: 1; letter-spacing: -1.23px; background: #000; box-sizing: border-box;}
.timer-box .date {display: flex; align-items: center;}
.timer-box .icon {margin-right: 1rem; width: 3.3rem;}
.timer-box .text-box {width: 18rem; display: flex; align-items: center; column-gap: 0.9rem;}
.timer-box .text-box .text {font-weight: 800; letter-spacing: -1.23px;}
.timer-box .text-box img{ display: inline-block; animation: spin 1.1s linear infinite; transform-origin: 50% 50%; width: 17%;}

@keyframes spin{
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}

.gif-area {position: relative;}
.gif-area .gif {position: absolute; left: 50%; transform: translateX(-50%); width: 78.973105%;}
.gif-area .gif_00 {top: 0%; width: 100%;}
.gif-area .gif_01 {top: 3.35%; width: 25.061125%; left: 19.5%;}
.gif-area .gif_02 {top: 39.9%; width: 25.061125%; left: 19.5%;}
.gif-area .gif_03 {width: 100%; bottom: 15%;}

/* 초기화 */
.form .form_inner {background-color: #282828;}

.notice-area {padding: 2.4rem 0 0; background-color: #282828;}

/* 이름, 나이, 연락처 입력칸 */
.form .form_inner .formGroup {padding: 5.1rem 6rem 4rem;}
.form .form_inner .formGroup .legend {flex-shrink: 0; font-family: 'Pretendard'; font-size: 2.4rem; font-weight: 700; line-height: 1.46; color: #fff;}
/* .form .form_inner .formGroup .legend .mark {color: #43d866;} */
.form .form_inner .formGroup .input_box {display: flex; flex-wrap: wrap; column-gap: 2.4rem; row-gap: 2.1rem;} 
.form .form_inner .formGroup .user_info {display: flex; align-items: center; column-gap: 1.5rem;}
.form .form_inner .formGroup .user_info.name {width: 52.724%;}
.form .form_inner .formGroup .user_info.name .legend {width: 7.2rem;}
.form .form_inner .formGroup .user_info.age {width: 43.8%;}
.form .form_inner .formGroup .user_info.phone {width: 100%;}
.form .form_inner .formGroup .user_info.phone .legend {width: 7.2rem}
.form .form_inner .formGroup .inp {padding: 1.7rem 2.8rem; font-family: 'Pretendard'; font-size: 2rem; line-height: 1; letter-spacing: -1px; text-align: left; color: #111; border-radius: 0; border: solid 1px #757575; background-color: #fff;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 2.8rem auto; font-size: 1.65rem; line-height: 1.45; letter-spacing: -0.83px; text-align: center; color: #fff;}
.form .agreement {color: #000; font-size: 1.6rem;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #fff;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description p, 
.form .description .ad_txt, 
.form .description span {font-size: 1.65rem; line-height: 1.45; letter-spacing: -0.83px; font-weight: 400; text-align: center; color: #fff;}

/* submit */
.form .submit {width: 90.402%; margin: 0 auto 2.6rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* 플로팅 이미지 영역 */
.floatingImg{z-index:999; position: fixed; bottom: 1.7rem; right: max(1.3rem, calc((100vw - 818px) / 2)); margin-left:2%; width:30%; max-width: 197px; cursor: pointer; animation: upDown 1s infinite;}

@keyframes upDown {
    0% { transform: translateY(0); }
    50% { transform: translateY(7%); }
    100% { transform: translateY(0); }
}

@media screen and (max-width: 480px){
    html, body {font-size: 1.5vw;}

    .form .form_inner .formGroup .user_info.name {width: 51.724%;}

    .form .form_inner .formGroup .inp {padding: 1.7rem 1.8rem;}
}

@media screen and (max-width: 395px){

}

@media screen and (max-width: 375px){
}
</style>
<!-- include -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- include end -->
<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_01.jpg"></div>
        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_03.jpg">
            <img class="gif gif_00" src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_02.gif">
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_04.jpg"></div>
        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_05.jpg">
            <!-- <img class="gif gif_01" src="//static.harang-event.com/event/v_${eventSeq}/img_02.gif">
            <img class="gif gif_02" src="//static.harang-event.com/event/v_${eventSeq}/img_03.gif"> -->
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_06.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_07.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_08.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_09.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_10.jpg"></div>
        <div class="time-content">
            <div class="timer-box">
                <div class="date">
                    <img class="icon" src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_11.png" alt="">
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
                    <img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_12.png">
                    <span class="text">현재 신청 가능</span>
                </div>
            </div>
        </div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="form_inner">
                <div class="formGroup">
                    <div class="input_box">
                        <!-- <div class="img-area pc-img notice-img"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01_pc.png"></div> -->
                        <div class="user_info name">
                            <span class="legend">이름</span>
                            <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름을 입력해주세요">
                        </div>
                        <div class="user_info age">
                            <span class="legend">나이</span>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요">
                        </div>
                        <div class="user_info phone">
                            <span class="legend">연락처</span>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요">
                        </div>
                    </div>

                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>
                    <div class="agreement">
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
                        <h3>[개인정보 수집 및 이용 동의]</h3>
                        <ol>
                            <li>파인라이프는 고객 상담 신청 접수를 위해 아래와 같이 개인정보를 수집하고 있습니다.</li><br />
                            <li>
                                1. 수집하는 개인정보 항목<br /><br />

                                회사는 상담 신청 및 서비스 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br />
                                - 필수항목: 이름, 연락처(휴대폰번호), 나이, 성별, 상담내용<br />
                                - 자동수집항목: 서비스 이용기록, 접속로그, 쿠키, 접속 IP 정보
                            </li><br />
                            <li>
                                2. 개인정보의 수집 및 이용 목적 <br /><br />
                                수집한 개인정보를 다음의 목적을 위해 활용합니다.<br />
                                서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산, 콘텐츠 제공, 구매 및 요금 결제, 물품배송 또는 청구지 등 발송 회원 관리: 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달
                            </li><br />
                            <li>
                                3. 개인정보의 보유 및 이용기간 <br /><br />
                                원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 고객정보를 보관합니다.<br />
                                보존 항목: 이름, 연락처, 상담내용 등 수집항목 전체<br />
                                보존 기간: 1년 (고객 응대 및 이력 확인 목적)<br />
                                계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래등에서의 소비자보호에 관한 법률)
                            </li><br />
                            <li>
                                4. 동의를 거부할 권리 및 미동의 시 불이익<br /><br />
                                귀하는 개인정보 수집 및 이용에 대해 동의를 거부할 권리가 있습니다. 본 동의는 상담 서비스를 제공하기 위한 최소한의 정보 수집으로, 거부 시 상담 신청 및 서비스 이용이 제한됩니다.
                            </li><br />
                            <li>
                                5. 개인정보 취급 위탁<br /><br />
                                개인정보 취급 위탁을 받는자 : (주)하랑고치<br />
                                개인정보 취급 위탁을 하는 업무의 내용 : 고객 정보 저장 및 서버관리<br /><br />
                                <span class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 이벤트 참여가 불가능합니다.</span>
                            </li>
                        </ol>
                    </div>
                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_13.gif"></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
		<div class="img-area notice-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_14.png"></div>
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_15.jpg"></div>
    </div>
    <!-- <div class="img-area fixed db_btn"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.gif"></div> -->
    <a href="javascript:void(0);"><img class="floatingImg" src="//static.harang-event.com/event/v_${eventSeq}/260716_DFPM(hr)_16.png"></a>

</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3
    });

    // 타이머
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


    //설문 클릭시 이미지 on/off
    // $('input[name="tadd1"]').on('click', function(){
    //     $('label', $(this).parents('.q_select')).each(function(i,t) {
    //         $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
    //     });
    //     $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    // });

    // ✅ 설문 클릭 시 이미지 on/off (선택 토글)
    $('input[name*="tadd"]').on('click', function () {
        const $parent = $(this).closest('.q_select'); // 부모 영역 지정

        // 모든 label에서 active 클래스 제거
        $parent.find('label').removeClass('active');

        // 클릭한 input의 label에 active 클래스 추가
        $(this).closest('label').addClass('active');
    });


    // 스크롤 시 따라오는 이미지
    // var currentPosition = parseInt($(".floatingImg").css("bottom"));
    // $(window).scroll(function() {
    //     var position = $(window).scrollTop();
    //     $(".floatingImg").stop().animate({
    //         bottom : currentPosition + "px"
    //     },500);
    // });

    // 플로팅버튼 클릭시 db단 이동
    $('.floatingImg').on('click',function(){
        const formOffset = $('#form-1').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

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