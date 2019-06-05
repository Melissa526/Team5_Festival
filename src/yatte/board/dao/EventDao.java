package yatte.board.dao;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import common.JDBCTemplate;
import yatte.board.dto.EventDto;

public class EventDao extends SqlMapConfig{
	
	String namespace = "muldelmapper.";

    
  //전체 글의 수 얻기
    
    public int getTotal() {
        int cnt = 0;
       
        String sql = "Select count(*) cnt from board";
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
       
        try {
           
            con = getConnection();
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            if(rs.next()) {
                cnt = rs.getInt("cnt");
                System.out.println("총게시물수 : "+cnt);
            }//if          
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
        	try {
				rs.close();
				pstm.close();
	        	con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
        }
        return cnt;
        
        
    }
    
    public List<EventDto> selectList(int begin,int end){
    	
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession session = null;
		
		session = getSqlSessionFactory().openSession();
		
		List<EventDto> list = session.selectList(namespace+"selectlist",map);
		
		return list;
	}
    
    
    public EventDto selectone(int postnum) {

    	EventDto dto = new EventDto();
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("postnum",postnum);
		
		SqlSession session = null;
		
		session = getSqlSessionFactory().openSession();
		dto = session.selectOne(namespace+"selectOne", map);
		
		return dto;
		
	}
    
    
    //게시판 글 저장
    public int insert(EventDto dto) {
    		int res = 0;
    		
    		SqlSession session = null;
    		
    		try {
    			session = getSqlSessionFactory().openSession(false);
    			res = session.insert(namespace+"insert", dto);
    			if(res > 0) {
    				session.commit();
    			}
    			
    		} catch (Exception e) {
    			e.printStackTrace();
    		}finally {
    			session.close();
    		}
    		
    		
    		return res;
    }
    
    
    public int multiDelete(String[] postnum) {
		int count = 0;
		
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("postnums", postnum);
		
		SqlSession session = null;
		session = getSqlSessionFactory().openSession(false);
		
		try {
		count = session.delete("muldelmapper.muldel", map);
		
		if(count == postnum.length) {
			session.commit();
		}
			
		}catch(Exception e) {
			session.rollback();
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return count;
	}
	
public int delete(EventDto dto) {
		
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession();
			res = session.delete(namespace+"delete", dto);
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	public int update(EventDto dto) {
		
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession();
			res = session.update(namespace+"update",dto);
			if(res>0) {
				session.commit(); 	
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return res;
		
	}
	
	
	public int answer(EventDto dto) {
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession();
			res = session.update(namespace+"answer",dto);
			if(res>0) {
				session.commit(); 	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
}
	
