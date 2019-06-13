package hippe.func.lock;

import java.security.MessageDigest;

public class Sha256Encryption {

	public static String LockPassword(String password) {
		String shaString = "";
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(password.getBytes("UTF-8"));
			StringBuffer hexString = new StringBuffer();

			for (int i = 0; i < hash.length; i++) {
				String hex = Integer.toHexString(0xff & hash[i]);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
			shaString = hexString.toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return shaString;
	}

}
