package hippe.func.mail;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import hippe.func.lock.VerifyCode;

import javax.mail.Transport;
import java.util.Properties;

 
public class SMTPMail {
    
	// 송신인 
	private String adminId = "ad.team555@gmail.com";
	private String password = "admin1905!";
	
	public static void main(String[] args) {

		String verifiedCode =  VerifyCode.getVerifyCode();
		System.out.println(verifiedCode);
		// 치윤: clwbswe
		// 종민: wth1333
		// 민호: 1212081
		// 진희: jinhee3146@hanmail.net
		
		SMTPMail test = new SMTPMail();
		test.sendEmailToCustomer("jinhee3146@hanmail.net", "[회원가입 인증] 인증번호를 확인해주세요!", "인증번호 : " + verifiedCode);
		
	}
	
    /*----------------------- 메일 전송하는 메소드 -----------------------*/
	public void sendEmailToCustomer(String reciever, String mailTitle, String mailContent) {
		
		//SMTP 송신서버 정보설정
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true"); 
		prop.put("mail.smtp.ssl.enable", "true"); 
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");		
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(adminId, password);
			}
		});

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(adminId));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(reciever)); 

            // Subject : 메일 제목을 입력
            message.setSubject(mailTitle); 

            // Content : 메일 상세 내용
            message.setText(mailContent);

            // 메일 전송(Send)
            Transport.send(message); 
            System.out.println("[Mail To] : "+ reciever +"\nMessage sent successfully...");
        } catch (AddressException e) {		
        	//이메일 주소 오류
        	System.err.println("[Error] 이메일 주소 오류\n" + e.getMessage());
        } catch (MessagingException e) {
        	//smtp 설정오류
        	System.err.println("[Error] SMTP 설정 오류\n" + e.getMessage());
        }		
	}

}//class 1 end
 
 
class MyAuthentications extends Authenticator {
      
    PasswordAuthentication pa;
    
 
    public MyAuthentications(){
         
    	//관리자 Google ID/PW
        String id = "ad.team555";          
        String pw = "admin1905!";         
 
        // ID와 비밀번호를 입력한다.
        pa = new PasswordAuthentication(id, pw);
      
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}//class 2 end

