<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="height=device-height, initial-scale=1">
<title>야때(Yatte!) - 자유게시판</title>
</head>
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
</head>
<body>
<%@ include file="../common/hippe_header.jsp" %>

		<jsp:useBean id="dto" class="hippe.board.dto.BoardDto" scope="request"></jsp:useBean>
	
		<input type="hidden" name="command" value="delete">
		<table border="1">
			<col width = "100">
			<col width = "350">
	
			
			<tr>
				<th>글번호</th>
				<td><jsp:getProperty property="postnum" name="dto" /></td>
			</tr>
			<tr>	
				<th>작성자</th>
				<td><jsp:getProperty property="writer" name="dto"/></td>
				
			</tr>
			<tr>
				<th>작성일</th>
				<td><jsp:getProperty property="regdate" name="dto"/></td>
			</tr>
			<tr>
				<th>제 목</th>
				<td><jsp:getProperty property="title" name="dto"/></td>
			</tr>
			<tr>
				<th>내 용</th>
					<td>
						<textarea rows="10" cols="60" readonly="readonly"><jsp:getProperty property="content" name="dto"/>
						</textarea>
					</td>
			</tr>
			<tr>
				<td colspan="2" align="left">
					<input type="button" value="글 목록" onclick="location.href='freeController.do?command=selectlist'" >
					<input type="button" value="수  정" onclick="location.href='freeController.do?command=updateform&postnum=<jsp:getProperty property="postnum" name="dto"/>'">
					<input type="button" value="삭  제" onclick="location.href='freeController.do?command=delete&postnum=<jsp:getProperty property="postnum" name="dto"/>'">
					<input type="button" value="답  변" onclick="location.href='freeController.do?command=answerform&postnum=<jsp:getProperty property="postnum" name="dto"/>'">
				</td> 
			</tr>		
		</table>

		
</body>
</html>