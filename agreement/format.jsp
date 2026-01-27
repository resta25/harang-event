<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<title>개인정보처리방침</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
@font-face {
     font-family: 'S-CoreDream';
     src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: 400;
     font-style: normal;
}
@font-face {
     font-family: 'S-CoreDream';
     src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
     font-weight: 500;
     font-style: normal;
}
@font-face {
     font-family: 'S-CoreDream';
     src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-7ExtraBold.woff') format('woff');
     font-weight: 700;
     font-style: normal;
}
* {font-family: "noto sans kr", sans-serif;}
.img-area img {margin: 0;}
.form .question_box {
    padding: 1% 0 3%;
}
.tab-btn button {
    padding: 0.5rem 1rem;
    font-size: 1.25rem;
    background-color: #eee;
    transition: 0s;
}
.tab-btn button.active {
    background-color: #fff;
}
button {border-radius: 3px;}
.question {
    width: 100%;
    margin: 4% auto 2%;
    padding-left: 5%;
    font-weight: 700;
    font-weight: 24px;
}
.form .question_box .q_select {
    text-align: center;
}
.form .question_box .q_select label {
    flex-shrink: 0;
    padding: 1%;
    width: 20%;
}
.form .q_select label img {width: 100%;}

.form .q_select.place {justify-content: center; align-items: center; position: absolute; top: 30%; left: 9%; width: 100%;}
.form .q_select.place label:nth-child(1) {width: 16%; margin-right: 3%;}
.form .q_select.place label:nth-child(2) {width: 20%;}

.form .formContents {padding: 2% 0;}
.form .description {
    width: 98%;
    text-align: center;
    margin: 0 auto;
    padding: 0;
}
.form .description p {
    font-weight: bold;
    font-size: 95%;
    margin: 0 auto;
    padding: 0.5% 0;
    letter-spacing: -0.5px;
}
.form .user_info {width: 80%; margin: 0 auto; padding: 5% 0 3%;}
.form .user_info div {margin-bottom: 3%; position: relative;}
.form .user_info div img {width: 100%;}
.form .inp {
    font-size: 163%;
    line-height: 1;
}

.form .submit {width: 70%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

.form .agBox {font-family: 'noto sans kr'; margin: 2% auto;}

/* 상단 카운트 box */
.count-box {position: absolute; top: 0.5%; left: 50%; transform: translateX(-50%); width: 80%;}
.count-box .img-area {display: flex; justify-content: center; width: 100%; padding: 4% 0 6%; max-height: 106px; background: url('//static.resta.co.kr/event/v_2131/floating.png') no-repeat center center / 100% 100%;}
.count-text {display: flex; align-items: center; justify-content: center; width: 100%; font-size: 200%; font-weight: 500;}
.remaining-count {font-size: 100%; font-weight: 700; color: #ff2758; margin: 0 1%;}
.count-text .remaining-count + img {width: 34px; height: 34px; margin-left: 2%;}

/* db단 이름, 나이, 연락처 */
.question_container {border-radius: 40px 40px 0 0; overflow: hidden; background: #fff;}
.txt_01 {text-align: center; padding: 5.5% 0 4%; max-width: 53.31%; margin: 0 auto;}
.txt_01 img {width: 100%;}
.db-box {display: flex; column-gap: 1%; width: 87%; margin: 0 auto;}
.db-box + .db-box {margin-top: 1%;}
.db-box .user-info {display: flex; align-items: center; width: 100%; margin: 0 auto;}
.db-box .user-info .title{display: block; width: 15%; font-size: 120%; color: #575757; font-weight: 700;}
.db-box .user-info input{border: 1px solid #575757; border-radius: 0.8rem; padding: 2%;}
.db-box .user-info.user-name input, .db-box .user-info.user-age input {padding: 6.5% 5%;}
.db-box .user-info.user-phone input {padding: 3.2% 3%;}
.dashed-img {max-width: calc(100% - 15%); margin: 0 auto;}

.form .description span {display: block; margin: 1% 0 2%;}

/* select 시안 01 */
.form .select-box-01 .q_select label {width: auto;}
.select-box-01 .checkbox-wrapper-16 *,
  .checkbox-wrapper-16 *:after,
  .checkbox-wrapper-16 *:before {
  box-sizing: border-box;
}
.select-box-01 .checkbox-wrapper-16 {
    display: flex;
    align-items: center;
    justify-content: center;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input {
  clip: rect(0 0 0 0);
  -webkit-clip-path: inset(100%);
  clip-path: inset(100%);
  height: 1px;
  overflow: hidden;
  position: absolute;
  white-space: nowrap;
  width: 1px;
  
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile {
  border-color: #24B524;
  background: #007840;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1), 0 0 0 5px #FFF2C8;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile:before {
  transform: scale(1);
  opacity: 1;
  background-color: #24B524;
}
.select-box-01 .checkbox-wrapper-16 .checkbox-tile svg {
  display: none;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile svg {
  display: block;
  position: absolute;
    top: 0.73rem;
    right: 0.58rem;
    width: 1rem;
    height: 1rem;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile .checkbox-icon,
  .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile .checkbox-label {
  color: #EED232;
  font-weight: 700;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-input:focus + .checkbox-tile:before {
  transform: scale(1);
  opacity: 1;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-tile {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 13rem;
  min-height: 7rem;
  border-radius: 0.5rem;
  border: 5px solid #BEBEBE;
  background-color: #A1A1A1;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1), 0 0 0 5px #EEFFEE;
  transition: 0.15s ease;
  cursor: pointer;
  position: relative;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-tile:before {
  content: "";
  position: absolute;
  display: block;
  width: 1.7rem;
  height: 1.7rem;
  background-color: #fff;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.25) inset;
  border-radius: 50%;
  top: 0.25rem;
  right: 0.25rem;
  opacity: 0;
  transform: scale(0);
  transition: 0.25s ease;
  background-size: 12px;
  background-repeat: no-repeat;
  background-position: 50% 50%;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-tile:hover {
  border-color: #BEBEBE;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-tile:hover:before {
  transform: scale(1);
  opacity: 1;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-icon {
  transition: 0.375s ease;
  color: #494949;
}

.select-box-01 .checkbox-wrapper-16 .checkbox-label {
  color: #D9D9D9;
  transition: 0.375s ease;
  text-align: center;
  font-weight: 400;
  font-size: 2.5rem;
}

/* select 시안 02 */
.form .select-box-02 .q_select {display: flex; align-items: center; justify-content: center; gap: 2%; padding: 5%;}
.form .select-box-02 .q_select label {width: calc(100% / 4 - 4%); padding: 0;}
.select-box-02 .q_select label .sel-item {
    background: #fff;
    border: 3px solid #ddd;
    border-radius: 0.5rem;
    font-size: 2rem;
    font-weight: 400;
    padding: 1rem 0; 
}
.select-box-02 .q_select label .sel-item.active {
    background: #000;
    color: #6DFF66;
    font-weight: 700;
    border-color: #828282;
}

/* select 시안 03 */
.form input[type="checkbox"] + span:not(.default):after, .form input[type="radio"] + span:after {
    left: 5px;
}
.form .check_03 .question_box .q_select label {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 26px;
}
.form .select-box-03 .q_select {padding: 5%;}
.form .select-box-03 .q_select label {width: 22%; padding: 0; margin-bottom: 4%;}
.select-box-03 .checkbox-container {
  display: flex;
  flex-flow: row wrap;
  align-items: center;
  gap: 2%;
  justify-content: center;
}

.select-box-03 .checkbox-label {
  display: flex;
  align-items: center;
  cursor: pointer;
  font-family: "Arial", sans-serif;
  font-size: 16px;
  color: #522f2f;
}

.select-box-03 .checkbox-input {
  display: none;
}

.select-box-03 .checkbox-custom {
  font-size: 2rem;
  width: 100%;
  padding: 1rem 0;
  border-radius: 0.8rem;
  color: #898CBA;
  font-weight: 400;
  border: 3px solid #E1E8E9;
  position: relative;
  box-shadow:
    0 15px 20px rgba(0, 0, 0, 0.10);
  transition: all 0.3s ease;
  transform-style: preserve-3d;
}

.select-box-03 .checkbox-input:checked + .checkbox-custom {
  background: linear-gradient(180deg,rgba(0, 191, 197, 1) 0%, rgba(12, 32, 255, 1) 100%);
  border: none;
  color: #fff;
  animation: bounce 0.4s ease forwards;
  box-shadow:
    0 8px 14px rgba(0, 0, 0, 0.3),
    inset -5px -5px 8px rgba(217, 217, 217, 0.5);
    font-weight: 700;
}

@keyframes bounce {
  0% {
    transform: translateY(0) scale(1);
  }
  30% {
    transform: translateY(-15px) scale(1.1);
  }
  60% {
    transform: translateY(5px) scale(0.9);
  }
  100% {
    transform: translateY(0) scale(1);
  }
}

/* select 시안 04 */
.form .select-box-04 .q_select {display: flex; justify-content: center; flex-flow: row wrap; width: 100%; margin: 0 auto; gap: 2%;}
.form .select-box-04 .q_select label {width: 70%; padding: 0; margin-bottom: 2%;}
.select-box-04 .checkbox-container {
  display: flex;
  align-items: center;
  font-size: 1em;
  cursor: pointer;
  user-select: none;

  --checkmark-size: 2.5em;
  --border-color: #444;
  --checked-bg-color: #ffab40; 
  --checked-border-color: #ffa726;
  --checkmark-color: white;
  --focus-outline-color: rgba(255, 171, 64, 0.5);
}

.select-box-04 .checkbox-container input {
  display: none;
}
.select-box-04 .checkmark {
    position: relative;
    width: 100%;
    font-size: 2rem;
    padding: 1.3rem 0;
  border-radius: 5rem;
  color: #566CFB;
  font-weight: 400;
  position: relative;

  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.25);
  overflow: hidden;
  background-color: #E0E1E2;
  transition: background-color .15s linear, color .1s linear, box-shadow .2s ease;
}
.select-box-04 .txt {
    position: relative;
    z-index: 1;
    transition: color 0.1s;
    font-weight: 400;
}
.select-box-04 .checkbox-container input:checked + .checkmark {
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
  background-color: #566CFB;
  color: #fff;
  font-weight: 800;
  transition: background-color .45s linear, color .1s linear, box-shadow .3s ease;
}

.select-box-04 .checkbox-container input:focus + .checkmark {
  outline: none;
  box-shadow: 0 0 0 2px var(--focus-outline-color);
}

/* select 시안 05 */
.form .select-box-05 .q_select {display: flex; align-items: center; justify-content: center; width: 100%; padding: 5% 0;}
.form .select-box-05 .q_select label {width: max-content; padding: 0;}
.select-box-05 .checkbox-container {display: flex; align-items: center; justify-content: center; gap: 1%; width: 100%;}
.select-box-05 .checkbox-wrapper {width: max-content;}
.select-box-05 .checkbox-flip {
  position: relative;
  width: 10rem;
  height: 10rem;
  transform-style: preserve-3d;
  transition: transform 0.6s;
  perspective: 1000px;
}

.select-box-05 .checkbox-flip.no-anim {
  transition: none !important;
}

.select-box-05 .checkbox-flip div {
  position: absolute;
  width: 10rem;
  height: 10rem;
  backface-visibility: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  border-radius: 8px;
  color: #fff;
}

.select-box-05 .checkbox-front {
  background: #E0E1E2;
  transform: rotateY(0deg);
  z-index: 2;
}

.select-box-05 .checkbox-back {
  background: #AC79F3;
  transform: rotateY(180deg);
  font-weight: 700;
  z-index: 1;
}

.checkbox-flip.flipped {
  transform: rotateY(180deg);
}

/* select 시안 06 */
.form .select-box-06 .q_select {display: flex; gap: 2%; justify-content: center; padding: 5% 0;}
.form .select-box-06 .q_select label {width: auto; padding: 0;}
.select-box-06 .container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

.select-box-06 .container {
  display: block;
  position: relative;
  cursor: pointer;
  font-size: 20px;
  user-select: none;
  transition: all 0.3s ease;
}

.select-box-06 .checkmark {
  position: relative;
  font-size: 2rem;
  font-weight: 400;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 8px;
  top: 0;
  left: 0;
  height: 10rem;
  width: 10rem;
  background-color: #ffffff00;
  color: #7D7D7D;
  background: #E0E1E2;
  transition: all 0.3s ease;
}

.select-box-06 .sticker {
  font-family: inherit;
  font-weight: 800;
  display: block;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  z-index: 5;
  width: 10rem;
  height: 10rem;
  border-radius: 1rem;
  transition: 0.2s 0.2s;
  transform: translate3d(5px, 10px, 0) scale(1.3);
  opacity: 0;
  pointer-events: none;
}
.select-box-06 .sticker.active {
  transform: translate3d(0, 0, 0) scale(1);
  transition-delay: 0s;
  opacity: 1;
  pointer-events: all;
}

.select-box-06 .sticker .front .content {
  position: absolute;
  bottom: -0.5px;
  left: -0.5px;
  font-size: 2rem;
  font-weight: 800;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 10rem;
  height: 10rem;
  background: linear-gradient(181deg, #FFF -41.07%, #003CFF 108.96%);
  color: #fff;
  text-align: center;
  border-radius: 8px;
}

.select-box-06 .sticker.no-anim { transition: none !important; }

@media screen and (max-width: 500px){
    .form .inp {font-size: 110%;}
    .count-text {font-size: 150%;}
    .count-box .img-area {padding: 3% 0 5%;}
    /* .question_container {border-radius: 20px 20px 0 0; transform: translateY(-25px);} */
    .db-box .user-info input {border-radius: 0.4rem;}
    .count-text .remaining-count + img {width: 20px; height: 20px;}
}



/* 체크박스 공통 */
.form input[type="radio"]:active + span:before {transition-duration: initial; filter: initial;}
.form .question_box .q_select label span {font-size: 20px;}


/* 체크박스 01 */
.form .check_01 .question_box .q_select {display: flex; justify-content: center;}

.form .check_01 input[type="checkbox"]:hover + span:not(.default):before, 
.form .check_01 input[type="checkbox"]:focus + span:not(.default):before, 
.form .check_01 input[type="radio"]:hover + span:not(.default):before, 
.form .check_01 input[type="radio"]:focus + span:not(.default):before {
    border-color: transparent;
}
.form .check_01 input[type="checkbox"] + span, .form .check_01 input[type="radio"] + span {
    padding-left: 52px;
}
.form .check_01 input[type="checkbox"] + span:before, .form .check_01 input[type="radio"] + span:before {
    width: 24px;
    height: 24px;
}
.form .check_01 input[type="radio"] + span:before {
    border-color: transparent;
    border-radius: 50%;
    background: #EAEAEA;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.15) inset;
}
.form .check_01 input[type="checkbox"] + span:before, .form .check_01 input[type="radio"] + span:before {
    border: none;
}
.form .check_01 input[type="checkbox"] + span:not(.default):after, .form .check_01 input[type="radio"] + span:after {
    z-index: 5;
    background-color: transparent;
    top: 79%;
    left: 17px;
    width: 10px;
    height: 6px;
    margin-top: -1px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 4px 4px;
    border-radius: 0px;
    -moz-transition: top 0.4s, left 0.4s;
    -o-transition: top 0.4s, left 0.4s;
    -webkit-transition: top 0.4s, left 0.4s;
    transition: top 0.4s, left 0.4s;
}
.form .check_01 input[type="checkbox"]:checked + span:not(.default):after, .form .check_01 input[type="radio"]:checked + span:after {
    top: 49%;
    left: 7px;
}
.form .check_01 .label-txt {
    position: relative;
}

.form .check_01 .border-box {
    position: absolute;
    top: 50%;
    left: 0%;
    transform: translate(-6px, -50%);
    width: 40px;
    height: 40px;
}
.form .check_01 .border-box .border {
    position: absolute;
    width: 12px;
    height: 2px;
    background-color: #6FA9A6;
}
.form .check_01 input + .label-txt .border-box i {
    animation: kfr-celebrate .4s;
    animation-fill-mode: forwards;
    display: none;
    stroke: #20c580;

}
.form .check_01 input:checked + .label-txt .border-box i {
    display: block;
}
.form .check_01 .border-box [class*="r-"] {
    right: 0;
    left: auto;
}
.form .check_01 .border-box .l-top {
    transform: translateX(-50%) rotate(45deg);
}
.form .check_01 .border-box .l-center {
    transform: translateX(-50%) rotate(180deg);
}
.form .check_01 .border-box .l-bottom {
    transform: translateX(-50%) rotate(135deg);
}
.form .check_01 .border-box .r-top {
    transform: translateX(50%) rotate(-45deg);
}
.form .check_01 .border-box .r-center {
    transform: translateX(50%) rotate(-180deg);
}
.form .check_01 .border-box .r-bottom {
    transform: translateX(50%) rotate(-135deg);
}
.form .check_01 .border-box [class*="top"] {
    top: auto;
}
.form .check_01 .border-box [class*="center"] {
    top: 50%;
    transform: translateX(-120%);
}
.form .check_01 .border-box [class*="bottom"] {
    top: auto;
    bottom: 0;
}
.form .check_01 .border-box .r-center {
    transform: translateX(100%);
}

.form .check_01 input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {
    transform: translateY(-50%);
}

.check_01 .container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

.check_01 .container {
  display: block;
  position: relative;
  cursor: pointer;
  font-size: 20px;
  user-select: none;
  transition: all 0.2s ease;
}

.form .check_01 input[type="radio"] + span:hover:before {
    transform: translateY(-50%) rotate(-20deg) scale(1.03);
}

.form .check_01 input[type="checkbox"]:checked + span:after, .form input[type="radio"]:checked + span:after {
    transform: rotate(-45deg) scale(1) translate(26%, -53%);
}

/* Effet hover sur le bouton */
.check_01 .sticker {
  font-family: inherit;
  font-weight: 800;
  display: block;
  position: absolute;
  top: 0;
  /* right: 0; */
  bottom: 0;
  left: 0;
  margin: auto;
  z-index: 5;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  /* transition: 0.2s 0.2s; */
  transform: translate3d(5px, 0, 0) scale(1.3) rotate(-45deg);
  opacity: 0;
  pointer-events: none;
}

.check_01 .sticker .back,
.check_01 .sticker .front {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  transition: 0.4s;
}

/* .check_01 .sticker .back:before, */
.check_01 .sticker .front:before {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  transition: 0.4s;
}

.check_01 .sticker .front {
  height: 0;
}

.check_01 .sticker .front .content {
  position: absolute;
    /* bottom: -0.5px; */
    left: 0.5px;
  font-size: 10px;
  font-weight: 800;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 25px;
  height: 25px;
  transform: rotate(25deg);
  /* border: solid 3px #d9d9d9; */
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.15) inset;
  background: radial-gradient(50% 50% at 50% 50%, #5ED9D3 78%, #6FA9A6 98%);
  color: #fff;
  text-align: center;
  border-radius: 50%;
}

/* .check_01 .sticker .back {
  top: 40px;
  overflow: hidden;
} */

/* .check_01 .sticker .back:before {
  background-color: #ffffff;
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.4);
  top: 0;
} */

.check_01 .container input:checked ~ .label-txt .sticker {
  transform: translate3d(0, 0, 0) scale(1) rotate(-45deg);
  transition-delay: 0s;
  opacity: 1;
  pointer-events: all;
}

.check_01 .container input:checked ~ .label-txt .sticker .front {
  height: 25px;
}

/* .check_01 .container input:checked ~ .label-txt .sticker .back {
  top: 0;
}

.check_01 .container input:checked ~ .label-txt .sticker .back:before {
  top: -34px;
} */

.form .check_01 .question_box .q_select label .sticker span {font-size: 1em;}

@keyframes kfr-celebrate {
  0% {
    width: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    width: 12px;
    opacity: 0;
    display: none;
  }
}

@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 430px){
    .check_01 .form_inner {padding: 5% 0;}
    .form .check_01 .question_box .q_select label span {font-size: 1.2em;}
}



/* 체크박스 02 */
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {
    border: none;
}
.form .check_02 input[type="checkbox"]:hover + span:not(.default):before, 
.form .check_02 input[type="checkbox"]:focus + span:not(.default):before, 
.form .check_02 input[type="radio"]:hover + span:not(.default):before, 
.form .check_02 input[type="radio"]:focus + span:not(.default):before {
    border-color: transparent;
}
.form .check_02 input[type="checkbox"] + span, 
.form .check_02 input[type="radio"] + span {
    padding-left: 52px;
}
.form .check_02 input[type="checkbox"] + span:before, 
.form .check_02 input[type="radio"] + span:before {
    width: 24px;
    height: 24px;
}
.form .check_02 input[type="radio"] + span:before {
    border-color: transparent;
    border-radius: 50%;
    background: #EAEAEA;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.15) inset;
}
.form .check_02 input[type="radio"]:checked + span:before {
    background: radial-gradient(50% 50% at 50% 50%, #AA5AF0 81.73%, #8331C9 100%);
    filter: drop-shadow(0 0.2px 0.2px rgba(33, 7, 55, 0.15));
    animation: jelly 0.6s ease !important;
}
.form .check_02 input[type="checkbox"] + span:not(.default):after, .form .check_02 input[type="radio"] + span:after {
    background-color: transparent;
    top: 50%;
    left: 5px;
    width: 12px;
    height: 6px;
    margin-top: -1px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 4px 4px;
    border-radius: 0px;
    -moz-transition: none;
    -o-transition: none;
    -webkit-transition: none;
    transition: none;
}

.form .check_02 .label-txt {
    position: relative;
}

.form .check_02 .border-box {
    position: absolute;
    top: 50%;
    left: 0%;
    transform: translate(-6px, -50%);
    width: 40px;
    height: 40px;
}
.form .check_02 .border-box .border {
    position: absolute;
    width: 12px;
    height: 2px;
    background-color: #8331C9;
}
.form .check_02 input + .label-txt .border-box i {
    animation: kfr-celebrate .4s;
    animation-fill-mode: forwards;
    display: none;
    stroke: #20c580;

}
.form .check_02 input:checked + .label-txt .border-box i {
    display: block;
}
.form .check_02 .border-box [class*="r-"] {
    right: 0;
    left: auto;
}
.form .check_02 .border-box .l-top {
    transform: translateX(-50%) rotate(45deg);
}
.form .check_02 .border-box .l-center {
    transform: translateX(-50%) rotate(180deg);
}
.form .check_02 .border-box .l-bottom {
    transform: translateX(-50%) rotate(135deg);
}
.form .check_02 .border-box .r-top {
    transform: translateX(50%) rotate(-45deg);
}
.form .check_02 .border-box .r-center {
    transform: translateX(50%) rotate(-180deg);
}
.form .check_02 .border-box .r-bottom {
    transform: translateX(50%) rotate(-135deg);
}
.form .check_02 .border-box [class*="top"] {
    top: auto;
}
.form .check_02 .border-box [class*="center"] {
    top: 50%;
    transform: translateX(-120%);
}
.form .check_02 .border-box [class*="bottom"] {
    top: auto;
    bottom: 0;
}
.form .check_02 .border-box .r-center {
    transform: translateX(100%);
}

@keyframes jelly {
 from {
  transform: translateY(-50%) scale(1, 1);
 }

 30% {
  transform: translateY(-50%) scale(1.25, 0.75);
 }

 40% {
  transform: translateY(-50%) scale(0.75, 1.25);
 }

 50% {
  transform: translateY(-50%) scale(1.15, 0.85);
 }

 65% {
  transform: translateY(-50%) scale(0.95, 1.05);
 }

 75% {
  transform: translateY(-50%) scale(1.05, 0.95);
 }

 to {
  transform: translateY(-50%) scale(1, 1);
 }
}

@keyframes kfr-celebrate {
  0% {
    width: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    width: 12px;
    opacity: 0;
    display: none;
  }
}

@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 430px){
    .form_inner .check_02 {padding: 5%;}
    .form .check_02 .question_box .q_select label span {font-size: 1.2em;}
}


/* 체크박스 03 */
.form .check_03 input[type="checkbox"]:hover + span:not(.default):before, 
.form .check_03 input[type="checkbox"]:focus + span:not(.default):before, 
.form .check_03 input[type="radio"]:hover + span:not(.default):before, 
.form .check_03 input[type="radio"]:focus + span:not(.default):before {
    border-color: rgba(178, 189, 190, 0.5);
}
.form .check_03 input[type="checkbox"] + span:not(.default),
.form .check_03 input[type="radio"] + span:not(.default) {
    display: inline-block;
    width: 24px;
    height: 24px;
    margin: 0;
    padding: 0;
    border-radius: 3px;
    overflow: hidden;
}
.form .check_03 input[type="checkbox"] + span:not(.default):before, 
.form .check_03 input[type="radio"] + span:not(.default):before {
    top: 50%;
    width: 24px;
    height: 24px;
    border: 2px solid rgba(178, 189, 190, 0.5);
    text-align: center;
    border-radius: 0px;
    transform: translateY(-50%);
    box-sizing: border-box;
}
.check_03 input[type="checkbox"]:checked + span:not(.default):before, 
.form .check_03 input[type="radio"]:checked + span:not(.default):before {
    background-color: #58C1C9;
}
.form .check_03 input + span:not(.default) {
  display: none;
}

.form .check_03 span.label-txt {
  position: relative;
  padding-left: 0;
  display: inline-block;
}

.form .check_03 .border-box .border {
  position: absolute;
  background-color: #3A8B91;
  transition: all 0.3s ease;
  opacity: 0;
  backface-visibility: hidden; /* GPU 렌더링 시 깨짐 방지 */
  transform: translateZ(0);  
}

.form .check_03 .border-box .top {
  top: 0;
  left: 0;
  width: 24px;
  height: 2px;
  border-radius: 3px;
}

.form .check_03 .border-box .right {
  top: 0;
  right: 0;
  width: 2px;
  height: 24px;
  border-radius: 3px;
}

.form .check_03 .border-box .bottom {
  bottom: 0;
  right: 0;
  width: 24px;
  height: 2px;
  border-radius: 3px;
}

.form .check_03 .border-box .left {
  bottom: 0;
  left: 0;
  width: 2px;
  height: 24px;
  border-radius: 3px;
}
.form input[type="checkbox"] + span:not(.default):after, .form input[type="radio"] + span:after {
    background-color: transparent;
    top: 52%;
    left: 5px;
    width: 12px;
    height: 6px;
    margin-top: -2px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 3px 3px;
    border-radius: 0px;
    -moz-transform: rotate(-45deg) scale(0);
    -ms-transform: rotate(-45deg) scale(0);
    -webkit-transform: rotate(-45deg) scale(0);
    transform: rotate(-45deg) scale(0);
    -moz-transition: none;
    -o-transition: none;
    -webkit-transition: none;
    transition: none;
}

.form .check_03 input:checked + span .top {
  animation: drawTop 0.2s forwards;
}
.form .check_03 input:checked + span .right {
  animation: drawRight 0.2s 0.2s forwards;
}
.form .check_03 input:checked + span .bottom {
  animation: drawBottom 0.2s 0.4s forwards;
}
.form .check_03 input:checked + span .left {
  animation: drawLeft 0.2s 0.6s forwards;
}

@keyframes drawTop {
  from { width: 0; opacity: 1; }
  to { width: 24px; opacity: 1; }
}
@keyframes drawRight {
  from { height: 0; opacity: 1; }
  to { height: 24px; opacity: 1; }
}
@keyframes drawBottom {
  from { width: 0; opacity: 1; }
  to { width: 24px; opacity: 1; }
}
@keyframes drawLeft {
  from { height: 0; opacity: 1; }
  to { height: 24px; opacity: 1; }
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

}


/* 체크박스 04 */
.form .check_04 input[type="checkbox"]:hover + span:not(.default):before, 
.form .check_04 input[type="checkbox"]:focus + span:not(.default):before, 
.form .check_04 input[type="radio"]:hover + span:not(.default):before, 
.form .check_04 input[type="radio"]:focus + span:not(.default):before {
    border-color: transparent;
}
.form .check_04 input[type="checkbox"] + span, .form .check_04 input[type="radio"] + span {
    padding-left: 52px;
}
.form .check_04 input[type="checkbox"] + span:before, .form .check_04 input[type="radio"] + span:before {
    width: 24px;
    height: 24px;
}
.form .check_04 input[type="radio"] + span:before {
    border-color: transparent;
    border-radius: 3px;
    background-color: #EDEDED;
}
.form .check_04 input[type="radio"]:checked + span:before {
    border-color: #22BA8A;
    background-color: #22BA8A;
    animation: jelly 0.6s ease !important;
}
.form .check_04 input[type="checkbox"] + span:not(.default):after, 
.form .check_04 input[type="radio"] + span:after {
    background-color: transparent;
    top: 50%;
    left: 5px;
    width: 12px;
    height: 6px;
    margin-top: -1px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 4px 4px;
    border-radius: 0px;
    -moz-transition: none;
    -o-transition: none;
    -webkit-transition: none;
    transition: none;
}

.form .check_04 .label-txt {
    position: relative;
}

.form .check_04 .border-box {
    position: absolute;
    top: 50%;
    left: 0%;
    transform: translate(-6px, -50%);
    width: 40px;
    height: 40px;
}
.form .check_04 .border-box .border {
    position: absolute;
    width: 12px;
    height: 2px;
    background-color: #22BA8A;
}
.form .check_04 input + .label-txt .border-box i {
    animation: kfr-celebrate .4s;
    animation-fill-mode: forwards;
    display: none;
    stroke: #20c580;

}
.form .check_04 input:checked + .label-txt .border-box i {
    display: block;
}
.form .check_04 .border-box [class*="r-"] {
    right: 0;
    left: auto; /* left가 지정돼 있을 수 있으니 명시적으로 제거 */
}
.form .check_04 .border-box .l-top {
    transform: translateX(-50%) rotate(45deg);
}
.form .border-box .l-center {
    transform: translateX(-50%) rotate(180deg);
}
.form .check_04 .border-box .l-bottom {
    transform: translateX(-50%) rotate(135deg);
}
.form .check_04 .border-box .r-top {
    transform: translateX(50%) rotate(-45deg);
}
.form .check_04 .border-box .r-center {
    transform: translateX(50%) rotate(-180deg);
}
.form .check_04 .border-box .r-bottom {
    transform: translateX(50%) rotate(-135deg);
}
.form .check_04 .border-box [class*="top"] {
    top: auto; /* left가 지정돼 있을 수 있으니 명시적으로 제거 */
}
.form .check_04 .border-box [class*="center"] {
    top: 50%;
    transform: translateX(-120%);
}
.form .check_04 .border-box [class*="bottom"] {
    top: auto;
    bottom: 0;
}
.form .check_04 .border-box .r-center {
    transform: translateX(100%);
}

@keyframes jelly {
 from {
  transform: translateY(-50%) scale(1, 1);
 }

 30% {
  transform: translateY(-50%) scale(1.25, 0.75);
 }

 40% {
  transform: translateY(-50%) scale(0.75, 1.25);
 }

 50% {
  transform: translateY(-50%) scale(1.15, 0.85);
 }

 65% {
  transform: translateY(-50%) scale(0.95, 1.05);
 }

 75% {
  transform: translateY(-50%) scale(1.05, 0.95);
 }

 to {
  transform: translateY(-50%) scale(1, 1);
 }
}

@keyframes kfr-celebrate {
  0% {
    width: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    width: 12px;
    opacity: 0;
    display: none;
  }
}

@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 430px){
    .form_inner {padding: 5% 0;}
    .form .question_box .q_select label span {font-size: 1.2em;}
}


/* 체크박스 05 */
.form .check_05 input[type="checkbox"]:hover + span:not(.default):before,
.form .check_05 input[type="checkbox"]:focus + span:not(.default):before,
.form .check_05 input[type="radio"]:hover + span:not(.default):before, 
.form .check_05 input[type="radio"]:focus + span:not(.default):before {
    border-color: rgba(178, 189, 190, 0.5);
}
.form .check_05 input[type="checkbox"] + span:not(.default), 
.form .check_05 input[type="radio"] + span:not(.default) {
    display: inline-block;
    width: 24px;
    height: 24px;
    margin: 0;
    padding: 0;
    border-radius: 3px;
    overflow: hidden;
}
.form .check_05 input[type="checkbox"] + span:not(.default):before, 
.form .check_05 input[type="radio"] + span:not(.default):before {
    top: 50%;
    width: 24px;
    height: 24px;
    border: 2px solid rgba(178, 189, 190, 0.5);
    text-align: center;
    border-radius: 2px;
    transform: translateY(-50%);
    box-sizing: border-box;
    background-color: #F6F6F6;
    box-shadow: 0 0 2px 2px rgba(0, 0, 0, 0.08) inset;
}
.check_05 input[type="checkbox"]:checked + span:not(.default):before,
.form .check_05 input[type="radio"]:checked + span:not(.default):before {
    background: radial-gradient(42.86% 42.86% at 50% 50%, #FFD900 0%, #FFA600 100%);
}
.form .check_05 input + span:not(.default) {
  display: none;
}

.form .check_05 .question_box .q_select  {
    padding-left: 6%;
}
.form .check_05.bg-black .question_box .q_select {
    padding: 2% 0 2% 6%;
    color: #fff;
    background-color: #000;
}
.form .check_05 .question_box .q_select label {
    display: inline-flex;
    align-items: center;
    gap: 25px;
}
.form .check_05 .question_box .q_select label:last-child {
    margin-left: 3%;
}
.form .check_05 label {
    position: relative;
}
.form .check_05 span.label-txt {
  position: relative;
  padding-left: 0;
  display: inline-block;
}

.form .check_05 .border-box {z-index: 1; position: relative}
.form .check_05 .border-box .border {
  position: absolute;
  background-color: rgba(255, 208, 162, 1);
  transition: all 0.3s ease;
  opacity: 0;
  transform: translateZ(0);         /* GPU 가속 */
  backface-visibility: hidden;      /* 렌더링 보정 */
  will-change: width, height;       /* 애니메이션 최적화 */
}

.form .check_05 .border-box .top {
  top: 0;
  left: 0;
  width: 24px;
  height: 2px;
  border-radius: 2px;
}

.form .check_05 .border-box .right {
  top: 0;
  right: 0;
  width: 2px;
  height: 24px;
  border-radius: 2px;
}

.form .check_05 .border-box .bottom {
  bottom: 0;
  right: 0;
  width: 24px;
  height: 2px;
  border-radius: 2px;
}

.form .check_05 .border-box .left {
  bottom: 0;
  left: 0;
  width: 2px;
  height: 24px;
  border-radius: 2px;
}

.form .check_05 .circle {
    position: absolute;
    left: 0;
    width: 38px;
    height: 38px;
    top: 50%;
    border-radius: 50%;
    background-color: #eee;
    box-shadow: none;
    outline: none;
    opacity: 0;
    transform: translate(-7px, -49%) scale(1);
    pointer-events: none;
    filter: blur(2px);
    /* transition: opacity 0.5s, transform 0.4s; */
}
.form .check_05.bg-black .circle {
    background-color: #fff;
}
.form .check_05 input[type="checkbox"] + span:not(.default):after, 
.form .check_05 input[type="radio"] + span:after {
    background-color: transparent;
    top: 52%;
    left: 5px;
    width: 12px;
    height: 6px;
    margin-top: -2px;
    border-style: solid;
    border-color: #fff;
    border-width: 0 0 3px 3px;
    border-radius: 0px;
    -moz-transform: rotate(-45deg) scale(0) translateZ(1);
    -ms-transform: rotate(-45deg) scale(0) translateZ(1);
    -webkit-transform: rotate(-45deg) scale(0) translateZ(1);
    transform: rotate(-45deg) scale(0) translateZ(1);
    -moz-transition: none;
    -o-transition: none;
    -webkit-transition: none;
    transition: none;
}

.form .check_05 input[type="checkbox"]:checked + span:not(.default):after, 
.form .check_05 input[type="radio"]:checked + span:after {
    -webkit-transform: rotate(-45deg) scale(1) translate(29%, -43%, 1);
    transform: rotate(-45deg) scale(1) translate(29%, -43%, 1);
}

.form .check_05 input[type="checkbox"]:checked ~ .circle, 
.form .check_05 input[type="radio"]:checked ~ .circle {
    opacity: 1;
    transform: translate(1.5%, -50%) scale(1);
    /* transition: transform 0s, opacity 0s; */
}

.form .check_05.bg-black input[type="checkbox"]:checked ~ .circle, 
.form .check_05.bg-black input[type="radio"]:checked ~ .circle {
    opacity: 1;
    transform: translate(2%, -50%) scale(1);
    /* transition: transform 0s, opacity 0s; */
}

.form .check_05 input:checked + span .top {
  animation: drawTop 0.2s forwards;
}
.form .check_05 input:checked + span .right {
  animation: drawRight 0.2s 0.2s forwards;
}
.form .check_05 input:checked + span .bottom {
  animation: drawBottom 0.2s 0.4s forwards;
}
.form .check_05 input:checked + span .left {
  animation: drawLeft 0.2s 0.6s forwards;
}

@keyframes drawTop {
  from { width: 0; opacity: 1; }
  to { width: 24px; opacity: 1; }
}
@keyframes drawRight {
  from { height: 0; opacity: 1; }
  to { height: 24px; opacity: 1; }
}
@keyframes drawBottom {
  from { width: 0; opacity: 1; }
  to { width: 24px; opacity: 1; }
}
@keyframes drawLeft {
  from { height: 0; opacity: 1; }
  to { height: 24px; opacity: 1; }
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

}


/* 체크박스 06 */
.form .check_06 input[type="checkbox"] + span:not(.default),
.form .check_06 input[type="radio"] + span {
    padding-left: 39px;
}
.form .check_06 input[type="radio"] + span:not(.default):before {
    border-radius: 4px;
}
.form .check_06 input[type="checkbox"]:hover + span:not(.default):before,
.form .check_06 input[type="radio"]:hover + span:not(.default):before {
    border-color: #fff;
    background-color: #fff;
}
.form .check_06 input[type="checkbox"]:hover + span:not(.default):before,
.form .check_06 input[type="checkbox"]:focus + span:not(.default):before, 
.form .check_06 input[type="radio"]:hover + span:not(.default):before,
.form .check_06 input[type="radio"]:focus + span:not(.default):before {border-color: #fff;}
.form .check_06 input[type="checkbox"] + span:not(.default):before, 
.form .check_06 input[type="radio"] + span:not(.default):before {
    width: 22px;
    height: 22px;
    border: 2px solid #fff;
    background: #fff;
}

.form .check_06 input[type="checkbox"] + span:not(.default):after, 
.form .check_06 input[type="radio"] + span:not(.default):after {
    background-color: transparent;
    top: 50%;
    left: 5px;
    width: 12px;
    height: 6px;
    margin-top: -7px;
    border-style: solid;
    border-color: #E4E4E4;
    border-width: 0 0 4px 4px;
    border-radius: 0px;
    -moz-transform: rotate(-45deg) scale(1);
    -ms-transform: rotate(-45deg) scale(1);
    -webkit-transform: rotate(-45deg) scale(1);
    transform: rotate(-45deg) scale(1);
    -moz-transition: none;
    -o-transition: none;
    -webkit-transition: none;
    transition: none;
}
.form .check_06 input[type="checkbox"]:checked + span:not(.default):before, 
.form .check_06 input[type="radio"]:checked + span:not(.default):before {
    border-color: #000;
    background-color: #000;
}
.form .check_06 input[type="checkbox"]:checked + span:not(.default):after, 
.form .check_06 input[type="radio"]:checked + span:not(.default):after {
    content: '';
    -moz-transform: rotate(-45deg) scale(1) translate(0, 0);
    -ms-transform: rotate(-45deg) scale(1) translate(0, 0);
    -webkit-transform: rotate(-45deg) scale(1) translate(0, 0);
    transform: rotate(-45deg) scale(1) translate(0, 0);
    -moz-transition: -moz-transform 0 ease-out;
    -o-transition: -o-transform 0 ease-out;
    -webkit-transition: -webkit-transform 0 ease-out;
    transition: transform 0 ease-out;
}
.form .check_06 .question_box .q_select label {
    display: inline-flex;
    justify-content: center;
}

/* db 시안 01 */
.form .db-container-01 {padding: 0% 5%;}
.form .db-container-01 .formContents .user_info {display: flex; align-items: center; gap: 1.2rem;}
.form .db-container-01 .formContents .user-top .user_info:nth-of-type(2) .title {width: 20%;}
.form .db-container-01 .formContents .user-bottom .user_info .title {width: 15%;}
.form .db-container-01 .formContents .user_info input { background: #fff; font-size: 130%; border: solid 1px #000; padding: 0.8em;}
.form .db-container-01 .formContents .user_info input::placeholder {color: #9d9d9d; font-size: 100%;}

.form .db-container-01 .formContents {padding-bottom: 5%;}
.form .db-container-01 .description.top {border: 1px solid orange; border-radius: 0.8em; padding: 1em 0; width: 100%;}
.form .db-container-01 .description .ad_txt {background: #eee; border-radius: 0.5em; padding: 1em 0; width: 90%; margin-top: 0.5em; font-size: 0.9rem; line-height: 1.4;}
.form .db-container-01 .description span {font-size: 1rem;}
.form .db-container-01 .user-box .user-info {display: flex; flex-flow: row wrap; justify-content: space-between; padding: 1em 0;}
.form .db-container-01 .user-info .user-input {width: 49%; background: #efefef; border: 2px solid #b3b3b3; padding: 2em 0; border-radius: 0.8em; position: relative; transition: all 0.3s ease;}
.form .db-container-01 .user-info .user-input:nth-of-type(3) {width: 100%; margin-top: 1%;}
.form .db-container-01 .user-info .user-input .check {display: block; background: #8c8c8c; width: 1.5em; height: 1.5em; border-radius: 2em; position: absolute; top: 1em; right: 1em;}
.form .db-container-01 .user-info .user-input input {width: 100%; text-align: center; font-size: 4.3rem; font-weight: 700;}
.form .db-container-01 .user-info .user-input input::placeholder {color: #8c8c8c;}

.form .db-container-01 .user-info .user-input.active {background: #acacac; border-color: #252525;}
.form .db-container-01 .user-info .user-input .check.active {background: #ff4e00;}
.form .db-container-01 .user-info .user-input .check.active::after {content: ''; display: inline-block; background-color: transparent; top: 50%; left: 0; width: 10px; height: 10px; margin-top: -5px; border-style: solid; border-color: #fff; border-width: 0 0 3px 3px; transform: rotate(-45deg) scale(1) translate(29%, -43%); position: absolute; top: 59%; left: 28%;}

.form .db-container-01 .result-box {padding: 1em 0; position: relative;}
.form .db-container-01 .result-box img {width: 100%;}
.form .db-container-01 #result {position: absolute; top: 50%; transform: translateY(-50%); left: 20%; font-size: 2em; }

.form .db-container-01 .submit {margin: 1em auto; width: 100%;}
.form .db-container-01 .submit input[type="image"] {width: 100%;}

.form .db-container-01 .agBox {font-size: 1.1rem;}

/* db 시안 02 */
.db-container-02 .user-box {padding: 0 2rem;}
.db-container-02 .iconImg {width: 5%;}
.db-container-02 .user-info {display: flex; align-items: center; position: relative; z-index: 1; width: max-content;}
.db-container-02 .user-info::after {content: ''; background: #c7c7c7; width: 100%; height: 1.6rem; position: absolute; bottom: 0; left: 0; z-index: -1;}
.db-container-02 .user-input {width: max-content;}
.db-container-02 .user-input.name { max-width: 9rem;}
.db-container-02 .user-input.age {max-width: 4rem;}
.db-container-02 .user-input.phone {max-width: 26rem; display: flex;}
.db-container-02 .user-input.phone input:nth-of-type(1) {width: 22%;}
.db-container-02 .user-input.phone input:nth-of-type(2),
.db-container-02 .user-input.phone input:nth-of-type(3) {width: 38.5%; text-align: center;}
.db-container-02 .age-txt {font-size: 3.2rem; color: #CDCDCD; font-weight: 700;}
.db-container-02 .age-txt.active {color: #000;}
.form .db-container-02 .inp {width: 100%; font-size: 3.2rem; font-weight: 700;}
.form .db-container-02 .inp::placeholder {color: #CDCDCD; font-weight: 700;}

.db-container-02 .dot {width: 0.5rem; height: 0.5rem; background: #000; border-radius: 2rem; margin: 0 0.3rem;}

.db-container-02 .text-area {font-size: 3.2rem; font-weight: 700;  padding: 0.5rem 0; width: 100%; text-align: left;}
.db-container-02 .text-area p {margin: 0 ; padding: 0; letter-spacing: -2px; line-height: 1.4;}
.db-container-02 .text-area p:nth-of-type(2) {display: flex; align-items: center; gap: 2%;}
.db-container-02 .text-area p img {width: 5%;}

.db-container-02 .underline {position: relative; z-index: 1;}
.db-container-02 .underline::after {content: ''; display: inline-block; width: 100%; height: 1.2rem; background: #c7c7c7; position: absolute; bottom: 5%; left: 50%; transform: translateX(-50%); z-index: -1;}
.db-container-02 .bg-color {position: relative; z-index: 1;}
.db-container-02 .bg-color::after {content: ''; display: inline-block; width: 100%; height: 100%; background: #c7c7c7; position: absolute; top: 0; left: 0%; z-index: -1;}
.db-container-02 .box {width: 13rem; height: 3.2rem; background: #e4e4e4; display: block;}

.form .db-container-02 .submit {width: 85%; margin: 0 auto; padding: 1rem 0;}
.form .db-container-02 .submit input[type="image"] {width: 100%;}

.form .db-container-02 .agBox {font-size: 1.2rem;}
.form .db-container-02 .description p {font-size: 1.2rem; font-weight: 500; padding: 0;}
.form .db-container-02 .description .ad_txt {font-size: 0.9rem; font-weight: 500; padding: 0;}
.form .db-container-02 .description span {font-weight: 500; font-size: 0.9rem; padding: 0; margin: 0;}

@media screen and (max-width: 500px){
    .db-container-02 .user-box { padding: 0; }
    .db-container-02 .iconImg {width: 7%;}
    .db-container-02 .text-area,
    .db-container-02 .age-txt,
    .form .db-container-02 .inp {font-size: 1.6rem;}
    .db-container-02 .underline::after {height: 0.7rem;}
    .db-container-02 .user-info::after {height: 1rem;}
    .db-container-02 .user-input.name {max-width: 5rem;}
    .db-container-02 .user-input.age {max-width: 2rem;}
    .db-container-02 .user-input.phone {max-width: 13.5rem;}
    .db-container-02 .user-input.phone input:nth-of-type(2),
    .db-container-02 .user-input.phone input:nth-of-type(3) {width: 33.5%;}
    .db-container-02 .user-info::after {width: 93%;}
    .db-container-02 .box {height: 2.2rem; width: 11rem;}
    .form .db-container-02 .agBox {font-size: 0.7rem;}
    .form .db-container-02 .submit {width: 90%;}
    .form .db-container-02 .description p {font-size: 1rem;}
    
}
@media screen and (max-width: 430px){
    .db-container-02 .text-area,
    .db-container-02 .age-txt,
    .form .db-container-02 .inp { font-size: 1.4rem; }
    .db-container-02 .iconImg {width: 6%;}
    .db-container-02 .text-area p img {width: 6%;}
    .db-container-02 .user-input.name {max-width: 4.5rem;}
    .db-container-02 .dot {width: 0.3rem; height: 0.3rem;}
    .db-container-02 .user-info::after {height: 0.8rem; width: 87%;}
    .db-container-02 .user-input.phone input:nth-of-type(2),
    .db-container-02 .user-input.phone input:nth-of-type(3) {width: 27.5%;}
    
    .form .db-container-02 .description {margin: 0 auto; width: 100%;}
    .form .db-container-02 .description p,
    .form .db-container-02 .description span,
    .form .db-container-02 .description .ad_txt {font-size: 0.7rem;}
}
@media screen and (max-width: 375px) {
    .db-container-02 .text-area, .db-container-02 .age-txt, .form .db-container-02 .inp {font-size: 1.2rem;}
    .db-container-02 .user-input.name {max-width: 3.7rem;}
    .db-container-02 .user-input.phone input:nth-of-type(1) {width: 20%;}
    .db-container-02 .user-info::after {width: 84%;}
    .db-container-02 .box {height: 2rem;}
    .db-container-02 .iconImg {width: 6%;}
    .form .db-container-02 .agBox {width: 100%;}
}

/* db 시안 03 */
.form .db-container-03 .formContents {padding: 5% 10%; background: #fff;}
.db-container-03 .user-box .user-title {font-size: 3em; text-align: center; letter-spacing: -2px; font-weight: 800; padding-bottom: 1rem;}
.db-container-03 .user-box .user-info {padding: 0 2rem;}
.db-container-03 .user-box .user-info input {background: #eee; border: 2px solid #aaa; border-radius: 0.8rem; font-size: 1.8rem; padding: 1.2rem; padding-right: 0; margin-bottom: 0.5rem; font-weight: 700; font-family: 'noto sans kr';}
.db-container-03 .user-box .user-info input::placeholder {font-size: 1.8rem;}

.form .db-container-03 .submit {width: calc(90% - 2%); margin: 0 auto; display: flex; gap: 2%; margin: 0.5rem auto;}
.form .db-container-03 .submit input[type="image"] {width: 41%;}
.form .db-container-03 .submit input[type="image"]:nth-of-type(2) {width: 57%;}

.form .db-container-03 .agBox {font-size: 1.1rem; margin: 0;}
.form .db-container-03 .description p {font-weight: 500;}
.form .db-container-03 .description .ad_txt {font-size: 0.9rem; line-height: 1.3;}
.form .db-container-03 .description span {font-size: 0.9rem;}

/* db 시안 04 */
.db-container-04 {background: #efefef;}
.db-container-04 .question_container {background: #efefef;}
.form .db-container-04 .formContents {padding: 5% 10%;}
.db-container-04 .user-box .user-title {font-size: 2.6rem; text-align: center; letter-spacing: -1px; color: #000; line-height: 1.2; font-weight: 700; padding-bottom: 2rem;}
.db-container-04 .user-box .user-title .pointColor {color: #b3b3b3;}
.db-container-04 .user-box .user-info {}
.db-container-04 .user-box .user-info .user-input {display: flex; align-items: center; justify-content: space-between; margin-bottom: 1rem;}
.db-container-04 .user-box .user-info .user-input .legend {display: block; font-size: 1.9rem; font-weight: 500; width: max-content; position: relative; flex-shrink: 0; color: #646262;}
.db-container-04 .user-box .user-info .user-input .legend::after {content: ''; display: inline-block; width: 0.4rem; height:  0.4rem; border-radius: 2em; background: #ec0001; position: absolute; top: 23%; right: -11%;}
.db-container-04 .user-box .user-info .user-input input {background: #fff; border-radius: 0.8rem; font-size: 3rem; padding: 1rem 0 1rem 1.7rem; width: 83%; font-weight: 700;}

.form .db-container-04 .submit {width: 75%; margin: 0 auto; display: flex; gap: 2%;}
.form .db-container-04 .submit input[type="image"] {width: 100%;}

.form .db-container-04 .agBox {font-size: 1.2rem;}

.form .db-container-04 .description p,
.form .db-container-04 .description span,
.form .db-container-04 .description .ad_txt {font-size: 1rem; font-weight: 500; padding: 0;}



/* 타이머 시안 01 */
.timer_01 .count-box {background-color: #000; max-width: 570px; width: 100%; margin: 0 auto; padding: 1.5% 5%; border-radius: 15px; display: flex; align-items: center; justify-content: center; color: #fff; column-gap: 1rem;}
.timer_01 .circle-container {width: 110px; height: 110px; border-radius: 50%; display: flex; align-items: center; justify-content: center; position: relative;}
.timer_01 svg {position: absolute; top: 0; left: 0; transform: rotate(-30deg); /* 2시 방향에서 시작 */}
.timer_01 .circle-text {color: #18FF00; font-size: 40px; font-weight: bold; z-index: 1;}
.timer_01 .gradient-rect {position: absolute; top: 5px; right: -11px; width: 50px; height: 70px; background: linear-gradient(180deg, rgba(0, 0, 0, 1) 10%, rgba(0, 0, 0, 0.9) 50%, rgba(0, 0, 0, 0) 100%);}
.timer_01 .count-text {font-size: 40px; font-weight: 700; line-height: 1.18; font-family: 'Pretendard';}
.timer_01 .text-green {color: #18FF00; font-family: 'Pretendard';}

.timer_01 {width: 80%; margin: 0 auto; }
.timer_01 .timer_box {display: flex; font-size: 2.5em; background-color: #000; padding-right: 7.5%; border-radius: 30px; overflow: hidden; font-family: 'Pretendard'; padding: 2% 7.5% 2% 0;}
.timer_01 .timer_box .timer_item {padding: 0% 2.5%;}
.timer_01 .timer_box .timer_des {flex-grow: 1; white-space: nowrap; color: #fff; background-color: #000; display: flex; align-items: center; justify-content: flex-end; font-size: 85%; font-weight: 700; font-family: 'Pretendard';}
.timer_01 .timer_box .timer_des strong{}
.timer_01 .timer_box .timer_right { font-weight: 800; color: #000; background-color: #0fc; display: flex; justify-content: center; align-items: center;}
.timer_01 .timer_box #timer {letter-spacing: -1px; position: relative; top: 0; font-size: 110%;}
.timer_01 .stop-mark {text-transform: uppercase; font-size: 100%; font-weight: 700; border-radius: 999px; padding: 0.5% 5%; background-color: #18FF00; color: #000; cursor: pointer;}


/* 타이머 시안 02 */
.timer_02 {width: max-content; margin: 0 auto;}
.timer_02 .count-box {position: relative; left: 0; transform: translate(0); background-color: #000; max-width: 100%; width: 100%; margin: 0 auto; padding: 1% 6%; border-radius: 30px; display: flex; align-items: center; justify-content: center; color: #fff; column-gap: 1rem;}
.timer_02 .circle-container {width: 130px; height: 130px; border-radius: 50%; display: flex; align-items: center; justify-content: center; position: relative;}
.timer_02 svg {position: absolute; top: 0; left: 0; transform: rotate(-30deg); /* 2시 방향에서 시작 */}
.timer_02 .circle-text {color: #18FF00; font-size: 200%; font-weight: bold; z-index: 1;}
.timer_02 .gradient-rect {position: absolute; top: 5px; right: -11px; width: 50px; height: 70px; background: linear-gradient(180deg, rgba(0, 0, 0, 1) 10%, rgba(0, 0, 0, 0.9) 50%, rgba(0, 0, 0, 0) 100%);}
.timer_02 .count-text {display: block; width: max-content; font-size: 285%; font-weight: 700; line-height: 1.18; font-family: 'Pretendard';}
.timer_02 .text-green {color: #18FF00; font-family: 'Pretendard';}


/* 타이머 시안 03 - 기본 */
.timer_03 .timer_box {text-align: center; font-size: 5.4em; background-color: #fff; font-size: 30px; color: #013bff; padding: 2% 0; font-weight: 700;}
.timer_03 .timer_box .timer_item {padding: 0;}
.timer_03 .timer_box .timer_des {color: #fff; background-color: #000; display: flex; align-items: center; justify-content: center; font-size: 100%;}
.timer_03 .timer_box .timer_des strong{}
.timer_03 .timer_box .timer_right { font-weight: 800; color: #000; background-color: #0fc; display: flex; justify-content: center; align-items: center;}
.timer_03 .timer_box #timer {width: max-content; margin: 1% auto 0; padding: 2% 5.5%; border-radius: 999px; background-color: #000; color: #fff; letter-spacing: -1px; position: relative; top: 0; font-size: 60%; font-weight: 700;}
.timer_03 .timer_box #timer .num {margin-right: 3px; font-size: 335%; line-height: 1; font-weight: 800;}
.timer_03 .timer_box #timer .num ~ .num {margin-left: 10px;}


/* 타이머 시안 03 - 게이지 */
.timer_03_gauge .timer_box {text-align: center; font-size: 5.4em; background-color: #fff; font-size: 30px; color: #013bff; padding: 2% 0; font-weight: 700;}
.timer_03_gauge .timer_box .timer_item {padding: 0;}
.timer_03_gauge .timer_box .timer_des {color: #fff; background-color: #000; display: flex; align-items: center; justify-content: center; font-size: 100%;}
.timer_03_gauge .timer_box .timer-box {display: flex; color: #fff; align-items: baseline; font-size: 125%; font-weight: 400;}
.timer_03_gauge .timer_box .timer_right { background-color: #000; padding: 0 5% 2%; border-radius: 999px; max-width: 75%; margin: 2% auto; font-weight: 800; color: #000; }
.timer_03_gauge .timer_box #timer {width: max-content; margin-left: 3%; padding: 2% 0%; border-radius: 999px; background-color: #000; color: #fff; letter-spacing: -1px; position: relative; top: 0;}
.timer_03_gauge .timer_box #timer .timer-text {font-size: 60%; font-weight: 700;}
.timer_03_gauge .timer_box #timer .num {margin-right: 3px; font-size: 60px; line-height: 1; font-weight: 800;}
.timer_03_gauge .timer_box #timer .num ~ .num {margin-left: 10px;}

.timer_03_gauge .gauge-box {background-color: #8A8A8A; border-radius: 999px;}
.timer_03_gauge .gauge-box .gauge {position: relative; display: block; width: 0%; height: 7px; border-radius: 999px; background: linear-gradient(90deg,rgba(255, 89, 62, 1) 0%, rgba(255, 89, 62, 1) 50%, rgba(255, 0, 0, 1) 100%); animation: gaugeAnim 50s linear infinite forwards;}

@keyframes gaugeAnim {
    100% {width: 100%;}
}

/* 타이머 시안 03 - 체크포인트 */
.timer_03_video.video-box video {width: 60%;}
.timer_03_video.video-box .btn_box {margin-bottom: 3%;}
.timer_03_video.video-box button {font-size: 18px; cursor: pointer;}


.hide{display:none;}
.timer_03_pointer .count_box {padding-top: 0.75rem; font-size: 1rem; text-align: center; font-size: 1.5rem; font-weight: 800; font-family: 'Pretendard'; color: #0059FF;}
.timer_03_pointer .font-red {color: red;}
.timer_03_pointer .gauge-box {background-color: #000; padding: 2.5% 5%; border-radius: 999px; max-width: 70%; margin: 2% auto;}
.timer_03_pointer .gauge-box .gauge {width: 100%; display: block; height: 7px; background: #8a8a8a; border-radius: 999px;}
.timer_03_pointer .gauge-box .progress {position: relative; display: block; width: 0%; height: 7px; border-radius: 999px; background: linear-gradient(90deg,rgba(255, 89, 62, 1) 0%, rgba(255, 89, 62, 1) 50%, rgba(255, 0, 0, 1) 100%); animation: gaugeAni 1s forwards;}
.timer_03_pointer .gauge-box .progress.active1 {animation: gaugeAni1 1s forwards;}
.timer_03_pointer .gauge-box .progress.active2 {animation: gaugeAni2 1s forwards;}
.timer_03_pointer .gauge-box .progress.active3 {animation: gaugeAni3 1s forwards;}
.timer_03_pointer .gauge-box .pointer {position: absolute; top: calc(-100% - 35px); right: 0; transform: translateX(50%); width: 35px; height: 35px; max-width: 35px; max-height: 35px; box-sizing: border-box; text-overflow: ellipsis; white-space: nowrap; padding: 0; display: flex; justify-content: center; align-items: center; border-radius: 50%; background: red; font-size: 15px; color: white; font-weight: 500; flex-shrink: 0;}
.timer_03_pointer .gauge-box .pointer::before {background-color: transparent; content: ""; position: absolute; bottom: -17px; left: 50%; width: 0; height: 0; border: 10px solid transparent; border-right-color: #FF0000; transform: translateX(-50%) rotate(270deg);}
.timer_03_pointer .count {color: #00fff0;}

@keyframes gaugeAni {
    0% {width: 0;}
    100% {width: 25%;}
}

@keyframes gaugeAni1 {
    0% {width: 25%;}
    100% {width: 50%;}
}

@keyframes gaugeAni2 {
    0% {width: 50%;}
    100% {width: 75%;}
}

@keyframes gaugeAni3 {
    0% {width: 75%;}
    100% {width: 100%;}
}


/* 실시간 신청현황 01 기본 */
.subscribe_01 {overflow: hidden;}
.subscribe_01 .js-marquee-wrapper {display: flex;}
.subscribe_01.subscribe-box {padding: 3% 0;}
.subscribe_01.subscribe-box .title {font-size: 200%; font-weight: 700; text-align: center; padding-bottom: 3%;}
.subscribe_01 .marquee-wrap > div + div {margin-top: 2%;}
.subscribe_01 .marquee-wrap .sign {padding: 0; width: max-content; gap: 1.5em;}
.subscribe_01 .sign .subscribe {background: none; display: flex; gap: 20px; padding: 0; flex-shrink: 0; min-width: 100%; /* 또는 원하는 고정 길이 */}
.subscribe_01 .sign .subscribe .content {display: flex; border-radius: 999px; padding: 0.5em 1.5em; gap: 1%; background-color: #555887; color: #fff; flex-shrink: 0; border-bottom: 0;}
.subscribe_01 .subscribe .content > div {flex-shrink: 0;}
.subscribe_01 .sign .subscribe .content .msg {font-size: 130%;}
.subscribe_01 .js-marquee {float: none !important;}
.subscribe_01 .marquee2 {position: relative; left: -550px;}
.subscribe_01 .marquee3 {position: relative; left: -1100px;}

@keyframes marqueeAnimation-4250278  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-8843080  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-3444391  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-4395413  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-5726263  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-4757039  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-9338541  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-8177076  { 100%  {transform:translateX(-8600px)}}
@keyframes marqueeAnimation-9328441  { 100%  {transform:translateX(-8600px)}}

/* 실시간 신청현황 01 속도 */
.subscribe_01_speed {overflow: hidden;}
.subscribe_01_speed .js-marquee-wrapper {display: flex;}
.subscribe_01_speed.subscribe-box {padding: 3% 0;}
.subscribe_01_speed.subscribe-box .title {font-size: 200%; font-weight: 700; text-align: center; padding-bottom: 3%;}
.subscribe_01_speed .marquee-wrap > div + div {margin-top: 2%;}
.subscribe_01_speed .marquee-wrap .sign {padding: 0; width: max-content; gap: 1.5em;}
.subscribe_01_speed .sign .subscribe {background: none; display: flex; gap: 20px; padding: 0; flex-shrink: 0; min-width: 100%; /* 또는 원하는 고정 길이 */}
.subscribe_01_speed .sign .subscribe .content {display: flex; border-radius: 999px; padding: 0.5em 1.5em; gap: 1%; background-color: #555887; color: #fff; flex-shrink: 0; border-bottom: 0;}
.subscribe_01_speed .subscribe .content > div {flex-shrink: 0;}
.subscribe_01_speed .sign .subscribe .content .msg {font-size: 130%;}
.subscribe_01_speed .js-marquee {float: none !important;}
.subscribe_01_speed .marquee2 {position: relative; left: -550px;}
.subscribe_01_speed .marquee3 {position: relative; left: -1100px;}


/* 실시간 신청현황 02 */
.swiper {height: 320px;background-color: #fff;padding: 0 5% !important;box-sizing: border-box;}
.swiper-slide {width: 520px;max-height: 80px !important;height: 100% !important;}
.swiper-slide .inner {display: flex;align-items: center;gap: 10px;width: 100%;height: 100%;background: #fff;border: 1px solid #ddd;padding: 14px;border-radius: 12px;font-size: 14px;color: #333;transform: scale(0.9);transition: background 0.2s 0.2s linear, border 0.2s 0.2s linear, transform 0.2s 0.2s linear, opacity 0.2s 0.2s linear, font-weight 0.2s 0.2s linear; box-sizing: border-box;}
.swiper-slide.active .inner {position: relative; z-index: 1; background: #eaffea; border: 2px solid #38c248; font-weight: bold; transform: scale(1); opacity: 1; overflow: hidden;}
.swiper .check {position: relative; display: flex; align-items: center; justify-content: center; color: #38c248 !important; font-size: 20px;flex-shrink: 0;width: 35px;height: 35px;border: 3px solid #38c248;border-radius: 50%;}
.swiper .check::before {content: ""; position: absolute; width: 20px; height: 20px; display: inline-block;width: 12px;height: 6px;border-left: 3px solid #38c248;border-bottom: 3px solid #38c248; transform: rotate(-45deg);}

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

/* 실시간 신청현황 03 */
.subscribe_03_video.video-box {}
.subscribe_03_video.video-box video {width: 60%;}
.subscribe_03_video.video-box button {font-size: 18px; cursor: pointer;}

.tab-content {display: none;}
.tab-content.active {display: block;} 

@media screen and (max-width: 500px) {
    .form input[type="checkbox"] + span:not(.default):after, .form input[type="radio"] + span:after {border-radius: 0px;}
    .form .check_01 .question_box .q_select,
    .form .select-box-06 .q_select {flex-wrap: wrap; gap: 1%;}
    .form .select-box-06 .q_select {row-gap: 3%;}
    .select-box-01 .checkbox-wrapper-16 {gap: 2%;}
    .select-box-01 .checkbox-wrapper-16 .checkbox-input:checked + .checkbox-tile svg {top: 0.8rem;right: 0.62rem;}
    .select-box-04 .checkmark {padding: 1rem 0;}
    .form .question_box .q_select label {width: 47%; text-align: left;}
    .form .select-box-02 .q_select label, 
    .form .select-box-03 .q_select label {width: 21.5%;}
    .form .select-box-04 .q_select label {width: 98%;}
    .form .check_03 .question_box .q_select label {justify-content: flex-start;}
    .form .check_05 .question_box .q_select {padding-left: 0;}
    .form .check_05 .question_box .q_select label:last-child {margin-left: 0;}
    .form .check_05.bg-black .question_box .q_select {padding: 2% 0 2% 1%;}
    .form .check_06 .question_box .q_select label {justify-content: flex-start;}

    .form .select-box-02 .q_select {flex-wrap: wrap;}
    .form .question_box .select-box-01 .q_select label {width: auto;}
    .select-box-01 .checkbox-wrapper-16 .checkbox-tile {width: 9rem; min-height: 4rem;}
    .form .select-box-02 .q_select,
    .form .select-box-03 .q_select {padding: 5% 0;}
    .select-box-03 .checkbox-custom {    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.10);}
    .select-box-02 .q_select label .sel-item,
    .select-box-03 .checkbox-custom {padding: 0.5rem 0; font-size: 1rem; text-align: center;}
    .select-box-01 .checkbox-wrapper-16 .checkbox-label,
    .select-box-04 .checkmark,
    .select-box-05 .checkbox-flip div,
    .select-box-06 .checkmark,
    .select-box-06 .sticker .front .content {font-size: 1.5rem; text-align: center;}
    .form .question_box .select-box-02 .q_select label {text-align: center;}

    .select-box-05 .checkbox-container {flex-wrap: wrap; padding: 0 3%;}
    .form .select-box-05 .q_select label,
    .form .select-box-06 .q_select label {width: max-content;}
    .form .select-box-06 .q_select label {margin-bottom: 1%;}
    .question {padding-left: 0;}

    .check_06 {padding: 0%;}
    .question_container {padding: 0%; border-radius: 0;}
    .form .check_05 input[type="checkbox"]:checked ~ .circle, .form .check_05 input[type="radio"]:checked ~ .circle {transform: translate(-10.5%, -50%) scale(1);}
    .form .check_05.bg-black input[type="checkbox"]:checked ~ .circle, .form .check_05.bg-black input[type="radio"]:checked ~ .circle {transform: translate(-9%, -50%) scale(1);}
    .select-box-05 .checkbox-flip, 
    .select-box-05 .checkbox-flip div {width: 9rem; height: 9rem;}
    .select-box-06 .checkmark,
    .select-box-06 .sticker,
    .select-box-06 .sticker .front .content {width: 9rem; height: 9rem;}

    .tab-btn button {font-size: 1rem;}
    .tab-content {padding: 0 3%;}

    .form .db-container-01 {padding: 0;}
    .form .db-container-01 .user-info .user-input {width: 48.5%;}
    .form .db-container-01 .user-info .user-input input {font-size: 1.3rem;}
    .form .db-container-01 .description .ad_txt {font-size: 0.8rem;}
    .form .db-container-01 .agBox {font-size: 0.7rem;}
    .form .db-container-01 .user-info .user-input .check {top: 0.5em; right: 0.5em;}
    .form .db-container-01 .user-info .user-input {padding: 1.5em 0;}
    .form .db-container-01 .user-info .user-input .check.active::after {border-width: 0 0 2px 2px;}

    .form .db-container-03 .formContents {padding: 5% 0%;}
    .db-container-03 .user-box .user-title {font-size: 2em;}
    .db-container-03 .user-box .user-info input {font-size: 1.2rem; padding: 1rem;}
    .db-container-03 .user-box .user-info input::placeholder {font-size: 100%;}
    .form .db-container-03 .agBox,
    .form .db-container-03 .description .ad_txt {font-size: 0.7rem;}
    .form .db-container-04 .formContents {padding: 5%;}
    .db-container-04 .user-box .user-title {font-size: 1.6rem; padding-bottom: 1.5rem;}
    .db-container-04 .user-box .user-info .user-input .legend {font-size: 1.1rem;}
    .db-container-04 .user-box .user-info .user-input .legend::after {width: 0.3rem; height: 0.3rem; right: -16%;}
    .db-container-04 .user-box .user-info .user-input input {font-size: 1rem; padding: 1rem 0 1rem 1.7rem; width: 80%; border-radius: 0.5rem;}
    .form .db-container-04 .agBox {font-size: 0.7rem; width: 100%;}
    .form .db-container-04 .description p, .form .db-container-04 .description span, .form .db-container-04 .description .ad_txt {font-size: 0.8rem;}
    .timer_01 {width: 100%;}
    .timer_01 .timer_box .timer_des {justify-content: flex-start;}
    .timer_01 .timer_box {font-size: 2em; border-radius: 15px; padding-right: 4%;}
    .timer_01 .stop-mark {font-size: 70%;}
    .timer_01 .circle-text {font-size: 25px;}
    .timer_01 .timer_box #timer {font-size: 90%;}
    .timer_01 .gradient-rect {right: -4px;width: 20px;height: 40px;}
    .timer_01 .circle-container {width: 70px; height: 70px;}
    .timer_02 {margin: 0; width: 100%;}
    .timer_02 .count-text {font-size: 205%;}
    .timer_02 .count-box {box-sizing: border-box; border-radius: 15px;}
    .timer_02 .circle-container {width: 100px; height: 100px;}
    .timer_02 .circle-text {font-size: 180%;}
    .timer_03 .timer_box {font-size: 25px;}
    .timer_03_gauge .timer_box {font-size: 20px;padding: 2% 0;}
    .timer_03_gauge .timer_box .timer_right {max-width: 100%;}
    .timer_03_gauge .timer_box .timer-box {font-size: 90%;}
    .timer_03_gauge .timer_box #timer .num {font-size: 40px;}
    .subscribe_01 .sign .subscribe {height: 43px;}
    .subscribe_01 .sign .subscribe .content .msg {font-size: 100%;}
    .subscribe_01 .subscribe .content > div {font-size: 14px;}
    .subscribe_01_speed .sign .subscribe {height: 43px;}
    .subscribe_01_speed .sign .subscribe .content .msg {font-size: 100%;}
    .subscribe_01_speed .subscribe .content > div {font-size: 14px;}
    .swiper {padding: 0 !important; height: 280px;}
    .swiper-slide {max-height: 70px !important;}
    .swiper-slide .inner {font-size: 12px;}
    .swiper .check {width: 20px; height: 20px;}
    .timer_03_video.video-box button {font-size: 14px;}
    .subscribe_03_video.video-box button {font-size: 14px;}
	.timer_03_gauge .gauge-box .gauge {height: 4px;}
}

</style>
<!-- Swiper CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>

<body>
<div id="wrap">
    <div class="form">
        <div class="tab-btn">
            <button class="btn-tab active">db, 타임카운트, 신청현황</button>
            <button class="btn-tab">체크, 셀렉트박스</button>
        </div>

        <div class="tab-item">
			<div class="tab-content active">
			    <!-- db 시안 01 -->
			    <div class="question">db 시안 01</div>
			    <div class="db-container-01">
			        <div class="formContents">
			            <div class="user-box">
			                <div class="description top">
			                    <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일까지")?></p>
			                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			                </div>
			                <div class="user-info">
			                    <div class="user-input">
			                        <span class="check"></span>
			                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
			                    </div>
			                    <div class="user-input">
			                        <span class="check"></span>
			                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
			                    </div>
			                    <div class="user-input">
			                        <span class="check"></span>
			                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호">
			                    </div>
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
			                    <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			                    <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
			                </ol><br/>
			                <h3>개인정보 취급 위탁</h3>
			                <ol>
			                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
			                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
			                    <br/>
			                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
			                </ol>
			            </div> 
			            <div class="result-box">
			                <img src="//static.resta.co.kr/event/v_2131/db_result.png">
			                <span id="result"></span>
			                <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
			            </div>

			            <div class="submit">
			                <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_2131/db_btn_newSb_01.png" />
			            </div>
			            <div class="description bottom"><span>대상 : ${resVo.target} </span></div>
			        </div>
			    </div>

			    <!-- db 시안 02 -->
			    <div class="question">db 시안 02</div>
			    <div class="db-container-02">
			        <div class="formContents">
			            <div class="user-box">
			                <div class="img-area iconImg"><img src="//static.resta.co.kr/event/v_2131/db_icon_01.png"></div>
			                <div class="user-info">
			                    <span class="input-line"></span>
			                    <div class="user-input name">
			                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="홍길동">
			                    </div>
			                    <span class="dot"></span>
			                    <div class="user-input age">
			                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="27">
			                    </div>
			                    <span class="age-txt">세</span>
			                    <span class="dot"></span>
			                    <div class="user-input phone">
			                        <input type="tel" name="phone_01" class="inp" required="" autocomplete="off" maxlength="3" placeholder="010">
			                        <input type="tel" name="phone_02" class="inp" required="" autocomplete="off" maxlength="4" placeholder="XXXX">
			                        <input type="tel" name="phone_03" class="inp" required="" autocomplete="off" maxlength="4" placeholder="XXXX">
			                    </div>
			                </div>
			                <div class="text-area">
			                    <p>
			                        <span class="underline">입력</span>만 해주시면 <span class="bg-color">예상 비용이</span><br>
			                        지금 바로 확인돼요!
			                    </p>
			                    <p>
			                        <span class="box"></span>
			                        <img src="//static.resta.co.kr/event/v_2131/db_icon_02.png">
			                        <span>원 입니다</span>
			                    </p>
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
			                    <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			                    <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
			                </ol><br/>
			                <h3>개인정보 취급 위탁</h3>
			                <ol>
			                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
			                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
			                    <br/>
			                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
			                </ol>
			            </div> 
			            <div class="submit">
			                <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_2131/db_btn_newSb_02.png" />
			            </div>
			            <div class="description">
			                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일까지")?></p>
			                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			                <span>대상 : ${resVo.target} </span>
			            </div>
			        </div>
			    </div>

			    <!-- db 시안 03 -->
			    <div class="question">db 시안 03</div>
			    <div class="db-container-03">
			        <div class="formContents">
			            <div class="user-box">
			                <div class="user-title">예상비용 간편 조회하기</div>
			                <div class="user-info">
			                    <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
			                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
			                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호">
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
			                    <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			                    <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
			                </ol><br/>
			                <h3>개인정보 취급 위탁</h3>
			                <ol>
			                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
			                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
			                    <br/>
			                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
			                </ol>
			            </div>
			            <div class="description top">
			                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일까지")?></p>
			            </div>
			            <div class="submit">
			                <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_2131/db_btn_newSb_03.png" />
			                <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_2131/db_btn_newSb_04.png" />
			            </div>
			            <div class="description bottom">
			                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			                <span>대상 : ${resVo.target} </span>
			            </div>
			        </div>
			    </div>

			    <!-- db 시안 04 -->
			    <div class="question">db 시안 04</div>
			    <div class="db-container-04">
			        <div class="formContents">
			            <div class="user-box">
			                <div class="user-title">혜택 받으실 분의<br><span class="pointColor">성함과 연락처를 입력</span>해주세요</div>
			                <div class="user-info">
			                    <div class="user-input">
			                        <span class="legend">이름</span>
			                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="">
			                    </div>
			                    <div class="user-input">
			                        <span class="legend">나이</span>
			                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="">
			                    </div>
			                    <div class="user-input">
			                        <span class="legend">연락처</span>
			                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="">
			                    </div>
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
			                    <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			                    <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
			                </ol><br/>
			                <h3>개인정보 취급 위탁</h3>
			                <ol>
			                    <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
			                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
			                    <br/>
			                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
			                </ol>
			            </div>
			            <div class="description">
			                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일까지")?></p>
			                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			                <span>대상 : ${resVo.target} </span>
			            </div>
			            <div class="submit">
			                <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_2131/db_btn_newSb_05.png" />
			            </div>
			        </div>
			    </div>

			    <!-- 타이머 시안 01 -->
			    <div class="question">타이머 01</div>
			    <div class="timer_01">
			        <div class="timer_box">
			            <div class="timer_des timer_item">
			                마감 까지
			                <div id="timer" class="timer_item">00:04:08</div>
			                <button class="stop-mark">stop!</button>
			            </div>
			            <div class="circle-container">
			                <svg width="130" height="130">
			                    <!-- 배경 원 -->
			                    <circle stroke="#000" stroke-width="12" fill="none"></circle>
			                    <!-- 애니메이션 원 -->
			                    <!-- <circle id="progressCircle" stroke="url(#grad)" stroke-width="12" fill="none" stroke-dasharray="408" stroke-dashoffset="317.6535541478121" stroke-linecap="round"></circle> -->
			                    <circle id="progressCircle" stroke="url(#grad)" stroke-width="12" fill="none" stroke-dasharray="345.575" stroke-dashoffset="261" stroke-linecap="round"></circle>
			                    <defs>
			                    <lineargradient id="grad" x1="0%" y1="0%" x2="100%" y2="0%">
			                        <stop offset="0%" style="stop-color: #18FF00; stop-opacity: 1"></stop>
			                        <stop offset="90%" style="stop-color: #CEFFB6; stop-opacity: 1"></stop>
			                    </lineargradient>
			                    </defs>
			                </svg>
			                <div class="circle-text" id="numberText">8</div>
			                <div class="gradient-rect"></div>
			            </div>
			        </div>
			    </div>

			    <!-- 타이머 시안 02 -->
			    <div class="question">타이머 02</div>
			    <div class="timer_02">
			        <div class="count-box">
			            <div class="count-text">
			                <span class="text-green">이벤트 마감까지</span><br>
			                남은 인원
			            </div>
			            <div class="circle-container">
			                <svg width="130" height="130">
			                    <!-- 배경 원 -->
			                    <circle stroke="#000" stroke-width="12" fill="none"></circle>
			                    <!-- 애니메이션 원 -->
			                    <circle id="progressCircle" stroke="url(#grad)" stroke-width="12" fill="none" stroke-dasharray="345.575" stroke-dashoffset="261" stroke-linecap="round"></circle>
			                    <defs>
			                    <lineargradient id="grad" x1="0%" y1="0%" x2="100%" y2="0%">
			                        <stop offset="0%" style="stop-color: #18FF00; stop-opacity: 1"></stop>
			                        <stop offset="90%" style="stop-color: #CEFFB6; stop-opacity: 1"></stop>
			                    </lineargradient>
			                    </defs>
			                </svg>
			                <div class="circle-text" id="numberText">11명</div>
			                <div class="gradient-rect"></div>
			            </div>
			        </div>
			    </div>

			    <!-- 타이머 시안 03 - 기본 -->
			    <div class="question">타이머 03 기본</div>
			    <div class="timer_03">
			        <div class="timer_box">
			            마감 임박! 남은 시간, 단 <br>
			            <div id="timer" class="timer_item"><span class="timer-text"><span class="num">02</span>시간 <span class="num">29</span>분 <span class="num">34</span>초</span></div>
			        </div>
			    </div>

			    <!-- 타이머 시안 03 - 게이지 -->
			    <div class="question">타이머 03 게이지</div>
			    <div class="timer_03_gauge">
			        <div class="timer_box">
			        <div class="timer_right">
			            <span class="timer-box">
			                남은 시간 단,
			                <div id="timer" class="timer_item"><span class="timer-text"><span class="num">02</span>시간 <span class="num">29</span>분 <span class="num">28</span>초</span></div>
			            </span>
			            <div class="count_box">
			                <div class="gauge-box">
			                    <span class="gauge"></span>
			                </div>
			            </div>
			        </div>
			        </div>
			    </div>

			    <!-- 타이머 시안 03 - 체크포인트 -->
			    <div class="question">타이머 03 체크포인트</div>
			    <div class="video-box timer_03_video">
			        <video src="//static.resta.co.kr/event/format/timer_pointer.mp4" type="video/mp4" muted></video>
			        <span class="btn_box">
			            <button class="btn-play" onclick="playVideo(this)">재생</button>
			            <button class="btn-pause" onclick="pauseVideo()">정지</button>
			            <button class="btn-restart" onclick="restartVideo()">재시작</button>
			        </span>
			    </div>
			    <!-- <div class="timer_03_pointer">
			        <div class="count_box">
			            마감까지 <span class="font-red">5명</span> 남았습니다!
			            <div class="gauge-box">
			                <span class="gauge">
			                    <span class="progress">
			                        <span class="pointer"><span class="current">1</span>/<span class="total">4</span></span>
			                    </span>
			                </span>
			            </div>
			        </div>

			        <div class="formContents">
			            <section class="page section01" id="page-1">
			                    <div class="next img-area" onclick="pageFuc(1,$(this))">다음</div>
			            </section>

			            <section class="page hide section02" id="page-2">
			                <div class="page_inner">
			                    <div class="next img-area" onclick="pageFuc(2,$(this))">다음</div>
			                </div>
			            </section>

			            <section class="page hide section03" id="page-3">
			                <div class="page_inner">
			                    <div class="next img-area" onclick="pageFuc(3,$(this))">다음</div>
			                </div>
			            </section>

			            <section class="page hide section04" id="page-4">
			                <div class="formGroup">
			                    마지막 페이지
			                </div>
			            </section>
			        </div>
			    </div> -->

			    <!-- 실시간 신청현황 01 - 기본 -->
			    <div class="question">신청현황 01</div>
			    <div class="subscribe-box subscribe_01">
			        <div class="title">현재까지 신청자</div>
			        <div class="marquee-wrap">
			            <div class="marquee1">
			                <div style="width: 100000px; transform: translateX(0px); animation: 115.134s linear 1s infinite normal none running marqueeAnimation-9338541;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            <div class="marquee2">
			                <div style="width: 100000px; transform: translateX(0px); animation: 115.134s linear 1s infinite normal none running marqueeAnimation-8177076;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            <div class="marquee3">
			                <div style="width: 100000px; transform: translateX(0px); animation: 115.134s linear 1s infinite normal none running marqueeAnimation-9328441;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>

			    <!-- 실시간 신청현황 01 - 속도 -->
			    <div class="question">신청현황 01 속도</div>
			    <div class="subscribe-box subscribe_01_speed">
			        <div class="title">현재까지 신청자</div>
			        <div class="marquee-wrap">
			            <div class="marquee1">
			                <div style="width: 100000px; transform: translateX(0px); animation: 105.134s linear 1s infinite normal none running marqueeAnimation-9338541;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            <div class="marquee2">
			                <div style="width: 100000px; transform: translateX(0px); animation: 115.134s linear 1s infinite normal none running marqueeAnimation-8177076;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            <div class="marquee3">
			                <div style="width: 100000px; transform: translateX(0px); animation: 110.134s linear 1s infinite normal none running marqueeAnimation-9328441;" class="js-marquee-wrapper">
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="js-marquee" style="margin-right: 20px; float: left;">
			                        <div class="sign">
			                            <div class="subscribe">
			                                <div class="content" data-id="383050">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**62</div>
			                                    <div class="date">06-30 09:37</div>
			                                </div>
			                            
			                                <div class="content" data-id="382688">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**77</div>
			                                    <div class="date">06-30 03:14</div>
			                                </div>
			                            
			                                <div class="content" data-id="381251">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">송** | 010-****-**84</div>
			                                    <div class="date">06-28 15:16</div>
			                                </div>
			                            
			                                <div class="content" data-id="379810">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**87</div>
			                                    <div class="date">06-27 08:09</div>
			                                </div>
			                            
			                                <div class="content" data-id="379524">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">하** | 010-****-**93</div>
			                                    <div class="date">06-27 00:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="378826">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">이** | 010-****-**59</div>
			                                    <div class="date">06-26 12:38</div>
			                                </div>
			                            
			                                <div class="content" data-id="378369">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**41</div>
			                                    <div class="date">06-26 05:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="378229">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">김** | 010-****-**04</div>
			                                    <div class="date">06-26 00:05</div>
			                                </div>
			                            
			                                <div class="content" data-id="378166">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">손** | 010-****-**10</div>
			                                    <div class="date">06-25 22:53</div>
			                                </div>
			                            
			                                <div class="content" data-id="377907">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">설** | 010-****-**27</div>
			                                    <div class="date">06-25 17:04</div>
			                                </div>
			                            
			                                <div class="content" data-id="377889">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">장** | 010-****-**31</div>
			                                    <div class="date">06-25 16:49</div>
			                                </div>
			                            
			                                <div class="content" data-id="377620">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">유** | 010-****-**27</div>
			                                    <div class="date">06-25 13:07</div>
			                                </div>
			                            
			                                <div class="content" data-id="376972">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**69</div>
			                                    <div class="date">06-25 05:41</div>
			                                </div>
			                            
			                                <div class="content" data-id="375310">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">표** | 010-****-**25</div>
			                                    <div class="date">06-24 05:55</div>
			                                </div>
			                            
			                                <div class="content" data-id="375287">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">신** | 010-****-**75</div>
			                                    <div class="date">06-24 05:19</div>
			                                </div>
			                            
			                                <div class="content" data-id="375100">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">박** | 010-****-**09</div>
			                                    <div class="date">06-23 23:57</div>
			                                </div>
			                            
			                                <div class="content" data-id="375046">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">윤** | 010-****-**87</div>
			                                    <div class="date">06-23 23:11</div>
			                                </div>
			                            
			                                <div class="content" data-id="374755">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">길** | 010-****-**77</div>
			                                    <div class="date">06-23 18:52</div>
			                                </div>
			                            
			                                <div class="content" data-id="374742">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">지** | 010-****-**22</div>
			                                    <div class="date">06-23 18:30</div>
			                                </div>
			                            
			                                <div class="content" data-id="374348">
			                                    <div class="msg">신청했습니다~!</div>
			                                    <div class="phone">진** | 010-****-**11</div>
			                                    <div class="date">06-23 14:06</div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>

			    <!-- 실시간 신청현황 02 -->
			    <div class="question">신청현황 02</div>
			    <div class="swiper mySwiper" data-limit="10">
			    <div class="swiper-wrapper" >
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">박**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**46</span><span class="date">03-26 17:11</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">이**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**45</span><span class="date">03-19 08:28</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">가**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**11</span><span class="date">03-19 16:25</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">김**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**30</span><span class="date">03-18 20:05</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">박**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**44</span><span class="date">03-18 17:49</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">김**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**68</span><span class="date">03-18 16:22</span></div></div>
			        <div class="swiper-slide"><div class="inner"><span class="check"></span><span class="name">이**</span><span class="text">신청했습니다~!</span><span class="text">010-****-**78</span><span class="date">03-18 16:20</span></div></div>
			    </div>
			    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

			    <!-- 실시간 신청현황 03 -->
			    <div class="question">신청현황 03</div>
			    <div class="video-box subscribe_03_video">
			        <video src="//static.resta.co.kr/event/format/subscribe_03.mp4" type="video/mp4" muted></video>
			        <span class="btn_box">
			            <button class="btn-play" onclick="playVideo02()">재생</button>
			            <button class="btn-pause" onclick="pauseVideo02()">정지</button>
			            <button class="btn-restart" onclick="restartVideo02()">재시작</button>
			        </span>
			    </div>
			</div>
            <div class="tab-content">
                <form id="form-1" method="POST" accept-charset="utf-8">
                    <!-- 체크박스 01 -->
                    <div class="check_01">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 01</div>
                                <div class="q_select">
                                    <label class="container">
                                        <input type="radio" name="add1" value="이마">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            이마
                                            <span class="sticker">
                                                <span class="front">
                                                <span class="content">
                                                    
                                                </span>
                                                </span>
                                                <span class="back"></span>
                                            </span>
                                        </span>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="add1" value="정수리">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            정수리
                                            <span class="sticker">
                                                <span class="front">
                                                <span class="content">
                                                    
                                                </span>
                                                </span>
                                                <span class="back"></span>
                                            </span>
                                        </span>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="add1" value="여러부위">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            여러부위
                                            <span class="sticker">
                                                <span class="front">
                                                <span class="content">
                                                    
                                                </span>
                                                </span>
                                                <span class="back"></span>
                                            </span>
                                        </span>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="add1" value="기타">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            기타
                                            <span class="sticker">
                                                <span class="front">
                                                <span class="content">
                                                    
                                                </span>
                                                </span>
                                                <span class="back"></span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 체크박스 02 -->
                    <div class="check_02">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 02</div>
                                <div class="q_select">
                                    <label>
                                        <input type="radio" name="add1" value="이마">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            이마
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="정수리">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            정수리
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="여러부위">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            여러부위
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="기타">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            기타
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 체크박스 03 -->
                    <div class="check_03">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 03</div>
                                <div class="q_select">
                                    <label>
                                        <input type="radio" name="add2" value="이마">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">이마</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="정수리">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">정수리</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="여러부위">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">여러부위</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="기타">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">기타</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 체크박스 04 -->
                    <div class="check_04">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 04</div>
                                <div class="q_select">
                                    <label>
                                        <input type="radio" name="add1" value="이마">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            이마
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="정수리">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            정수리
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="여러부위">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            여러부위
                                        </span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add1" value="기타">
                                        <span class="label-txt">
                                            <span class="border-box">
                                                <i class="border l-top"></i>
                                                <i class="border l-center"></i>
                                                <i class="border l-bottom"></i>
                                                <i class="border r-top"></i>
                                                <i class="border r-center"></i>
                                                <i class="border r-bottom"></i>
                                            </span>
                                            기타
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 체크박스 05 / 흰 배경 -->
                    <div class="check_05">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 05 - 흰색 배경</div>
                                <div class="q_select">
                                    <label>
                                        <input type="radio" name="add2" value="이마">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">이마</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="정수리">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">정수리</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="여러부위">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">여러부위</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="기타">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">기타</span>
                                        <span class="circle"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 체크박스 05 / 검정 배경 -->
                    <div class="check_05 bg-black">
                        <div class="form_inner">
                            <div class="question_box">
                                <div class="question">체크박스 05 - 검정색 배경</div>
                                <div class="q_select">
                                    <label>
                                        <input type="radio" name="add2" value="이마">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">이마</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="정수리">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">정수리</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="여러부위">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">여러부위</span>
                                        <span class="circle"></span>
                                    </label>
                                    <label>
                                        <input type="radio" name="add2" value="기타">
                                        <span class="border-box">
                                            <i class="border top"></i>
                                            <i class="border right"></i>
                                            <i class="border bottom"></i>
                                            <i class="border left"></i>
                                        </span>
                                        <span class="label-txt">기타</span>
                                        <span class="circle"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 체크박스 06 -->
                    <div class="check_06">
                        <div class="question_box">
                            <div class="question img-area">체크박스 06</div>
                            <div class="q_select">
                                <label><input type="radio" name="add1" value="이마"><span>이마</span></label>
                                <label><input type="radio" name="add1" value="정수리"><span>정수리</span></label>
                                <label><input type="radio" name="add1" value="여러부위"><span>여러부위</span></label>
                                <label><input type="radio" name="add1" value="기타"><span>기타</span></label>
                            </div>
                        </div>
                    </div>

                    <div class="question_container">
                        <div class="question_box">
                            <!-- select 시안 01 -->
                            <div class="question">셀렉트 01</div>
                            <div class="select-box-01">
                                <div class="q_select">
                                    <div class="checkbox-wrapper-16">
                                        <label class="checkbox-wrapper">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-tile">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" viewBox="0 0 23 23" fill="none">
                                                    <g filter="url(#filter0_d_2067_19)">
                                                        <circle cx="11.5" cy="7.5" r="7.5" fill="#EED232"/>
                                                    </g>
                                                    <defs>
                                                        <filter id="filter0_d_2067_19" x="0" y="0" width="23" height="23" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feComposite in2="hardAlpha" operator="out"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15 0"/>
                                                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_2067_19"/>
                                                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_2067_19" result="shape"/>
                                                        </filter>
                                                    </defs>
                                                </svg>
                                                <div class="checkbox-icon">
                                                <div class="custom-checkmark"></div>
                                                </div>
                                                <div class="checkbox-label">이마</div>
                                            </div>
                                        </label>
                                        <label class="checkbox-wrapper">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-tile">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" viewBox="0 0 23 23" fill="none">
                                                    <g filter="url(#filter0_d_2067_19)">
                                                        <circle cx="11.5" cy="7.5" r="7.5" fill="#EED232"/>
                                                    </g>
                                                    <defs>
                                                        <filter id="filter0_d_2067_19" x="0" y="0" width="23" height="23" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feComposite in2="hardAlpha" operator="out"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15 0"/>
                                                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_2067_19"/>
                                                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_2067_19" result="shape"/>
                                                        </filter>
                                                    </defs>
                                                </svg>
                                                <div class="checkbox-icon">
                                                <div class="custom-checkmark"></div>
                                                </div>
                                                <div class="checkbox-label">정수리</div>
                                            </div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                
                            <!-- select 시안 02 -->
                            <div class="question">셀렉트 02</div>
                            <div class="select-box-02">
                                <div class="q_select">
                                    <label><input type="radio" name="tadd1"><div class="sel-item">정수리</div></label>
                                    <label><input type="radio" name="tadd1"><div class="sel-item">이마</div></label>
                                    <label><input type="radio" name="tadd1"><div class="sel-item">헤어라인</div></label>
                                    <label><input type="radio" name="tadd1"><div class="sel-item">기타</div></label>
                                </div>
                            </div>
                
                            <!-- select 시안 03 -->
                            <div class="question">셀렉트 03</div>
                            <div class="select-box-03">
                                <div class="q_select">
                                    <div class="checkbox-container">
                                        <label class="checkbox-label">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-custom">4개 이상</div>
                                        </label>
                                        <label class="checkbox-label">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-custom">7개 이상</div>
                                        </label>
                                        <label class="checkbox-label">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-custom">10개 이상</div>
                                        </label>
                                        <label class="checkbox-label">
                                            <input class="checkbox-input" type="radio" name="tadd1">
                                            <div class="checkbox-custom">11개 이상</div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                
                            <!-- select 시안 04 -->
                            <div class="question">셀렉트 04</div>
                            <div class="select-box-04">
                                <div class="q_select">
                                    <label class="checkbox-container">
                                        <input type="radio" name="tadd1" >
                                        <div class="checkmark">
                                            2개 이상
                                        </div>
                                    </label>
                                    <label class="checkbox-container">
                                        <input type="radio" name="tadd1" >
                                        <div class="checkmark">
                                            4개 이상
                                        </div>
                                    </label>
                                    <label class="checkbox-container">
                                        <input type="radio" name="tadd1" >
                                        <div class="checkmark">
                                            6개 이상
                                        </div>
                                    </label>
                                    <label class="checkbox-container">
                                        <input type="radio" name="tadd1" >
                                        <div class="checkmark">
                                            10개 이상
                                        </div>
                                    </label>
                                </div>
                            </div>
                
                            <!-- select 시안 05 -->
                            <div class="question">셀렉트 05</div>
                            <div class="select-box-05">
                                <div class="q_select">
                                    <div class="checkbox-container">
                                        <div class="checkbox-wrapper">
                                            <input class="radio" type="radio" name="tadd1" hidden="">
                                            <label class="checkbox-label">
                                                <div class="checkbox-flip">
                                                <div class="checkbox-front">2개 이상</div>
                                                <div class="checkbox-back">2개 이상</div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="checkbox-wrapper">
                                            <input class="radio" type="radio" name="tadd1" hidden="">
                                            <label class="checkbox-label">
                                                <div class="checkbox-flip">
                                                <div class="checkbox-front">4개 이상</div>
                                                <div class="checkbox-back">4개 이상</div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="checkbox-wrapper">
                                            <input class="radio" type="radio" name="tadd1" hidden="">
                                            <label class="checkbox-label">
                                                <div class="checkbox-flip">
                                                <div class="checkbox-front">6개 이상</div>
                                                <div class="checkbox-back">6개 이상</div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="checkbox-wrapper">
                                            <input class="radio" type="radio" name="tadd1" hidden="">
                                            <label class="checkbox-label">
                                                <div class="checkbox-flip">
                                                <div class="checkbox-front">10개 이상</div>
                                                <div class="checkbox-back">10개 이상</div>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                
                            <!-- select 시안 06 -->
                            <div class="question">셀렉트 06</div>
                            <div class="select-box-06">
                                <div class="q_select">
                                    <label class="container">
                                        <input type="radio" name="tadd1">
                                        <div class="checkmark">2개 이상</div>
                                        <div class="sticker">
                                            <div class="front">
                                                <div class="content">2개 이상</div>
                                            </div>
                                            <div class="back"></div>
                                        </div>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="tadd1">
                                        <div class="checkmark">4개 이상</div>
                                        <div class="sticker">
                                            <div class="front">
                                                <div class="content">4개 이상</div>
                                            </div>
                                            <div class="back"></div>
                                        </div>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="tadd1" data-gtm-form-interact-field-id="1">
                                        <div class="checkmark">6개 이상</div>
                                        <div class="sticker active">
                                            <div class="front">
                                                <div class="content">6개 이상</div>
                                            </div>
                                            <div class="back"></div>
                                        </div>
                                    </label>
                                    <label class="container">
                                        <input type="radio" name="tadd1" data-gtm-form-interact-field-id="0">
                                        <div class="checkmark">10개 이상</div>
                                        <div class="sticker">
                                            <div class="front">
                                                <div class="content">10개 이상</div>
                                            </div>
                                            <div class="back"></div>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script>
        // select 시안 02
        $('input[name="tadd1"]').on('click', function () {
            // 모든 .sel-item에서 active 제거
            $('.sel-item').removeClass('active');

            // 현재 선택된 라디오 버튼의 형제 .sel-item에 active 추가
            $(this).siblings('.sel-item').addClass('active');
        });

        // select 시안 05
        $(document).ready(function () {
            $('.checkbox-label').on('click', function () {
                const $wrapper = $(this).closest('.checkbox-wrapper');
                const $radio = $wrapper.find('input[type="radio"]');

                // 라디오 체크
                $radio.prop('checked', true).trigger('change');
            });

            $('input[type="radio"][name="tadd1"]').on('change', function () {
                const $currentFlip = $(this).closest('.checkbox-wrapper').find('.checkbox-flip');

                // 1) 다른 모든 flipped 요소를 "애니메이션 없이" 원상복귀
                const $others = $('.checkbox-flip.flipped').not($currentFlip);
                if ($others.length) {
                $others.addClass('no-anim').removeClass('flipped');

                // 강제 리플로우로 스타일 확정 → 애니메이션 없이 앞면 상태가 즉시 적용됨
                // eslint-disable-next-line no-unused-expressions
                $others[0].offsetHeight;

                // no-anim 제거(다음 번엔 정상 전환)
                $others.removeClass('no-anim');
                }

                // 2) 현재 선택된 것만 애니메이션으로 뒤집기
                $currentFlip.addClass('flipped');
            });
        });

        // select 시안 06
        $(document).ready(function () {
            let lastChecked = null;

            // 애니메이션 없이 즉시 기본 상태로 되돌리는 헬퍼
            function restoreInstant($el) {
                if (!$el || !$el.length) return;
                $el.addClass('no-anim').removeClass('active');
                void $el[0].offsetWidth; // 강제 리플로우
                $el.removeClass('no-anim');
            }

            $('.q_select input[type="radio"]').on('click', function () {
                const $this = $(this);
                const $thisSticker = $this.siblings('.sticker');

                if ($this[0] !== lastChecked) {
                // 1) 이전 active를 즉시 기본 상태로
                restoreInstant($('.sticker.active'));

                // 2) 현재 것만 애니메이션으로 active
                $thisSticker.addClass('active');

                lastChecked = $this[0];
                }
                // else 같은 라디오 클릭 → 아무 동작 안 함
            });
        });

        $('a.disagree').bind('click',function(){
            alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');

            setTimeout(function(){ 
                $('input[name=agBox]').trigger('click')
            }, 500);
        });


        // db 시안 01 active
    $('.user-input input').on('input', function () {
        const $parent = $(this).closest('.user-input');
        const value = $(this).val().trim();

        if (value.length > 0) {
            $parent.addClass('active');
            $parent.find('.check').addClass('active');
        } else {
            $parent.removeClass('active');
            $parent.find('.check').removeClass('active');
        }
    });

    // db 시안 02
    let originalWidth = null;
    function widthResize (){
        $('.db-container-02 #name').on('input', function () {
            const length = $(this).val().length;
            const $wrapper = $('.user-input.name');

            if (length >= 4) {
            if (!originalWidth) {
                // 처음 체크 시 원래 width 저장
                originalWidth = $wrapper.outerWidth();
            }

            const newWidth = originalWidth * 1.3;
            $wrapper.css('max-width', newWidth + 'px');
            } else {
            if (originalWidth) {
                $wrapper.css('max-width', originalWidth + 'px');
            } else {
                $wrapper.css('max-width', '');
            }
            }
        });
    }
    widthResize ();

    // 나이 입력칸 처리
    $('.db-container-02 #age').on('input', function () {
        const length = $(this).val().trim().length;
        const $target = $('.age-txt');

        if (length >= 2) {
            $target.addClass('active');
            $('input[name="phone_01"]').focus(); // 👉 2자리 입력되면 포커스 이동
        } else {
            $target.removeClass('active');
        }
    });

    // 연락처 입력칸 처리
    $('.db-container-02 input[name="phone_01"]').on('input', function () {
        if ($(this).val().length === 3) {
            $('input[name="phone_02"]').focus();
        }
    });
    $('.db-container-02 input[name="phone_02"]').on('input', function () {
        if ($(this).val().length === 4) {
            $('input[name="phone_03"]').focus();
        }
    });

	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');

		setTimeout(function(){ 
            $('input[name=agBox]').trigger('click')
        }, 500);
	})


        // 타이머 시안 01
        $('.stop-mark').on('click',function(){
            const formOffset = $('.warningTxt').offset().top;

            $('html, body').animate({
                scrollTop: formOffset
            }, 500); // 500ms 동안 스크롤 이동
        })

        const circleContainer = document.querySelector('.timer_01 .circle-container');
        const svg = document.querySelector('.timer_01 .circle-container svg');
        const backgroundCircle = document.querySelector('.timer_01 svg circle'); // 첫 번째 배경 원
        const progressCircle = document.getElementById("progressCircle");
        const numberText = document.querySelector(".timer_01 .circle-text");

        let currentMaxValue = 59;
        let startTime;
        const totalDuration = 5 * 60 * 1000; // 5분
        let timerInterval;

        let svgSize, center, radius, strokeWidth, fullCircumference, maxOffset;

        function updateCircleMetrics() {
            const isMobile = window.innerWidth <= 500;
            svgSize = isMobile ? 70 : 110;
            strokeWidth = isMobile ? 8 : 12;
            center = svgSize / 2;
            radius = center - strokeWidth;

            fullCircumference = 2 * Math.PI * radius;
            maxOffset = fullCircumference;

            // svg 크기 조정
            svg.setAttribute("width", svgSize);
            svg.setAttribute("height", svgSize);

            // 배경 원
            backgroundCircle.setAttribute("cx", center);
            backgroundCircle.setAttribute("cy", center);
            backgroundCircle.setAttribute("r", radius);
            backgroundCircle.setAttribute("stroke-width", strokeWidth);

            // 프로그레스 원
            progressCircle.setAttribute("cx", center);
            progressCircle.setAttribute("cy", center);
            progressCircle.setAttribute("r", radius);
            progressCircle.setAttribute("stroke-width", strokeWidth);
            progressCircle.setAttribute("stroke-dasharray", fullCircumference);
        }

        $(document).ready(function () {
            const display = document.querySelector('#timer');
            updateCircleMetrics(); // 초기 반응형 설정
            startTime = Date.now();
            startTimer(totalDuration, display);
            loop(); // 타이머에 종속된 애니메이션 루프
        });

        window.addEventListener('resize', updateCircleMetrics); // 반응형 적용

        let lastDisplayedSeconds = null;

        function startTimer(duration, display) {
            display.textContent = '00:04:59';

            timerInterval = setInterval(function () {
                const elapsed = Date.now() - startTime;
                const remaining = duration - elapsed;

                if (remaining <= 0) {
                    clearInterval(timerInterval);
                    display.textContent = '00:00:00';
                    return;
                }

                const hours = String(Math.floor(remaining / (1000 * 60 * 60))).padStart(2, '0');
                const minutes = String(Math.floor((remaining % (1000 * 60 * 60)) / (1000 * 60))).padStart(2, '0');
                const seconds = Math.floor((remaining % (1000 * 60)) / 1000);

                if (seconds !== lastDisplayedSeconds) {
                    lastDisplayedSeconds = seconds;
                    display.textContent = hours + ':' + minutes + ':' + String(seconds).padStart(2, '0');
                }
            }, 200);
        }

        let lastLoopSecond = null;

        function loop() {
            const loopInterval = setInterval(() => {
            const now = Date.now();
            const elapsed = now - startTime;
            const remaining = totalDuration - elapsed;

            if (remaining <= 0) {
                clearInterval(loopInterval);
                progressCircle.setAttribute("stroke-dashoffset", maxOffset);
                numberText.textContent = '60';
                return;
            }

            const secondsRemaining = Math.floor((remaining % (1000 * 60)) / 1000);
            const progress = (remaining % 1000) / 1000;

            const dashoffset = maxOffset - fullCircumference * 0.8333 * (1 - progress);
            progressCircle.setAttribute("stroke-dashoffset", dashoffset);

            if (secondsRemaining !== lastLoopSecond) {
                lastLoopSecond = secondsRemaining;
                numberText.textContent = secondsRemaining;
                }
            }, 30);
        }

        // 타이머 시안 02
        const circleContainer02 = document.querySelector('.timer_02 .circle-container');
        const progressCircle02 = document.querySelector(".timer_02 #progressCircle");
        const numberText02 = document.querySelector(".timer_02 #numberText");

        const gradientRect02 = document.createElement('div');
        gradientRect02.classList.add('gradient-rect');
        circleContainer02.append(gradientRect02);

        const backgroundCircle02 = document.querySelector('.timer_02 svg circle'); // 첫 번째 background circle

        let currentMaxValue02 = 12;
        numberText02.textContent = currentMaxValue02 + '명';

        // 애니메이션 관련
        const duration02 = 1000;
        const frameRate02 = 300;
        const totalFrames02 = Math.round(duration02 / (1000 / frameRate02));
        const targetPercent02 = 0.8333;

        // 동적 값
        let svgSize02, radius02, fullCircumference02, maxOffset02, center02;

        function updateCircleMetrics02() {
            const isMobile = window.innerWidth <= 500;
            svgSize02 = isMobile ? 100 : 130;         // SVG 크기
            center02 = svgSize02 / 2;                   // 중심점
            radius02 = center02 - 15;                   // stroke-width 고려해서 반지름 설정 (예: 50 또는 55)

            const bgStrokeWidth = isMobile ? 10 : 12;
            const progressStrokeWidth = isMobile ? 10 : 12;

            fullCircumference02 = 2 * Math.PI * radius02;
            maxOffset02 = fullCircumference02;

            // svg 자체 속성 조절은 필요 시 직접 조절
            const svg02 = document.querySelector(".timer_02 svg");
            svg02.setAttribute("width", svgSize02);
            svg02.setAttribute("height", svgSize02);

            // 배경 원 속성
            backgroundCircle02.setAttribute("r", radius02);
            backgroundCircle02.setAttribute("cx", center02);
            backgroundCircle02.setAttribute("cy", center02);
            backgroundCircle02.setAttribute("stroke-width", bgStrokeWidth);

            // 애니메이션 원 속성
            progressCircle02.setAttribute("stroke-dasharray", fullCircumference02);
            progressCircle02.setAttribute("r", radius02);
            progressCircle02.setAttribute("cx", center02);
            progressCircle02.setAttribute("cy", center02);
            progressCircle02.setAttribute("stroke-width", progressStrokeWidth);
            progressCircle02.setAttribute("stroke-dasharray", fullCircumference02);
        }

        function animate02(maxValue, onComplete) {
            let frame02 = 0;

            function run02() {
                const progress02 = frame02 / totalFrames02;
                const dashoffset02 = maxOffset02 - fullCircumference02 * targetPercent02 * progress02;

                progressCircle02.setAttribute("stroke-dashoffset", dashoffset02);

                frame02++;
            if (frame02 <= totalFrames02) {
                requestAnimationFrame(run02);
            } else {
                if (onComplete) onComplete();
            }
        }

        run02();
        }

        function loop02() {
            animate02(currentMaxValue02, () => {
                currentMaxValue02--;
                if (currentMaxValue02 < 3) currentMaxValue02 = 12;

                numberText02.textContent = currentMaxValue02 + '명';
                loop02();
            });
        }

        updateCircleMetrics02();
        loop02();
        window.addEventListener("resize", updateCircleMetrics02);


        // 타이머 03 - 기본
        $(document).ready(function(){
            // 타이머
            var display = document.querySelector('.timer_03 #timer');
            var timer =  30* 5 * 60 * 1000; // 5분을 밀리초로 변환

            startTimer03(timer, display);
        });

        function startTimer03(duration, display) {
        var start = Date.now();
        var end = start + duration;

        var timerInterval = setInterval(function () {
        var remaining = end - Date.now();
        if (remaining <= 0) {
            clearInterval(timerInterval);
            display.innerHTML = '<span class="timer-text"><span class="num">00</span>시간 <span class="num">00</span>분 <span class="num">00</span>초</span>'; // 초가 끝난 후 텍스트
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

        display.innerHTML = '<span class="timer-text"><span class="num">' + hours + '</span>시간 <span class="num">' + minutes + '</span>분 <span class="num">' + seconds + '</span>초</span>';
        }, 1);
    }


        // 타이머 03 - 게이지
        $(document).ready(function(){
            var displayGauge = document.querySelector('.timer_03_gauge #timer');
            var timerGauge = 30 * 5 * 60 * 1000; // 5분을 밀리초로 변환

            startTimer03Gauge(timerGauge, displayGauge);
        })

        function startTimer03Gauge(duration, displayGauge) {
            var start = Date.now();
            var end = start + duration;

            var timerInterval = setInterval(function () {
            var remaining = end - Date.now();
            if (remaining <= 0) {
                clearInterval(timerInterval);
                displayGauge.textContent = '00:00:00'; // 초가 끝난 후 텍스트
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

                displayGauge.innerHTML = '<span class="timer-text"><span class="num">' + hours + '</span>시간 <span class="num">' + minutes +'</span>분 <span class="num">' + seconds + '</span>초</span>';
            }, 1);
        }

        // 버튼 페이지 이동 함수 (다음)
        function pageFuc(num, obj) {
            // 선택된 라디오 버튼 확인 (section03 페이지일 때)
            // if (num === 3) {
            //     const isChecked = $('input[name="add1"]:checked').length > 0;

            //     if (!isChecked) {
            //         alert("설문을 선택해주세요");
            //         return; // 선택되지 않았으면 페이지 이동 안함
            //     }
            // }

            // 페이지 이동 처리
            $('.section0' + num).fadeOut(function() {
                $('.section0' + (num + 1)).fadeIn();
                $('.gauge-box .progress').addClass('active' + num);
                $('.current').text(num + 1)
                // $(document).scrollTop(0);
            });
        }


        // 실시간 신청현황 01 기본
        function getComment01() {
            $('.subscribe_01 .subscribe').each(function(idx,obj) {
                var ID = $('.subscribe_01 .content', obj).last().data('id');
                var limit = $(obj).data('limit');
                if(typeof ID == 'undefined') ID = '';
                if(!limit) limit = 20;
                $.ajax({
                    type: "POST",
                    url: "./1823/ajaxproc",
                    data: "mode=getComment&limit="+limit+"&lastmsg="+ ID, 
                    dataType: 'json',
                    cache: false,
                    success: function(result){
                        if (result.result) {
                            $('.btn_moreSubscribe', obj).remove();
                            const data = result.data;

                            // 1. 세 개의 .subscribe에 동일한 데이터를 각각 직접 넣기
                            ['.subscribe_01 .marquee1', '.subscribe_01 .marquee2', '.subscribe_01 .marquee3'].forEach(selector => {
                                const $target = $(`${selector} .subscribe`);
                                $target.empty(); // 기존 내용 제거

                                for (let v in data) {
                                    const html = `
                                        <div class="content" data-id="${data[v].seq}">
                                            <div class="msg">${data[v].msg}</div>
                                            <div class="phone">${data[v].name} | ${data[v].phone}</div>
                                            <div class="date">${data[v].reg_date}</div>
                                        </div>
                                    `;
                                    $target.append(html);
                                }
                            });

                            // 2. 마퀴 초기화 및 재적용
                            setTimeout(() => {
                                $('.subscribe_01 .marquee1, .subscribe_01 .marquee2, .subscribe_01 .marquee3').marquee('destroy');

                                $('.subscribe_01 .marquee1, .subscribe_01 .marquee2, .subscribe_01 .marquee3').marquee({
                                    beforeStarting: 0,
                                    duration: 20000,
                                    gap: 20,
                                    delayBeforeStart: 1000,
                                    direction: 'left',
                                    duplicated: true,
                                    startVisible: true
                                });
                            }, 100); // 필요시 delay 조정
                        }
                    }
                });
            });
            return false;
        }

        getComment01();


        // 실시간 신청현황 01 속도
        function getComment01Speed() {
            $('.subscribe_01_speed .subscribe').each(function(idx,obj) {
                var ID = $('.subscribe_01_speed .content', obj).last().data('id');
                var limit = $(obj).data('limit');
                if(typeof ID == 'undefined') ID = '';
                if(!limit) limit = 20;
                $.ajax({
                    type: "POST",
                    url: "./1823/ajaxproc",
                    data: "mode=getComment&limit="+limit+"&lastmsg="+ ID, 
                    dataType: 'json',
                    cache: false,
                    success: function(result){
                        if (result.result) {
                            $('.btn_moreSubscribe', obj).remove();
                            const data = result.data;

                            // 1. 세 개의 .subscribe에 동일한 데이터를 각각 직접 넣기
                            ['.subscribe_01_speed .marquee1', '.subscribe_01_speed .marquee2', '.subscribe_01_speed .marquee3'].forEach(selector => {
                                const $target = $(`${selector} .subscribe`);
                                $target.empty(); // 기존 내용 제거

                                for (let v in data) {
                                    const html = `
                                        <div class="content" data-id="${data[v].seq}">
                                            <div class="msg">${data[v].msg}</div>
                                            <div class="phone">${data[v].name} | ${data[v].phone}</div>
                                            <div class="date">${data[v].reg_date}</div>
                                        </div>
                                    `;
                                    $target.append(html);
                                }
                            });

                            // 2. 마퀴 초기화 및 재적용
                            setTimeout(() => {
                                $('.subscribe_01_speed .marquee1, .subscribe_01_speed .marquee2, .subscribe_01_speed .marquee3').marquee('destroy');

                                $('.subscribe_01_speed .marquee1, .subscribe_01_speed .marquee2, .subscribe_01_speed .marquee3').marquee({
                                    beforeStarting: 0,
                                    duration: 20000,
                                    gap: 20,
                                    delayBeforeStart: 1000,
                                    direction: 'left',
                                    duplicated: true,
                                    startVisible: true
                                });
                            }, 100); // 필요시 delay 조정
                        }
                    }
                });
            });
            return false;
        }

        getComment01Speed();


        // 실시간 신청현황 02
          $(document).ready(function () {
            initSwiper();
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

    const timerVideo = document.querySelector(".timer_03_video video");
    const subscribeVideo = document.querySelector(".subscribe_03_video video");

    function playVideo(btn) {
        timerVideo.play();
    }

    function pauseVideo() {
        timerVideo.pause();
    }

    function restartVideo() {
        timerVideo.currentTime = 0; // 처음으로 이동
        timerVideo.play();          // 다시 재생
    }

    function playVideo02() {
        subscribeVideo.play();
    }

    function pauseVideo02() {
        subscribeVideo.pause();
    }

    function restartVideo02() {
        subscribeVideo.currentTime = 0; // 처음으로 이동
        subscribeVideo.play();          // 다시 재생
    }

    const btnTabs = document.querySelectorAll('.tab-btn button');
    const tabContents = document.querySelectorAll('.tab-content');

    btnTabs.forEach((btn, index) => {
        btn.addEventListener('click', () => {
            btnTabs.forEach(b => b.classList.remove('active'));
            tabContents.forEach(tab => tab.classList.remove('active'));

            btn.classList.add('active');
            tabContents[index].classList.add('active');
        });
    });
    </script>
</body>
</html>
