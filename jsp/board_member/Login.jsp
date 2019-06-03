<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	.middle{
		position: relative;
		left: 40%;
		width: 40%;
		top: 70px;
	}
		
	fieldset {
	text-align: center;
	}

	.login{
	position: absolute; 
	width: 90px; 
	height: 90px;
	left: 200px;
	top: -10px;
	font-size: 16px; color: rgb(255, 255, 255); 
	text-align: center; 
	line-height: 5.6em; 
	border-radius: 4px; 
	background-color: rgb(89, 202, 183);
	}
	
	.find,.join{
	font-size: 14px;
    color: rgb(190, 190, 190);
    text-decoration: underline;
	left: 20px;
	}
	
	.kakao{
	font-size: 16px;
    color: rgb(0, 0, 0);
    text-align: center;
    line-height: 3.1em;
    border-radius: 4px;
    background-color: rgb(248, 241, 6);
    width: 315px;
    height: 50px;
	}
	
	.naver{
	font-size: 16px;
    color: rgb(0, 0, 0);
    text-align: center;
    line-height: 3.1em;
    border-radius: 4px;
    background-color: rgb(96, 200, 63);
    font-weight: normal;
    top: 10px;
    width: 315px;
    height: 50px;
	}
	
</style>

</head>
<body>

<div style="width: 100%; height: 100%;" > 
		<jsp:include page="/header.jsp"></jsp:include>
		
		<div class="middle">

			<div class="input">
				<p><input type="text" placeholder="아이디"></p>
				<p><input type="password" placeholder="비밀번호"></p> 
				<span class="login">LOGIN</span>
			</div>
			
			<p><input type="checkbox">아이디 저장</p>

			<span class="find">아이디/비밀번호 찾기</span> &nbsp;
			<span class="join">회원가입</span><br/>
			
			<div class="kakao">카카오 로그인</div>
			<div class="naver">네이버 로그인</div>
			
		</div>

	
</div>

</body>
</html>