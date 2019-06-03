package yatte.board.dto;

import java.sql.Date;

public class EventDto {

		private int num; //글번호
	    private String name; //글쓴이
	    private String email; //이메일
	    private String pwd; //비밀번호
	    private String subject; //글제목
	    private String content; //글내용
	    private Date regdate; //글 등록날짜
	    private int hit; //조회수
	    private int parent; //참조번호
	    private int sort; //답변들의 순서를 정하기 위한 필드
	    private int tab; // 깊이 (들여쓰기)
	   
	   
	    public int getNum() {
	        return num;
	    }
	    public void setNum(int num) {
	        this.num = num;
	    }
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
	    public String getPwd() {
	        return pwd;
	    }
	    public void setPwd(String pwd) {
	        this.pwd = pwd;
	    }
	    public String getSubject() {
	        return subject;
	    }
	    public void setSubject(String subject) {
	        this.subject = subject;
	    }
	    public String getContent() {
	        return content;
	    }
	    public void setContent(String content) {
	        this.content = content;
	    }
	    public Date getRegdate() {
	        return regdate;
	    }
	    public void setRegdate(Date regdate) {
	        this.regdate = regdate;
	    }
	    public int getHit() {
	        return hit;
	    }
	    public void setHit(int hit) {
	        this.hit = hit;
	    }
	    public int getParent() {
	        return parent;
	    }
	    public void setParent(int parent) {
	        this.parent = parent;
	    }
	    public int getSort() {
	        return sort;
	    }
	    public void setSort(int sort) {
	        this.sort = sort;
	    }
	    public int getTab() {
	        return tab;
	    }
	    public void setTab(int tab) {
	        this.tab = tab;
	    }
	private int seq;
	private String writer;
	private String title;
/*	private String content;
	private Date regdate; */

	public EventDto() {
	}

	public EventDto(int seq, String writer, String title, String content, Date regdate) {
		this.seq=seq;
		this.writer=writer;
		this.title=title;
		this.content=content;
		this.regdate=regdate;
	}
	
	// 수정
	public EventDto(int seq, String title, String content) {
		this.seq=seq;
		this.title=title;
		this.content=content;
	}
	
	// 추가
	public EventDto(String writer, String title, String content) {
		this.writer=writer;
		this.title=title;
		this.content=content;
	}
	

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	/*public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}*/

}
