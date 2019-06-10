<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#center {
	margin-left: 30%;
}
#div1 {
	position: absolute;
	margin-left: -12%;
}

#div2 {
	position: absolute;
	top: 425px;
	margin-left: -12%;
}
#imgdiv{
	margin-left: 3.5%;
	margin-top: -3%;
}
#list{
	top: 30px;
}
#label{
	margin: auto;
}
#festivaldiv{
	margin-left: 18%;
	margin-bottom: 5%;
	margin-top: -8%;
}
#title{
	margin-left: 10%;
	margin-top: -20%;
}
#content{
	margin-left: 10%;
	margin-top: 5%;
}
#tnfid{
	margin-left: 87%;
	margin-top: -12%;
}
#img2{
	margin-top: 10%;
}
#ticketlist{
	margin-left: 60%;
	margin-top: -64%;
}
#sum{
	 margin-top: -3.5%;
}
#sumlabel1{
	margin-left: 3%;
}
#sumlabel2{
	margin-left: 20%;
}
#btn1{
	margin-left: 3%;
	margin-top: 10%;
}
#sum1{
	margin-left: 56%;
}
#sum2{
	margin-left: 46%;
}

</style>
</head>
<body>

	<%@ include file="header.jsp"%>

	<br/><br/><br/><br/>
	<div id="center">

		<div id="div1" style="width: 200px; height: 150px; background-color: rgb(244, 244, 244);
		text-align: center; border: 1px dotted rgb(51, 51, 51);">
			<br />
			<div style="color: red; font-size: 20px;">마이페이지</div>
			<img id="img1" alt="img" src="img/wnf.png"
				style="width: 180px; height: 5px;"> <br />
			<div style="font-size: 16px;">
				정민호님의 현재등급은<br /> FAMILY입니다.
			</div>
			<button
				style="width: 60px; height: 20px; background-color: gray; color: rgb(255, 255, 255); text-align: center; border-radius: 4px; line-height: 1.5em; font-size: 12px;">내정보</button>
			<button
				style="width: 100px; height: 20px; background-color: rgb(89, 202, 183); color: rgb(255, 255, 255); text-align: center; border-radius: 4px; line-height: 1.5em; font-size: 12px;">비밀번호
				변경</button>
		</div>
		<div id="div2" style="width: 200px; height: 250px; background-color: rgb(244, 244, 244);
		text-align: center; border: 1px dotted rgb(51, 51, 51);">
			<div style="font-size: 16px;" style="margin-top: 5%;">
				<div style="margin-top: 5%;">예매 화인·취소</div>
				<div style="margin-top: 5%; text-decoration: underline;" >예매확인</div>
				<div style="margin-top: 5%; text-decoration: underline;">예매취소</div>
				<img id="img1" alt="img" src="img/wnf.png"
					style="width: 180px; height: 5px;"><br />
				<div style="margin-top: 5%;">즐겨찾기</div>
				<div style="margin-top: 5%;">수정·목록·삭제</div>
				<img id="img1" alt="img" src="img/wnf.png"
					style="width: 180px; height: 5px;"><br />
				<div style="margin-top: 5%;">회원탈퇴</div>
			</div>
		</div>
		
		<div id="select" style="width: 181px; background-color: rgb(244, 244, 244);">
			<input type="checkbox" style="width: 15px; height: 15px;"><button style="border: 0px; background-color: rgb(244, 244, 244); ">전체선택</button>
			<input type="checkbox" style="width: 15px; height: 15px;"><button style="border: 0px; background-color: rgb(244, 244, 244); ">선택삭제</button>		
		</div>
		<br/>
		<div id="selectlist" style="width: 750px; height: 850px; background-color: rgb(244, 244, 244);">
			<div id="list" style="font-size: 24px; text-align: center; ">관싱삼품 목록</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 750px; height: 2px;">
			<div id="chkdiv">
				<input id="chk" type="checkbox" style="width: 15px; height: 15px;" />
			</div>
			<div id="imgdiv">
				<img alt="img" src="img/korea.png" style="width: 150px; height: 150px;">
				
			</div>
			<div id="festivaldiv">
				<div id="title" style="width: 450px; background-color: rgb(244, 244, 244);">축제제목</div> 
				<div id="content" style="width: 450px; background-color: rgb(244, 244, 244);">축제내용</div>
			</div>
			<div id="tnfid">
				<button>-</button>
				<input id="tnfid2" type="text" value="1" style="width: 20px; height: 20px; text-align: center; ">
				<button>+</button>
			</div>
			<img id="img2" alt="img" src="img/wnf.png" style="width: 750px; height: 2px;">
		</div>
		<div id="ticketlist" style="width: 350px; height: 400px; background-color: rgb(244, 244, 244);">
			<div style="width: 350px; height: 60px; font-size: 24px;">
			<br/>
				<div id="sum" style="width: 105px; height: 30px;">전체 합계</div>
			</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 340px; height: 2px;">
			<div>
			<br/>
				<label style="font-size: 20px;">티켓 수량</label>
				<label id="sum1" style="font-size: 20px;">10개</label>
				<br/><br/>
				<label style="font-size: 20px;">티켓 금액</label>
				<label id="sum2" style="font-size: 20px;">12,345원</label>
			<br/>
			</div>
			<img id="img1" alt="img" src="img/wnf.png" style="width: 340px; height: 2px;">
			<div>
			<br/>
				<label id="sumlabel1" style="font-size: 24px;">전체 예약금액</label>

				<label id="sumlabel2" style="font-size: 24px;"> 12,345원</label>
			</div>
			<button id="btn1" style="width: 330px; height: 100px; background-color: rgb(255, 192, 203); color: rgb(255, 255, 255); font-size: 30px;">예약하기</button>
		</div>
	</div>

</body>
</html>