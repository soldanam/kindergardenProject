package com.kindergarden.service.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ConsentFormDto {
	private int consentformId;
	private int babyId;
	private String babyName;
	private String title;
	private String content;
	private String date;
	
	
	public String getBabyName() {
		return babyName;
	}
	public void setBabyName(String babyName) {
		this.babyName = babyName;
	}
	public int getConsentformId() {
		return consentformId;
	}
	public void setConsentformId(int consentformId) {
		this.consentformId = consentformId;
	}
	public int getBabyId() {
		return babyId;
	}
	public void setBabyId(int babyId) {
		this.babyId = babyId;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	 
	 
	
}
