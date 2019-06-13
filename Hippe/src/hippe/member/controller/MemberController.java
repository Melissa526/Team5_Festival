package hippe.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hippe.func.lock.Sha256Encryption;
import hippe.member.dao.MemberDao;
import hippe.member.dto.MemberDto;

@WebServlet("/memberController.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		MemberDao dao = new MemberDao();
		HttpSession session = request.getSession();
		
		String command = request.getParameter("command");
		System.out.println("[Member] - " +command);
		
		/*--------------- 메인화면 --------------*/
		if(command.equals("main")) {
			response.sendRedirect("hippe_main/hippe_main.jsp");
		} else if(command.equals("signupBtn")) {
			response.sendRedirect("board_member/member_signup.jsp");
		/*--------------- 로그인 --------------*/
		} else if(command.equals("loginBtn")) {
			response.sendRedirect("board_member/member_login.jsp");
		} else if(command.equals("login")) {
			String member_id = request.getParameter("member_id");
			String member_pw = Sha256Encryption.LockPassword(request.getParameter("member_pw"));
			
			MemberDto user = dao.selectMyInfo(member_id);
			
			if(user == null) {
				jsReponse("존재하지 않는 계정입니다. 아이디를 확인해주세요!", "hippe_main/hippe_main.jsp", response);
			}else {
				if(!member_pw.equals(user.getMember_pw())) {
					jsReponse("비밀번호가 틀렸습니다! 확인후 다시 시도해주세요", "hippe_main/hippe_main.jsp", response);
				}else {
					System.out.println("로그인성공! Welcome " + member_id + "님");
					session.setAttribute("id", member_id);
					response.sendRedirect("hippe_main/hippe_main.jsp");
				}
			}
			
		} else if(command.equals("kakao")) {
			
			String kakaoId = request.getParameter("kakaoid");
			String kakaoName = request.getParameter("kakaoname");
			System.out.println(kakaoName + "(" + kakaoId +")님이 <카카오> 로그인하셨습니다");
			
			session.setAttribute("id",kakaoId);
			session.setAttribute("name", kakaoName);
			
			if(session!=null) {
				dispatch("memberController.do?command=main", request, response);
			} else {
				jsReponse("로그인에 실패하였습니다! 다시 시도해주세요.", "memberController.do?command=loginBtn", response);
			}
		/*---------------- 회원 가입 ----------------*/
		} else if(command.equals("signUp")) {
			String member_id = request.getParameter("member_id");
			String member_pw = Sha256Encryption.LockPassword(request.getParameter("member_pw"));
			String member_name = request.getParameter("member_name");
			String member_phone = request.getParameter("phone_start") + request.getParameter("phone_mid") + request.getParameter("phone_end");
			String member_address = request.getParameter("member_address_doro") + request.getParameter("member_address_detail");
			String member_email = request.getParameter("email_id") + "@" + request.getParameter("email_addr");
			
			MemberDto dto = new MemberDto();
			dto.setMember_id(member_id);
			dto.setMember_pw(member_pw);
			dto.setMember_name(member_name);
			dto.setMember_phone(member_phone);
			dto.setMember_address(member_address);
			dto.setMember_email(member_email);

			int result = dao.insertMember(dto);
			System.out.println("result : " + result);
			if(result>0) {
				System.out.println("(유저)" + dto.getMember_id() + " 님 회원가입 성공");
				response.sendRedirect("board_member/member_completion.jsp");
			}else {
				System.out.println("회원가입 실패");
			}
		} else if(command.equals("backToMain")) {
			response.sendRedirect("main(pc).jsp");
		/*---------------- 회원 탈퇴 ----------------*/
		} else if(command.equals("disable")) {
			String id = request.getParameter("id");
			System.out.println("탈퇴할 아이디: " + id);
			int res = dao.disableMember(id);
			System.out.println("result : " + res);
			if(res>0) {
				response.sendRedirect("main(pc).jsp");
			}else {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('회원탈퇴 실패!');"
						+ "location.href='memberController.do?command=main';</script>");
			}
		/*--------------- 회원정보 수정 --------------*/
		} else if(command.equals("")){
			String member_id = request.getParameter("member_id");
			MemberDto dto = dao.selectMyInfo(member_id);
			request.setAttribute("dto", dto);
			dispatch("board_member/member_mypage.jsp", request, response);
		} else if(command.equals("mypage")) {
			String member_id = request.getParameter("member_id");
			MemberDto dto = dao.selectMyInfo(member_id);
			request.setAttribute("dto", dto);
			dispatch("board_member/member_mypage.jsp", request, response);
		}
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}
	
	 public void jsReponse(String msg , String url, HttpServletResponse response) throws IOException {
	      
	      String res = "<script type = 'text/javascript'>"
	      +"alert('"+msg+"');"
	      +"location.href='"
	      +url+"';"
	      +"</script>";
	      
	      PrintWriter out = response.getWriter();
	      out.println(res);
	 }
}





