<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.thanks{background-color: #d1f2ff; overflow-y: scroll; max-width: 818px; margin: 0 auto;}	
.thanks .thanks-container{position: relative; max-width: 100%; left: 0; top: 0; transform: translate(0, 0); box-sizing: border-box; position: relative; }

/* message */
.message{text-align: center; font-family: 'NanumSquareRound';}

/* btn */
.btn-area {position: relative;}
.btn-group {position: absolute; bottom: 11%; left: 50%; transform: translateX(-50%); max-width: 280px;}
.thanks .btn-group {padding: 0; margin: 0;}
.thanks .btn-group .btn_confirm{display: block; background-color: transparent; padding: 0;}
.thanks .btn-group .btn_confirm img{width: 100%;}


@media screen and (max-width: 768px){
	.btn-group {width: 35vw;}
}
</style>
<div class="thanks">
	<div class="thanks-container">
		<h1 class="blind">이벤트 등록 완료</h1>
		<div class="message">
			<div class="img-area btn-area">
				<img src="//static.resta.co.kr/event/momo_thanks/event_main_01.jpg">
				<p class="btn-group"><a href="#" onClick="fnHisBack();" class="btn btn_confirm"><img src="//static.resta.co.kr/event/momo_thanks/btn_newSb.png"></a></p>
			</div>
			<div class="img-area"><img src="//static.resta.co.kr/event/momo_thanks/event_main_02.jpg"></div>
			<div class="img-area"><img src="//static.resta.co.kr/event/momo_thanks/event_main_03.jpg"></div>
		</div>
	</div>
</div>
<script>
	blockSourceView();
	
	function fnHisBack(){
		//sessionStorage.setItem("historyBackReloaded", "true");
		//history.back()
		location.href=sessionStorage.getItem("historyBackReloaded");
	}
	
	function blockSourceView(){
		document.onkeydown = function (e) {
			if (e.code === 'F12') {
				e.preventDefault();
				e.returnValue = false;
			}
		};

		// 우클릭 방지
		document.oncontextmenu = function () {
			return false;
		};

		// 드래그 방지
		document.ondragstart = new Function('return false');

		// 선택 방지
		document.onselectstart = new Function('return false');
	}
</script>	