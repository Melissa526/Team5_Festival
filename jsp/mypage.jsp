<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	div {
    display: block;
	}
	#photo1{
		margin-left: 33%;
	}
	#photo2{
		position: absolute;
		margin-left: 50%;
	}
	#photo3{
		margin-left: 33%;
	}
	#photo4{
		position: absolute;
		margin-left: 50%;
	}
	#button1{
		position: relative;
		margin-left: 73%;
	}
	#button2{
		position: relative;
		margin-left: 73%;
	}
	#button3{
		position: relative;
		margin-left: 73%;
	}
	#button4{
		position: relative;
		margin-left: 73%;
	}
	#img1{
		position: relative;
		margin-left: 2%;
	}
</style>
</head>
<body>

	<%@ include file="header.jsp"%>
	<br/><br/><br/>

	<div id="photo1" style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51);
	width: 285px; height: 185px; ">
		<div style="font-weight: normal; font-size: 25px;">회원정보수정</div>
		
		<img id="img1" src="img/User.png"alt="마이페이지" style="top: 40px;">
		 
		<div  id="button1" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
		background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: 21px; " >수   정</div>
		
	</div>
	
	<div id="photo2" style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51);
	width: 285px; height: 185px; top: 221px;">
		<div style="font-weight: normal; font-size: 25px; ">예매 확인/취소</div>
				<div  id="button2" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
				background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: 110px; " >예매확인</div>
	</div>
	
	<br/><br/>
	
	<div id="photo3" style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51);
	width: 285px; height: 185px;">
		<div style="font-weight: normal; font-size: 25px;">즐겨찾기</div>
		<div  id="button1" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
		background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: 110px; " >확   인</div>
	</div>
	
	<div id="photo4" style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51);
	width: 285px; height: 185px; top: 449px;">
		<div style="font-weight: normal; font-size: 25px;">회원탈퇴</div>
		<div  id="button2" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
				background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: 110px; " >회원탈퇴</div>
	</div>
	
	

</body>
</html>