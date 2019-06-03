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
	int seq = Integer.parseInt(request.getParameter("seq"));
	MDBoardDao dao = new MDBoardDao();
	int res = dao.delete(seq);
	
	if(res > 0){
%>

<script type="text/javascript">
	alert("삭제 되었습니다.");
	location.href="./board_event/event_boardlist.jsp";
</script>

<%
	}else{
%>
<script type="text/javascript">
	alert("삭제 실패!");
	location.href="./board_event/event_boarddetail.jsp?seq=<%=seq%>";
</script>
<%
	}
%>
</body>
</html>