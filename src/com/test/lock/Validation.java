package com.test.lock;

import com.test.dao.MemberDao;

public class Validation {
	/*------------ 유효성 검사하는 클래스 -------------*/
	
	public Validation() {}
	
	public static int idValidation(String id) {
		MemberDao dao = new MemberDao();
		return dao.checkID(id);
	}

}
