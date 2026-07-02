<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
* {box-sizing: border-box;}
html, body {font-size: 62.5%;}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;} 
.img-area {line-height: 0;}
.img-area > img {display: block; width: 100%; height: auto;}

.benefit-area {padding: 7.5rem 3.2rem 7.2rem;}
.benefit-area .img-area:not(.swiper) {width: 94.694960%; margin: 0 auto 3rem;}

/* 상단 슬라이드 */
.swiper-slide img {width: 100%;}

.video-area {position: relative;}
.video-area .video-group {position: absolute; top: 47.5%; left: 50%; transform: translate(-50%, -50%); display: flex; column-gap: 1.7rem; width: 75.427873%;}
.video-area .video-box {width: 100%;}
.video-area .video-box video {display: block; width: 100%; height: 100%;}
.video-area .video-box.box02 {border: 0.5rem solid rgb(144, 241, 255);}

.round-video-area {position: relative;}
.round-video-area .video-box {position: absolute; width: 75.794621%; left: 50%; transform: translateX(-50%); border-radius: 2.4rem; overflow: hidden;}
.round-video-area .box03 {top: 29.5%;}
.round-video-area .box04 {top: 8%;}
.round-video-area .box05 {top: 7%;}

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
.gif-area .gif {position: absolute; left: 3.7rem; bottom: 4.9rem; width: calc(100% - 3.7rem);}

/* .notice-area {padding: 2.4rem 0 1.8rem; background-color: #282828;} */

/* 이름, 나이, 연락처 입력칸 */
.form .form_inner .formGroup {padding: 9rem 8.8rem 4.2rem;}
.form .form_inner .question .img-area {width: 81.464174%; margin: 0 auto;}
.form .form_inner .formGroup .legend {position: relative; flex-shrink: 0; width: 9.71rem; padding-right: 1.4rem; font-family: 'Pretendard'; font-size: 3.4rem; font-weight: 800; letter-spacing: -1.7px; color: #0c174b;}
.form .form_inner .formGroup .legend::after {content: ''; width: 0.7rem; height: 0.7rem; border-radius: 50%; position: absolute; right: 0; top: 0.3rem; background-color: #ec0001;}
.form .form_inner .formGroup .user_info.name .legend::after {right: 2.1rem;}
/* .form .form_inner .formGroup .legend .mark {color: #43d866;} */
.form .form_inner .formGroup .input_box {display: flex; flex-wrap: wrap; column-gap: 2.4rem; row-gap: 2.1rem; margin-top: 5rem;} 
.form .form_inner .formGroup .user_info {display: flex; align-items: center; column-gap: 2rem; width: 100%;}
/* .form .form_inner .formGroup .user_info.name {width: 52.724%;}
.form .form_inner .formGroup .user_info.age {width: 43.8%;}
.form .form_inner .formGroup .user_info.phone {width: 100%;} */
.form .form_inner .formGroup .inp {flex-grow: 1; padding: 1.7rem 2.8rem; font-family: 'Pretendard'; font-size: 3.2rem; line-height: 1; letter-spacing: -1px; text-align: left; color: #111; border-radius: 1.5rem; background-color: #f1f1f1;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 2.8rem auto; font-size: 1.65rem; line-height: 1.45; letter-spacing: -0.83px; text-align: center; color: #000;}
.form .agreement {color: #000; font-size: 1.6rem;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #000;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description p, 
.form .description .ad_txt, 
.form .description span {font-size: 1.65rem; line-height: 1.45; letter-spacing: -0.83px; font-weight: 400; text-align: center; color: #000;}

/* submit */
.form .submit {width: 90.402%; margin: 2.8rem auto 2.6rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 1rem; cursor: pointer; left: max(0px, calc((100vw - 818px) / 2)); text-align: center; width: 100%; max-width: 800px;}
/* .fixed img {border-radius: 999px; -webkit-box-shadow: 0px 0px 30px 5px rgba(0,0,0,0.35);
box-shadow: 0px 0px 30px 5px rgba(0,0,0,0.35);  width: 100%;
    margin-bottom: 16px} */

/* 플로팅 이미지 영역 */
/* .floatingImg{z-index:999; position: fixed; bottom: 1.7rem; right: max(1.3rem, calc((100vw - 818px) / 2)); margin-left:2%; width:30%; max-width: 197px; cursor: pointer; animation: upDown 1s infinite;} */

@keyframes upDown {
    0% { transform: translateY(0); }
    50% { transform: translateY(7%); }
    100% { transform: translateY(0); }
}

@media screen and (max-width: 480px){
    html, body {font-size: 1.5vw;}

    .form .form_inner .formGroup {padding: 7rem 6.8rem 4.2rem;}
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
        <div class="img-area video-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg">
            <div class="video-group">
                <div class="video-box">
                    <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260701_vid_01.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                </div>
                <div class="video-box box02">
                    <video id="location02" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260701_vid_02.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location02').trigger('play'); },500);</script>
                </div>
            </div>
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="benefit-area slide-area">
            <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01.png"></div>
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_01.png"></div>
                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_02.png"></div>
                    <div class="swiper-slide"><img src="//static.harang-event.com/event/v_${eventSeq}/slide_03.png"></div>
                </div>
            </div>
        </div>

        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.jpg">
            <img class="gif" src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.gif">
        </div>
        <div class="img-area round-video-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.jpg">
            <div class="video-box box03">
                <video id="location03" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260701_vid_03.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location03').trigger('play'); },500);</script>
            </div>
        </div>
        <div class="img-area round-video-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_06.jpg">
            <div class="video-box box04">
                <video id="location04" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260701_vid_04.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location04').trigger('play'); },500);</script>
            </div>
        </div>
        <div class="img-area round-video-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.jpg">
            <div class="video-box box05">
                <video id="location05" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/260701_vid_05.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location05').trigger('play'); },500);</script>
            </div>
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_08.gif"></div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="form_inner">
                <div class="formGroup">
                    <div class="question">
                        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_02.png"></div>
                    </div>
                    <div class="input_box">
                        <!-- <div class="img-area pc-img notice-img"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01_pc.png"></div> -->
                        <div class="user_info name">
                            <span class="legend">이름</span>
                            <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름을 입력해주세요">
                        </div>
                        <div class="user_info phone">
                            <span class="legend">연락처</span>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요">
                        </div>
                    </div>

                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>

                    <div class="agBox">
                        <label><input name="agBox" type="checkbox" checked><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
		<div class="img-area notice-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
    <div class="img-area fixed db_btn"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
    <!-- <a href="javascript:void(0);"><img class="floatingImg" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.png"></a> -->

</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3

        setBottomPadding();
    });

    function setBottomPadding() {
        const $fixedBtn = $('.fixed');
        const $wrap = $('#wrap');

        if (!$fixedBtn.length || !$wrap.length) return;

        const btnHeight = $fixedBtn.outerHeight();
        $wrap.css('padding-bottom', (btnHeight + 20) + 'px');
    }

    $(window).on('load resize', function () {
        setBottomPadding();
    });

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 0,
        // centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        loop:true,
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
    $('.db_btn').on('click',function(){
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
            // ,'age': '나이'
            ,'phone': '전화번호'
            // ,'add1': '설문1'
            // ,'add2': '설문2'
            // ,'add3': '설문3'
            ,'agBox': '개인정보'
        };
        
        validateForm(procForm, required);
    }
</script>