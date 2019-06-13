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
	#left{
		margin-left: 33%;
	}
	#button1{
		margin-left: 3%;
	}
</style>
</head>
<body>
<jsp:include page="../common/hippe_header.jsp"></jsp:include>
	
	<div id="center">
	<br/><br/><br/><br/><br/><br/><br/>
	
		<label style="font-size: 20px;">비밀번호 재확인이 필요합니다.</label>
	</div>
	<br/><br/>
	<div id="left">
		<label style="font-size: 20px;">비밀번호 확인</label>
		<input size="35" style="height: 30px;" type="password"/>
		<button id="button1" style="font-size: 14px; color: rgb(255,255,255); text-align: center;
		background-color: rgb(89, 202, 183); width: 70px; height: 35px;">확   인</button>
	</div>
		
	
	

</body>
</html>