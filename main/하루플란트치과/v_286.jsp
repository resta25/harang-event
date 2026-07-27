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
html, body {font-size: 10px;}
.page_inner {padding: 6.167% 6.167% 1.335%; flex-grow: 1;}
#wrap {display: flex; flex-direction: column; font-family: 'Pretendard'; max-width: 600px; background-color: #fff; height: 100vh; height: 100dvh;   padding: env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left);  overflow: hidden;}
.form {flex-grow: 1; background: #f6f7f5;}
/* #form-1 {height: 100%;} */
#wrap .formContents { display: flex; flex-direction: column;}
.page {height: 100%; flex-grow: 1; display: flex; flex-direction: column;}
.hide {display: none;}

/* 상단 공통 */
.top_txt {font-family: 'SUIT'; font-size: 2.4rem; font-weight: 800; letter-spacing: -0.48px; text-align: center; color: #000; padding: 4.157% 0 3.913%;}
.top_txt strong {color: #2769ff; font-family: 'SUIT'; font-weight: 800;}
.page-num {  font-family: 'SUIT'; font-size: 1.8rem; font-weight: 800; letter-spacing: -0.36px; text-align: center; color: #848484;}
.q-text {font-family: 'SUIT'; font-size: 4.3rem; font-weight: 300; line-height: 1.38; letter-spacing: -1.29px; text-align: center; color: #0d0d0d; margin: 5.895% auto 9.507%;}
.q-text strong {font-weight: 800;}
.q-text .random {display: inline-block; line-height: 1; max-width: 9.6rem; width: 100%; text-align: right;}
.paging {display: flex; align-items: center; justify-content: center; column-gap: 1.2rem; margin-bottom: 7.225%;}
.paging label {width: calc((100% - 1.2rem) / 2); padding: 1.7rem 1.5rem 2rem; border-radius: 16px; border: solid 1px #dadada; background-color: #fff; box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.04);}
.paging label.active {border-color: #2769ff;}
.paging label img {display: block; width: 100%; height: 100%;}
.paging label span {display: block; margin-top: 1.7rem; font-family: 'SUIT'; font-size: 2rem; font-weight: 800; letter-spacing: -0.4px; text-align: center; color: #161616; text-align: center;}
.paging label.active span {color: #2769ff;}

/* 토스트 팝업 */
.toast {display: none; position: absolute; top: 40%; left: 50%; transform: translateX(-50%); border-radius: 1.6rem; background-color: rgba(0, 0, 0, 0.68); width: 94.6667%; text-align: center;}
.toast p {font-family: 'SUIT'; font-size: 2.6rem; font-weight: 300; line-height: 1; letter-spacing: -0.78px; text-align: center; color: #fff;}
.toast p strong {font-weight: 800; font-family: 'SUIT';}

.page_inner .img-area:not(.next) {width: 91.965%; margin: 0 auto;}
.page_inner .img-area:not(.next) + .img-area:not(.next) {margin-top: 5.18%;}
#page-2 .page_inner {padding: 6.167% 4.167% 1.335%;}
#page-2 .paging label {padding: 1.1rem 1rem;}
#page-2 .page_inner .img-area:not(.next) {width: 80%; margin: 0 auto;}

.intro-box {background: #edf2f7; font-size: 3.7rem; padding: 4.108% 9.465% 4.5%; margin-top: 3.322%; border-radius: 1.2rem;}

/* 설문영역 */
.form .next {width: 80%; margin: 0 auto;}
.form .next img {width: 100%;}
.form .submit {width: 51.143%; margin: 1.2rem auto; padding: 0;}
.form .submit input[type="image"] {width: 100%;}

/* 설문영역 */
/* .form .page-inner {padding: 2.8rem 2rem 1rem;} */
.form .user-box {margin-top: 2rem;}
.form .user-box .user-info {display: flex; align-items: center; justify-content: space-between; border-radius: 1.2rem; padding: 3.234% 4.66%; border: solid 1px #dadada; background-color: #fff;   font-family: 'SUIT'; font-size: 1.8rem; font-weight: 600; letter-spacing: -0.37px; text-align: left; color: #0d0d0d;}
.form .user-box .user-info.focus {border-color: #2769ff;}
.form .user-box .user-info:not(:last-child) {margin-bottom: 1.6755%;}
.form .user-box .user-info .legend {position: relative; width: 10.5rem;/* 라벨 고정 폭 */ display: inline-block; font-weight: 600; font-size: 1.8rem; flex-shrink: 0; color: #0d0d0d; font-family: 'SUIT';}
/* .form .user-box .user-info .legend::before {display: none; content: ''; position: absolute; right: 3.1rem; top: 50%; width: 2px; height: 60%; transform: translateY(-50%); background-color: #0d0d0d;} */
.form .user-box .user-info.focus .legend {color: #2769ff;}
.form .user-box .user-info.focus .legend::before {display: block;}
.form .user-box .user-info input {font-size: 1.8rem; font-family: 'Pretendard'; font-weight: 500; color: #222;}
.form .user-box .user-info input::placeholder {color: #ccc;}

/* 안심문구, 대상, 이벤트기간 */
.form .description .ad_txt,
.form .description p,
.form .description span {font-weight: normal; font-size: 1.3rem; padding: 0; margin: 0; color: #6e6e6e; letter-spacing: -0.65px;}
.form .description .ad_txt {margin-top: 1rem;}
.form .description p {display: inline-block; margin-right: 0.8rem;}

.form .agBox {margin-top: 1.2rem; margin-bottom: 0; font-family: 'SUIT'; font-size: 1.4rem; letter-spacing: -0.24px; text-align: center; color: rgba(22, 22, 22, 0.5); text-decoration: underline;}
.form .agBox a {font-weight: 400;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

/* .containers {display: flex; flex-direction: column; color: white;} */
.container input[type="radio"] {display: none;}
.radio-circle {width: 38px; height: 38px; border-radius: 50%; border: 2px solid #aaa; position: relative;}
.radio-circle::before {content: ""; display: block; width: 25px; height: 25px; border-radius: 50%; background-color: #ddd; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%) scale(0); transition: all 0.2s ease-in-out;}
.container input[type="radio"]:checked + .radio-circle {border-color: #1074fe;}
.container input[type="radio"]:checked + .radio-circle::before {transform: translate(-50%, -50%) scale(1);}
.container input[type="radio"]:checked + .radio-circle::before {background-color: #1074fe;}
.bage {font-size: 1.5rem; background: #1074fe; color: #fff609; text-align: center; padding: 0.2rem 0.8rem; border-radius: 0.4rem; font-weight: 700; position: absolute; top: -40%; left: 50%; transform: translateX(-50%); width: max-content;}
.radio-label {font-size: 79%; font-weight: 700; font-family: 'Pretendard'; line-height: 1;}
.container:hover .radio-circle {border-color: #555;}
.container:hover input[type="radio"]:checked + .radio-circle::before {background-color: #555;}

/* === 진행 상태 바 === */
.progress-wrap {width: 100%; height: 4px; border-top: 1px solid #eaeaea; overflow: hidden;}
.progress-bar {height: 100%; width: 0%; background-color: #2769ff; transform-origin: 0 0; transition: width 0.4s cubic-bezier(.25, 0, .35, .95); max-width: 100%;}

/* === 페이지 전환 애니메이션 ===
   애니메이션 동안에만 두 .page 가 absolute 로 겹쳐서 같이 이동한다.
   xPercent ±100 으로 두 페이지가 같은 좌표 영역을 공유하지 않게 함. */
.formContents {position: relative;}
.formContents.is-animating {overflow: hidden;}
.formContents.is-animating > .page {position: absolute; top: 0; left: 0; right: 0; width: 100%;}
/* .formContents.is-animating > .page.hide {display: flex !important; flex-direction: column;} */

@media screen and (max-width: 500px) { 
    html, body {font-size: 1.7vw;}

    .form {flex-grow: 1; display: flex;}
    #form-1 {flex-grow: 1; display: flex; flex-direction: column;}
    #wrap .formContents {display: flex; flex-direction: column; flex-grow: 1;}
    .page {height: 100%; flex-grow: 1; flex-direction: column;}
    /* .page_inner {padding: 3.9% 3.335% 1.335%;} */

    .page_inner .img-area:not(.next) + .img-area:not(.next) {margin-top: 3.68%;}

    .intro-box {margin-top: 0; padding: 5.108% 9.465% 5.5%;}
    .form .user-box .user-info {padding: 3.35% 4%;}
    /* .form .user-box .user-info:not(:last-child) {margin-bottom: 5%;} */
    .form .user-box {margin-top: 7%;}
    .form .submit {padding: 2px 0;}
    /* .form .description .ad_txt {margin-top: 0;} */
    /* .form .user-box .user-info input {font-size: 240%; padding: 1.25rem 2rem;} */

    .form .description .ad_txt {margin-top: 2.5%;}
}
@media screen and (max-width: 430px) {
}

@media screen and (max-width: 395px) {
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css"/>
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
        <!-- <div class="top_txt"><strong>신사역</strong>에 위치한 치과</div> -->
        <div class="progress-wrap" role="progressbar" aria-label="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="33">
            <div class="progress-bar" style="width: 33.3333%"></div>
        </div>
        <div class="formContents">
            <section class="page section01" id="page-1">
                <div class="page_inner">
                    <div class="page-num">
                        <span class="current">1</span> of
                        <span class="total">2</span>
                    </div>
                    <p class="q-text"><strong>임플란트</strong>가 필요하신가요?</p>
                    <p class="paging">	
                        <label class="label-agree" onclick="pageFuc(1,$(this))">
                            <input type="radio" name="add1" value="예" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/img_01.png"></input>
                            <span class="agree">예</span>
                        </label>
                        <label class="label-disagree">
                            <input type="radio"  name="add1" value="아니오" class="close"><img src="//static.harang-event.com/event/v_${eventSeq}/img_02.png"></input>
                            <span class="disagree">아니요</span>
                        </label>
                    </p>
                </div>
            </section>

            <!-- <section class="page hide section02" id="page-2">
                <div class="page_inner">
                    <div class="page-num">
                        <span class="current">2</span> of
                        <span class="total">3</span>
                    </div>
                    <p class="q-text">
                        <strong>거주하시는 곳</strong>을 체크해주시면<br />
                        <strong>임플란트 20만원 병원</strong>을<br />
                        안내해드립니다
                    </p>
                    <p class="paging">	
                        <label class="label-agree" onclick="pageFuc(2,$(this))">
                            <input type="radio" name="tadd1" value="서울" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/img_03.png"></input>
                            <span class="agree">서울</span>
                        </label>
                        <label class="label-agree" onclick="pageFuc(2,$(this))">
                            <input type="radio" name="tadd1" value="경기" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/img_04.png"></input>
                            <span class="agree">경기</span>
                        </label>
                        <label class="label-agree" onclick="pageFuc(2,$(this))">
                            <input type="radio" name="tadd1" value="인천" class="first"><img src="//static.harang-event.com/event/v_${eventSeq}/img_05.png"></input>
                            <span class="agree">인천</span>
                        </label>
                    </p>
                </div>
            </section> -->

            <section class="page hide section02" id="page-2">
				<div class="page_inner">
					<div class="page-num">
                        <span class="current">2</span> of
                        <span class="total">2</span>
                    </div>
					<div class="db-box">
                        <div class="question">
                            <div class="q-text">
                                서비스 이용을 위한 <br />
                                <strong>성함과 연락처</strong>를 적어주세요
                            </div>
                        </div>
						<div class="user-box">
							<div class="user-info">
								<span class="legend">이름</span>
								<input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름 입력 ">
							</div>
							<div class="user-info">
								<span class="legend">연락처</span>
								<input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="'-'없이 입력">
							</div>
						</div>
                        <div class="agBox">
                            <label><input type="checkbox" name="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함 </span><a href="#" class="agree_txt">[자세히 보기]</a></label>
                        </div>
						<div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.harang-event.com/event/v_${eventSeq}/btn_newSb.png"></div>
						<div class="description bottom">
							<p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p> <span>대상 :  ${resVo.target}</span>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
        <!-- <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/notice.png"></div> -->
        <div class="img-area"><img src="//static.harang-event.com/event/v_${eventSeq}/footer.jpg"></div>
    </div>
    
    <div class="toast">
        <p><strong>혜택 제공</strong>을 위해 <strong>"예"</strong>를 터치해주세요</p>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function () {
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        setProgress(0); // 초기 진행률 = 1 / 전체 페이지 수
	});

    $('.user-info input').on('click focus', function(){
        $(this).closest('.user-info').addClass('focus');
    });

    $('.user-info input').on('blur', function(){
        $(this).closest('.user-info').removeClass('focus');
    });

    $('.q-text .random').text(Math.floor(Math.random() * 999) + 100)

    // 페이지 전환 애니메이션 / 진행바 토큰
    // - 이동 거리는 ±100% 로 두 페이지가 같은 좌표를 공유하지 않게 함 (잔상 제거)
    // - 모든 트윈 길이/이징을 통일하여 시작·종료 시점을 정확히 맞춤
    // - 진행바 width transition 은 CSS .progress-bar 에서 처리
    let __isAnimating = false;
    function setProgress(currentPage) {
        let totalPages = $('.formContents > .page').length || 1;
        let pct = 0;
        if (totalPages > 1) {
            pct = ((currentPage - 1) / (totalPages - 1)) * 98;
        }
        pct = Math.min(100, Math.max(0, pct));
        $('.progress-bar').css('width', pct + '%');
        $('.progress-wrap').attr('aria-valuenow', Math.round(pct));
    }

    // 버튼 페이지 이동 함수 (다음)
    function pageFuc(num, obj) {
        $('.paging label').removeClass('active');
        $(obj[0]).addClass('active')
        if (__isAnimating) return;

        const $toast = $('.toast');
        $toast.fadeOut(300)

        // 선택된 라디오 버튼 확인 (section03 페이지일 때)
        // if (num === 1) {
        //     const isChecked = $('input[name="tadd1"]:checked').length > 0;
        //     if (!isChecked) {
        //         alert("설문을 선택해주세요");
        //         return; // 선택되지 않았으면 페이지 이동 안함
        //     }
        // }

        var $current  = $('.section0' + num);
        var $next     = $('.section0' + (num + 1));
        var $contents = $('.formContents');

        if ($current.length === 0 || $next.length === 0) return;

        __isAnimating = true;

        // 1) 들어오는 페이지를 보이게 + 두 페이지 모두 absolute 로 겹치기
        var currH = $contents.outerHeight();
        $next.removeClass('hide');
        $contents.addClass('is-animating').css('height', currH + 'px');

        // 2) 다음 페이지 자연 높이 측정 (absolute 상태에서)
        var nextH = $next.outerHeight();

        // 3) 초기 위치 세팅 — xPercent 100 으로 두 페이지가 같은 좌표에서 겹치지 않게
        gsap.set($current[0], { xPercent: 0,   opacity: 1 });
        gsap.set($next[0],    { xPercent: 100, opacity: 0 });

        // 4) 진행바는 전환과 동시에 갱신 → CSS transition 이 부드럽게 채움
        setProgress(num + 1);

        // 5) 슬라이드 + 페이드 — 모든 트윈을 같은 길이/이징으로 통일하여 시작·종료 타이밍을 정확히 일치시킴
        //    페이드는 스태거드 크로스페이드(current 먼저 사라진 뒤 next 가 나타남)로 동시 노출 구간 제거
        var DUR = 0.55;
        var EASE = 'power2.inOut';
        gsap.timeline({
            onComplete: function () {
                gsap.set($current[0], { clearProps: 'all' });
                gsap.set($next[0],    { clearProps: 'all' });
                $contents.removeClass('is-animating').css('height', '');
                $current.addClass('hide').css('display', '');
                $next.css({ 'display': 'flex', 'flex-direction': 'column' });
                $(document).scrollTop(0);
                __isAnimating = false;
            }
        })
        .to($contents[0], { height: nextH,  duration: DUR, ease: EASE }, 0)
        .to($current[0],  { xPercent: -100, duration: DUR, ease: EASE }, 0)
        .to($current[0],  { opacity: 0,     duration: DUR * 0.6, ease: 'power1.in'  }, 0)
        .to($next[0],     { xPercent: 0,    duration: DUR, ease: EASE }, 0)
        .to($next[0],     { opacity: 1,     duration: DUR * 0.6, ease: 'power1.out' }, DUR * 0.4);
    }

    // 1페이지 (신청하지 않음)
    let isToastShowing = false;
    const toastState = {}; // 🔥 페이지별 상태 저장

    $('input[type="radio"].close').on('click', function(){
        $('.paging label').removeClass('active');
        $(this).closest('label').addClass('active');
        const $toast = $('.toast');
        const $page = $(this).closest('.page');
        const pageId = $page.attr('id');

        // 🔥 해당 페이지에서 이미 떠있으면 무시
        if (toastState[pageId]) return;

        let message = '';

        if (pageId === 'page-1') {
            message = '<p><strong>혜택 제공</strong>을 위해 <strong>"예"</strong>를 터치해주세요</p>';
        } else if (pageId === 'page-2') {
            message = '<p><strong>혜택 제공</strong>을 위해 <strong>확인 버튼</strong>을 터치해주세요</p>';
        }

        $toast.html(message);
        toastState[pageId] = true;
        $toast.stop(true, true).fadeIn(300);

        setTimeout(function(){
            $toast.fadeOut(300, function(){
                $('input[type="radio"].close').closest('label').removeClass('active');
                toastState[pageId] = false; // 🔥 해당 페이지만 풀림
            });
        }, 2500);
    });

    // 개인정보 처리방침 모달창
    $('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }
		
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
			// ,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>