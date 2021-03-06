package hippe.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hippe.board.dao.BoardDao;
import hippe.board.dto.BoardDto;

@WebServlet("/freeController.do")
public class FreeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BoardDao dao = new BoardDao();
	int category = 1;				//자유게시판의 카테고리 번호는 1

	public FreeController() {
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


		String command = request.getParameter("command");
		System.out.printf("[FreeBoard] - %s\n", command);

		if (command.equals("list")) {
			int category = 1; 					
			List<BoardDto> list = dao.selectList(category);
			request.setAttribute("list", list);
			dispatch(request, response, "board_free/free_selectlist.jsp");

		}else if(command.equals("selectone")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			System.out.println(postnum);
			
			BoardDto dto = dao.selectone(postnum);
			
			request.setAttribute("dto", dto);
			dispatch(request,response,"board_free/free_detail.jsp");
		}else if(command.equals("insertform")) {
			response.sendRedirect("board_free/free_insert.jsp");
		}else if(command.equals("insert")) {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
				
			BoardDto dto = new BoardDto();
			dto.setWriter("스마트에디터");
			dto.setTitle(title);
			dto.setContent(content);
			
			int res = dao.insert(dto);
			
			 if(res >0 ) {
		            jsResponse("글 작성 성공", "freeController.do?command=selectlist", response);
		         }else {
		            jsResponse("글 작성 실패", "freeController.do?command=insertform", response);
		         }
		}else if(command.equals("delete")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			int res = dao.delete(postnum);
			
			 if(res >0 ) {
		            jsResponse("삭제 완료", "freeController.do?command=selectlist", response);
		         }else {
		            jsResponse("삭제 실패", "freeController.do?command=selectlist", response);
		         }
		}else if(command.equals("updateform")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			System.out.println(postnum);
			
			BoardDto dto = dao.selectone(postnum);
			
			request.setAttribute("dto", dto);
			dispatch(request,response,"board_free/free_update.jsp");
		}else if(command.equals("update")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			System.out.println(postnum+" "+title+" "+" "+content);
			
			BoardDto dto = new BoardDto();
			
			dto.setPostnum(postnum);
			dto.setTitle(title);
			dto.setContent(content);
			
			int res = dao.update(dto);
			 if(res >0 ) {
		            jsResponse("수정 성공", "freeController.do?command=selectlist", response);
		         }else {
		            jsResponse("수정 실패", "freeController.do?command=selectlist", response);
		         }
		}else if(command.equals("answerform")) {
			int postnum = Integer.parseInt(request.getParameter("postnum"));
			BoardDto dto = dao.selectone(postnum);
			System.out.println(postnum+"포스트넘 확인");
			request.setAttribute("dto", dto);
			System.out.println(postnum +"포스트넘 확인1");
			dispatch(request,response,"board_free/free_answer.jsp");
		}else if(command.equals("answer")) {

			int postnum = Integer.parseInt(request.getParameter("postnum"));
			String title = request.getParameter("title");
			String writer = request.getParameter("writer");
			String content = request.getParameter("content");
				
			BoardDto dto = new BoardDto();
			
			dto.setWriter(writer);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setPostnum(postnum);
			
			int res = dao.answer(dto);
			if(res > 0) {
			jsResponse("작성되었습니다", "freeController.do?command=selectlist", response);
			}else {
			jsResponse("실패 했습니다", "freeController.do?command=selectone&postnum="+postnum, response);
				
			}
		} else if(command.equals("review")) {
			response.sendRedirect("board_review/board_review.jsp");
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
