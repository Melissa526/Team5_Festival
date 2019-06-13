package hippe.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hippe.board.dao.BoardDao;
import hippe.board.dto.BoardDto;


@WebServlet("/eventController.do")
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BoardDao dao = new BoardDao();
   
    public EventController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		String command = request.getParameter("command");
		System.out.println("[EventBoard] - " + command);
		
		/*------------- 이벤트 게시판 목록 ---------------*/
		if(command.equals("eventlist")) {
			response.sendRedirect("board_event/event_boardlist.jsp");
		/*------------- 이벤트 게시판 글상세 ---------------*/
		} else if(command.equals("eventdetail")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			BoardDto dto = dao.selectone(postnum);
			request.setAttribute("dto", dto);
			dispatch(request, response, "board_event/event_boarddetail.jsp");
		/*------------- 이벤트 게시판 글작성 ---------------*/
		} else if(command.equals("insertform")) {
			response.sendRedirect("board_event/event_boardinsert.jsp");
		} else if(command.equals("insert")) {
			String writer = "관리자";
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			BoardDto dto = new BoardDto();
			dto.setCategory(3);
			dto.setWriter(writer);
			dto.setTitle(title);
			dto.setContent(content);
			
			int res = dao.insert(dto);
			
			if(res>0) {
				jsResponse("[관리자]이벤트 게시글 추가", "memberController.do?command=main", response);
			}
			
		/*------------- 이벤트 게시판 글수정 ---------------*/	
		} else if(command.equals("")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			BoardDto dto = dao.selectone(postnum);
			request.setAttribute("dto", dto);
			dispatch(request, response, "board_event/event_boardupdate.jsp");
		/*------------- 이벤트 게시판 글삭제 ---------------*/	
		} else if(command.equals("delete")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			int res = dao.delete(postnum);
			if(res>0) {
				jsResponse("정상적으로 삭제되었습니다.", "eventController.do?command=eventlist", response);
			}else {
				jsResponse("삭제에 실패했습니다. ", "eventController.do?command=eventlist", response);
			}
		} else if(command.equals("muldel")) {
			
		}
		
		
		
		
	}

	public void dispatch(HttpServletRequest request, HttpServletResponse response, String url)
			throws ServletException, IOException {

		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}

	public void jsResponse(String msg, String url, HttpServletResponse response) throws IOException { // HttpServletResponse -> printwrite out 쓸거니까
	      String res = "<script type='text/javascript'>"
	               +" alert('" + msg + "');"
	               +" location.href='" + url + "';"
	               +"</script>";
	      
	      PrintWriter out = response.getWriter();
	      out.println(res);
	}
	
	
}//class end



