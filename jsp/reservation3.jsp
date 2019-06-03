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
		margin-left: 30%;
		margin-top: -18.5%;
	}
	#div4{
		margin-left: 57.5%;
		margin-top: -19%;
	}
	#div5{
		margin-top: -11%;
	}
	#img1{
		margin-left: 140%;
	}
	#button{
		margin-top: 164.5%;
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
		
		<div style="width: 224px; height: 250px; background-color: rgb(224, 224, 224);">
		<img id="img1" alt="img" src="img/plus.png" style="width: 24px; height: 24px;">
			달력....
		</div>
		<div id="div3" style="width: 116px; height: 250px; background-color: rgb(224, 224, 224);">
			회차선택....
		</div>
		<div id="div4" style="width: 218px; height: 420px; background-color: rgb(224, 224, 224);">
			축제정보확인....
			<button id="button" style="font-size: 16px; color: rgb(255,255,255); width: 218px; height: 40px; text-align: center
	line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183); ">다음단계></button>
		</div>
		<div id="div5" data-text-content="true" style="font-size:16px;" >유의사항</div>
		<br/>
		<textarea style="width: 700px; height: 100px;">그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라</textarea>
		
		
		
	</div>
</body>
</html>