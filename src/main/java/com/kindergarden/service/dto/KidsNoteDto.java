package com.kindergarden.service.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class KidsNoteDto {

	private int kidsnoteId;
	private int babyId;
	private String babyName;

	private String title;
	private String content;
	 //@JsonFormat(pattern = "yyyy-MM-dd", timezone="Asia/Seoul")
	private String regDt;
	private String kidsnoteFileUrl;
	
	
	public String getBabyName() {
		return babyName;
	}
	public void setBabyName(String babyName) {
		this.babyName = babyName;
	}
	
	public int getKidsnoteId() {
		return kidsnoteId;
	}
	public void setKidsnoteId(int kidsnoteId) {
		this.kidsnoteId = kidsnoteId;
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
	
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public int getBabyId() {
		return babyId;
	}
	public void setBabyId(int babyId) {
		this.babyId = babyId;
	}
	public String getKidsnoteFileUrl() {
		return kidsnoteFileUrl;
	}
	public void setKidsnoteFileUrl(String kidsnoteFileUrl) {
		if(kidsnoteFileUrl==null) {
			this.kidsnoteFileUrl= "resources/img/balloon.jpg";
		}
		else {
			this.kidsnoteFileUrl = kidsnoteFileUrl;
		}
	}
	
	 
}
