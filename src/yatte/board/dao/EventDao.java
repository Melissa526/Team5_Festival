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

	public List<EventDto> selectList() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<EventDto> list = new ArrayList<EventDto>();

		String sql = "SELECT * FROM MDBOARD ORDER BY REGDATE DESC";

		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03.query 준비");

			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			while(rs.next()) {
				EventDto dto = new EventDto();
				dto.setSeq(rs.getInt(1));
				dto.setWriter(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setRegdate(rs.getDate(5));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return list;
	}
	
/*	public MDBoardDto selectOne(int seq) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		MDBoardDto dto = null;
		
		String sql = " SELECT * FROM MDBOARD WHERE SEQ = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			System.out.println("03.qeury 준비");
			
			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			while(rs.next()) {
				dto = new MDBoardDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5));
			}
		} catch (SQLException e) {
			System.out.println("03/04 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return dto;
	}
	

	public int multiDelete(String[] seq) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " DELETE FROM MDBOARD WHERE SEQ = ? ";

		// 결과값 받을 배열
		int[] cnt = null;	
		
		try {
			pstm = con.prepareStatement(sql);
			
			for(int i=0; i < seq.length; i++) {
				pstm.setString(1, seq[i]);
				
				// 메모리에 적재 후, executeBatch() 메소드가 호출 될 때 한꺼번에 실행!!
				pstm.addBatch();
				System.out.println("삭제할 번호 : "+seq[i]);
			}
			System.out.println("03.query 준비");
			
			// int[]로 리턴
			cnt = pstm.executeBatch();
			System.out.println("04.query 실행 및 리턴");
		
			// -2는 성공, -3은 실패
			for(int i=0; i<cnt.length; i++) {
				if(cnt[i] == -2) {
					res++;
				}
			}
			
			if(res == seq.length) {
				commit(con);
			} else {
				rollback(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		
	return res;
	}

	  public int multiDelete(String[] seq) {
		int count = 0;
		
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("seqs", seq);
		
		SqlSession session = null;
		session = getSqlSessionFactory().openSession(false);
		
		try {
		count = session.delete("muldelmapper.muldel", map);
		
		if(count == seq.length) {
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
	

	public int insert(MDBoardDto dto) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " INSERT INTO MDBOARD VALUES(MYSEQ.NEXTVAL,?,?,?,SYSDATE) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getWriter());
			pstm.setString(2, dto.getTitle());
			pstm.setString(3, dto.getContent());
			System.out.println("03.query 준비");
			
			res = pstm.executeUpdate();
			System.out.println("04.query 실행 및 리턴");
		} catch (SQLException e) {
			System.out.println("03/04 단계 에러");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return res;
	}
*/


	
	public int update(EventDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " UPDATE MDBOARD SET TITLE = ?, CONTENT = ? WHERE SEQ = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getTitle());
			pstm.setString(2,  dto.getContent());
			pstm.setInt(3, dto.getSeq());
			System.out.println("05.db 종료");
			
			res=pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		return res;
		
	}
	
/*	public int delete(int seq) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " DELETE FROM MDBOARD WHERE SEQ = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			System.out.println("03.query 준비");
			
			res = pstm.executeUpdate();
			if(res>0) {
				commit(con);
			}
			System.out.println("04.query 실행 및 리턴");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return res;
	}*/
	
	public int multiDelete(String[] num) {
		int count = 0;
		
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("nums", num);
		
		SqlSession session = null;
		session = getSqlSessionFactory().openSession(false);
		
		try {
		count = session.delete("muldelmapper.muldel", map);
		
		if(count == num.length) {
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
	
	public int delete(int num) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " DELETE FROM BOARD WHERE NUM = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, num);
			System.out.println("03.query 준비");
			
			res = pstm.executeUpdate();
			if(res>0) {
				commit(con);
			}
			System.out.println("04.query 실행 및 리턴");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return res;
	}
	
	
	public EventDto selectOne(int num) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		EventDto dto = null;
		
		String sql = " SELECT * FROM MDBOARD WHERE NUM = ? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, num);
			System.out.println("03.qeury 준비");
			
			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			while(rs.next()) {
				dto = new EventDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5));
			}
		} catch (SQLException e) {
			System.out.println("03/04 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05.db 종료");
		}
		return dto;
	}
	
	
	
	
	
	
	
	

	 //리스트
    public ArrayList<EventDto> listBoard(int begin, int end){
       
        ArrayList<EventDto> list = new ArrayList<EventDto>();
       
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
       
        con = getConnection();
        
        //String sql = "select * from board order by num desc";
        String sql = "select rn, num,name,pwd,subject,content,regdate,hit,parent,sort,tab " +
                "  from (select " +
                "  Rownum as rn, num,name,pwd,subject,content,regdate,hit,parent,sort,tab " +
                "  from(    " +
                "        select num,name,pwd,subject,content,regdate,hit,parent,sort,tab  " +
                "        from board " +
                "        order by parent desc,sort desc " +  //기본값 오름 차순
                "        )" +
                "    )" +
                "where RN >=? and RN <=?";
        System.out.println(sql);
       
        try {
           
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, begin);
            pstm.setInt(2, end);
           
            rs = pstm.executeQuery();
           
            while(rs.next()) {
               
            	EventDto dto = new EventDto();
               
                dto.setNum(rs.getInt("num"));
                dto.setName(rs.getString("name"));
                dto.setPwd(rs.getString("pwd"));
                dto.setSubject(rs.getString("subject"));
                dto.setContent(rs.getString("content"));
                dto.setRegdate(rs.getDate("regdate"));
                dto.setHit(rs.getInt("hit"));
                dto.setParent(rs.getInt("parent"));
                dto.setSort(rs.getInt("sort"));
                dto.setTab(rs.getInt("tab"));
               
                list.add(dto);
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
			close(pstm);
			close(con);
		}
       
        return list;
    }
    
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
    
    //게시판 글 저장
    public int insertBoard(EventDto dto) {
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
}
	
