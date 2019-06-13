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
	}
	#ing1{
		margin-left: 20%;
	}
	#button1{
		margin-left: 25%;
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
		
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="div3" style="font-size: 30px; width: 400px; height: 40px; color: rgb(240, 123, 125) ">
			<img id="img1" alt="img" src="img/smile.png">
			결제가 완료 되었습니다!
		</div>
		<br/><br/><br/><br/><br/><br/><br/>
		<button id="button1" style="width: 150px; height: 50px; background-color: rgb(89, 202, 183); color: rgb(255, 255, 255)">홈으로</button>
		<button style="width: 150px; height: 50px; background-color: rgb(240, 123, 125); color: rgb(255, 255, 255)">예매확인</button>

	</div>

</body>
</html>