<%@page import="hippe.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] num = request.getParameterValues("chk");

		if (num == null || num.length == 0) {
	%>
	<script type="text/javascript">
		alert("삭제할 글을 하나 이상 체크해 주세요!!");
		location.href = "./board_event/event_boardlist.jsp";
	</script>
	<%
		} else {
			BoardDao dao = new BoardDao();
			int res = dao.multiDelete(num);
			if (res > 0) {
	%>
	<script type="text/javascript">
		alert("체크된 글 삭제에 성공하였습니다.");
		location.href = "./board_event/event_boardlist.jsp";
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("삭제에 실패하였습니다.");
		location.href = "./board_event/event_boardlist.jsp";
	</script>
	<%
		}
		}
	%>
</body>
</html>