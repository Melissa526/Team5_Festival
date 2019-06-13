package hippe.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import hippe.board.dto.BoardDto;
import hippe.common.SqlMapConfig;

public class BoardDao extends SqlMapConfig{

	private String namespace = "board.mapper.";
	
	public List<BoardDto> selectList(int category){
		SqlSession session = null;
		
		List<BoardDto> list = new ArrayList<BoardDto>();
		try {
			session = getBoardSqlSessionFactory().openSession();
			list = session.selectList(namespace+"selectlist",category);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<BoardDto> selectListWithPaging(int category, int begin, int end){
		SqlSession session = null;
		List<BoardDto> list = new ArrayList<BoardDto>();
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("category", category);
		map.put("begin",begin);
		map.put("end",end);
		
		try {
			session = getBoardSqlSessionFactory().openSession();
			list = session.selectList(namespace+"selectlistPaging", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public BoardDto selectone(int postnum) {

		BoardDto dto = new BoardDto();
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("postnum",postnum);
		
		SqlSession session = null;
		
		session = getBoardSqlSessionFactory().openSession();
		dto = session.selectOne(namespace+"selectOne", map);
		
		return dto;
		
	}
	
	public int insert(BoardDto dto) {
		
		SqlSession session = null;
		
		int res = 0;
		try {
			session = getBoardSqlSessionFactory().openSession();
			res = session.insert(namespace+"insert", dto);
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	
	public int delete(int num) {
		
		SqlSession session = null;
		int res = 0;
		
		try {
			session = getBoardSqlSessionFactory().openSession();
			res = session.delete(namespace+"deleteNum", num);
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	public int multiDelete(String[] num) {
		int count = 0;
		
		Map<String,String[]> map = new HashMap<String, String[]>();
		map.put("seqs",num);
		
		SqlSession session = null;
		
		try {
			session = getBoardSqlSessionFactory().openSession(false);
			count = session.delete(namespace+"delete",map);
			
			if(count == num.length) {
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return count;
	}
	
	public int update(BoardDto dto) {
		
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getBoardSqlSessionFactory().openSession();
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
	public int answer(BoardDto dto) {
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getBoardSqlSessionFactory().openSession();
			res = session.update(namespace+"answer",dto);
			if(res>0) {
				session.commit(); 	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	public int getTotal(int category) {
  
        int res = 0;
        SqlSession session = null;
//        Connection con = null;
//        PreparedStatement pstm = null;
//        ResultSet rs = null;
       
        try {
           session = getBoardSqlSessionFactory().openSession();
           res = session.selectOne(namespace+"getTotal", category);
           
           System.out.println("총게시물수 : " + res);
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
	
}
