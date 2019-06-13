package hippe.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/festivalController.do")
public class FestivalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FestivalController() {
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
		System.out.println("[Festival] - " + command);
		
		/* 축제 게시판으로 이동 */
		if(command.equals("list")) {
			response.sendRedirect("board_festival/festival_information.jsp");
		/* 축제정보 리스트업 */
		}else if(command.equals("listup")) {
			String region = request.getParameter("region");
			
			response.getWriter().write(1);
			
		}else if(command.equals("ticketbox")) {
			response.sendRedirect("board_reservation/ticket_reserve.jsp");
		}
		
	
	}

	public void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}
	
}
