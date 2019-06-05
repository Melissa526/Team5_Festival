package yatte.board.dto;

import java.sql.Date;

public class EventDto {

		private int postnum; //글번호
	    private String id; //글쓴이
	    private String pwd; //비밀번호
	    private String title; //글제목
	    private String content; //글내용
	    private Date today; //글 등록날짜
	    private int hit; //조회수
	    private int parent; //참조번호
	    private int sort; //답변들의 순서를 정하기 위한 필드
	    private int tab; // 깊이 (들여쓰기)
	   
	   
	    public int getPostnum() {
	        return postnum;
	    }
	    public void setPostnum(int postnum) {
	        this.postnum = postnum;
	    }
	    public String getId() {
	        return id;
	    }
	    public void setId(String id) {
	        this.id = id;
	    }
	    public String getPwd() {
	        return pwd;
	    }
	    public void setPwd(String pwd) {
	        this.pwd = pwd;
	    }
	    public String getTitle() {
	        return title;
	    }
	    public void setTitle(String title) {
	        this.title = title;
	    }
	    public String getContent() {
	        return content;
	    }
	    public void setContent(String content) {
	        this.content = content;
	    }
	    public Date getToday() {
	        return today;
	    }
	    public void setToday(Date today) {
	        this.today = today;
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


}
