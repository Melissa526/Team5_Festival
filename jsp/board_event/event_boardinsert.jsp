<%@page import="yatte.board.dto.MDBoardDto"%>
<%@page import="yatte.board.dao.MDBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

%>

	<jsp:include page="/header.jsp"></jsp:include>
	
	<form action ="./board_event/event_boardinsertres.jsp" method="post">
	
	<div class="subject">
				<span>이벤트 작성하기</span>
	</div>
				
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<th>제   목</th>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<th>내   용</th>
				<td><textarea rows="10" cols="60" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="작성">
				<input type="button" value="취소" onclick="location.href='./board_event/event_boardlist.jsp'"></td>
			</tr>
		</table>
	</form>


</body>
</html>