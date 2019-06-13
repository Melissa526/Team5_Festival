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
	#img1{
		margin-left: 5.5%;
		margin-top: 10%;
	}
	#button{
		margin-top: 164.5%;
	}
	#table1{
		margin-left: 5%;
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
			티켓 수령방법
			<br/>
			<input type="radio">현장수령
			<br/>
			<input type="radio">우편(+2800)
			<img id="img1" alt="img" src="img/wnf.png" style="width: 195px; height: 20px;">
			</div>
		</div>
		<div id="div3" style="width: 350px; height: 400px; background-color: rgb(224, 224, 224);">
			<div><br/>주문자 정보 확인</div>
			<br/>
			<table id="table1" border="1">
				<tr>
					<th style="width: 121px; height: 28px;">이	름</th>
					<td style="width: 180px; height: 28ppx;"></td>
				</tr>
				<tr>
					<th style="width: 121px; height: 28px;">생년월일</th>
					<td style="width: 180px; height: 28ppx;"></td>
				</tr>
			</table>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 300px; height: 20px;">
			<br/><br/>
			<table id="table1" border="1">
				<tr>
					<th style="width: 121px; height: 28px;">연  락  처</th>
					<td style="width: 180px; height: 28ppx;"></td>
				</tr>
				<tr>
					<th style="width: 121px; height: 28px;">이  메  일</th>
					<td style="width: 180px; height: 28ppx;"></td>
				</tr>
			</table>
		</div>
		<div id="div4" style="width: 218px; height: 420px; background-color: rgb(224, 224, 224);">
			축제정보확인....
			<button id="button" style="font-size: 16px; color: rgb(255,255,255); width: 218px; height: 40px; text-align: center
			line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183); ">다음단계></button>
	
	</div>
	</div>
</body>
</html>