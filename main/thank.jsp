<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>	
<style>
	@font-face {
	font-family: 'NanumSquareRound';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
.thanks{background-color: #e9e9e9; overflow-y: scroll;}	
.thanks .thanks-container{padding: 0 5% 5em; box-sizing: border-box; position: relative; margin:15% auto 0; top:unset; left:unset; transform:unset;}

/* message */
.message{text-align: center; font-family: 'NanumSquareRound';}
.message .img-area{margin: 10%;}
.message .img-area.dot{width: 3%; margin: 0 auto;}
.message .img-area.dot img{width: 100%;}

/* btn */
.thanks .btn-group .btn_confirm{display: block; background-color: transparent; width: 65%; margin: 0 auto; padding: 0;}
.thanks .btn-group .btn_confirm img{width: 100%;}

</style>
<div class="thanks">
	<div class="thanks-container">
		<h1 class="blind">이벤트 등록 완료</h1>
		<div class="message">
			<div class="img-area"><img src="//static.resta.co.kr/event/thanks/txt_thx_01.png"></div>
			<div class="img-area dot"><img src="//static.resta.co.kr/event/thanks/ico_thx_03.png"></div>
			<div class="img-area"><img src="//static.resta.co.kr/event/thanks/ico_thx_04.png"></div>
		</div>
		<c:choose>
			<c:when test="${resVo.collectYn eq '1'}">
				<p class="btn-group"><a href="#" onClick="fnCollectMove('${ eventSeq }');" class="btn btn_confirm"><img src="//static.resta.co.kr/event/thanks/btn_thx_01.png"></a></p>
			</c:when>
			<c:otherwise>
				<p class="btn-group"><a href="#" onClick="fnHisBack();" class="btn btn_confirm"><img src="//static.resta.co.kr/event/thanks/btn_thx_01.png"></a></p>
			</c:otherwise>
		</c:choose>
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
	
	function fnCollectMove(eventSeq){
		let urlStr = "http://localhost:9600/internal/"+eventSeq;
		location.href=urlStr;
	}
</script>	