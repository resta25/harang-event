<!-- 한글 인코딩 / 최상단 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
#wrap {font-family: 'noto sans kr';}
.form .formContents {padding-bottom: 4%;}

.form .question_box {padding:3% 0; text-align:center;}
.form .question_box img {width:100%;}
.form .question_box .question {margin: 5% auto; width: 70%;}
.form .question_box .q_select label {padding:0 1.5%; font-size:150%;}

.form .db-box {background: #fff898; padding: 3% 0;}

/* input css*/
.input_box {margin: 2% auto; width: 80%;}
.input_box .input_row {border: 1px solid #000; display: flex; align-items: center; background: #fff; padding-left: 2%;}
.input_box .input_row .title {width: 35%;}
.input_box .input_row .title img {width: 100%;}
.input_box .input_row:not(:last-child) {margin-bottom: 1.5%;}
.input_box .input_row .input_label {width: auto; text-align: left; font-size: 28px; font-weight: 400; color: #000;}
.input_box .input_row .inp {padding: 0.8em 0; font-size: 24px;}
.input_box .input_row .inp::placeholder {color: #797979;}

.form .submit {padding: 0;}
.form input[type="submit"] {width: 500px; height: 100px;margin-top: 0; background-color: #ff453d;}

@media screen and (max-width: 768px) {
    .form .question_box .question {width: 90%;}
    .form .question_box .q_select label {font-size: 4vw;}

    .input_box .input_row .inp {font-size: 4vw;}
}
</style>

<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>
                <div class="db-box">
                    <div class="description">
                        <!--<p>이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>-->
						<p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    </div>
                        
                    <div class="formGroup">
                        <div class="input_box">
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png" alt=""></span>
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/age.png" alt=""></span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/phone_01.png" alt=""></span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                            </div>
                        </div>
                    </div>
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                    <div class="submit"><input type="submit" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description">
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.jpg"></div>
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

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 

            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>

                <div class="db-box">
                    <div class="description">
                        <!--<p>이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>-->
						<p id="event-period"></p>
						<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    </div>
                        
                    <div class="formGroup">
                        <div class="input_box">
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png" alt=""></span>
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/age.png" alt=""></span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/phone_01.png" alt=""></span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                            </div>
                        </div>
                    </div>
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                    <div class="submit"><input type="image" onclick="fnForm('form-2')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description">
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_10.jpg"></div>
                <div class="subscribe" data-limit="10"></div>
            </div>
			<!-- Form 필수값 start -->
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
			<!-- Form 필수값 end -->
		</form>
	</div>

		<div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
	</div>
	
</div>
<!-- 필수 js start -->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<!-- 필수 js end -->

<!--
	PHP to JSP
	1. 상단에 설정 필요 (2줄로 입력해야함)
	 - 	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%> 
	2. 이미지 경로 변경
	 - <?php echo $this->no;?> -> ${eventSeq}
	3. 변수
	 - ${resVo.agent} : 모모의원
	 - ${resVo.objectItems} : 이름,나이,전화번호,설문
	 - ${resVo.objectName} : 모발이식
	 - ${resVo.target} : GDN 및 유튜브 이용자
	 4. 백틱(``) 대신 문자열 연결 연산자(+)로 변경
-->

<script>
	/*
	* 페이지마다 존재하던 사이즈 재조절은 공통으로 모든페이지에 자동적용 
	* setScreenSize();
	* window.addEventListener('resize', setScreenSize);
	*/
	$(document).ready(function () {
	/*
	* 드레그, 우클릭 방지
	* blockSourceView()
	*/
	
	/*
	* 이벤트 기간
	* initDate()
	* <p id="event-period"></p> 아이디 설정 필요
	*/

	/*
	* 개인정보처리방침 (기본)
	* getAgreementContent(); // 개인정보처리방침 자세히보기
	* <div class="agreementContent" id="agreementContent"></div> id="agreementContent" 설정 필요
		
	* 개인정보처리방침 (머리바바)
	* 전체 동의 + 필수 동의 + 선택 동의
	* 개인정보제공받는자: 플란치과
	* agreementContent3()
	* id="agreementContent3"
	
	* 개인정보처리방침 (클리어서울안과)
	* agreementContent4();
	* id="agreementContent4"
	
	* 개인정보처리방침 (플란치과병원인천점)
	* 전체 동의 + 필수 동의 + 선택 동의 + 선택 동의
	* 개인정보제공받는자: 플란치과
	* agreementContent5()
	* id="agreementContent5"
	/*
	
	/*
	* 참여자 수
	* eventCount(이벤트번호) : eventCount('1342');
	* <span id="eventCnt"> 아이디 설정 필요
	*/
	
	/*
	* 신청자 리스트 불러오기 (댓글)
	* getComment(이벤트번호) : getComment('1345');
	
	* 더보기 버튼 필요한 경우 (댓글 더보기)
	$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
		$('.btn_moreSubscribe').prop('disabled', true);
		e.preventDefault();
		getComment('1345');
	});
	
	* 신청현황 롤링
	getCommentScroll('5763'); 
	*/
	});
	
	
	/*
	* 댓글 더보기 (기본)
	function returnComment(resultData, meoreData){
		var today = new Date();   
			var month = today.getMonth() + 1;
			var dateNum;
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			if(meoreData > 10) {
				$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
			}
		});
	}

	* 댓글더보기 (마퀴)
	<div class="subscribe_group marquee__group"></div>
	<div class="subscribe_group marquee__group subscribe"></div> subscribe 클래스 추가
	
	getComment('5277');

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
		});
	}

	* 댓글 더보기 (롤링)
	* getCommentScroll('5763') 와 함께 사용 해야 함.
	function returnComment(resultData, meoreData){
		resultData.forEach(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<li style="display: list-item;"><div class="msg">신청했습니다</div><div class="u_info">' + data[v].name + ' | ' + data[v].phone + '</div></li>';
				
				$('#commentsContainer').append(html);
			}
		});
	}
	*/
	
	/*
	* push (기본)
	* 참고 랜딩: 6053?media=3&code=mGDXx962J3mCvLO_k-hKvw
		<!-- 실시간 신청자 팝업 (팝업만 필요한 경우, 댓글 리스트 display: none 처리) -->
		// <div id="alramContainer"></div> 기존 코드 주석 처리
		<div class="push"></div>
		<div class="subscribe" data-limit="10" style="display: none;"></div>
		
		function returnComment(resultData, meoreData){
			var dateNum;
			$('.subscribe').each(function(idx,obj) {
				var data = resultData;
				
				for(v in resultData) {
					$('.push').append('<div class="pushAlarm animate__animated">지금 <span class="highlight">' + data[v].name + '님이</span> 비용을 알아보셨습니다.</div>');
				}
				$('.pushAlarm').pushAlarm({
					speed : 3000,
					animate_speed : 0.2,
					animate : 'animate__zoomIn',
					highlight : '#00ffff'
				});
			});
		}
	*/
	
	/*
	* push type2 (아래에서 위로)
	* 참고 랜딩: 5740?media=3&code=GGeZ-Z2Eg-2uY0zkbI-_OQ
	* <div id="commentsContainer"></div>
	* <div class="subscribe" data-limit="10" style="display: none;"></div>
	
		function returnComment(resultData, meoreData){
			var today = new Date();   
				var month = today.getMonth() + 1;
				var dateNum;
			$('.subscribe').each(function(idx,obj) {
				var data = resultData;
				
				for(v in resultData) {
					document.getElementById('commentsContainer').innerHTML =
						'<div class="pushAlarm animate__animated animate__fadeInUp">' +
							'<div class="pushAlarm_list">' +
								'<div class="pushAlarm_info">' +
									'<span class="info_item info_msg">지금 <span class="name">' + data[v].name + 
									'님</span>이 가격을 알아보셨습니다.</span>' +
								'</div>' +
							'</div>' +
						'</div>';
	
				}
	
				$('.pushAlarm').pushAlarm({
					speed : 2000,
					animate_speed : 0.7,
					animate : 'animate__fadeInUp',
					// highlight : '#00ffff'
				});
			});
		}
	*/
	
	/*
	* push type3 (아래에서 위로 + 이미지)
		<!-- 실시간 신청자 팝업 -->
	    <div>
	        <div id="commentsContainer">
				<div class="subscribe" data-limit="10" style="display: none;"></div>
			</div>
	    </div>
		참고 랜딩: 5318?media=5&code=OFZNuvdy0tMstUwbrZD1Ug
		
		function returnComment(resultData, meoreData) {
		    $('.subscribe').each(function(idx, obj) {
		        var data = resultData;
				for (v in resultData) {
				    var html = '<div class="pushAlarm animate__animated animate__fadeInUp">';
				    html += '    <div class="pushAlarm_list">';
				    html += '        <div class="profile_img img-area"><img src="//static.metamarketing.co.kr/event/v_${eventSeq}/profile.png"></div>';
				    html += '        <div class="info">';
				    html += '            <span>' + data[v].name + ' | 혜택 신청했습니다~!</span><br>';
				    html += '            <span>' + data[v].phone + '</span>';
				    html += '        </div>';
				    html += '        <div class="date">';
				    html += '            <span>' + data[v].regDate + '</span>'; // 포맷된 날짜 사용
				    html += '        </div>';
				    html += '    </div>';
				    html += '</div>';

				    $('#commentsContainer').append(html);
				}

		        $('.pushAlarm').pushAlarm({
		            speed: 2000,
		            animate_speed: 0.7,
		            animate: 'animate__fadeInUp',
		            // highlight : '#00ffff'
		        });
		    });
		}
	*/




	// 실시간 신청현황 마퀴
	/*
	.js-marquee-wrapper {display: flex;}
	.subscribe-box {padding: 3% 0;}
	.subscribe-box .title {font-size: 200%; font-weight: 700; text-align: center; color: #fff; padding-bottom: 3%;}
	.marquee-wrap > div + div {margin-top: 2%;}
	.marquee-wrap .sign {padding: 0; width: max-content; gap: 1.5em;}
	.sign .subscribe {background: none; display: flex; gap: 20px; padding: 0; flex-shrink: 0; min-width: 100%;}
	.sign .subscribe .content {display: flex; border-radius: 999px; padding: 1em 1.5em; gap: 1%; background-color: #555887; color: #fff; flex-shrink: 0; border-bottom: 0;}
	.subscribe .content > div {flex-shrink: 0;}
	.sign .subscribe .content .msg {font-size: 130%;}
	.js-marquee {float: none !important;}
	.marquee2 {position: relative; left: -550px;}
	.marquee3 {position: relative; left: -1100px;}

	<div class="subscribe-box">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
		<div class="marquee-wrap">
			<div class="marquee1">
				<div class="sign"><div class="subscribe"></div></div>
			</div>
			<div class="marquee2">
				<div class="sign"><div class="subscribe"></div></div>
			</div>
			<div class="marquee3">
				<div class="sign"><div class="subscribe"></div></div>
			</div>
		</div>
    </div>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<!-- jQuery용 marquee 플러그인 -->
	<!--
	<script src="https://cdn.jsdelivr.net/npm/jquery.marquee@1.5.0/jquery.marquee.min.js"></script>
	<script src="/js/form-event.js"></script>

    $(document).ready(function () {
        getCommentMarquee(`${eventSeq}`); // 댓글 관련 함수
	});

	// Comment Start
	function returnComment(resultData, meoreData){
	    ['.marquee1 .subscribe', '.marquee2 .subscribe', '.marquee3 .subscribe'].forEach(function(selector) {
	        resultData.forEach(function(item) {
	            var html  = '<div class="content" data-id="'+ item.seq +'">';
	                html += '   <div class="msg">신청했습니다~</div>';
	                html += '   <div class="phone">'+ (item.name || '') + '|' + (item.phone || '') + '</div>';
	                html += '   <div class="date">'+ (item.regDate || '') +'</div>';
	                html += '</div>';
	            $(selector).append(html);
	        });
	    })
	}
	
	// 마퀴 초기화 및 재적용
	setTimeout(() => {
	    $('.marquee1, .marquee2, .marquee3').marquee('destroy');

		// 마퀴별 속도가 같을 경우
	    $('.marquee1, .marquee2, .marquee3').marquee({
	        beforeStarting: 0,
	        duration: 20000,
	        gap: 20,
	        delayBeforeStart: 1000,
	        direction: 'left',
	        duplicated: true,
	        startVisible: true
	    });

        // 마퀴별 속도가 다를 경우
        // const marquees = [
        //     { selector: '.marquee1', duration: 10500 },
        //     { selector: '.marquee2', duration: 11500 },
        //     { selector: '.marquee3', duration: 11000 }
        // ];

        // marquees.forEach(({ selector, duration }) => {
        //     $(selector).marquee({
        //         beforeStarting: 0,
        //         duration: duration,
        //         gap: 20,
        //         delayBeforeStart: 1000,
        //         direction: 'left',
        //         duplicated: true,
        //         startVisible: true
        //     });
        // });
	}, 100); // 필요시 delay 조정
	*/




	/* 실시간 신청현황 토스트형 */
	.swiper {height: 320px;background-color: #fff;padding: 0 5% !important;box-sizing: border-box;}
	.swiper-slide {width: 520px;max-height: 80px !important;height: 100% !important;}
	.swiper-slide .inner {display: flex;align-items: center;gap: 10px;width: 100%;height: 100%;background: #fff;border: 1px solid #ddd;padding: 14px;border-radius: 12px;font-size: 14px;color: #333;transform: scale(0.9);transition: background 0.2s 0.2s linear, border 0.2s 0.2s linear, transform 0.2s 0.2s linear, opacity 0.2s 0.2s linear, font-weight 0.2s 0.2s linear; box-sizing: border-box;}
	.swiper-slide.active .inner {position: relative; z-index: 1; background: #eaffea; border: 2px solid #38c248; font-weight: bold; transform: scale(1); opacity: 1; overflow: hidden;}
	.swiper .check {position: relative; display: flex; align-items: center; justify-content: center; color: #38c248 !important; font-size: 20px;flex-shrink: 0;width: 35px;height: 35px;border: 3px solid #38c248;border-radius: 50%;}
	.swiper .check::before {content: ""; position: absolute; width: 20px; height: 20px; display: inline-block;width: 12px;height: 6px;border-left: 3px solid #38c248;border-bottom: 3px solid #38c248; transform: rotate(-45deg);}

	<div class="swiper mySwiper">
		<div class="subscribe swiper-wrapper" data-limit="10">
		</div>
	</div>

	Swiper CSS 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

	Swiper JS
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script src="/js/form-event.js"></script>
	
	$(document).ready(function () {
        getCommentToast(`${eventSeq}`);
	});

    let swiper; // 전역 변수로 선언

    function triggerActiveAnimation(slide) {
        document.querySelectorAll(".swiper-slide").forEach((el) => el.classList.remove("active")); // 먼저 모두 제거
        void slide.offsetWidth;
        slide.classList.add("active");
        setTimeout(() => {
        slide.classList.remove("active");
        }, 2500);
    }

    // Swiper 초기화 함수
    function initSwiper() {
        const slideLength = document.querySelectorAll(".swiper-slide").length;
        const swiperW = document.querySelector(".swiper .swiper-wrapper");

        const enableLoop = slideLength > 1;
        const slidesPerView = slideLength >= 4 ? 4 : slideLength;

        if (slideLength < 4) {
            swiperW.style.justifyContent = "flex-end";
        } else {
            swiperW.style.justifyContent = "flex-start";
        }

        // 기존 swiper가 있으면 제거 (중복 초기화 방지)
        if (swiper) {
            swiper.destroy(true, true);
            swiper = null;
        }

        swiper = new Swiper(".swiper", {
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
                        document.querySelectorAll(".swiper-slide").forEach((el) => el.classList.remove("active"));

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
                    html += '        <span class="text">신청했습니다~!</span>';
                    html += '        <span class="text">'+ data[v].phone +'</span>';
                    html += '        <span class="date">'+ data[v].regDate +'</span>';
                    html += '    </div>';
                    html += '</div>';
                $(obj).append(html);
            }
        });

        initSwiper();
    }



	/* 실시간 신청현황 슬롯 */
	.subscribe {height: 295px; overflow: hidden; padding: 1% 5%; margin: 0 2% 2%; display: grid; grid-template-columns: repeat(4, 1fr); gap: 1%;}
	.subscribe_bg {background-color:#000e35;}
	.subscribe .content {padding: 0; margin: 1% 0; text-align: center; height: 137.5px; border: 3px solid #0E45FB; border-radius: 10px; background: #EBEBEB;}
	.subscribe .content > div:last-child {margin-right: 0;}
	.subscribe .content:last-child {border: 3px solid #0E45FB;;}
	.subscribe .content .text {font-size: 2rem; font-weight: 700;}
	.subscribe .content.blue-bg {background-color: #0E45FB; color: #fff;}
	.subscribe .content.empty {border-color: #EBEBEB;}
	.subscribe .content.empty > div {display: none;}

	<div class="subscribe_bg">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
		<div class="subscribe" data-limit=""></div>
	</div>

	 $(document).ready(function () {
        initSlots();
        getCommentSlot(`${eventSeq}`);
        // 1초마다 랜덤 슬롯 하나만 갱신 (중복 없는 데이터로)
        setInterval(() => {
            $('.subscribe').each(function (idx, obj) {
                updateRandomSlot(obj, commentData);
            });
        }, 1000);
	});

	function returnComment(resultData, more) {
        $('.subscribe').each(function(idx, obj) {
            var data = Array.isArray(resultData) ? resultData : [];

            // 랜덤으로 빈 슬롯 하나 집어넣기 (확률)
            if (Math.random() < 0.2) {
                let emptyHtml = `<div class="content empty"></div>`;
                let randIndex = Math.floor(Math.random() * maxSlots);
                let $slotCandidates = $(obj).find('.content');
                let $slot = $slotCandidates.eq(randIndex);
                if ($slot.length) {
                    $slot.replaceWith(emptyHtml);
                } else {
                    $(obj).append(emptyHtml);
                }
            }

            // 데이터 항목들을 랜덤 슬롯에 뿌리기
            data.forEach(function(item) {
                var statusText1 = Math.random() < 0.5 ? '접수중' : '접수완료';
                var backgroundClass1 = statusText1 === '접수완료' ? 'blue-bg' : '';
                var html  = '<div class="content ' + backgroundClass1 +'" data-id="'+ (item.seq || '') +'">';
                    html += '    <div class="text">' + statusText1 + '</div>';
                    html += '    <div class="name">'+ (item.name || '') + '</div>';
                    html += '    <div class="phone">'+ (item.phone || '') +'</div>';
                    html += '    <div class="date">'+ (item.regDate || '') +'</div>';
                    html += '</div>';

                let randIndex = Math.floor(Math.random() * maxSlots);
                let $slotCandidates = $(obj).find('.content');
                let $slot = $slotCandidates.eq(randIndex);
                if ($slot.length) {
                    $slot.replaceWith(html);
                } else {
                    $(obj).append(html);
                }
            });
        });
    }

    // 초기 슬롯 생성
    function initSlots() {
        $('.subscribe').each(function(idx, obj) {
            let $cont = $(obj);
            $cont.empty(); 
            for (let i = 0; i < maxSlots; i++) {
                $cont.append('<div class="content empty"></div>');
            }
        });
    }

    // 슬롯 하나 랜덤 갱신 (중복 방지)
    function updateRandomSlot(container, dataArray) {
        if (!container) return;
        let $cont = $(container);

        // 현재 화면에 있는 data-id 수집
        let existingIds = $cont.find('.content').map(function() {
            return $(this).data('id');
        }).get().filter(id => id !== undefined);

        
        // 후보: commentData 중 아직 쓰이지 않은 것들
        let candidates = (Array.isArray(dataArray) ? dataArray : []).filter(item => {
            return existingIds.indexOf(item.seq) === -1;
        });
        
        // 랜덤 슬롯 인덱스 선택
        let randIndex = Math.floor(Math.random() * maxSlots);

        if (candidates.length === 0) {
            // 교체할 후보가 없으면 empty로 교체
            $cont.find('.content').eq(randIndex).replaceWith('<div class="content empty"></div>');
            return;
        }

        // 랜덤 후보 하나 선택
        let item = candidates[Math.floor(Math.random() * candidates.length)];

        // 상태와 클래스 랜덤 적용
        var statusText1 = Math.random() < 0.5 ? '접수중' : '접수완료';
        var backgroundClass1 = statusText1 === '접수완료' ? 'blue-bg' : '';
        var html  = '<div class="content ' + backgroundClass1 +'" data-id="'+ (item.seq || '') +'">';
            html += '    <div class="text">' + statusText1 + '</div>';
            html += '    <div class="name">'+ (item.name || '') + '</div>';
            html += '    <div class="phone">'+ (item.phone || '') +'</div>';
            html += '    <div class="date">'+ (item.regDate || '') +'</div>';
            html += '</div>';

        // 해당 슬롯 교체
        $cont.find('.content').eq(randIndex).replaceWith(html);
    }

	
	/*
	* 신청하기 처리 (폼 전송)
	* fnForm(form id)
	*/
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		/* 
		* 중복 선택
		let checkedValues;

		checkedValues = $('#' + formId + ' input[name="tadd1[]"]:checked').map(function() {
			return $(this).val();
		}).get();

		if (!checkedValues.length >= 1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = checkedValues;
		}
		*/

		/*
		* 나이 db age에 숫차 처리 해야할 경우
		1. name="add1" 을 name="tadd1" 로 변경
		
		2. form 내부에 해당 코드 추가 <input type="hidden" id="age" 			name="age" value=""/>
		
		* input type="checkbox"
		let tage = procForm.querySelector('input[name="tage"]:checked');
		if (!tage) {
			alert("연령 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
		}
		
		* select
		let tage = procForm.querySelector('select[name="tage"]');
		if (!tage) {
		    alert("연령 항목을 입력해주세요.");
		    return;
		} else {
		    procForm.querySelector("input[name='age']").value = tage.value;
		}
		*/
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("라디오 버튼이 선택되지 않았습니다.");
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
			,'phone': '전화번호'
			, 'age': '나이'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>