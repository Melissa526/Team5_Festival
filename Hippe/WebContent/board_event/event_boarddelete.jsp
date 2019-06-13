<%@page import="hippe.board.dto.BoardDto"%>
<%@page import="hippe.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	int postnum = Integer.parseInt(request.getParameter("postnum"));
	BoardDao dao = new BoardDao();
	int res = dao.delete(postnum);
	
	if(res > 0){
%>
<script type="text/javascript">
	
</script>
<%
	}else{
%>
<script type="text/javascript">
	alert("삭제 실패!");
	location.href="eventController.do?commmand=eventdetail&postnum=<%=postnum%>";
</script>
<%	}											%>
</body>
</html>