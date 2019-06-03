<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#center{
		margin-left: 37%;
	}
	#button1{
		position: relative;
		margin-left: 12%;
	}
	#button2{
		position: relative;
		margin-left: 28%;
	}
</style>
</head>
<body>
	
	<%@ include file="header2.jsp"%>
	
	<div id="center">
	<br/><br/><br/>
	<table>
		<tr>
			<th style="font-size: 25px;">아이디</th>
			<td><input style="height: 30px;" size="35" type="text"/></td>
		</tr>
		<tr>
			<th style="font-size: 25px;">비밀번호</th>
			<td><input style="height: 30px;" size="35" type="password"/></td>
		</tr>
		<tr>
			<th style="font-size: 25px;">이름</th>
			<td><input style="height: 30px;" size="35" type="text"/></td>
		</tr>
		<tr>
			<th style="font-size: 25px;">휴대폰 번호</th>
			<td>
			<input style="height: 30px;" type="text" list="phonelist" size="5">
			<datalist id="phonelist">
				<option value="010">010</option> <option value="011">011</option>
   				<option value="016">016</option> <option value="017">017</option>
    			<option value="018">018</option> <option value="019">019</option>
			</datalist> - <input style="height: 30px;" type="text" size="8"> - <input style="height: 30px;" type="text" size="8">
			</td>
			
		</tr>
		<tr>
			<th style="font-size: 25px;">주소</th>
			<td><input style="height: 30px;" size="35" type="text"></td>
		</tr>
		<tr>
			<th style="font-size: 25px;">이메일</th>
			<td><input style="height: 30px;" type="email"size="7">@
			<input style="height: 30px;" type="text" list="emaillist">
			<datalist id="emaillist">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="nate.com">nate.com</option>
				<option value="nexon.com">nexon.com</option>
			</datalist>
			</td>
		</tr>
	</table>
	<div  id="button1" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
		background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: 21px; " >수   정</div>
		<div  id="button2" style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; line-height: 2.3em; border-radius: 4px;
		background-color: rgb(89, 202, 183); width: 70px; height: 35px; top: -13px; " >취   소</div>
	</div>

</body>
</html>