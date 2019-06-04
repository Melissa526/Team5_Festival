<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#center {
	margin-left: 25%;
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

    
</style>

</head>
<body>

	<%@ include file="header2.jsp"%>

	<br/><br/><br/><br/><br/>
	<div id="center">
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

