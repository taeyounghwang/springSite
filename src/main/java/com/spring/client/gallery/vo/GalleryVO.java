package com.spring.client.gallery.vo;

import org.springframework.web.multipart.MultipartFile;

import com.spring.common.vo.CommonVO;


public class GalleryVO extends CommonVO{
	private int g_num;
	private String g_name;
	private String g_subject;
	private String g_content;
	private MultipartFile file;
	private String g_thumb;
	private String g_file;
	private String g_pwd;
	private String g_date;
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_subject() {
		return g_subject;
	}
	public void setG_subject(String g_subject) {
		this.g_subject = g_subject;
	}
	public String getG_content() {
		return g_content;
	}
	public void setG_content(String g_content) {
		this.g_content = g_content;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getG_thumb() {
		return g_thumb;
	}
	public void setG_thumb(String g_thumb) {
		this.g_thumb = g_thumb;
	}
	public String getG_file() {
		return g_file;
	}
	public void setG_file(String g_file) {
		this.g_file = g_file;
	}
	public String getG_pwd() {
		return g_pwd;
	}
	public void setG_pwd(String g_pwd) {
		this.g_pwd = g_pwd;
	}
	public String getG_date() {
		return g_date;
	}
	public void setG_date(String g_date) {
		this.g_date = g_date;
	}
	
	
	
}
