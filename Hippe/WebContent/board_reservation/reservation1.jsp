<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#button{
		margin-left: 75%;	
	}
	#center{
		margin-left: 22%;
	}
	#img2{
		margin-left: 3%;
	}
	#img3{
		margin-left: 3.5%;
	}
	#img4{
		margin-left: 4%;
	}
	#img5{
		margin-left: 4.5%;
	}
	#input{
		margin-left: -1.2%;
	}
	#testarea2{
		margin-left: 3.5%;
	}
	#testarea3{
		margin-left: 4%;
	}
	#testarea4{
		margin-left: 4.3%;
	}
	#testarea5{
		margin-left: 4.7%;
	}
	
	
	
	
</style>
</head>
<body>

<jsp:include page="../common/hippe_header.jsp"></jsp:include>
	
	<br/><br/><br/>
	
	<button id="button" style="font-size: 16px; color: rgb(255,255,255); width: 170px; height: 40px; text-align: center
	line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183); ">예매하기</button>

	<br/><br/><br/>
	
	
	<div class="div_ticketbox">
	
		<img class="img_poster" alt="img" src="img/zido.jpg" style="width: 163px; height: 171px;"><input id="input" type="checkbox" style="width: 20px; height: 20px;" >
		<img class="img_poster" alt="img" src="img/zido.jpg" style="width: 163px; height: 171px;"><input id="input" type="checkbox" style="width: 20px; height: 20px;">
		<img class="img_poster" alt="img" src="img/zido.jpg" style="width: 163px; height: 171px;"><input id="input" type="checkbox" style="width: 20px; height: 20px;">
		<img class="img_poster" alt="img" src="img/zido.jpg" style="width: 163px; height: 171px;"><input id="input" type="checkbox" style="width: 20px; height: 20px;">
		
		<br/>
		
		<textarea id="testarea1" rows="10" cols="20">축제설명란1</textarea>
		<textarea id="testarea2" rows="10" cols="20">축제설명란2</textarea>
		<textarea id="testarea3" rows="10" cols="20">축제설명란3</textarea>
		<textarea id="testarea4" rows="10" cols="20">축제설명란4</textarea>
		<textarea id="testarea5" rows="10" cols="20">축제설명란5</textarea>
	</div>
	

</body>
</html>