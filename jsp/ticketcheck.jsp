<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#center {
		margin-left: 30%;
	}

	#button {
		margin-top: 20px;
		margin-bottom: 20px;
	}
	#radio{
		margin-left: 50%;
	}
	table{
		border: none;
	}
	td{
		border-bottom: 1px solid #ccc;
	}
	#div1{
		position: absolute;
		margin-left: -12%;
	}
	 #div2{
		position: absolute;
		top: 425px;
		margin-left: -12%;
	}
	#img1{
		margin-left: 2.5%;
	}
    button{
    	margin-top: 3%;
    }
</style>

</head>
<body>

	<%@ include file="header.jsp"%>

	<br/><br/><br/><br/>
	<div id="center">
		
		<div id="div1" style=" width: 200px; height: 150px; background-color: rgb(244, 244, 244); text-align: center;">
			<br/>
			<div style="color: red; font-size: 20px;">마이페이지</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 180px; height: 5px;">
			<br/>
			<div style="font-size: 16px;">
				정민호님의 현재등급은<br/>
				FAMILY입니다.
			</div>
			<button style="width: 60px; height: 20px; background-color: gray; color:rgb(255, 255, 255);
			 text-align: center; border-radius: 4px; line-height: 1.5em; font-size: 12px;">내정보</button>
			<button style="width: 100px; height: 20px; background-color: rgb(89, 202, 183); color: rgb(255, 255, 255);
			 text-align: center; border-radius: 4px; line-height: 1.5em; font-size: 12px;">비밀번호 변경</button>
		
		
		</div>
		<div id="div2" style="width: 200px; height: 250px; background-color: rgb(244, 244, 244); text-align: center; ">
			<div style="font-size: 16px;" style="margin-top: 5%;">
				<div style="margin-top: 5%;">예매 화인·취소</div>
					<div style="margin-top: 5%;">예매확인</div>
					<div style="margin-top: 5%;">예매취소</div>	
				<img id="img1" alt="img" src="img/wnf.png" style="width: 180px; height: 5px;"><br/>
				<div style="margin-top: 5%;">즐겨찾기</div>
				<div style="margin-top: 5%;">수정·목록·삭제</div>
				<img id="img1" alt="img" src="img/wnf.png" style="width: 180px; height: 5px;"><br/>
				<div style="margin-top: 5%;">회원탈퇴</div>				
			</div>
		</div>
	
		<div
			style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51); height: 60px; width: 935px; text-align: center; vertical-align: center;">

			<div style="font-size: 16px; margin: auto;">
				조회기간선택
				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">7일</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">15일</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">1개월</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">5개월</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">1년</button>

				<label>주문일자별</label> <input type="text"
					style="width: 100px; height: 30px;"> <input type="text"
					style="width: 100px; height: 30px;"> <input type="text"
					style="width: 100px; height: 30px;">

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(240, 123, 125); width: 60px; height: 26px;">확인</button>

			</div>
		</div>
	
		<br/>

		<input id="radio" type="radio" style="width: 20px; height: 20px;"> 전체
		<input type="radio" style="width: 20px; height: 20px;"> 예약
		<input type="radio" style="width: 20px; height: 20px;"> 취소

		<br/><br/>
		
		<table>
			<tbody>
				<tr align="center" style="background-color: skyblue;">
					<th style="width: 135px; height: 45px;">&nbsp;예메일</th>
					<th style="width: 135px; height: 45px;">&nbsp;예매번호</th>
					<th style="width: 239px; height: 45px;">&nbsp;상품명</th>
					<th style="width: 135px; height: 45px;">&nbsp;이용일/매수</th>
					<th style="width: 136px; height: 45px;">&nbsp;취소 가능 여부</th>
					<th style="width: 136px; height: 45px;">&nbsp;현재상태</th>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;예매일</td>
					<td style="width: 135px; height: 45px;">&nbsp;예매번호</td>
					<td style="width: 239px; height: 45px;">&nbsp;상품명</td>
					<td style="width: 135px; height: 45px;">&nbsp;이용일/매수</td>
					<td style="width: 136px; height: 45px;">&nbsp;취소 가능 여부</td>
					<td style="width: 136px; height: 45px;">&nbsp;현재상태</td>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;예매일</td>
					<td style="width: 135px; height: 45px;">&nbsp;예매번호</td>
					<td style="width: 239px; height: 45px;">&nbsp;상품명</td>
					<td style="width: 135px; height: 45px;">&nbsp;이용일/매수</td>
					<td style="width: 136px; height: 45px;">&nbsp;취소 가능 여부</td>
					<td style="width: 136px; height: 45px;">&nbsp;현재상태</td>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;예매일</td>
					<td style="width: 135px; height: 45px;">&nbsp;예매번호</td>
					<td style="width: 239px; height: 45px;">&nbsp;상품명</td>
					<td style="width: 135px; height: 45px;">&nbsp;이용일/매수</td>
					<td style="width: 136px; height: 45px;">&nbsp;취소 가능 여부</td>
					<td style="width: 136px; height: 45px;">&nbsp;현재상태</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>

