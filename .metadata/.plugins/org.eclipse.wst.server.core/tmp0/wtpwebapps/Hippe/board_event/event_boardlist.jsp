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
<link href="../resources/css/event_style.css" rel="stylesheet" type="text/css">
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
<script type="text/javascript">
	$(function(){
		$("#muldelform").submit(function() {
			if ($("#muldelform input:checked").length == 0) {
				alert("삭제할 글을 하나 이상 체크해 주세요");
				return false;
			}
		});

		$("input[name=chk]").click(function() {
			if ($("input[name=chk]").length == $("input[name=chk]:checked").length) {
				$("input[name=all]").prop("checked", true);
			} else {
				$("input[name=all]").prop("checked", false);
			}
		});
<%		BoardDao dao = new BoardDao();		%>
	});

	function allChk(bool) {
		$("input[name=chk]").each(function() {
			$(this).prop("checked", bool);
		});
	}
</script>
</head>
<!-- 페이징  -->
<body>
<script type="text/javascript">
<%		

String strPg = request.getParameter("pg"); //list.jsp?pg=?

int rowSize = 10; //한페이지에 보여줄 글의 수
int pg = 1; //페이지 , list.jsp로 넘어온 경우 , 초기값 =1
if (strPg != null) { //list.jsp?pg=2
	pg = Integer.parseInt(strPg); //.저장
}
int from = (pg * rowSize) - (rowSize - 1); //(1*10)-(10-1)=10-9=1 //Begin Page
int to = (pg * rowSize); //(1*10) = 10 //End page
List<BoardDto> list = dao.selectListWithPaging(3, from, to);

int total = dao.getTotal(3); //총 게시물 수
int allPage = (int) Math.ceil(total / (double) rowSize); //페이지수
int block = 10; //한페이지에 보여줄  범위 << [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] >>

System.out.println("[전체 페이지수] : " + allPage);
System.out.println("[현제 페이지] : " + strPg);

int fromPage = ((pg - 1) / block * block) + 1; //보여줄 페이지의 시작
int toPage = ((pg - 1) / block * block) + block; //보여줄 페이지의 끝
if (toPage > allPage) { // 예) 20>17
	toPage = allPage;
}
System.out.println("* 페이지시작 : " + fromPage + " / 페이지 끝 :" + toPage);	   

%>
</script>
	<jsp:include page="../common/hippe_header.jsp"></jsp:include>

	<div class="div_top_title">
		<h5 class="top-title mb-lg-4 mb-3 text-center">EVENTS</h5>
		<h3 class="title mb-lg-5 mb-md-4 mb-sm-4 mb-3 text-center">Hippe의 다양한 이벤트에 참여해보세요!</h3>
	</div>

	<div class="div_top_search">
		<form action="/logincontroller" method="post">
			<input type="hidden" name="command" value="search">
			<table class="search_tb">
				<tr>
					<td align="center" valign="bottom"><select class="keyField" name="keyField">
							<option value="title">제목</option>
							<option value="writer">이름</option>
							<option value="content">내용</option>
					</select></td>
					<td><input class="keyword" type="text" size="30" name="keyWord"></td>
					<td><input type="submit" value="검색" id="btnSearch"></td>
				</tr>
			</table>
		</form>
	</div>

	<div class="content">
		<form action="./event_muldel.jsp" method="post" id="muldelform">
		<input type="hidden" name="command" value="muldel">
			<div class="table">
				<table class="table_board">
					<col width="30" />
					<col width="50" />
					<col width="400" />
					<col width="100" />
					<col width="100" />
					<col width="80" />
					<tbody>
						<tr>
							<th><input type="checkbox" name="all" onclick="allChk(this.checked)" /></th>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>

						<% if (list.size() == 0) {%>
						<tr>
							<td colspan="6">---------------------- 게시글이 존재하지 않습니다----------------------</td>
						</tr>
						<% } else {
								for (int i = 0; i < list.size(); i++) {		%>
						<tr>
							<td><input type="checkbox" name="chk" value="<%=list.get(i).getPostnum()%>" /></td>
							<td><%=list.get(i).getPostnum()%></td>
							<td><a href="../eventController.do?command=eventdetail&postnum=<%=list.get(i).getPostnum()%>"><%=list.get(i).getTitle()%></a></td>
							<td><%=list.get(i).getWriter()%></td>
							<td><%=list.get(i).getRegdate()%></td>
							<td><%=list.get(i).getViews()%></td>
						</tr>
						<%		 }
							}												%>
					</tbody>
				</table>
				<div class="div_btn">
					<input id="btnWrite" type="button" value="글쓰기" onclick="location.href='../eventController.do?command=insertform'" />
					<input id="btnSelectDelete"type="submit" value="선택삭제" />
				</div>
				<div class="paging">
					<table>
						<tr>
							<td align="center">
							<% if (pg > block) { //처음, 이전 링크%> 
							  [<a href="event_boardlist.jsp?pg=1">◀◀</a>] 
							  [<a href="event_boardlist.jsp?pg=<%=fromPage - 1%>">◀</a>] 
							<% } else { %> 
							[<span style="color: gray" href="#">◀◀</span>] 
							[<span style="color: gray" href="#">◀</span>] 
							<% } %> 
							<% for (int i = fromPage; i <= toPage; i++) {
	 								if (i == pg) {				%> 
	 								[<%=i%>] 
	 						<%		} else {					%> 
	 								[<a href="event_boardlist.jsp?pg=<%=i%>"><%=i%></a>] 
	 						<%		}
	 							}								%>
							
	 						<% if (toPage < allPage) { //다음, 이후 링크			%> 
	 							[<a href="event_boardlist.jsp?pg=<%=toPage + 1%>">▶</a>] 
	 							[<a href="event_boardlist.jsp?pg=<%=allPage%>">▶▶</a>] 
	 						<% } else { %> 
	 							[<span style="color: gray" href="#">▶</span>] 
	 							[<span style="color: gray" href="#">▶▶</span>]
							<% }									%>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>

	
	<!--  footer -->
   <%--  <jsp:include page="../common/hippe_footer.jsp"></jsp:include> --%>
	
</body>
</html>