<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#center{
		margin-left: 30%;
	}
	.balloon {
		right: 550px;
		top: 350px;
		display: inline-block;
		position: absolute;
		background: rgb(89,202,183);
		height: 257px;
		width: 322px;
		margin: 0 auto 10px;
	}
	.balloon:after {
    	content: '';
   		position: absolute;
    	border-top: 10px solid transparent;
    	border-right: 10px solid rgb(89,202,183);
    	border-bottom: 10px solid transparent;
    	left: -10px;
   	 	top: 128px;
	}
</style>	
</head>
<body>

	<%@ include file="header.jsp"%>
	
	<br/><br/><br/><br/><br/><br/>
	
	<div id="center">
		<img alt="img" src="img/zido.jpg" style="width: 377px; height: 406px;">
		<div class="balloon" style="width: 352px; height: 257px; text-align: center; color: rgb(255, 255, 255);" >축제설명칸</div>
	</div>
	
	

</body>
</html>