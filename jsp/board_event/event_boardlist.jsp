<%@page import="java.io.Console"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="yatte.board.dao.EventDao"%>
<%@page import="yatte.board.dto.EventDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>


<!-- 페이징  -->
 <%
 
 	EventDao dao = new EventDao();
 
 	String strPg = request.getParameter("pg"); //list.jsp?pg=?
  
     int rowSize = 10; //한페이지에 보여줄 글의 수
     int pg  = 1; //페이지 , list.jsp로 넘어온 경우 , 초기값 =1
    
     if(strPg != null){ //list.jsp?pg=2
    	 pg  = Integer.parseInt(strPg); //.저장
     }
    
    
     int from = (pg  * rowSize) - (rowSize-1); //(1*10)-(10-1)=10-9=1 //from
     int to=(pg  * rowSize); //(1*10) = 10 //to
  	
     List<EventDto> list = dao.selectList(from, to);

     
     int total = dao.getTotal(); //총 게시물 수
     int allPage = (int) Math.ceil(total/(double)rowSize); //페이지수
     //int totalPage = total/rowSize + (total%rowSize==0?0:1);
     int block = 10; //한페이지에 보여줄  범위 << [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] >>
    
    
     System.out.println("전체 페이지수 : "+allPage);
     System.out.println("현제 페이지 : "+ strPg);
     //System.out.println("ceil:"+Math.ceil(total/rowSize));
     //out.println("list="+list);
    
     int fromPage = ((pg -1)/block*block)+1;  //보여줄 페이지의 시작
     int toPage = ((pg -1)/block*block)+block; //보여줄 페이지의 끝
     if(toPage> allPage){ // 예) 20>17
         toPage = allPage;
     }
    
     System.out.println("페이지시작 : "+fromPage+ " / 페이지 끝 :"+toPage);
 %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

<script type="text/javascript">

	$(function() {
		$("#muldelform").submit(function() {
			if ($("#muldelform input:checked").length == 0) {
				alert("삭제할 글을 하나 이상 체크해 주세요");
				return false;
			}
		});

		$("input[name=chk]")
				.click(
						function() {
							if ($("input[name=chk]").length == $("input[name=chk]:checked").length) {
								$("input[name=all]").prop("checked", true);
							} else {
								$("input[name=all]").prop("checked", false);
							}
						});
	})

	function allChk(bool) {
		$("input[name=chk]").each(function() {
			$(this).prop("checked", bool);
		});
	}
	
</script>

<style type="text/css">
.content {
	position: relative;
	margin: 50px;
	border: 1px solid;
	border-color: blue;
	height: 1000px;
}

.table {
	position: absolute;
	text-align: center;
	left: 20%;
	top: 100px;
	width: 1080px;
	height: 500px;
}

.table_board {
	width: 100%;
	max-width: 100%;
	height: 100%;
	border-spacing: 0;
	border-collapse: collapse;
	border: 2px solid #ccc;
	table-layout: fixed;
	border: none;
	border-top: 2px solid #ccc;
	border-bottom: 2px solid #ccc;
}

table.table_board td, table.table_board th, table.table_board a {
	border: none;
	border-bottom: 1px solid #ccc;
	text-align: center;
	font-size: 16px;
	height: 60px;
}

.table th {
	background-color: rgb(237, 237, 237);;
}

.search_tb {
	position: relative;
    top: 30px;
    left: 37%;
}

.keyword {
	left: 157px;
	top: 0px;
	width: 300px;
	height: 42px;
	padding-left: 3px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.keyField {
	top: 0px;
	width: 86px;
	left: 65px;
	height: 41px;
	border: 1px solid #ccc;
	color: #000;
}

.paging {
	position: relative;
	lett: 47%;
}

</style>

</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>

	<form action="/logincontroller" method="post">
		<input type="hidden" name="command" value="search">

		<!-- <form name="search" method="post" action="Board_Event.jsp"> -->

		<table class="search_tb">
			<tr>
				<td align="center" valign="bottom"><select class="keyField"
					name="keyField">
						<option value="title">제목</option>
						<option value="id">이름</option>
						<option value="content">내용</option>
				</select></td>

				<td><input class="keyword" type="text" size="30" name="keyWord"></td>

				<!-- <td><img alt="검색" src="http://cdn2-aka.makeshop.co.kr/design/yeoek/wib2017/sub/cs_sch_icon.jpg" class="btn-submit"></td> -->
	
				<td><input type="submit" value="검색" style="WIDTH: 60px; HEIGHT: 40px"></td>

			</tr>
		</table>
	</form>


	<form action="./event_muldel.jsp" method="post" id="muldelform">
		<div class="content">
			게시판 영역

			<div class="table">
				<table class="table_board">
					<tbody>
					<col width="30" />
					<col width="50" />
					<col width="400" />
					<col width="100" />
					<col width="100" />
					<col width="80" />
					<tr>
						<th><input type="checkbox" name="all"
							onclick="allChk(this.checked)" /></th>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>

					<%
						if (list.size() == 0) {
					%>
					<tr>
						<td colspan="6">---------------------- 글이 존재하지 않습니다 ----------------------</td>
					</tr>
					<%
						} else {
							for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><input type="checkbox" name="chk" value="<%=list.get(i).getPostnum()%>" /></td>
						<td><%=list.get(i).getPostnum()%></td>
						<td><a href="event_boarddetail.jsp?postnum=<%=list.get(i).getPostnum()%>" ><%=list.get(i).getTitle()%></a></td>
						<td><%=list.get(i).getId()%></td>
						<td><%=list.get(i).getToday()%></td>
						<td><%=list.get(i).getHit()%></td>
					</tr>
					<%
						}
						}
					%>
					<tr>
						<td colspan="6" align="right"><input type="button"
							value="글쓰기" onclick="location.href='controller.do?command=insertform'" /> <input
							type="submit" value="선택삭제" /></td>
					</tr>
					</tbody>
				</table>
				<table class = "paging">
<tr>
    <td align="center">
        <%
            if(pg >block){ //처음, 이전 링크
       
        %>
                [<a href="event_boardlist.jsp?pg =1">◀◀</a>]
                [<a href="event_boardlist.jsp?pg =<%=fromPage-1%>">◀</a>]    
        <%     
            }else{
        %>             
                [<span style="color:gray">◀◀</span>]   
                [<span style="color:gray">◀</span>]
        <%
            }
        %>
       
       
        <%
            for(int i=fromPage; i<= toPage; i++){
                if(i==pg ){
        %>         
                    [<%=i%>]
       
        <%     
                }else{
        %>
                    [<a href="event_boardlist.jsp?pg=<%=i%>"><%=i%></a>]
        <%
                }
            }
       
        %>
       
       
        <%
            if(toPage<allPage){ //다음, 이후 링크
       
        %>
                [<a href="event_boardlist.jsp?pg =<%=toPage+1%>">▶</a>]
                [<a href="event_boardlist.jsp?pg =<%=allPage%>">▶▶</a>]
                       
        <%     
            }else{
        %>             
                   
                [<span style="color:gray">▶</span>]
                [<span style="color:gray">▶▶</span>]
        <%
            }
        
        
        %>
       
       
    </td>
</tr>
</table>
				
			</div>
		</div>
	</form>


</body>
</html>