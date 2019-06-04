<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#center{
		margin-left: 40%;
	}
	#div1{
		margin-left: -5%;
	}
	button{
		margin-left: 3%;
	}
	
</style>
</head>
<body>

	<%@ include file="header.jsp"%>
	
	<div id="center">
		<br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="div1" style="font-size: 30px; width: 500px; height: 40px; color: rgb(0, 0, 0) ">
			<img id="img1" alt="img" src="img/smile.png">
			야때에 오신것을 환영합니다  <img id="img2" alt="img" src="img/smile.png">
		</div>
		<br/><br/><br/><br/>
		<button style="width: 300px; height: 60px; background-color: pink; color: rgb(255, 255, 255); " >로그인하기</button>
	
	</div>

</body>
</html>