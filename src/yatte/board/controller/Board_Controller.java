package yatte.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yatte.board.dao.EventDao;
import yatte.board.dto.EventDto;

@WebServlet("/controller.do")
public class Board_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Board_Controller() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		EventDao dao = new EventDao();

		String command = request.getParameter("command");
		System.out.printf("[%s]\n", command);

		if (command.equals("selectlist")) {
			response.sendRedirect("board_event/event_boardlist.jsp");
			
			

		}else if(command.equals("selectone")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			System.out.println(postnum);
			
			EventDto dto = dao.selectone(postnum);
			
			request.setAttribute("dto", dto);
			dispatch(request,response,"event_boarddetail.jsp");
			
		}else if(command.equals("insertform")) {
			response.sendRedirect("event_boardinsert.jsp");
			
		}else if(command.equals("insert")) {
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
				
			EventDto dto = new EventDto();
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);
			
			int res = dao.insert(dto);
			
			 if(res >0 ) {
		            jsResponse("글 작성 성공", "controller.do?command=selectlist", response);
		         }else {
		            jsResponse("글 작성 실패", "controller.do?command=insertform", response);
		         }
		}else if(command.equals("delete")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			EventDto dto = new EventDto();
			dto.setPostnum(postnum);
			
			int res = dao.delete(dto);
			
			 if(res >0 ) {
		            jsResponse("삭제 완료", "controller.do?command=selectlist", response);
		         }else {
		            jsResponse("삭제 실패", "controller.do?command=selectlist", response);
		         }
			 
		}else if(command.equals("updateform")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			System.out.println(postnum);
			
			EventDto dto = dao.selectone(postnum);
			
			request.setAttribute("dto", dto);
			dispatch(request,response,"event_boardupdate.jsp");
			
		}else if(command.equals("update")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			System.out.println(postnum+" "+title+" "+" "+content);
			
			EventDto dto = new EventDto();
			
			dto.setPostnum(postnum);
			dto.setTitle(title);
			dto.setContent(content);
			
			int res = dao.update(dto);
			 if(res >0 ) {
		            jsResponse("수정 성공", "controller.do?command=selectlist", response);
		         }else {
		            jsResponse("수정 실패", "controller.do?command=selectlist", response);
		         }
		}else if(command.equals("answerform")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			EventDto dto = dao.selectone(postnum);
			System.out.println(postnum+"포스트넘 확인");
			request.setAttribute("dto", dto);
			System.out.println(postnum +"포스트넘 확인1");
			dispatch(request,response,"board_event/event_boardanswer.jsp");
		}else if(command.equals("answer")) {

			int postnum = Integer.parseInt(request.getParameter("postnum"));
			String title = request.getParameter("title");
			String id = request.getParameter("id");
			String content = request.getParameter("content");
				
			EventDto dto = new EventDto();
			
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setPostnum(postnum);
			
			int res = dao.answer(dto);
			if(res > 0) {
			jsResponse("작성되었습니다", "controller.do?command=selectlist", response);
			}else {
			jsResponse("실패 했습니다", "controller.do?command=selectone&postnum="+postnum, response);
				
			}
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

}
