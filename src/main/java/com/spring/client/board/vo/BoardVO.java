package com.spring.client.board.vo;

public class BoardVO {
	private int 	b_num		=0;		//글번호
	private String	b_name		="";	//작성자
	private String	b_title		="";	//제목
	private String	b_content	="";	//내용
	private String	b_date		="";	//작성일
	private String	b_pwd		="";	//비밀번호
	//getters and setters
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getB_pwd() {
		return b_pwd;
	}
	public void setB_pwd(String b_pwd) {
		this.b_pwd = b_pwd;
	}
	
	
	
}
