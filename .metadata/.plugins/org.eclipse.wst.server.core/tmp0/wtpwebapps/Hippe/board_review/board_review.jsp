<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hippe.board.dao.BoardDao"%>
<%@ page import="hippe.board.dto.BoardDto"%>
<%@ page import="java.util.List"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="height=device-height, initial-scale=1">
<title>Hippe || 대한민국 가장 힙한 페스티벌, 히페 :: 이벤트 ::</title>
<link href="../resources/css/board_review.css" rel="stylesheet" type="text/css">
<!--booststrap-->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<!--//booststrap end-->
<!-- font-awesome icons -->
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="../resources/css/style.css" rel='stylesheet' type='text/css' media="all">
<!--//stylesheets-->
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:400,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Libre+Franklin:400,500" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
</head>
<body>
	<!-- Header  -->
	<jsp:include page="../common/hippe_header.jsp"></jsp:include>

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