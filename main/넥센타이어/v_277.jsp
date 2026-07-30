<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
* {box-sizing: border-box;}
html, body {font-size: 62.5%;}
#wrap {font-family: "Pretendard", sans-serif; background: #fff;} 
.img-area {line-height: 0;}
.img-area > img {display: block; width: 100%; height: auto;}

/* 이름, 나이, 연락처 입력칸 */
.form .form_inner .formGroup {padding: 7rem 6.5rem 6.8rem; background-color: #101524;}
.form .form_inner .question {font-family: 'Pretendard'; font-size: 5.25rem; font-weight: 700; letter-spacing: -1.31px; text-align: center; color: #fff; line-height: 1.05714;}
.form .form_inner .question strong {font-weight: 700; color: #ec95ff;}
.form .form_inner .formGroup .legend {position: relative; flex-shrink: 0; width: 9.2rem; font-family: 'NotoSansKR'; font-size: 3.05rem; font-weight: 500; letter-spacing: -1.53px; color: #fff; text-align: center;}
.form .form_inner .formGroup .legend::after {content: ''; width: 0.7rem; height: 0.7rem; border-radius: 50%; position: absolute; right: -0.35rem; top: 0.35rem; background-color: #ec0001;}
.form .form_inner .formGroup .user_info.name .legend::after,
.form .form_inner .formGroup .user_info.add .legend::after {right: 1rem;}
/* .form .form_inner .formGroup .legend .mark {color: #43d866;} */
.form .form_inner .formGroup .input_box {display: flex; flex-wrap: wrap; row-gap: 1.6rem; margin-top: 6.3rem;} 
.form .form_inner .formGroup .user_info {display: flex; align-items: center; column-gap: 2rem; width: 100%;}
/* .form .form_inner .formGroup .user_info.name {width: 52.724%;}
.form .form_inner .formGroup .user_info.age {width: 43.8%;}
.form .form_inner .formGroup .user_info.phone {width: 100%;} */
.form .form_inner .formGroup .inp {flex-grow: 1; padding: 1.7rem 2.8rem; font-family: 'Pretendard'; font-size: 3.2rem; line-height: 1; letter-spacing: -1px; text-align: left; color: #111; border-radius: 1.5rem; background-color: #f1f1f1;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 3.2rem auto 2.1rem; font-family: 'NotoSansKR'; font-size: 2.05rem; font-weight: 500; letter-spacing: -1.03px; text-align: center; color: #fff;}
.form .agreement {font-size: 1.6rem;}
/* .form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color: #000;} */
.form input[type="checkbox"]:checked + span:after {border-color: #fff;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description p, 
.form .description .ad_txt, 
.form .description span {font-size: 1.8rem; line-height: 1.22; letter-spacing: -0.9px; text-align: center; color: #fff;}

/* submit */
.form .submit {width: 90.402%; margin: 2.8rem auto 2.6rem; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

.notice {margin-top: 5rem; margin-bottom: 0; font-family: 'Pretendard'; font-size: 1.8rem; letter-spacing: -0.9px; text-align: center; color: #fff;}


/* 실시간 신청현황 02 */
.swiper-overlay {padding: 5.7rem 0 4.2rem;}
.subscribe-title {margin-bottom: 2.2rem; font-family: 'Pretendard'; font-size: 5.6rem; font-weight: 700; letter-spacing: -2.8px; text-align: center; color: #101524; line-height: 1;}
/* .swiper-overlay {overflow: hidden; padding-top: 51px; height: 400px;} */
.swiper.mySwiper {height: 42.5rem; background-color: #fff; box-sizing: border-box; align-items: center;}
.subscribe {padding: 0; background-color: #fff;}
.mySwiper .swiper-wrapper {align-items: center;}
.mySwiper .swiper-slide {max-width: 800px; width: 95%; max-height: 10rem !important; height: 100% !important;} 
.mySwiper .swiper-slide:nth-child(1) {margin-top: 2rem;}
.mySwiper .swiper-slide + .swiper-slide {margin-top: 0.74rem;}
.mySwiper .swiper-slide .inner {display: flex; align-items: center; justify-content: space-around; gap: 2rem;width: 100%; height: 100%; background: #fff;border: 1px solid #ddd; padding: 1.4rem; border-radius: 1.2rem; letter-spacing: -0.31px; transform: scale(0.95);transition: background 0.2s 0.2s linear, border 0.2s 0.2s linear, transform 0.2s 0.2s linear, opacity 0.2s 0.2s linear, font-weight 0.2s 0.2s linear; box-sizing: border-box;} 
.mySwiper .swiper-slide.active .inner {position: relative; z-index: 1; background: #eff0ff; border: 1px solid #504dd1; color: #242424; font-weight: 500; transform: scale(1) translateY(-2rem
); opacity: 1; overflow: hidden;} 
.swiper.mySwiper .check {flex-shrink: 0; position: relative; display: inline-block; width: 6.7rem; height: 6.7rem; background: url("//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_06.png") no-repeat center / 100%;} 
.mySwiper .swiper-slide .inner span {font-family: 'NotoSansKR'; font-size: 2.8rem; font-weight: 500; letter-spacing: -0.28px; text-align: left; color: #242424;}

@keyframes rolling {
    10% {
        opacity: 0;
        transform: scale(0.7);
    }
    100% {
        opacity: 1;
        transform: scale(1);
    }
}

/* 플로팅 이미지 영역 */
/* .floatingImg{z-index:999; position: fixed; bottom: 1.7rem; right: max(1.3rem, calc((100vw - 818px) / 2)); margin-left:2%; width:30%; max-width: 197px; cursor: pointer; animation: upDown 1s infinite;} */

@keyframes upDown {
    0% { transform: translateY(0); }
    50% { transform: translateY(7%); }
    100% { transform: translateY(0); }
}

@media screen and (max-width: 480px){
    html, body {font-size: 1.5vw;}

    .form .form_inner .formGroup {padding: 6rem 5.5rem 5.8rem;}
    .form .form_inner .question {font-size: 4.7rem;}
    .form .agBox {font-size: 1.9rem;}
    .swiper.mySwiper .check {width: 4.7rem; height: 4.7rem;}
    .mySwiper .swiper-slide .inner {column-gap: 1rem;}
    .mySwiper .swiper-slide .inner span {font-size: 2.4rem;}
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
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_01.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_02.jpg"></div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="form_inner">
                <div class="formGroup">
                    <div class="question">
                        타이어 렌탈 받을 분의<br />
                        <strong>성함과 연락처를 입력</strong>해 주세요
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
                        <div class="user_info add">
                            <span class="legend">차종</span>
                            <input type="text" name="tadd1" id="add1" class="inp" required autocomplete="off" placeholder="차종을 입력해주세요">
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
                            <li>개인정보 취급 위탁을 받는자 : (주)하랑고치</li>
                            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>

                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_04.png"></div>

                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
                    </div>

                    <p class="notice">
                        ※ 렌탈 불가 차종: 1톤, 봉고, 포터, 트럭, 21인치 이상 타이어, 콜로라도, 벤 등... <br />
                        ※ 본 제품은 전화 상담 후 진행되는 제품으로 일부차량은 불가 할 수 있습니다.
                    </p>
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

    <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_03.jpg"></div>

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 
            <div class="form_inner">
                <div class="formGroup">
                    <div class="question">
                        타이어 렌탈 받을 분의<br />
                        <strong>성함과 연락처를 입력</strong>해 주세요
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
                        <div class="user_info add">
                            <span class="legend">차종</span>
                            <input type="text" name="tadd1" id="add1" class="inp" required autocomplete="off" placeholder="차종을 입력해주세요">
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
                            <li>개인정보 취급 위탁을 받는자 : (주)하랑고치</li>
                            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>

                    <div class="submit"><input type="image" onclick="fnForm('form-2');" value="" src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_04.png"></div>

                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
                    </div>

                    <p class="notice">
                        ※ 렌탈 불가 차종: 1톤, 봉고, 포터, 트럭, 21인치 이상 타이어, 콜로라도, 벤 등... <br />
                        ※ 본 제품은 전화 상담 후 진행되는 제품으로 일부차량은 불가 할 수 있습니다.
                    </p>
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

    <!-- 실시간 신청현황 -->
    <div class="swiper-overlay">
        <div class="subscribe-title">실시간 신청자 현황</div>
        <div class="swiper mySwiper">
            <div class="subscribe swiper-wrapper" data-limit="10">
            </div>
        </div>
    </div>

    <div class="container">
		<!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.jpg"></div> -->
		<div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/260727_NXTR_05.jpg"></div>
    </div>

</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3

        getCommentToast(`${eventSeq}`);
    });

    let swiper; // 전역 변수로 선언
    function triggerActiveAnimation(slide) {
        document.querySelectorAll(".mySwiper .swiper-slide").forEach((el) => el.classList.remove("active")); // 먼저 모두 제거
        void slide.offsetWidth;
        slide.classList.add("active");
        setTimeout(() => {
        slide.classList.remove("active");
        }, 2500);
    }

    // Swiper 초기화 함수
    function initSwiper() {
        const slideLength = document.querySelectorAll(".mySwiper .swiper-slide").length;
        const swiperW = document.querySelector(".mySwiper .swiper-wrapper");

        const enableLoop = slideLength > 1;
        const slidesPerView = slideLength >= 4 ? 4 : slideLength;

        if (slideLength < 4) {
            // swiperW.style.justifyContent = "flex-end";
        } else {
            swiperW.style.justifyContent = "flex-start";
        }

        // 기존 swiper가 있으면 제거 (중복 초기화 방지)
        if (swiper) {
            swiper.destroy(true, true);
            swiper = null;
        }

        swiper = new Swiper(".mySwiper", {
            direction: "vertical",
            slidesPerView: slidesPerView,
            spaceBetween: 0,
            loop: enableLoop,
            mousewheel: true,
            // speed: 500,
            autoplay: {
                delay: 2000,
                disableOnInteraction: false,
            },
            on: {
                init: function () {
                    setTimeout(() => {
                        let lastVisibleIndex = swiper.activeIndex + swiper.params.slidesPerView - 1;
                        let targetSlide = swiper.slides[lastVisibleIndex];
                        if (targetSlide) {
                        triggerActiveAnimation(targetSlide);
                        }
                    }, 100);
                },
                slideChangeTransitionStart: function () {
                    setTimeout(() => {
                        document.querySelectorAll(".mySwiper .swiper-slide").forEach((el) => el.classList.remove("active"));

                        let visibleSlides = Math.min(swiper.slides.length, swiper.params.slidesPerView);
                        let lastVisibleIndex = swiper.activeIndex + visibleSlides - 1;
                        if (lastVisibleIndex >= swiper.slides.length) {
                            lastVisibleIndex = swiper.slides.length - 1;
                        }
                        let targetSlide = swiper.slides[lastVisibleIndex];
                            if (targetSlide) {
                            triggerActiveAnimation(targetSlide);
                        }
                    }, 20);
                },
            },
        });
    }

    function returnComment(resultData, meoreData){
        var today = new Date();   
        var month = today.getMonth() + 1;
        var dateNum;
        
        $('.subscribe').each(function(idx,obj) {
            var data = resultData;
            
            for(v in data) {
                var statusText = '신청완료'
                var backgroundClass = statusText === '신청완료' ? 'color-bg' : '';
                var html  = '<div class="swiper-slide" data-id="'+ data[v].seq +'">';
                    html += '    <div class="inner">';
                    html += '        <span class="check"></span>';
                    html += '        <span class="name">'+ data[v].name +'</span>';
                    html += '        <span class="text">신청했습니다~</span>';
                    html += '        <span class="text">'+ data[v].phone +'</span>';
                    html += '        <span class="text">'+ ' | ' +'</span>';
                    html += '        <span class="date">'+ data[v].regDate +'</span>';
                    html += '    </div>';
                    html += '</div>';
                $(obj).append(html);
            }
        });

        initSwiper();
    }

    //설문 클릭시 이미지 on/off
    // $('input[name="tadd1"]').on('click', function(){
    //     $('label', $(this).parents('.q_select')).each(function(i,t) {
    //         $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
    //     });
    //     $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    // });

    // ✅ 설문 클릭 시 이미지 on/off (선택 토글)
    // $('input[name*="tadd"]').on('click', function () {
    //     const $parent = $(this).closest('.q_select'); // 부모 영역 지정

    //     // 모든 label에서 active 클래스 제거
    //     $parent.find('label').removeClass('active');

    //     // 클릭한 input의 label에 active 클래스 추가
    //     $(this).closest('label').addClass('active');
    // });


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

		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]`);
		if (!selectedRadio1) {
			alert("차종을 입력해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
			
        // 필수값 체크 항목
        var required = {
            'name': '이름'
            // ,'age': '나이'
            ,'phone': '전화번호'
            ,'add1': '차종'
            // ,'add2': '설문2'
            // ,'add3': '설문3'
            ,'agBox': '개인정보'
        };
        
        validateForm(procForm, required);
    }
</script>