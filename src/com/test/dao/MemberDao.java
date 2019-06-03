package com.test.dao;

import org.apache.ibatis.session.SqlSession;

import com.test.dto.MemberDto;

public class MemberDao extends SqlMapConfig{
	
	//selectMyInfo : 회원정보조회
	//insertMember : 회원가입
	//disableMember : 회원탈퇴(member_enabled를 'N'으로 수정)
	//updateMyInfo : 회원정보수정
	
	final static String NAMESPACE = "member-mapper";
	
	public MemberDto selectMyInfo(String id){
		SqlSession session = null;
		MemberDto temp = new MemberDto();
		
		try {
			session = getSqlSessionFactory().openSession();
			temp = session.selectOne(NAMESPACE+".selectMyInfo", id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public int updateMyInfo(MemberDto dto) {
		return 0;
	}
	
	public int insertMember(MemberDto dto){
		SqlSession session = null;
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession();
			res = session.insert(NAMESPACE+".insertMember",dto);
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return res; 
	}
	
	public int disableMember(String id) {
		
		int res = 0;
		SqlSession session = null;
		
		try {
			session = getSqlSessionFactory().openSession();
			res = session.delete(NAMESPACE+".deleteMember", id);
			
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return res;
	}
	
	public int checkID(String id) {
		SqlSession session = null;
		int res = 0;
		MemberDto dto = new MemberDto();
		
		try {
			session = getSqlSessionFactory().openSession();
			dto = session.selectOne(NAMESPACE+".selectMyInfo", id);
			if(dto != null) {
				//-1 사용중인 ㅇㅏ이디
				res = -1;
			}else {
				res = 1;
			}
		} catch (Exception e) {
			res = 1;
			//1 사용할 수 있는 아이디
		}
		return res;
	}
	
	
}//class end







