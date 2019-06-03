<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.test.lock.Validation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
	#btnClose{
	width: 150px;
	height: 50px;
	font-size: 17px;
	color: rgb(255, 255, 255);
	text-align : center;
	line-height: 3.3em;
	border-radius: 4px;
	background-color: rgb(240, 125, 123);
	cursor: pointer;
	}
</style>
<body>
<%
	String member_id = request.getParameter("id");
	int res = Validation.idValidation(member_id);
	System.out.println("[아이디 중복체크] 입력한 ID : " + member_id+" / 검사결과 : " + res);

	//[결과] : 사용가능(1) 사용중(-1) 유효성검사실패(0)
	switch(res){
		case 1: 									%>
			<h3>사용하실수 있는 아이디입니다.</h3>
<%			break;
	 	case -1:									%>
			<h3>이미 사용중인 아이디입니다.</h3>
<% 			break;
	 	default:									%>
			<h3>통신오류<br>다시 시도해주세요</h3>
<%			break;
	}												%>
	<div id="btnClose" onclick="window.close()">확 인</div>
</body>
</html>