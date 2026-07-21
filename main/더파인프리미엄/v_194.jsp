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

.gif-area {position: relative;}
.gif-area .gif {position: absolute; left: 50%; transform: translateX(-50%); width: 78.973105%;}
.gif-area .gif_01 {top: 5.55%;}
.gif-area .gif_02 {bottom: 29.15%;}
.gif-area .gif_03 {width: 100%; bottom: 15%;}

/* 초기화 */
.form .form_inner {background-color: #0c544b;}

.notice-area {padding: 2.4rem 0 1.8rem; background-color: #0c544b;}

/* 이름, 나이, 연락처 입력칸 */
.form .form_inner .formGroup {padding: 5.1rem 6rem 0;}
.form .form_inner .formGroup .legend {width: 7.6rem; flex-shrink: 0; font-family: 'Pretendard'; font-size: 2.4rem; font-weight: 700; line-height: 1.46; color: #fff;}
.form .form_inner .formGroup .legend .mark {color: #43d866;}
.form .form_inner .formGroup .user_info {display: flex; align-items: center; column-gap: 4.5rem;}
.form .form_inner .formGroup .user_info + .user_info {margin-top: 2.9rem;}
.form .form_inner .formGroup .inp {padding: 2.3rem 3.1rem 2.4rem; font-family: 'Pretendard'; font-size: 2rem; line-height: 1; letter-spacing: -1px; text-align: left; color: #fff; border-radius: 1rem; border: solid 1px #757575; background-color: #07332c;}

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

/* 실시간 신청 현황 */
.subscribe_container {padding: 9.1rem 0 0;}
.subscribe_container .subscribe_bg {padding: 3.6rem 2.1rem 2.3rem; border-radius: 2.6rem; background-color: #e9e9e9}
.subscribe_container .title {  font-family: 'Pretendard'; font-size: 4.85rem; font-weight: 700; line-height: 1; letter-spacing: -1.21px; text-align: center; color: #262626;}
.subscribe {margin-top: 2.9rem; height: 32rem; overflow: hidden; padding: 2.8rem 5.8rem 0; background: #fff; border-radius: 1.8rem;}
.subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 1%; border-bottom: 0; font-size: 150%; line-height: 1;}
.subscribe .content > div {width: 33.3333%;  font-family: 'Pretendard'; font-size: 1.75rem; font-weight: 500; letter-spacing: -0.44px; text-align: center; color: #262626;}
.subscribe .content .statusText {width: 9.7rem; text-align: center; border-radius: 999px; color: #262626; font-weight: 500; background: #e9e9e9;}
.subscribe .content .statusText:not(.yellow-bg) {background: #fdff7b;}

/* .subscribe_container + .img-area {padding-bottom: 5rem; background-color: #2e2e2e;} */

/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 0%; cursor: pointer; width: 100vw; max-width: 818px;}

@media screen and (max-width: 480px){
    html, body {font-size: 1.7vw;}

    .form .form_inner .formGroup {padding: 5.1rem 5.5rem 0;}
    .form .form_inner .formGroup .user_info {column-gap: 2.5rem;}
    .form .form_inner .formGroup .user_info + .user_info {margin-top: 1.9rem;}
    .form .form_inner .formGroup .legend {width: 8rem;}
    .form .form_inner .formGroup .inp {padding: 1.9rem 2.8rem 2.1rem;}
    .form .description p, .form .description .ad_txt, .form .description span {word-break: keep-all;}

    .subscribe_container .title {font-size: 3.8rem;}
    .subscribe {padding: 2.8rem 3.8rem 0;}
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
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="video-box">
            <video id="location" playsinline loop autoplay muted src="//static.harang-event.com/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_05.jpg">
            <img class="gif gif_01" src="//static.harang-event.com/event/v_${eventSeq}/img_01.gif">
            <img class="gif gif_02" src="//static.harang-event.com/event/v_${eventSeq}/img_02.gif">
        </div>
        <div class="img-area gif-area">
            <img src="//static.harang-event.com/event/v_${eventSeq}/event_main_06.jpg">
            <img class="gif gif_03" src="//static.harang-event.com/event/v_${eventSeq}/img_03.gif">
        </div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_07.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_08.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_09.gif"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_10.jpg"></div>
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/event_main_11.jpg"></div>
    </div>
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="form_inner">
                <div class="formGroup">
                    <!-- <div class="img-area pc-img notice-img"><img src="//static.harang-event.com/event/v_${eventSeq}/txt_01_pc.png"></div> -->
                    <div class="user_info name">
                        <span class="legend">이름<span class="mark">*</span></span>
                        <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="성함을 입력해 주세요.">
                    </div>
                    <div class="user_info age">
                        <span class="legend">나이<span class="mark">*</span></span>
                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해 주세요.">
                    </div>
                    <div class="user_info phone">
                        <span class="legend">연락처<span class="mark">*</span></span>
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요.">
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
                    <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.gif"></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
                    </div>
                    <div class="subscribe_container">
                        <div class="subscribe_bg">
                            <div class="title">실시간 신청 현황</div>
                            <div class="subscribe" data-limit="10">
                                <div class="content">
                                    <div class="name">이**</div>
                                    <div class="statusText">신청완료</div>
                                    <div class="date">06-14 11:01</div>
                                </div>
                                <div class="content">
                                    <div class="name">김**</div>
                                    <div class="statusText yellow-bg">신청중</div>
                                    <div class="date">06-17 10:01</div>
                                </div>
                                <div class="content">
                                    <div class="name">오**</div>
                                    <div class="statusText yellow-bg">신청중</div>
                                    <div class="date">06-26 11:06</div>
                                </div>
                                <div class="content">
                                    <div class="name">이**</div>
                                    <div class="statusText">신청완료</div>
                                    <div class="date">06-26 12:13</div>
                                </div>
                            </div>
                        </div>
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
    <div class="img-area fixed db_btn"><img src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb_01.gif"></div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지3
        getComment(`${eventSeq}`);

        setBottomPadding();
        bindLateLayoutFix();
    });

    function setBottomPadding() {
        const $fixedBtn = $('.fixed');
        const $wrap = $('#wrap');

        if (!$fixedBtn.length || !$wrap.length) return;

        const btnHeight = $fixedBtn.outerHeight();
        $wrap.css('padding-bottom', (btnHeight) + 'px');
    }

    function isNearBottom(threshold = 48) {
        const scrollTop = window.pageYOffset || document.documentElement.scrollTop || 0;
        const viewportHeight = window.innerHeight || document.documentElement.clientHeight || 0;
        const docHeight = Math.max(
            document.body.scrollHeight,
            document.documentElement.scrollHeight
        );
        return (scrollTop + viewportHeight) >= (docHeight - threshold);
    }

    function stickToBottomIfNeeded() {
        if (!isNearBottom()) return;
        window.scrollTo(0, document.documentElement.scrollHeight);
    }

    function bindLateLayoutFix() {
        // 이미지/비디오가 늦게 로드되어 높이가 늘어날 때 하단 스크롤을 유지
        const mediaNodes = document.querySelectorAll('.container img, .video-box video, .fixed img');
        mediaNodes.forEach((node) => {
            node.addEventListener('load', function() {
                setBottomPadding();
                stickToBottomIfNeeded();
            }, { passive: true });
            node.addEventListener('loadedmetadata', function() {
                setBottomPadding();
                stickToBottomIfNeeded();
            }, { passive: true });
        });
    }

    $(window).on('load resize', function () {
        setBottomPadding();
        stickToBottomIfNeeded();
    });

    let today = new Date()
    let Year = today.getFullYear()

    function returnComment(resultData, meoreData){
        $('.subscribe').each(function(idx,obj) {
            var data = resultData;
            
            for(v in data) {
                // var statusText1 = Math.random() < 0.5 ? '설치 완료' : '접수 진행';
                var statusText = Math.random() < 0.5 ? '신청완료' : '신청중';
                var backgroundClass = statusText === '신청완료' ? '' : 'yellow-bg';
                var html  = '<div class="content" data-id="'+ data[v].seq +'">';
                    // html += '	<div class="add1">'+ data[v].add1 +'</div>';
                    html += '	<div class="name">'+ data[v].name +'</div>';
                    // html += '	<div class="add2">'+ data[v].add2 +'</div>';
                    html += '	<div class="statusText ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
                    html += '	<div class="date">' + data[v].regDate +'</div>';
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


    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.form_inner').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동

        // fnForm('form-1');
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