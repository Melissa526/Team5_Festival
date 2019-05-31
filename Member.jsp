<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
	#center{
		margin-left: 37%;
	}
	#cancle{
		position : absolute;
		width: 200px;
		height: 50px;
	}
	#join2{
		position : absolute;
		width: 200px;
		height: 50px;
		margin-left: 15%;
	}
	#wndqhr{
		/* margin-left: -75%; */
	}
</style>
</head>
<body>	

	<%@ include file="header.jsp"%>
	
	<div id="center">
	<br/><br/><br/>
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" placeholder="내용을 입력해주세요"/></td>
			<td><input type="button" id="wndqhr"
			value="중복확인" style="font-size: 15px; color: rgb(255, 255, 255); text-align: center; 
			background-color: rgb(89, 202, 183); size: "10"; "></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" placeholder="내용을 입력해주세요"></td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td><input type="password" placeholder="내용을 입력해주세요"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" placeholder="내용을 입력해주세요"></td>
		</tr>
		<tr>
			<th>휴대폰 번호</th>
			<td>
			<input type="text" list="phonelist" size="2.5">
			<datalist id="phonelist">
				<option value="010">010</option> <option value="011">011</option>
   				<option value="016">016</option> <option value="017">017</option>
    			<option value="018">018</option> <option value="019">019</option>
			</datalist> - <input type="text" placeholder="내용을" size="2.5"> - <input type="text" placeholder="입력해주세요" size="2.5">
			</td>
			
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" placeholder="내용을 입력해주세요"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" placeholder="내용을 입력해주세요" size="4">@
			<input type="text" list="emaillist">
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
	<br/>
	<input type="checkbox"  name="chk" />이용약관 동의(필수)<br/>
		<textarea rows="10" cols="60">하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생</textarea><br/>
	<br/>
	<input type="checkbox"  name="chk" />광고성 메일수신 정보제공 동의(선택)<br/>
		<textarea rows="10" cols="60">하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생</textarea><br/>
	<input type="checkbox"  name="all" onclick="allchk(this.checked)"/>전체동의
	<br/>
	<div id="cancle" data-text-content="true" onclick="location.href='main.jsp'" style="font-size: 16px; color: rgb(64, 64, 64); text-align: center; line-height: 3.7em; border-radius: 4px; background-color: rgb(224, 224, 224);" >CANCLE</div>
	<div id="join2" data-text-content="true" onclick="location.href=Login.jsp'" style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183);" >JOIN</div>
	<br/>
	</div>
	
</body>
</html>