package hippe.func.lock;

public class VerifyCode {
	
	public static void main(String[] args) {

		System.out.println("Verified Code: " + getVerifyCode());
		
	}
	
	/*------------------ 인증코드(8글자)만드는 메소드 ---------------------*/
	public static String getVerifyCode() {

		int ranASCII = 0;
		StringBuffer code = new StringBuffer();
		
		while(code.length() < 8) {
			ranASCII = (int)(Math.random()*(122-65+1))+65;
			if(ranASCII>90 && ranASCII<98) {
				ranASCII = (int)(Math.random()*(122-65+1))+65;
			}else {
				code.append((char)ranASCII);
			}
		}
		System.out.println("code: "+code.toString());
		return code.toString();
	}

}
