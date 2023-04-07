package com.ceb.dto;

import java.util.Date;

public class BoardDTO {
	private Integer board_num;
	private String user_id;
	private String title;
	private String context;
	private Date regdate;
	private Integer viewcnt;
	
	
	@Override
	public String toString() {
		return "BoardDTO [board_num=" + board_num + ", user_id=" + user_id + ", title=" + title + ", context=" + context
				+ ", regdate=" + regdate + ", viewcnt=" + viewcnt + "]";
	}
	public Integer getBoard_num() {
		return board_num;
	}
	public void setBoard_num(Integer board_num) {
		this.board_num = board_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Integer getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(Integer viewcnt) {
		this.viewcnt = viewcnt;
	}
	
	
}
