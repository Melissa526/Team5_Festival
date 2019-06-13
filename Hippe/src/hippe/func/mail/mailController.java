package hippe.func.mail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import hippe.func.lock.VerifyCode;

@WebServlet("/mailController.do")
public class mailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public mailController() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		SMTPMail mail = new SMTPMail();
		
		String command = request.getParameter("command");
		System.out.println("[Email Controller]");
		
		if(command.equals("sendEmail")) {
			
			String userEmail = request.getParameter("email");
			String verifyCode = VerifyCode.getVerifyCode();
			mail.sendEmailToCustomer(userEmail, "[YATTE] 회원가입을 위한 인증메일입니다!", verifyCode);
			
			response.getWriter().write(verifyCode);
		}
	}

}
