<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.all_content {
	border: 1px solid;
	border-color: blue;
	height: 800px;
}

div .pic{
	width: 250px;
	height: 200px;
	border: 1px dotted;
	border-color: red;
}
div .content{
	width: 250px;
	height: 200px;
	border: 1px dotted;
	border-color: red;
}


.write {
	font-size: 16px;
	color: rgb(255, 255, 255);
	text-align: center;
	line-height: 2.5em;
	border-radius: 4px;
	background-color: rgb(89, 202, 183);
	position: absolute;
	left: 75%;
	width: 174px;
	height: 40px;
}

.piccontent1{
	position: absolute;
	top: 250px;
	left: 10%;
}

.piccontent2{
	position: absolute;
	top: 250px;
	left: 30%;
}

.piccontent3{
	position: absolute;
	top: 250px;
	left: 50%;
}

.piccontent4{
	position: absolute;
	top: 250px;
	left: 70%;
}

</style>

</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>

	<div class="all_content">
		게시글 영역

		<div class="write">후기작성하기</div>

		<div class="piccontent1">
			<div class="pic">사진1</div>
			<div class="content">
				(글1)
				<table>
					<tr>
						<th>피는 끓는다</th>
					</tr>
					<tr>
						<td>있는가? 우리 눈이 그것을 보는 때에 우리의 귀는</td>
					</tr>
				</table>
			</div>
			
		</div>
		<div class="piccontent2">
			<div class="pic">사진2</div>
			<div class="content">
				(글2)
				<table>
					<tr>
						<th>봄바람이다 인생에</th>
					</tr>
					<tr>
						<td>그들은 앞이 긴지라 착목한는 곳이</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="piccontent3">
			<div class="pic">사진3</div>
			<div class="content">
				(글3)
				<table>
					<tr>
						<th>피가 뜨거운지라</th>
					</tr>
					<tr>
						<td>모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="piccontent4">
			<div class="pic">사진4</div>
			<div class="content">
				(글4)
				<table>
					<tr>
						<th>피가 뜨거운지라</th>
					</tr>
					<tr>
						<td>모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간</td>
					</tr>
				</table>
			</div>
		</div>

	</div>


</body>
</html>