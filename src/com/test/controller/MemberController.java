package com.test.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.dao.MemberDao;
import com.test.dto.MemberDto;
import com.test.lock.Sha256Encryption;
import com.test.mail.SMTPMail;

@WebServlet("/controller.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		MemberDao dao = new MemberDao();
		
		String command = request.getParameter("command");
		System.out.println("<" +command+">");
		
		if(command.equals("main")) {
			response.sendRedirect("main(pc).jsp");
		} else if(command.equals("signupBtn")) {
			response.sendRedirect("member-signup.jsp");
		} else if(command.equals("signUp")) {
			String member_id = request.getParameter("member_id");
			String member_pw = Sha256Encryption.LockPassword(request.getParameter("member_pw"));
			String member_name = request.getParameter("member_name");
			String member_phone = request.getParameter("phone_start") + request.getParameter("phone_mid") + request.getParameter("phone_end");
			String member_address = request.getParameter("member_address");
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
				System.out.println("회원가입 성공");
				response.sendRedirect("index.jsp");
			}else {
				System.out.println("회원가입 실패");
			}
		} else if(command.equals("backToMain")) {
			response.sendRedirect("index.jsp");
		} else if(command.equals("checkEmailCode")) {
			SMTPMail mail = new SMTPMail();
			String reciever = request.getParameter("");
			String mailTitle = request.getParameter("");
			String mailContent = request.getParameter("");
			
			mail.sendEmailToCustomer(reciever, mailTitle, mailContent);
			
		} else if(command.equals("disable")) {
			String id = request.getParameter("id");
			System.out.println("탈퇴할 아이디: " + id);
			int res = dao.disableMember(id);
			System.out.println("result : " + res);
			if(res>0) {
				response.sendRedirect("index.jsp");
			}else {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('회원탈퇴 실패!');"
						+ "location.href='index.jsp';</script>");
			}
			
		}
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}
	
}





