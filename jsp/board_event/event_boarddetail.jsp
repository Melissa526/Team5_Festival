<%@page import="yatte.board.dto.EventDto"%>
<%@page import="yatte.board.dao.EventDao"%>
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
</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>


<%
	int postnum = Integer.parseInt(request.getParameter("postnum"));
	EventDao dao = new EventDao();
	EventDto dto = dao.selectone(postnum);
%>

	<h1>상세 보기</h1>

	<input type="hidden" name="command" value="delete">
	<table border="1">
		<col width="100">
		<col width="350">


		<tr>
			<th>글번호</th>
			<td><%=dto.getPostnum()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dto.getId()%></td>

		</tr>
		<tr>
			<th>작성일</th>
			<td><%=dto.getToday()%></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><%=dto.getTitle()%></td>
		</tr>
		<tr>
			<th>내 용</th>
			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getContent()%>
						</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="left"><input type="button" value="글 목록"
				onclick="location.href='controller.do?command=selectlist'">
				<input type="button" value="수  정"
				onclick="location.href='controller.do?command=updateform&postnum=<%=dto.getPostnum()%>'">
				<input type="button" value="삭  제"
				onclick="location.href='controller.do?command=delete&postnum=<%=dto.getPostnum()%>'">
				<input type="button" value="답  변"
				onclick="location.href='controller.do?command=answerform&postnum=<%=dto.getPostnum()%>'">
			</td>
		</tr>
	</table>
	
</body>
</html>