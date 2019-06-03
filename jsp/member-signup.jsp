<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.test.mail.SMTPMail"%>
<%@page import="com.test.lock.VerifyCode"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
</head>
<style type="text/css">
#center {
	position: relative;
	left : 30%;
}
#btnCancle {
	position: absolute;
	width: 200px;
	height: 50px;
	font-size: 17px;
	color: rgb(64, 64, 64);
	text-align: center;
	line-height: 3.7em;
	border-radius: 4px;
	background-color: rgb(224, 224, 224);
	cursor: pointer;
}
#btnJoin {
	position: absolute;
	width: 200px;
	height: 50px;
	margin-left: 15%;
	font-size: 17px;
	color: rgb(255, 255, 255);
	line-height: 3.7em;
	border-radius: 4px;
	background-color: rgb(89, 202, 183);
	cursor: pointer;
}
#idChkBtn {
	color: rgb(255, 255, 255);
	background-color: rgb(89, 202, 183);
}
.btnSendVerify {
	color: rgb(255, 255, 255);
	background-color: rgb(89, 202, 183);
}
.btnCheckVerify {
	color: rgb(255, 255, 255);
	background-color: rgb(240, 125, 123);
}
#errorMsg{
	font-size:10pt;
	color:red;
	text-align: center;
}
#msg-emailVerify{
	font-size:10pt;
	color:red;
	text-align: center;
}
.btnDiv{
	font-size: 13px;
	text-align: center;
	cursor: pointer;
	border-radius: 0.5em 0.5em 0.5em 0.5em;
	width : 7em;
	height : 2em;
}
.div_law{
	border: 0.5px solid gray;
	width : 420px;
	height: 100px; 
	font-size: 12px;
	overflow: auto;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	var confId;
	var confEmail;
	
	/* ONLOAD FUNCTION */
	$(function() {
		/* 전체동의 액션 */
		$("#allChk").click(function() {
			//전체선택
			if ($("#allChk").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
				//전체선택 해제
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		});

		/* 비밀번호 재확인 */
		$("#pwChk").change(function(){
			if($("#pwChk").val() != $("input[name=member_pw]").val()){
				$("#errorMsg").html("비밀번호가 일치하지 않습니다.");
			}else{
				$("#errorMsg").html("");
			}
		});
		
		/* 아이디 중복확인 */
		$("#idChkBtn").click(function(){
			url = "idvalidation.jsp?id=" + $("#member_id").val();
			open(url, "아이디 중복체크", "toolbar=no, resizable=no, location=no, width=300px, height=300px");
			confId = true;
		});
		

	});
	
	/* 인증코드 전송 */
	function sendVerifyCode(){
		var userEmail = $("input[name=email_id]").val() +"@"+ $("[name=email_addr]").val();
		alert("전송할 주소 : " + userEmail);
		$.ajax({
			type : 'POST',
			url : "mailController.do?command=sendEmail&email="+userEmail,
			success : function(result){
				alert("전송한 코드 : " + result);
				$("input[name=emailCode]").change(function(){
					if(result == $("input[name=emailCode]").val()){
						$("#msg-emailVerify").html("인증확인");
						confEmail = true;
					}else{
						$("#msg-emailVerify").html("인증번호 오류");
						confEmail = false;
					}
				});
			},error : function(){
				
			}
		});
	}


	/* SUBMIT 버튼액션 */
	function sumbitForm() {
		if (confId== true) {
			if(confEmail== true){
				if(($("#SignLawChk").is(":checked")&&$("#PersonalInfowChk").is(":checked")) == true){
					$("#welcomeMember").submit();
				}else{
					alert("약관동의를 확인해주세요.");
					$("#SignLawChk").focus();
				}
			}else{
				alert("이메일 인증을 해주세요.");
				$("input[name=email_id]").focus();
			}
		} else {
			alert("아이디 중복확인을 해주세요");
			$("#member_id").focus();
		}
	}

	/* CANCLE 버튼액션 */
	function cancleJoin() {
		var conf = confirm("정말로 돌아가시겠습니까? 입력하신 정보는 저장되지 않습니다.");
		if (conf) {
			location.href = 'controller.do?command=main';
		}
	}
</script>
<body>

	<%@include file="header.jsp"%>

	<div id="center">
		<br/> <br/> <br/>
		<form action="controller.do" method="get" id="welcomeMember">
			<input type="hidden" name="command" value="signUp">
			<table>
				<col width="150px">
				<col width="200px">
				<col width="300px">
				<tr>
					<td>아이디</td>
					<td><input type="text" id="member_id" name="member_id" /></td>
					<td><input type="button" id="idChkBtn" class="btnDiv" value="중복확인"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" placeholder="8자이상으로 입력해주세요"	name="member_pw"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" placeholder="비밀번호를 다시 입력해주세요"	id="pwChk"></td>
					<td><label id="errorMsg"></label></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="member_name"></td>
				</tr>
				<tr>
					<td>휴대폰 번호</td>
					<td>
					<select id="phonelist" name="phone_start">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					</select>
					<label>-</label> 
					<input type="text" size="2.5" name="phone_mid">
					<label>-</label>
					<input type="text" size="2.5" name="phone_end">
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="member_address"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
					<input type="text" size="4" name="email_id"> @ 
					<select name="email_addr">
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
							<option value="nexon.com">nexon.com</option>
							<option value="직접입력"></option>
					</select>
					</td>
					<td><div class="btnSendVerify btnDiv" onclick="sendVerifyCode()">인증번호전송</div></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="text" name="emailCode"></td>
					<td><label id="msg-emailVerify"></label></td>
			</table>
			
			<br /> 
			<div id="LawOfSignup">
				<input type="checkbox" id="SignLawChk" />이용약관 동의(필수)<br />
				<div class="div_law">하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생</div><br /> <br /> 
				<input type="checkbox" id="PersonalInfowChk" />개인정보 수집 및 이용에 관한 동의(필수)<br />
				<div class="div_law">하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생</div><br /> <br /> 
				<input type="checkbox" id="AdsChk" />광고성 메일수신 정보제공동의(선택)<br />
				<div class="div_law">하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생</div><br /> 
				<input type="checkbox" id="allChk"/><label>전체동의</label>
			</div>
			<br>
			<div id="btnCancle" class="btnDiv" onclick="cancleJoin()">CANCLE</div>
			<div id="btnJoin" class="btnDiv" onclick="sumbitForm()">JOIN</div>
		</form>
	</div>
	<br><br><br><br><br>
</body>
</html>