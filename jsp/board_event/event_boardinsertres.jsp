<%@page import="yatte.board.dto.MDBoardDto"%>
<%@page import="yatte.board.dao.MDBoardDao"%>
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

	<%
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		MDBoardDao dao = new MDBoardDao();
		MDBoardDto dto = new MDBoardDto();
		dto.setName(name);
		dto.setPwd(pwd);
		dto.setSubject(subject);
		dto.setContent(content);
		
		int res = dao.insertBoard(dto);
		
		if (res > 0) {
	%>
	<script type="text/javascript">
		alert("글 작성 완료!");
		location.href = "./board_event/event_boardlist.jsp";
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("글 작성 실패ㅠㅠ");
		location.href = "./board_event/event_boardinsert.jsp";
	</script>
	<%
		}
	%>

</body>
</html>