package hippe.board.dto;

import java.util.Date;

public class BoardDto {

	private int category;
	private int postnum;
	private int group_num;
	private int group_order;
	private int titletab;
	private String writer;
	private String title;
	private String content;
	private Date regdate;
	private int views;
	
	public BoardDto() {}

	public BoardDto(int category, int postnum, int group_num, int group_order, int titletab, String writer,
			String title, String content, Date regdate, int views) {
		super();
		this.category = category;
		this.postnum = postnum;
		this.group_num = group_num;
		this.group_order = group_order;
		this.titletab = titletab;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.views = views;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getPostnum() {
		return postnum;
	}

	public void setPostnum(int postnum) {
		this.postnum = postnum;
	}

	public int getGroup_num() {
		return group_num;
	}

	public void setGroup_num(int group_num) {
		this.group_num = group_num;
	}

	public int getGroup_order() {
		return group_order;
	}

	public void setGroup_order(int group_order) {
		this.group_order = group_order;
	}

	public int getTitletab() {
		return titletab;
	}

	public void setTitletab(int titletab) {
		this.titletab = titletab;
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

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}
	

}
