<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#logo{
	position: absolute; 
	top:14.5px; 
	left:25%; 
	width:93px; 
	height:45px";
	font-weight:bold; 
	font-size:35px; 
	color:rgb(89,202,183);
	}
	#center{
		margin-left: 30%;
	}
	.balloon {
		display: inline-block;
		position: absolute;
		background: rgb(89,202,183);
		margin: 0 auto 10px;
		text-align: center;
	}
	.balloon:after {
    	content: '';
   		position: absolute;
    	border-top: 10px solid transparent;
    	border-left: 10px solid rgb(89, 202, 183);
    	border-bottom: 10px solid transparent;
    	right: -10px;
    	top: 15px;
    	text-align: center;
	}
	#div1{
		margin-left: 20%;
	}
	#div2{
		margin-left: 40%;
	}
	#div3{
		margin-left: 25%;
		margin-top: -30.5%;
	}
	#div4{
		margin-left: 57.5%;
		margin-top: -30%;
	}
	#div5{
		margin-left: 5%;
	}
	#div6{
		margin-left: 5%;
		margin-top: 5%;
	}
	#img1{
		margin-left: 5.5%;
		margin-top: 5%;
	}
	#button1{
		margin-left: 0%;
		margin-top: 172%;
	}
	#button2{
		position: relative;
		margin-left: 65.7%;
	}
	#input1{
		margin-left: 10%;
	}
	#input2{
		margin-left: 7%;
	}
	#input3{
		margin-left: 7%;
	}
	#input4{
		margin-left: 3%;
	}
	#input5{
		margin-left: 3.5%;
	}
	#input6{
		margin-left: 4%;
	}
	#textarea1{
		margin-left: 4%;
	}
	#chk1{
		margin-left: 5%
	}
</style>
</head>
<body>

	<a href="Main.jsp" id ="logo">LOGO</a>
	
	<br/><br/><br/><br/>
	
	<div id="center">
		<div class="balloon" style="width: 200px; height: 42px; line-height: 2.3em;
		color: rgb(255, 255, 255); border-radius: 5px;" >관람일/회차선택</div>
		
		<div id="div1" class="balloon" style="width: 200px; height: 42px; line-height: 2.3em;
		color: rgb(255, 255, 255); border-radius: 5px;" >배송지/주문자 확인</div>
		
		<div id="div2" class="balloon" style="width: 200px; height: 42px; line-height: 2.3em;
		color: rgb(255, 255, 255); border-radius: 5px;" >결제완료</div>
		
		<br/><br/><br/><br/>
		
		<div style="width: 224px; height: 405px; background-color: rgb(224, 224, 224);">
			<div id="div5"><br/>
			결제 수단 방식 선택
			<br/><br/>
			<input type="radio"/>신용카드
			<br/><br/>
			<input type="radio"/>카카오 페이
			<br/><br/>
			<input type="radio"/>무통장 입금
			<br/><br/>
			<input type="radio"/>휴대폰 결제
			<br/><br/>
			<input id="input1" type="text" readonly="readonly" value="사용 가능한 포인트" style="width: 180px; height: 35px; text-align: center;">
			<ul>
				<li>리스트 항목</li>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</ul>
			</div>
		</div>
		<div id="div3" style="width: 350px; height: 400px; background-color: rgb(224, 224, 224);">
			<div>
			<br/>
			<div id="div5" style="width: 300px; height: 20px;">
				결제금액 확인
			</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 300px; height: 20px;">	
			<div id="div6" style="width: 300px; height: 20px;">
				10,000,000,000
			</div>
			</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 300px; height: 20px;">
			<br/>
			<br/>
			<input id="chk1" type="checkbox" style="width: 16px; height: 16px; font-size: 16px;" >결제 사항 확인
			<br/><br/>
			<textarea id="textarea1" readonly="readonly" style="width: 300px; height: 120px; " >품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게</textarea>
			
		</div>
		<div id="div4" style="width: 220px; height: 420px; background-color: rgb(224, 224, 224);">
			<div>
				<button id="button1" style="font-size: 16px; color: rgb(255,255,255); width: 110px; height: 40px; text-align: center
			line-height: 3.7em; border-radius: 4px; background-color: rgb(240, 123, 125); "> ◁이전단계 </button>
			</div>
			
		</div>
		<div>
			<button id="button2" style="font-size: 16px; color: rgb(255,255,255); width: 110px; height: 40px; top: -42px; text-align: center
			line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183);"> 다음단계▷ </button>
		</div>
		
		
	</div>
</body>
</html>