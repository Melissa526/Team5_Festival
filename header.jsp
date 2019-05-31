<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	.box{
		border: 2px solid red;
	}
	#login {
		position : absolute;
		width: 80px;
		height: 50px;
		right: 400px;
		top: 5px;
	}
	#join{
		position : absolute;
		width: 80px;
		height: 50px;
		right: 300px;
		top: 5px;
	}
	#menu{
		background: rgb(89, 202, 183);
		text-align: center;
	}
	
	a{
		text-decoration: none;
		font-size: 30px;
		color: white;
	}
	
	#menu div{
		display: inline-block;
		margin-right: 100px;
	}
	
</style>
</head>
<body>
	<header></header>
	<a href="main.jsp"><div  style="font-size: 31px; color: rgb(89, 202, 183); font-weight: bold;">LOGO</div></a>
		
			<div id="login" style="font-size: 12px; color: rgb(255, 255, 255); text-align: center;
			line-height: 2em; border-radius: 2px; background-color: rgb(240, 123, 125);" >
			<a href="Login.jsp"><span>LOGIN</span></a></div>
			<div id="join" style="font-size: 12px; color: rgb(255, 255, 255); text-align: center; 
			line-height: 2em; border-radius: 2px; background-color: rgb(240, 123, 125);" >
			<a href="Member.jsp"><span>JOIN</span></a></div>
		
	<div id="menu" align="center">
		<div class="sub_menu"><a href="">축제조회</a></div>
		
		<div class="sub_menu"><a href="">예매하기</a></div>
		
		<div class="sub_menu"><a href="">자유게시판</a></div>
		
		<div class="sub_menu"><a href="">이용후기</a></div>
		
		<div class="sub_menu"><a href="">이벤트</a></div>
	</div>
	
</body>
</html>